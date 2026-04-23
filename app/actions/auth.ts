"use server"

import { loginSchema, signupSchema } from "@/lib/validations/auth"
import { z } from "zod"
import { createClient } from "@/lib/supabase/server"
import { revalidatePath } from "next/cache"

export async function loginAction(data: z.infer<typeof loginSchema>) {
  const parsed = loginSchema.safeParse(data)

  if (!parsed.success) {
    return { success: false, error: "Dados de credenciais inválidos" }
  }

  const supabase = await createClient()

  const { error } = await supabase.auth.signInWithPassword({
    email: parsed.data.email,
    password: parsed.data.password,
  })

  if (error) {
    return { success: false, error: "E-mail ou senha incorretos." }
  }

  return { success: true }
}

export async function signupAction(data: z.infer<typeof signupSchema>) {
  const parsed = signupSchema.safeParse(data)

  if (!parsed.success) {
    return { success: false, error: "Dados de cadastro inválidos" }
  }

  const supabase = await createClient()

  // 1. Criar o usuário no Supabase Auth
  const { data: { user }, error: signUpError } = await supabase.auth.signUp({
    email: parsed.data.email,
    password: parsed.data.password,
    options: {
      data: {
        name: parsed.data.name,
        role: parsed.data.role, // Guardamos o papel inicial no metadata também
      },
    },
  })

  if (signUpError) {
    return { success: false, error: signUpError.message }
  }

  if (!user) {
    return { success: false, error: "Erro ao criar usuário." }
  }

  try {
    // 2. Se for uma Instituição (admin), criamos a entidade Institution primeiro
    let institutionId = null

    if (parsed.data.role === 'institution') {
      const slug = parsed.data.name.toLowerCase()
        .normalize('NFD').replace(/[\u0300-\u036f]/g, '')
        .replace(/[^\w\s-]/g, '')
        .replace(/ /g, '-')
      
      const { data: inst, error: instError } = await supabase
        .from('institutions')
        .insert({ 
          name: parsed.data.name, 
          slug: `${slug}-${Math.floor(Math.random() * 1000)}` 
        })
        .select()
        .single()

      if (instError) throw instError
      institutionId = inst.id
    } else if (parsed.data.role === 'teacher') {
       // Bloqueia cadastro de professor pelo fluxo público
       return { success: false, error: "Cadastro de professores deve ser feito por uma instituição." }
    }

    // 3. Criar o vínculo (Membership)
    const { error: memberError } = await supabase
      .from('memberships')
      .insert({
        user_id: user.id,
        institution_id: institutionId,
        role: parsed.data.role
      })

    if (memberError) throw memberError

    return { success: true }
  } catch (err: any) {
    console.error("Erro ao criar perfil/vínculo:", err)
    return { success: false, error: "Usuário criado, mas houve um erro ao configurar o perfil." }
  }
}

export async function logoutAction() {
  const supabase = await createClient()
  await supabase.auth.signOut()
}

export async function createProfessorAction(data: { name: string, email: string }) {
  const supabase = await createClient()
  
  // 1. Verificar quem está tentando criar (deve ser uma Instituição/Admin)
  const { data: { user: adminUser } } = await supabase.auth.getUser()
  if (!adminUser) return { success: false, error: "Não autorizado" }

  // Buscar a instituição do admin
  const { data: adminMembership } = await supabase
    .from('memberships')
    .select('institution_id')
    .eq('user_id', adminUser.id)
    .eq('role', 'institution')
    .single()

  if (!adminMembership) {
    return { success: false, error: "Apenas instituições podem cadastrar professores." }
  }

  // 2. Criar o Professor (Usando um cliente ISOLADO para não deslogar o Admin)
  const { createClient: createSupabaseClient } = await import('@supabase/supabase-js')
  const supabaseAdmin = createSupabaseClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
    { auth: { persistSession: false } }
  )

  const tempPassword = Math.random().toString(36).substring(2, 10)

  const { data: { user: newProf }, error: createError } = await supabaseAdmin.auth.signUp({
    email: data.email,
    password: tempPassword,
    options: {
      data: {
        name: data.name,
        role: 'teacher',
        created_by_institution: adminMembership.institution_id
      }
    }
  })

  if (createError) return { success: false, error: createError.message }
  if (!newProf) return { success: false, error: "Erro ao criar professor." }

  try {
    // 3. Criar o vínculo e o perfil usando o cliente do NOVO usuário
    // Isso evita erro de RLS pois o supabaseAdmin está "logado" como o novo professor
    
    // Criar Vínculo
    const { error: memberError } = await supabaseAdmin
      .from('memberships')
      .insert({
        user_id: newProf.id,
        institution_id: adminMembership.institution_id
      })

    if (memberError) throw memberError

    // 4. Criar o Perfil do Usuário (para que ele apareça na lista)
    const { error: profileError } = await supabaseAdmin
      .from('user_profiles')
      .insert({
        user_id: newProf.id,
        full_name: data.name,
        email: data.email, // Salvar e-mail para facilitar gestão
      })

    if (profileError) throw profileError

    revalidatePath("/instituicao/professores")

    return { 
      success: true, 
      data: { 
        email: data.email, 
        tempPassword 
      } 
    }
  } catch (err: any) {
    console.error("Erro no setup do professor:", err)
    return { success: false, error: "Usuário criado, mas houve um erro nas permissões." }
  }
}

import { supabaseAdmin as admin } from "@/lib/supabase/admin"

export async function deleteProfessorAction(professorId: string) {
  const supabase = await createClient()
  
  // Verificar se é uma instituição
  const { data: { user } } = await supabase.auth.getUser()
  if (!user) return { success: false, error: "Não autorizado" }

  // 1. Remover Usuário do Auth (Físico)
  const { error: authError } = await admin.auth.admin.deleteUser(professorId)
  if (authError) console.error("Erro ao deletar do Auth:", authError)

  // 2. Remover Vínculo (Membership)
  const { error: mError } = await supabase
    .from('memberships')
    .delete()
    .eq('user_id', professorId)

  if (mError) return { success: false, error: "Erro ao remover vínculo" }

  // 3. Remover Perfil
  await supabase.from('user_profiles').delete().eq('user_id', professorId)

  revalidatePath("/instituicao/professores")

  return { success: true }
}

export async function updateProfessorAction(professorId: string, data: { name: string }) {
  const supabase = await createClient()
  
  const { error } = await supabase
    .from('user_profiles')
    .update({ full_name: data.name })
    .eq('user_id', professorId)

  if (error) return { success: false, error: error.message }
  
  revalidatePath("/instituicao/professores")
  
  return { success: true }
}

export async function resetProfessorPasswordAction(professorId: string) {
  const supabase = await createClient()
  const { data: { user: adminUser } } = await supabase.auth.getUser()
  
  // SEGURANÇA: Bloquear se o admin tentar resetar a si mesmo
  if (adminUser?.id === professorId) {
    console.error("BLOQUEIO DE SEGURANÇA: Tentativa de auto-reset detectada. ID:", professorId)
    return { success: false, error: "Você não pode resetar a sua própria senha por aqui. Use as configurações de perfil." }
  }

  console.log("Iniciando reset de senha para o ID:", professorId)
  const tempPassword = Math.random().toString(36).substring(2, 10)
  
  // Forçar a troca de senha no Auth
  const { data, error } = await admin.auth.admin.updateUserById(
    professorId,
    { password: tempPassword }
  )
  
  if (error) return { success: false, error: error.message }
  
  return { 
    success: true, 
    data: { 
      email: data.user.email,
      tempPassword 
    } 
  }
}

export async function deleteAccountAction() {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  if (!user) return { success: false, error: "Usuário não encontrado" }

  // Deletar via Admin SDK (usando o admin importado no arquivo)
  const { error } = await admin.auth.admin.deleteUser(user.id)

  if (error) {
    console.error("Erro ao deletar conta:", error)
    return { success: false, error: error.message }
  }

  await supabase.auth.signOut()
  return { success: true }
}