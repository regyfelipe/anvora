import * as z from "zod"

export const questionEditorialSchema = z.object({
  contextId: z.string().min(1, "O contexto é obrigatório"),
  scope: z.enum(["personal", "institution", "group", "class"]),

  meta: z.object({
    subject: z.string().min(1, "A disciplina é obrigatória"),
    topic: z.string().min(1, "O assunto é obrigatório"),
    subtopic: z.string().optional(),
    career: z.string().optional(),
    board: z.string().optional(),
    institutionName: z.string().optional(),
    examName: z.string().optional(),
    examYear: z.number().int().min(1900).max(2100).optional(),
    sourceType: z.enum(["official", "adapted", "original"]),
    difficulty: z.enum(["easy", "medium", "hard"]),
    tags: z.array(z.string()).optional(),
  }),

  content: z.object({
    stem: z.string().min(1, "O enunciado é obrigatório"),
    questionType: z.enum(["multiple_choice"]),
  }),

  options: z.array(
    z.object({
      key: z.enum(["a", "b", "c", "d", "e"]),
      text: z.string().min(1, "A alternativa não pode estar vazia"),
    })
  ).min(2, "Pelo menos 2 alternativas são necessárias"),

  correctOptionKey: z.enum(["a", "b", "c", "d", "e"]),

  explanation: z.object({
    summary: z.string().optional(),
    whyCorrect: z.string().optional(),
    whyIncorrect: z.array(
      z.object({
        optionKey: z.enum(["a", "b", "c", "d", "e"]),
        reason: z.string().min(1, "A explicação da alternativa incorreta é obrigatória"),
      })
    ),
    teacherNote: z.string().optional(),
    relatedLessonId: z.string().optional(),
    legalReference: z.string().optional(),
  }),

  publication: z.object({
    status: z.enum(["draft", "published", "in_review", "archived"]),
    visibility: z.enum([
      "private_teacher",
      "private_institution",
      "shared_class",
      "shared_group",
    ]),
    classIds: z.array(z.string()).optional(),
    groupIds: z.array(z.string()).optional(),
  }),
})

export type QuestionEditorialFormValues = z.infer<typeof questionEditorialSchema>

export const defaultQuestionValues: Partial<QuestionEditorialFormValues> = {
  scope: "personal",
  meta: {
    subject: "",
    topic: "",
    sourceType: "original",
    difficulty: "medium",
  },
  content: {
    stem: "",
    questionType: "multiple_choice",
  },
  options: [
    { key: "a", text: "" },
    { key: "b", text: "" },
  ],
  correctOptionKey: "a",
  explanation: {
    whyIncorrect: [],
  },
  publication: {
    status: "draft",
    visibility: "private_teacher",
  },
}
