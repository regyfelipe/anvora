import { createClient } from "@/lib/supabase/server"
import { QuestionData } from "@/lib/mocks/questions"

export interface QuestionFilters {
  disciplina?: string[]
  assunto?: string[]
  banca?: string[]
  carreira?: string[]
  ano?: string[]
  nivel?: string[]
  search?: string
  page?: number
  pageSize?: number
  filter?: string // 'mine' para ver apenas as do usuário logado
  sort?: string
}

export async function getFilterOptions() {
  const supabase = await createClient()

  // Buscamos os valores únicos presentes no banco
  const [
    { data: subjects },
    { data: topicsData },
    { data: boards },
    { data: careers },
    { data: years },
  ] = await Promise.all([
    supabase.from('questions').select('subject').eq('is_active', true),
    supabase.from('questions').select('subject, topic').eq('is_active', true),
    supabase.from('questions').select('board_name').eq('is_active', true),
    supabase.from('questions').select('career').eq('is_active', true),
    supabase.from('questions').select('exam_year').eq('is_active', true),
  ])

  // Auxiliar para normalizar texto (Primeira letra maiúscula, resto minúsculo)
  const normalize = (text: string) => {
    if (!text) return ""
    const lower = text.trim().toLowerCase()
    return lower.charAt(0).toUpperCase() + lower.slice(1)
  }

  // Processamos para remover duplicatas e formatar
  const getUnique = (arr: any[], key: string) => {
    const normalized = arr?.map(item => normalize(String(item[key]))).filter(Boolean)
    return Array.from(new Set(normalized))
      .sort()
      .map(val => ({ value: String(val), label: String(val) }))
  }

  // Processar tópicos com relação à disciplina
  const uniqueTopicsMap = new Map<string, { topic: string, subject: string }>()
  
  topicsData?.forEach(t => {
    if (!t.topic || !t.subject) return
    const normTopic = normalize(t.topic)
    const normSubject = normalize(t.subject)
    const key = `${normTopic}|${normSubject}`
    
    if (!uniqueTopicsMap.has(key)) {
      uniqueTopicsMap.set(key, { topic: normTopic, subject: normSubject })
    }
  })

  const uniqueTopics = Array.from(uniqueTopicsMap.values())
    .sort((a, b) => a.topic.localeCompare(b.topic))
    .map(t => ({ value: t.topic, label: t.topic, subject: t.subject }))

  return {
    disciplina: getUnique(subjects || [], 'subject'),
    assunto: uniqueTopics,
    banca: getUnique(boards || [], 'board_name'),
    carreira: getUnique(careers || [], 'career'),
    ano: getUnique(years || [], 'exam_year'),
    nivel: [
      { value: 'easy', label: 'Fácil' },
      { value: 'medium', label: 'Médio' },
      { value: 'hard', label: 'Difícil' }
    ]
  }
}

export async function getQuestions(filters?: QuestionFilters): Promise<{ questions: QuestionData[], total: number }> {
  try {
    const supabaseClient = await createClient()
    const { data: { user } } = await supabaseClient.auth.getUser()

    let query = supabaseClient
      .from('questions')
      .select(`
        *,
        question_options (*),
        question_explanations (
          *,
          question_explanation_incorrect_items (*)
        ),
        question_answers (
          is_correct,
          option_id,
          user_id,
          created_at
        )
      `, { count: 'exact' })
      .eq('is_active', true)

    if (filters) {
      if (filters.disciplina?.length) {
        const orFilter = filters.disciplina.map(d => `subject.ilike.${d}`).join(',')
        query = query.or(orFilter)
      }
      if (filters.assunto?.length) {
        const orFilter = filters.assunto.map(a => `topic.ilike.${a}`).join(',')
        query = query.or(orFilter)
      }
      if (filters.banca?.length) query = query.in('board_name', filters.banca)
      if (filters.carreira?.length) query = query.in('career', filters.carreira)
      if (filters.ano?.length) query = query.in('exam_year', filters.ano)
      if (filters.nivel?.length) query = query.in('difficulty', filters.nivel)
      if (filters.search) query = query.ilike('stem', `%${filters.search}%`)

      // Filtro para mostrar apenas as questões do professor logado
      if (filters.filter === 'mine' && user) {
        query = query.eq('created_by', user.id)
      }

      // Dynamic Sorting
      const sort = filters.sort || "recente"
      if (sort === "recente") {
        query = query.order('created_at', { ascending: false })
      } else if (sort === "antiga") {
        query = query.order('created_at', { ascending: true })
      } else if (sort === "dificuldade") {
        query = query.order('difficulty', { ascending: false })
      } else {
        // Relevância (default) ou qualquer outro
        query = query.order('created_at', { ascending: false })
      }

      if (filters.page !== undefined && filters.pageSize !== undefined) {
        const from = filters.page * filters.pageSize
        const to = from + filters.pageSize - 1
        query = query.range(from, to)
      }
    } else {
      query = query.order('created_at', { ascending: false })
    }

    const { data: questions, error: qError, count } = await query

    if (qError) {
      console.error("Supabase Error:", qError.message)
      return { questions: [], total: 0 }
    }

    if (!questions) return { questions: [], total: 0 }

    const mappedQuestions = questions.map((q: any, index: number) => {
      // ... (rest of the mapping logic stays the same)
      const rawOptions = q.question_options || []
      const mappedOptions = rawOptions.map((opt: any) => ({
        id: opt.id,
        letter: opt.letter,
        text: opt.text,
        sortOrder: opt.sort_order,
        optionKey: opt.option_key
      })).sort((a: any, b: any) => a.sortOrder - b.sortOrder)

      let exp = null
      if (Array.isArray(q.question_explanations)) {
        exp = q.question_explanations[0]
      } else if (q.question_explanations) {
        exp = q.question_explanations
      }
      
      let mappedExplanation = undefined
      
      if (exp) {
        const rawIncorrect = exp.question_explanation_incorrect_items || []
        mappedExplanation = {
          summary: exp.summary,
          whyCorrect: exp.why_correct,
          teacherNote: exp.teacher_note,
          whyIncorrect: rawIncorrect.map((item: any) => {
            const relatedOption = mappedOptions.find((o: any) => o.optionKey === item.option_key)
            return {
              optionId: relatedOption?.id || item.option_key,
              reason: item.reason
            }
          })
        }
      }

      // Calculate global stats
      const allAnswers = q.question_answers || []
      const globalTotal = allAnswers.length
      const globalCorrect = allAnswers.filter((a: any) => a.is_correct).length
      const accuracyRate = globalTotal > 0 ? Math.round((globalCorrect / globalTotal) * 100) : 0

      // Get current user's last attempt
      const userAnswers = user ? allAnswers.filter((a: any) => a.user_id === user.id) : []
      const lastAttempt = userAnswers.length > 0 
        ? userAnswers.sort((a: any, b: any) => new Date(b.created_at).getTime() - new Date(a.created_at).getTime())[0]
        : null

      return {
        id: q.id,
        publicCode: q.public_code,
        index: index + 1,
        subject: q.subject,
        topic: q.topic,
        career: q.career,
        difficulty: q.difficulty,
        sourceType: q.source_type,
        year: q.exam_year,
        board: q.board_name,
        institution: q.institution_name,
        exam: q.exam_name,
        stem: q.stem,
        options: mappedOptions.map(({ id, letter, text }: any) => ({ id, letter, text })),
        correctOptionId: q.correct_option_id,
        explanation: mappedExplanation,
        isAnnulled: q.is_annulled,
        annulledReason: q.annulled_reason,
        hasEssayCommentary: q.has_essay_commentary,
        stats: {
          accuracyRate: accuracyRate,
          totalAnswers: globalTotal
        },
        userState: {
          isFavorited: false,
          isInNotebook: false,
          lastAttempt: lastAttempt ? {
            selectedOptionId: lastAttempt.option_id,
            isCorrect: lastAttempt.is_correct,
            answeredAt: lastAttempt.created_at
          } : null
        }
      }
    })

    return {
      questions: mappedQuestions,
      total: count || 0
    }
  } catch (err) {
    console.error("Critical error in getQuestions:", err)
    return { questions: [], total: 0 }
  }
}
