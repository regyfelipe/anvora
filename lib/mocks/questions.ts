export type Difficulty = "easy" | "medium" | "hard"
export type SourceType = "official" | "adapted" | "original"

export interface QuestionOption {
  id: string
  letter: string
  text: string
}

export interface StructuredExplanation {
  summary: string
  whyCorrect: string
  whyIncorrect: Array<{
    optionId: string
    reason: string
  }>
  teacherNote?: string
}

export interface QuestionStats {
  accuracyRate?: number
  totalAnswers?: number
}

export interface QuestionUserState {
  isFavorited?: boolean
  isInNotebook?: boolean
  isReported?: boolean
  lastAttempt?: {
    selectedOptionId: string | null
    isCorrect: boolean
    answeredAt: string
  } | null
}

export interface QuestionData {
  id: string
  publicCode: string
  index: number
  subject: string
  topic: string
  career?: string
  difficulty?: Difficulty
  sourceType?: SourceType

  year: number
  board: string
  institution: string
  exam: string

  stem: string
  options: QuestionOption[]
  correctOptionId: string
  explanation?: StructuredExplanation

  isAnnulled?: boolean
  annulledReason?: string
  hasEssayCommentary?: boolean

  stats?: QuestionStats
  userState?: QuestionUserState
}

export const MOCK_QUESTIONS: QuestionData[] = [
  {
    id: "a4559c3b-8c20-4a4a-9445-d7ef5509bcb5",
    publicCode: "Q4002294",
    index: 2,
    subject: "Terapia Ocupacional",
    topic: "Ética e Legislação Profissional",
    career: "Saúde / Terapia Ocupacional",
    sourceType: "original",
    difficulty: "medium",
    year: 2026,
    board: "FURB",
    institution: "FURB - SC",
    exam: "FURB - 2026 - FURB - SC - Terapeuta Ocupacional",
    stats: {
      accuracyRate: 42,
      totalAnswers: 1250,
    },
    userState: {
      isFavorited: false,
      isInNotebook: true,
      lastAttempt: null,
    },
    stem: "No Centro Especializado em Reabilitação (CER) de um hospital universitário municipal, uma equipe multiprofissional discute, em reunião de formação continuada, os fundamentos da conduta ética no serviço público. Uma terapeuta ocupacional sustenta que agir eticamente significa, antes de tudo, cumprir protocolos clínicos e seguir as ordens da chefia, pois isso garantiria a conformidade legal da atuação. Uma fisioterapeuta discorda, argumentando que a conformidade legal é condição necessária, mas não suficiente: a conduta ética exige orientação interna, motivação genuína pelo interesse público e compromisso que vai além do que a norma prescreve. Uma fonoaudióloga, por sua vez, pondera que a distinção proposta pela fisioterapeuta corresponde, na verdade, ao campo da moral e não da ética, pois a moral seria responsável pela regulação das motivações internas, enquanto a ética se ocuparia das normas externas de conduta. Considerando os fundamentos teóricos da ética no serviço público, assinale a alternativa correta:",
    options: [
      { id: "a", letter: "A", text: "A terapeuta ocupacional está correta: no serviço público, a legalidade é o parâmetro suficiente e definitivo da conduta ética, pois a norma jurídica já incorpora os valores morais essenciais à convivência. A fisioterapeuta confunde ética com moral ao invocar motivações internas como critério de correção da conduta." },
      { id: "b", letter: "B", text: "A fisioterapeuta e a fonoaudióloga estão parcialmente corretas: a conduta ética exige motivação interna e orientação ao interesse público, e essa dimensão interna corresponde, simultaneamente, ao campo da ética e ao da moral, que se confundem no contexto do serviço público." },
      { id: "c", letter: "C", text: "A fonoaudióloga está correta: a ética refere-se às normas externas e institucionais de conduta, ao passo que a moral é o campo da reflexão racional e da motivação interna. O argumento da fisioterapeuta é válido, mas pertence ao domínio moral, não ao ético." },
      { id: "d", letter: "D", text: "A fisioterapeuta está correta: a conformidade legal é pressuposto, mas a conduta ética exige orientação interna - motivação, zelo e compromisso com o interesse público - que transcende o cumprimento formal de normas. A fonoaudióloga incorre em inversão conceitual, pois é a moral que se ocupa dos costumes e práticas culturais, sendo a ética o campo da reflexão racional sobre o agir correto." },
      { id: "e", letter: "E", text: "A terapeuta ocupacional está parcialmente correta: o cumprimento de protocolos e ordens legais é o núcleo da conduta ética do servidor público, sendo a motivação interna relevante apenas como critério de excelência profissional, sem repercussão sobre a responsabilização ética do agente." }
    ],
    correctOptionId: "d",
    explanation: {
      summary: "A distinção clássica aponta a moral como ligada aos costumes e condutas internas/subjetivas, enquanto a ética é a reflexão crítica e racional sobre o agir externo.",
      whyCorrect: "A fisioterapeuta acerta ao destacar que a conduta ética transcende a mera legalidade, exigindo compromisso genuíno com o interesse público. A fonoaudióloga inverte os conceitos: a moral se liga aos costumes e motivações íntimas, enquanto a ética é o campo da reflexão filosófica/racional sobre essas normas.",
      whyIncorrect: [
        { optionId: "a", reason: "A legalidade nunca é parâmetro suficiente. Existem condutas legais que são imorais ou antiéticas (Princípio da Moralidade Administrativa)." },
        { optionId: "b", reason: "Ética e moral não se confundem, embora se complementem. Possuem objetos materiais distintos na filosofia prática." },
        { optionId: "c", reason: "Inversão completa de conceitos. A moral refere-se mais às motivações internas e regras culturais, enquanto a ética é a reflexão estruturada sobre o agir." },
        { optionId: "e", reason: "A motivação interna tem sim repercussão ética e moral no serviço público, não sendo mero critério de 'excelência profissional'." }
      ],
      teacherNote: "Atenção especial à distinção entre Moral e Ética, um dos temas mais cobrados em Ética no Serviço Público por bancas como CESPE e FCC."
    }
  },
  {
    id: "b4559c3b-8c20-4a4a-9445-d7ef5509bcb6",
    publicCode: "Q4002295",
    index: 3,
    subject: "Direito Constitucional",
    topic: "Direitos e Garantias Fundamentais",
    career: "Carreiras Policiais",
    sourceType: "official",
    difficulty: "easy",
    year: 2026,
    board: "CESPE / CEBRASPE",
    institution: "Defensoria Pública da União",
    exam: "DPU - 2026 - Analista",
    stats: {
      accuracyRate: 85,
      totalAnswers: 34500,
    },
    userState: {
      isFavorited: true,
      isInNotebook: false,
      lastAttempt: {
        selectedOptionId: "c",
        isCorrect: true,
        answeredAt: "2026-04-10T14:32:00Z",
      },
    },
    stem: "De acordo com a Constituição Federal de 1988 e a jurisprudência consolidada do Supremo Tribunal Federal, analise as afirmações relativas à liberdade de expressão e direito de reunião, e em seguida indique a alternativa correta:",
    options: [
      { id: "a", letter: "A", text: "O direito de reunião é absoluto e prescinde de aviso prévio à autoridade competente, podendo ocorrer em qualquer horário, desde que seja pacífico." },
      { id: "b", letter: "B", text: "O anonimato é garantido na expressão da atividade intelectual, artística e científica." },
      { id: "c", letter: "C", text: "São livres as manifestações de pensamento, independentemente da forma como ocorrem, sendo, no entanto, vedado o anonimato." },
      { id: "d", letter: "D", text: "A manifestação do pensamento é livre, mas submete-se sempre a censura prévia para garantir a proteção de terceiros." }
    ],
    correctOptionId: "c",
    explanation: {
      summary: "O texto constitucional assegura a liberdade de manifestação do pensamento, mas veda explicitamente o anonimato (art. 5º, IV, CF/88).",
      whyCorrect: "Cristalização literal do art. 5º, IV da CF/88: 'é livre a manifestação do pensamento, sendo vedado o anonimato'. A vedação ao anonimato garante que o autor possa ser responsabilizado por injúria, difamação ou calúnia.",
      whyIncorrect: [
        { optionId: "a", reason: "Nenhum direito fundamental é absoluto. O aviso prévio, embora não seja formal, é entendido pelo STF como necessário para que a autoridade se prepare para o evento." },
        { optionId: "b", reason: "O anonimato é explicitamente vedado pela Constituição Federal." },
        { optionId: "d", reason: "A CF/88 proíbe expressamente qualquer forma de censura prévia de natureza política, ideológica ou artística." }
      ]
    }
  }
]
