"use server"

import { getFilterOptions, getQuestions, type QuestionFilters } from "@/lib/services/questions"
import { createClient } from "@/lib/supabase/server"
import { revalidatePath } from "next/cache"
import { StudentDashboardData } from "@/lib/mocks/aluno-dashboard"

export async function fetchFilterOptions() {
  return await getFilterOptions()
}

export async function fetchQuestions(filters: QuestionFilters) {
  return await getQuestions(filters)
}

export async function saveQuestionAnswer(data: {
  questionId: string
  optionId: string
  isCorrect: boolean
  timeSpent?: number
}) {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  if (!user) return { success: false, error: "Usuário não autenticado" }

  const { error } = await supabase
    .from('question_answers')
    .insert({
      user_id: user.id,
      question_id: data.questionId,
      option_id: data.optionId,
      is_correct: data.isCorrect,
      time_spent_seconds: data.timeSpent
    })

  if (error) {
    console.error("Erro ao salvar resposta:", error)
    return { success: false, error: error.message }
  }

  return { success: true }
}

export async function getPerformanceData() {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  if (!user) return null

  // 1. Buscar a Grade Oficial do Edital
  const { data: syllabus } = await supabase
    .from('exam_syllabus')
    .select('*')
    .order('sort_order', { ascending: true })

  // 2. Buscar Respostas do Usuário
  const { data: answers, error } = await supabase
    .from('question_answers')
    .select('is_correct, created_at, questions(subject, topic)')
    .eq('user_id', user.id)

  // 3. Buscar Plano de Estudos
  const { data: plan } = await supabase
    .from('study_plans')
    .select('*')
    .eq('user_id', user.id)
    .single()

  const { data: profile } = await supabase
    .from('user_profiles')
    .select('career_name')
    .eq('user_id', user.id)
    .single()

  const rawCareer = plan?.career_id || profile?.career_name || "Polícia Penal do Ceará"
  // Limpeza de legado: Se for a PF antiga ou Policial Federal, muda para a nossa atual PPCE
  const careerName = (rawCareer === "Polícia Federal" || rawCareer === "Policial Federal") 
    ? "Polícia Penal do Ceará" 
    : rawCareer
  const hasPlan = !!plan

  if (error || !answers || !syllabus) {
    console.error("Erro ao buscar dados iniciais:", { error, syllabusCount: syllabus?.length })
    return null
  }

  if (syllabus.length === 0) {
    console.warn("Aviso: A tabela 'exam_syllabus' está vazia. Rode a migração SQL.")
  }

  const total = answers.length
  const correct = answers.filter(a => a.is_correct).length
  const accuracy = total > 0 ? Math.round((correct / total) * 100) : 0
  const today = new Date().toISOString().split('T')[0]

  // 3. Agrupar performance por Disciplina da Grade
  const subjectsMap: Record<string, { correct: number, total: number, topics: any[] }> = {}
  
  // Inicializa com todos os assuntos da grade oficial
  syllabus.forEach(s => {
    if (!subjectsMap[s.subject]) {
      subjectsMap[s.subject] = { correct: 0, total: 0, topics: [] }
    }
    subjectsMap[s.subject].topics.push({
      id: s.id,
      name: s.topic,
      correct: 0,
      total: 0,
      pct: 0
    })
  })

  // Preenche com os dados reais de respostas
  answers.forEach(a => {
    const qSubject = (a as any).questions?.subject
    const qTopic = (a as any).questions?.topic
    
    if (subjectsMap[qSubject]) {
      subjectsMap[qSubject].total++
      if (a.is_correct) subjectsMap[qSubject].correct++
      
      // Tentar encontrar o tópico correspondente (match parcial ou slug)
      const topic = subjectsMap[qSubject].topics.find(t => 
        t.name.toLowerCase().includes(qTopic?.toLowerCase()) || 
        qTopic?.toLowerCase().includes(t.name.toLowerCase())
      )
      
      if (topic) {
        topic.total++
        if (a.is_correct) topic.correct++
        topic.pct = Math.round((topic.correct / topic.total) * 100)
      }
    }
  })

  const subjects = Object.entries(subjectsMap).map(([name, stats]) => ({
    name,
    pct: stats.total > 0 ? Math.round((stats.correct / stats.total) * 100) : 0,
    total: stats.total,
    topics: stats.topics,
    trend: "stable" as const
  })).sort((a, b) => b.total - a.total)

  // 4. Últimas sessões
  const recent = answers.slice(-5).reverse().map(a => ({
    subject: (a as any).questions?.subject || "Outros",
    topic: (a as any).questions?.topic || "Assunto Geral",
    correct: a.is_correct ? 1 : 0,
    total: 1,
    date: new Date(a.created_at).toLocaleDateString('pt-BR', { day: '2-digit', month: 'short' })
  }))

  // 5. Dados da Semana (Calendário)
  const last7Days = Array.from({ length: 7 }).map((_, i) => {
    const d = new Date()
    d.setDate(d.getDate() - (6 - i))
    return d.toISOString().split('T')[0]
  })

  const weekDays = last7Days.map(dateStr => {
    const dayAnswers = answers.filter(a => a.created_at.startsWith(dateStr))
    const date = new Date(dateStr)
    const dayName = ["Dom", "Seg", "Ter", "Qua", "Qui", "Sex", "Sáb"][date.getDay()]
    return {
      day: dayName,
      date: date.getDate().toString(),
      tasks: 40,
      done: dayAnswers.length,
      isToday: dateStr === today
    }
  })

  // 6. Revisões baseadas no histórico
  const getRevisions = () => {
    const revisions: { label: string; subject: any; date: string }[] = []
    const checkDays = [1, 7, 30]
    const labels = ["Revisão D+1", "Revisão D+7", "Revisão D+30"]
    
    checkDays.forEach((days, i) => {
      const targetDate = new Date()
      targetDate.setDate(targetDate.getDate() - days)
      const dateStr = targetDate.toISOString().split('T')[0]
      
      const subOnDate = answers.find(a => a.created_at.startsWith(dateStr))
      if (subOnDate) {
        revisions.push({
          label: labels[i],
          subject: (subOnDate as any).questions?.subject || "Geral",
          date: days === 1 ? "Hoje" : targetDate.toLocaleDateString('pt-BR', { day: '2-digit', month: 'short' })
        })
      }
    })
    return revisions
  }

  return {
    total,
    accuracy,
    subjects,
    recent,
    weekDays,
    careerName,
    hasPlan,
    revisions: getRevisions(),
    plan: plan,
    planDetails: plan,
    stats: [
      { label: "Taxa de Acerto", value: `${accuracy}%`, sub: "Média total", icon: "TargetIcon", color: "text-blue-500", trend: "up" },
      { label: "Questões Resolvidas", value: total.toString(), sub: "Total histórico", icon: "HelpCircleIcon", color: "text-violet-500", trend: "up" },
      { label: "Sequência", value: "7", sub: "dias seguidos", icon: "FlameIcon", color: "text-orange-500", trend: "stable" },
    ]
  }
}

export async function getStudentDashboardData(): Promise<StudentDashboardData | null> {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  if (!user) return null

  // 1. Buscar respostas do usuário
  const { data: answers } = await supabase
    .from('question_answers')
    .select('is_correct, created_at, questions(subject, topic)')
    .eq('user_id', user.id)

  const today = new Date().toISOString().split('T')[0]
  const answersToday = answers?.filter(a => a.created_at.startsWith(today)) || []

  // 1.5 Buscar Perfil
  const { data: profile } = await supabase
    .from('user_profiles')
    .select('*')
    .eq('user_id', user.id)
    .single()

  const rawCareer = profile?.career_name || "Polícia Penal do Ceará"
  const careerName = (rawCareer === "Polícia Federal" || rawCareer === "Policial Federal") 
    ? "Polícia Penal do Ceará" 
    : rawCareer
  const questionTarget = profile?.daily_questions_target || 40

  // 2. Calcular fraqueza (pior taxa de acerto por tópico com min 3 questões)
  const byTopic: Record<string, { correct: number, total: number, subject: string }> = {}
  answers?.forEach(a => {
    const q = (a as any).questions
    const s = q?.subject || "Geral"
    const t = q?.topic || "Geral"
    const key = `${s}|${t}`
    
    if (!byTopic[key]) byTopic[key] = { correct: 0, total: 0, subject: s }
    byTopic[key].total++
    if (a.is_correct) byTopic[key].correct++
  })

  let weakness = { subject: "Nenhuma matéria", topic: "Geral", scorePct: 100 }
  
  // Encontrar o tópico com pior desempenho (mínimo 3 questões para ser relevante)
  const topicStats = Object.entries(byTopic)
    .map(([key, stats]) => ({
      subject: stats.subject,
      topic: key.split('|')[1],
      scorePct: Math.round((stats.correct / stats.total) * 100),
      total: stats.total
    }))
    .filter(t => t.total >= 3)
    .sort((a, b) => a.scorePct - b.scorePct)

  if (topicStats.length > 0) {
    weakness = { 
      subject: topicStats[0].subject, 
      topic: topicStats[0].topic,
      scorePct: topicStats[0].scorePct 
    }
  } else {
    // Fallback para qualquer matéria se não houver tópicos com 3+ questões
    Object.entries(byTopic).forEach(([key, stats]) => {
      const pct = Math.round((stats.correct / stats.total) * 100)
      if (pct < weakness.scorePct) {
        weakness = { subject: stats.subject, topic: key.split('|')[1], scorePct: pct }
      }
    })
  }

  // 3. Montar objeto final
  return {
    studentName: user.user_metadata.name || "Aluno",
    streakDays: 1, 
    careerName: careerName, 
    nextTask: {
      title: "Pratique mais questões",
      description: `Você resolveu ${answersToday.length} questões hoje. Meta diária: ${questionTarget} questões.`,
      type: "questoes" as const,
      href: "/dashboard/questoes",
      remaining: Math.max(0, questionTarget - answersToday.length),
      total: questionTarget,
    },
    dailyGoal: {
      questions: { done: answersToday.length, target: questionTarget },
      flashcards: { done: 0, target: 50 },
      studyHours: { done: 0, target: 4 },
    },
    alerts: answersToday.length === 0 ? [
      {
        id: "a1",
        type: "warning" as const,
        title: "Meta diária pendente",
        description: "Você ainda não resolveu nenhuma questão hoje.",
      }
    ] : [],
    recentAccess: [
      { id: "r1", title: "Feed de Questões", type: "Simulado" as const, progress: 100, href: "/dashboard/questoes" }
    ],
    weakness: {
      subject: weakness.subject,
      topic: weakness.topic,
      scorePct: weakness.scorePct,
      actionHref: "/dashboard/questoes",
    }
  }
}

export async function getUserProfile() {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  if (!user) return null

  const { data, error } = await supabase
    .from('user_profiles')
    .select('*')
    .eq('user_id', user.id)
    .single()

  if (error && error.code !== 'PGRST116') { // PGRST116 is "no rows found"
    console.error("Erro ao buscar perfil:", error)
    return null
  }

  // Se não existir, criamos um padrão
  if (!data) {
    const { data: newProfile, error: insertError } = await supabase
      .from('user_profiles')
      .insert({
        user_id: user.id,
        full_name: user.user_metadata.name || "Aluno",
        career_name: "Polícia Penal do Ceará",
        daily_questions_target: 40
      })
      .select()
      .single()
    
    if (insertError) return null
    return newProfile
  }

  return data
}

export async function updateUserProfile(data: {
  careerName?: string
  dailyQuestionsTarget?: number
}) {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  if (!user) return { success: false, error: "Não autenticado" }

  const { error } = await supabase
    .from('user_profiles')
    .update({
      career_name: data.careerName,
      daily_questions_target: data.dailyQuestionsTarget,
    })
    .eq('user_id', user.id)

  if (error) return { success: false, error: error.message }
  
  // Limpa o cache para que as páginas reflitam a mudança imediatamente
  revalidatePath('/aluno/dashboard')
  revalidatePath('/aluno/planejamento')
  revalidatePath('/aluno/desempenho')
  revalidatePath('/dashboard/configuracoes')
  
  return { success: true }
}
export async function createEditorialQuestion(values: any) {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  if (!user) return { success: false, error: "Usuário não autenticado" }

  try {
    // BUSCA DE VÍNCULO OBRIGATÓRIO (Hieraquia: Instituição > Professor)
    let activeInstitutionId = null

    // 1. Tentar buscar o vínculo oficial
    const { data: membership } = await supabase
      .from('memberships')
      .select('institution_id')
      .eq('user_id', user.id)
      .limit(1)
      .single()

    if (membership) {
      activeInstitutionId = membership.institution_id
    } else {
      // 2. Tentar tabela ContextMembership (Prisma fallback)
      const { data: ctxMem } = await supabase
        .from('ContextMembership')
        .select('institutionId')
        .eq('userId', user.id)
        .limit(1)
        .single()
      
      if (ctxMem) activeInstitutionId = ctxMem.institutionId
    }

    // Se após a busca exaustiva não houver instituição, bloqueamos (Regra de Negócio)
    if (!activeInstitutionId) {
      console.error("ERRO: Professor órfão tentando criar questão. ID:", user.id)
      return { 
        success: false, 
        error: "Sua conta de professor não possui vínculo com nenhuma instituição. Entre em contato com o suporte." 
      }
    }

    console.log("Contexto Institucional Validado:", activeInstitutionId)

    // 1. Gerar Public Code Único
    const publicCode = `ANV-${values.meta.examYear || '2026'}-${Math.random().toString(36).substring(2, 7).toUpperCase()}`
    const examSlug = values.meta.examName ? values.meta.examName.toLowerCase().replace(/ /g, '-') : 'original'

    // 2. Inserir na tabela questions
    // Nota: workspace_id e institution_id podem precisar de IDs reais de tabelas relacionadas.
    // Se o erro de RLS persistir, pode ser necessário garantir que o usuário tenha um perfil de professor criado.
    const { data: question, error: qError } = await supabase
      .from('questions')
      .insert({
        public_code: publicCode,
        exam_name: values.meta.examName || "Quero Passar Editorial",
        exam_slug: examSlug,
        subject: values.meta.subject,
        topic: values.meta.topic,
        career: values.meta.career,
        institution_name: values.meta.institutionName,
        board_name: values.meta.board,
        exam_year: values.meta.examYear,
        source_type: values.meta.sourceType,
        difficulty: values.meta.difficulty,
        stem: values.content.stem,
        created_by: user.id,
        workspace_id: activeInstitutionId,
        institution_id: activeInstitutionId,
        is_active: true,
      })
      .select()
      .single()

    if (qError) throw qError

    // 3. Inserir alternativas e mapear ID da correta
    const optionsToInsert = values.options.map((opt: any, index: number) => ({
      question_id: question.id,
      option_key: opt.key,
      letter: opt.key.toUpperCase(),
      text: opt.text,
      sort_order: index + 1
    }))

    const { data: insertedOptions, error: oError } = await supabase
      .from('question_options')
      .insert(optionsToInsert)
      .select()

    if (oError) throw oError

    // 4. Atualizar a questão com o ID da alternativa correta real
    const correctOption = insertedOptions.find(o => o.option_key === values.correctOptionKey)
    if (correctOption) {
      await supabase
        .from('questions')
        .update({ correct_option_id: correctOption.id })
        .eq('id', question.id)
    }

    // 5. Inserir Explicação
    const { data: explanation, error: eError } = await supabase
      .from('question_explanations')
      .insert({
        question_id: question.id,
        summary: values.explanation.summary,
        why_correct: values.explanation.whyCorrect,
        teacher_note: values.explanation.teacherNote
      })
      .select()
      .single()

    if (eError) throw eError

    // 6. Inserir motivos das incorretas
    if (values.explanation.whyIncorrect.length > 0) {
      const incorrectToInsert = values.explanation.whyIncorrect.map((item: any) => ({
        explanation_id: explanation.id,
        option_key: item.optionKey,
        reason: item.reason
      }))

      const { error: iError } = await supabase
        .from('question_explanation_incorrect_items')
        .insert(incorrectToInsert)

      if (iError) throw iError
    }

    revalidatePath('/professor/questoes')
    revalidatePath('/dashboard/questoes')
    
    return { success: true, data: { id: question.id, publicCode } }

  } catch (error: any) {
    console.error("Erro ao criar questão editorial:", error)
    return { success: false, error: error.message }
  }
}

export async function setupStudyPlan(hoursPerDay: number, config: any) {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  if (!user) return { success: false, error: "Não autenticado" }

  // Limpa plano anterior antes de criar o novo
  await supabase.from('study_plans').delete().eq('user_id', user.id)

  const { error } = await supabase
    .from('study_plans')
    .insert({
      user_id: user.id,
      hours_per_day: hoursPerDay,
      career_id: "Polícia Penal do Ceará",
      config: config
    })

  if (error) {
    console.error("Erro ao criar plano:", error)
    return { success: false, error: error.message }
  }

  revalidatePath('/aluno/planejamento')
  return { success: true }
}

export async function deleteStudyPlan() {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  if (!user) return { success: false, error: "Não autenticado" }

  const { error, count } = await supabase
    .from('study_plans')
    .delete({ count: 'exact' })
    .eq('user_id', user.id)

  if (error) {
    console.error("Erro ao deletar plano:", error)
    return { success: false, error: error.message }
  }

  if (count === 0) {
    console.warn("Nenhum plano deletado. Verifique as políticas de RLS.")
    return { success: false, error: "Nenhum plano encontrado para deletar." }
  }

  revalidatePath('/aluno/planejamento')
  return { success: true }
}

export async function saveUserFilter(data: {
  name: string
  keyword: string
  status: string
  selected: any
}) {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  if (!user) return { success: false, error: "Não autenticado" }

  const { data: savedFilter, error } = await supabase
    .from('saved_filters')
    .insert({
      user_id: user.id,
      name: data.name,
      keyword: data.keyword,
      status: data.status,
      selected: data.selected
    })
    .select()
    .single()

  if (error) {
    console.error("Erro ao salvar filtro no banco:", error)
    return { success: false, error: error.message }
  }

  revalidatePath('/dashboard/questoes')
  return { success: true, data: savedFilter }
}

export async function getUserFilters() {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  if (!user) return []

  const { data, error } = await supabase
    .from('saved_filters')
    .select('*')
    .eq('user_id', user.id)
    .order('created_at', { ascending: false })

  if (error) {
    console.error("Erro ao buscar filtros salvos:", error)
    return []
  }

  return data
}

export async function deleteUserFilter(id: string) {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  if (!user) return { success: false }

  const { error } = await supabase
    .from('saved_filters')
    .delete()
    .eq('id', id)
    .eq('user_id', user.id)

  if (error) return { success: false, error: error.message }
  
  revalidatePath('/dashboard/questoes')
  return { success: true }
}
