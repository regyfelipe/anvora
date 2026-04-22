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
}

export async function getFilterOptions() {
  const supabase = await createClient()

  // Buscamos os valores únicos presentes no banco
  const [
    { data: subjects },
    { data: topics },
    { data: boards },
    { data: careers },
    { data: years },
  ] = await Promise.all([
    supabase.from('questions').select('subject').eq('is_active', true),
    supabase.from('questions').select('topic').eq('is_active', true),
    supabase.from('questions').select('board_name').eq('is_active', true),
    supabase.from('questions').select('career').eq('is_active', true),
    supabase.from('questions').select('exam_year').eq('is_active', true),
  ])

  // Processamos para remover duplicatas e formatar
  const getUnique = (arr: any[], key: string) => 
    Array.from(new Set(arr?.map(item => item[key]).filter(Boolean)))
      .sort()
      .map(val => ({ value: String(val), label: String(val) }))

  return {
    disciplina: getUnique(subjects || [], 'subject'),
    assunto: getUnique(topics || [], 'topic'),
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
      if (filters.disciplina?.length) query = query.in('subject', filters.disciplina)
      if (filters.assunto?.length) query = query.in('topic', filters.assunto)
      if (filters.banca?.length) query = query.in('board_name', filters.banca)
      if (filters.carreira?.length) query = query.in('career', filters.carreira)
      if (filters.ano?.length) query = query.in('exam_year', filters.ano)
      if (filters.nivel?.length) query = query.in('difficulty', filters.nivel)
      if (filters.search) query = query.ilike('stem', `%${filters.search}%`)

      // Filtro para mostrar apenas as questões do professor logado
      if (filters.filter === 'mine' && user) {
        query = query.eq('created_by', user.id)
      }

      if (filters.page !== undefined && filters.pageSize !== undefined) {
        const from = filters.page * filters.pageSize
        const to = from + filters.pageSize - 1
        query = query.range(from, to)
      }
    }

    const { data: questions, error: qError, count } = await query.order('created_at', { ascending: false })

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
