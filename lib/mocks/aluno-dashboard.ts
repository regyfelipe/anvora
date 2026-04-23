export type NextTaskType = "questoes" | "flashcards" | "simulado" | "teoria";

export type StudentDashboardData = {
  studentName: string;
  streakDays: number;
  careerName: string;
  institutionName?: string;
  className?: string;
  professorName?: string;
  nextTask: {
    title: string;
    description: string;
    type: NextTaskType;
    href: string;
    remaining: number;
    total: number;
  };
  dailyGoal: {
    questions: { done: number; target: number };
    flashcards: { done: number; target: number };
    studyHours: { done: number; target: number };
  };
  alerts: Array<{
    id: string;
    type: "warning" | "danger" | "info";
    title: string;
    description: string;
  }>;
  recentAccess: Array<{
    id: string;
    title: string;
    type: "Simulado" | "Caderno" | "Flashcards" | "Trilha";
    progress: number;
    href: string;
  }>;
  weakness: {
    subject: string;
    topic?: string;
    scorePct: number;
    actionHref: string;
  };
};

export const MOCK_STUDENT_DASHBOARD: StudentDashboardData = {
  studentName: "Regy",
  streakDays: 7,
  careerName: "Polícia Federal",
  institutionName: "Instituição Alfa",
  className: "Turma PF-01",
  professorName: "Prof. Regy",
  nextTask: {
    title: "Direitos e Garantias Fundamentais",
    description: "Você parou na bateria de questões de Direito Constitucional. Faltam 12 questões para concluir a meta de hoje.",
    type: "questoes",
    href: "/aluno/questoes?t=direitos-fundamentais",
    remaining: 12,
    total: 40,
  },
  dailyGoal: {
    questions: { done: 28, target: 40 },
    flashcards: { done: 15, target: 50 },
    studyHours: { done: 2.5, target: 4 },
  },
  alerts: [
    {
      id: "a1",
      type: "danger",
      title: "Revisão D+7 pendente",
      description: "Você tem 42 flashcards atrasados de Direito Administrativo.",
    },
    {
      id: "a2",
      type: "warning",
      title: "Lógica abaixo da média",
      description: "Sua taxa de acerto caiu para 58%. O professor sugere focar neste bloco.",
    },
    {
      id: "a3",
      type: "info",
      title: "Simulado liberado",
      description: "O Prof. Regy enviou o Simulado Bloco II. Prazo até sexta.",
    }
  ],
  recentAccess: [
    {
      id: "r1",
      title: "Simulado Polícia Federal - Bloco I",
      type: "Simulado",
      progress: 60,
      href: "/aluno/simulados/pf-bloco-1",
    },
    {
      id: "r2",
      title: "Caderno de Erros: Constitucional",
      type: "Caderno",
      progress: 100,
      href: "/aluno/caderno/erros-const",
    },
    {
      id: "r3",
      title: "Direito Administrativo - Princípios",
      type: "Flashcards",
      progress: 20,
      href: "/aluno/flashcards/dir-adm",
    },
  ],
  weakness: {
    subject: "Raciocínio Lógico",
    scorePct: 40,
    actionHref: "/aluno/questoes/treinar/rlm",
  }
};
