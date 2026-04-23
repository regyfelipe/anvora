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
  topicPerformance: {
    topic: string
    subject: string
    total: number
    accuracy: number
  }[]
  weakestTopics: {
    topic: string
    subject: string
    accuracy: number
    total: number
  }[]
  recent?: {
    subject: string
    topic: string
    correct: number
    total: number
    date: string
  }[]
  premium?: {
    xp: number
    level: number
    levelProgress: number
    ranking: number
    streak: number
    worstSubject: string
    bestSubject: string
    insights: {
      type: string
      title: string
      text: string
    }[]
  }
}

export async function getStudentPerformance(): Promise<PerformanceStats | null> {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  if (!user) return null

  // 1. Buscar todas as respostas do usuário com os nomes das disciplinas e tópicos
  const { data: answers, error } = await supabase
    .from('question_answers')
    .select(`
      *,
      questions (
        subject,
        topic
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
      subjectPerformance: [],
      topicPerformance: [],
      weakestTopics: []
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

  // 4. Evolução Diária (Últimos 15 dias)
  const evolutionMap = new Map<string, { count: number; correct: number }>()
  
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

  // 5. Desempenho por Disciplina e Tópico
  const subjectMap = new Map<string, { total: number; correct: number }>()
  const topicMap = new Map<string, { total: number; correct: number; subject: string }>()

  answers.forEach(a => {
    const q = a.questions as any
    const subject = q?.subject || "Outros"
    const topic = q?.topic || "Geral"
    
    // Subject stats
    const currentSub = subjectMap.get(subject) || { total: 0, correct: 0 }
    subjectMap.set(subject, {
      total: currentSub.total + 1,
      correct: currentSub.correct + (a.is_correct ? 1 : 0)
    })

    // Topic stats
    const topicKey = `${subject}|${topic}`
    const currentTopic = topicMap.get(topicKey) || { total: 0, correct: 0, subject }
    topicMap.set(topicKey, {
      total: currentTopic.total + 1,
      correct: currentTopic.correct + (a.is_correct ? 1 : 0),
      subject
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

  const topicPerformance = Array.from(topicMap.entries())
    .map(([key, stats]) => ({
      topic: key.split('|')[1],
      subject: stats.subject,
      total: stats.total,
      accuracy: Math.round((stats.correct / stats.total) * 100)
    }))
    .sort((a, b) => b.total - a.total)

  // Identificar tópicos fracos (com pelo menos 5 questões e precisão < 60%)
  const weakestTopics = topicPerformance
    .filter(t => t.total >= 3) // Baixando para 3 questões para ser mais visível no início
    .sort((a, b) => a.accuracy - b.accuracy)
    .slice(0, 5)

  // --- LÓGICA PREMIUM ---
  const xpPerQuestion = 10
  const xpPerCorrect = 15
  const totalXP = (totalQuestions * xpPerQuestion) + (correctAnswers * xpPerCorrect)
  const currentLevel = Math.floor(Math.sqrt(totalXP / 100)) + 1
  const xpForNextLevel = Math.pow(currentLevel, 2) * 100
  const prevLevelXP = Math.pow(currentLevel - 1, 2) * 100
  const levelProgress = Math.round(((totalXP - prevLevelXP) / (xpForNextLevel - prevLevelXP)) * 100)

  // Ranking Simulado
  const rankingPercentile = accuracyRate > 80 ? 92 : accuracyRate > 60 ? 74 : 45

  // Insights Inteligentes
  const insights = []
  const worstSubject = subjectPerformance.length > 0 ? [...subjectPerformance].sort((a, b) => a.accuracy - b.accuracy)[0] : null
  const bestSubject = subjectPerformance.length > 0 ? [...subjectPerformance].sort((a, b) => b.accuracy - a.accuracy)[0] : null

  if (worstSubject && worstSubject.accuracy < 60) {
    insights.push({
      type: "warning",
      title: "Alerta de Desempenho",
      text: `Você está com dificuldade em ${worstSubject.subject} (${worstSubject.accuracy}%). Recomendamos focar em questões básicas desta matéria.`
    })
  }

  if (accuracyRate > 70) {
    insights.push({
      type: "success",
      title: "Ritmo Excelente",
      text: "Sua taxa de acerto está acima da média dos aprovados para esta carreira."
    })
  }

  // --- ATIVIDADE RECENTE ---
  const recentActivities = [...answers]
    .reverse()
    .slice(0, 5)
    .map(a => ({
      subject: a.questions?.subject || "Geral",
      topic: a.questions?.topic || "Diversos",
      correct: a.is_correct ? 1 : 0,
      total: 1,
      date: new Date(a.created_at).toLocaleDateString('pt-BR', { day: '2-digit', month: '2-digit' })
    }))

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
    subjectPerformance,
    topicPerformance,
    weakestTopics,
    recent: recentActivities,
    premium: {
      xp: totalXP,
      level: currentLevel,
      levelProgress,
      ranking: rankingPercentile,
      streak: daysStudied,
      worstSubject: worstSubject?.subject || "N/A",
      bestSubject: bestSubject?.subject || "N/A",
      insights
    }
  }
}
