export interface Simulado {
  id: string
  title: string
  career: string
  year: number
  totalQuestions: number
  durationMinutes: number
  status: "not_started" | "in_progress" | "completed"
  progress?: number // 0-100
  score?: number // 0-100
  date?: string
}

export const MOCK_SIMULADOS: Simulado[] = [
  {
    id: "sim-1",
    title: "Simulado 01 - PPCE (Polícia Penal CE)",
    career: "Polícia Penal",
    year: 2026,
    totalQuestions: 60,
    durationMinutes: 240,
    status: "in_progress",
    progress: 45,
  },
  {
    id: "sim-2",
    title: "Simulado Geral - Direito Constitucional",
    career: "Geral",
    year: 2026,
    totalQuestions: 40,
    durationMinutes: 120,
    status: "not_started",
  },
  {
    id: "sim-3",
    title: "Prova Anterior - PC-CE 2021",
    career: "Polícia Civil",
    year: 2021,
    totalQuestions: 80,
    durationMinutes: 300,
    status: "completed",
    score: 82,
    date: "2026-04-15",
  },
  {
    id: "sim-4",
    title: "Simulado 02 - PPCE (Especializado)",
    career: "Polícia Penal",
    year: 2026,
    totalQuestions: 60,
    durationMinutes: 240,
    status: "not_started",
  }
]
