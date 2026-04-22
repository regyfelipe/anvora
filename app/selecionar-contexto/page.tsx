import { createClient } from "@/lib/supabase/server"
import { redirect } from "next/navigation"
import { Building2Icon, UserIcon, GraduationCapIcon, ChevronRightIcon } from "lucide-react"
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card"
import { Button } from "@/components/ui/button"

export default async function SelecionarContextoPage() {
  const supabase = await createClient()

  // 1. Verificar se o usuário está logado
  const { data: { user } } = await supabase.auth.getUser()
  if (!user) redirect("/login")

  // 2. Buscar todos os vínculos do usuário
  const { data: memberships, error } = await supabase
    .from('memberships')
    .select(`
      *,
      institutions (
        name,
        slug,
        logo_url
      )
    `)
    .eq('user_id', user.id)

  if (error) {
    console.error("Erro ao buscar vínculos:", error)
  }

  // 3. Se não tiver nenhum vínculo (não deveria acontecer se o signup funcionou), manda pro dashboard default
  if (!memberships || memberships.length === 0) {
    // Tenta criar um vínculo de segurança se o metadata existir
    if (user.user_metadata.role) {
       await supabase.from('memberships').insert({
         user_id: user.id,
         role: user.user_metadata.role
       })
       redirect("/dashboard")
    }
    redirect("/dashboard")
  }

  // 4. Se tiver apenas UM vínculo, redireciona direto conforme o papel
  if (memberships.length === 1) {
    const role = memberships[0].role
    if (role === 'student') redirect("/aluno/dashboard")
    redirect("/dashboard")
  }

  // 5. Se tiver múltiplos, mostra a tela de seleção
  return (
    <div className="flex min-h-svh flex-col items-center justify-center bg-background p-6 md:p-10">
      <div className="w-full max-w-2xl space-y-8">
        <div className="text-center space-y-2">
          <h1 className="text-3xl font-bold tracking-tight font-heading">Bem-vindo ao Anvora</h1>
          <p className="text-muted-foreground">Como você deseja acessar a plataforma hoje?</p>
        </div>

        <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-2">
          {memberships.map((membership) => {
            const isInstitution = membership.role === 'admin'
            const isTeacher = membership.role === 'teacher'
            const isStudent = membership.role === 'student'
            
            const title = membership.institutions?.name || (isTeacher ? "Professor Autônomo" : "Aluno Autônomo")
            const roleLabel = isInstitution ? "Administrador" : isTeacher ? "Professor" : "Aluno"
            const Icon = isInstitution ? Building2Icon : isTeacher ? UserIcon : GraduationCapIcon
            const targetUrl = isStudent ? "/aluno/dashboard" : "/dashboard"

            return (
              <Card key={membership.id} className="group hover:border-primary transition-all duration-300 cursor-pointer overflow-hidden">
                <CardHeader className="pb-4">
                  <div className="flex items-center justify-between">
                    <div className="p-2 rounded-lg bg-primary/10 text-primary group-hover:bg-primary group-hover:text-primary-foreground transition-colors">
                      <Icon className="size-5" />
                    </div>
                    <span className="text-[10px] font-bold uppercase tracking-wider text-muted-foreground bg-muted px-2 py-0.5 rounded">
                      {roleLabel}
                    </span>
                  </div>
                </CardHeader>
                <CardContent className="space-y-4">
                  <div>
                    <CardTitle className="text-lg font-bold truncate">{title}</CardTitle>
                    <CardDescription className="text-xs mt-1">
                      {isInstitution ? "Gerencie sua instituição e equipe" : "Acesse seus conteúdos e turmas"}
                    </CardDescription>
                  </div>
                  <Button asChild variant="ghost" className="w-full justify-between group-hover:bg-primary/5">
                    <a href={targetUrl}>
                      Acessar Workspace
                      <ChevronRightIcon className="size-4 opacity-50 group-hover:opacity-100 transition-opacity" />
                    </a>
                  </Button>
                </CardContent>
              </Card>
            )
          })}
        </div>

        <div className="text-center">
          <Button variant="link" className="text-muted-foreground text-xs">
            Sair e entrar com outra conta
          </Button>
        </div>
      </div>
    </div>
  )
}
