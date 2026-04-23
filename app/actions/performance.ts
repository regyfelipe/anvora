"use server"

import { createClient } from "@/lib/supabase/server"

export interface PerformanceStats {
  totalQuestions: number
  correctAnswers: number
  incorrectAnswers: number
  accuracyRate: number
  totalTimeSeconds: number
  averageTimeSeconds: number
  daysStudied: number
  totalDays: number // Dias totais desde o início
  consistencyRate: number
  dailyEvolution: {
    date: string
    questions: number
    accuracy: number
  }[]
  subjectPerformance: {
    subject: string
    total: number
    accuracy: number
  }[]
}

export async function getStudentPerformance(): Promise<PerformanceStats | null> {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  if (!user) return null

  // 1. Buscar todas as respostas do usuário com os nomes das disciplinas
  const { data: answers, error } = await supabase
    .from('question_answers')
    .select(`
      *,
      questions (
        subject
      )
    `)
    .eq('user_id', user.id)
    .order('created_at', { ascending: true })

  if (error) {
    console.error("Error fetching performance data:", error)
    return null
  }

  if (!answers || answers.length === 0) {
    return {
      totalQuestions: 0,
      correctAnswers: 0,
      incorrectAnswers: 0,
      accuracyRate: 0,
      totalTimeSeconds: 0,
      averageTimeSeconds: 0,
      daysStudied: 0,
      totalDays: 0,
      consistencyRate: 0,
      dailyEvolution: [],
      subjectPerformance: []
    }
  }

  // 2. Estatísticas Gerais
  const totalQuestions = answers.length
  const correctAnswers = answers.filter(a => a.is_correct).length
  const incorrectAnswers = totalQuestions - correctAnswers
  const accuracyRate = Math.round((correctAnswers / totalQuestions) * 100)
  const totalTimeSeconds = answers.reduce((acc, a) => acc + (a.time_spent_seconds || 0), 0)
  const averageTimeSeconds = totalQuestions > 0 ? Math.round(totalTimeSeconds / totalQuestions) : 0

  // 3. Constância e Dias Estudados
  const firstStudyDate = new Date(answers[0].created_at)
  const now = new Date()
  const totalDaysDiff = Math.max(1, Math.ceil((now.getTime() - firstStudyDate.getTime()) / (1000 * 60 * 60 * 24)))
  
  const studyDaysSet = new Set(answers.map(a => new Date(a.created_at).toLocaleDateString()))
  const daysStudied = studyDaysSet.size
  const consistencyRate = Math.round((daysStudied / totalDaysDiff) * 100)

  // 4. Evolução Diária (Últimos 30 dias)
  const evolutionMap = new Map<string, { count: number; correct: number }>()
  
  // Preencher os últimos 15 dias com zero para o gráfico não ficar vazio
  const last15Days = Array.from({ length: 15 }).map((_, i) => {
    const d = new Date()
    d.setDate(d.getDate() - (14 - i))
    return d.toLocaleDateString('pt-BR', { day: '2-digit', month: '2-digit' })
  })

  last15Days.forEach(date => evolutionMap.set(date, { count: 0, correct: 0 }))

  answers.forEach(a => {
    const date = new Date(a.created_at).toLocaleDateString('pt-BR', { day: '2-digit', month: '2-digit' })
    if (evolutionMap.has(date)) {
      const current = evolutionMap.get(date)!
      evolutionMap.set(date, {
        count: current.count + 1,
        correct: current.correct + (a.is_correct ? 1 : 0)
      })
    }
  })

  const dailyEvolution = Array.from(evolutionMap.entries()).map(([date, stats]) => ({
    date,
    questions: stats.count,
    accuracy: stats.count > 0 ? Math.round((stats.correct / stats.count) * 100) : 0
  }))

  // 5. Desempenho por Disciplina (Top 5)
  const subjectMap = new Map<string, { total: number; correct: number }>()
  answers.forEach(a => {
    const subject = (a.questions as any)?.subject || "Outros"
    const current = subjectMap.get(subject) || { total: 0, correct: 0 }
    subjectMap.set(subject, {
      total: current.total + 1,
      correct: current.correct + (a.is_correct ? 1 : 0)
    })
  })

  const subjectPerformance = Array.from(subjectMap.entries())
    .map(([subject, stats]) => ({
      subject,
      total: stats.total,
      accuracy: Math.round((stats.correct / stats.total) * 100)
    }))
    .sort((a, b) => b.total - a.total)
    .slice(0, 5)

  return {
    totalQuestions,
    correctAnswers,
    incorrectAnswers,
    accuracyRate,
    totalTimeSeconds,
    averageTimeSeconds,
    daysStudied,
    totalDays: totalDaysDiff,
    consistencyRate,
    dailyEvolution,
    subjectPerformance
  }
}
