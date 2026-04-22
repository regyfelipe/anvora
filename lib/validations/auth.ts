import * as z from "zod"

export const loginSchema = z.object({
  email: z.string().min(1, "E-mail é obrigatório").email("Formato de e-mail inválido"),
  password: z.string().min(6, "A senha deve ter pelo menos 6 caracteres"),
})

export const signupSchema = z.object({
  name: z.string().min(2, "O nome deve ter pelo menos 2 caracteres"),
  email: z.string().min(1, "E-mail é obrigatório").email("Formato de e-mail inválido"),
  password: z.string().min(6, "A senha deve ter pelo menos 6 caracteres"),
  confirmPassword: z.string().min(1, "A confirmação de senha é obrigatória"),
  role: z.union([
    z.literal("student"),
    z.literal("teacher"),
    z.literal("institution")
  ] as const).refine(role => ["student", "teacher", "institution"].includes(role as string), {
    message: "Selecione o seu perfil de usuário",
    path: ["role"],
  }),
}).refine((data) => data.password === data.confirmPassword, {
  message: "As senhas não coincidem",
  path: ["confirmPassword"],
})
 