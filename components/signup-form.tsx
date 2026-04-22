"use client"

import * as React from "react"
import { cn } from "@/lib/utils"
import { Button } from "@/components/ui/button"
import { Card, CardContent } from "@/components/ui/card"
import {
  Field,
  FieldDescription,
  FieldError,
  FieldGroup,
  FieldLabel,
  FieldSeparator,
} from "@/components/ui/field"
import { Input } from "@/components/ui/input"
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select"
import { 
  GalleryVerticalEndIcon, 
  Loader2Icon, 
  EyeIcon, 
  EyeOffIcon, 
  UserIcon, 
  GraduationCapIcon,
  Building2Icon
} from "lucide-react"

import { useForm, Controller } from "react-hook-form"
import { zodResolver } from "@hookform/resolvers/zod"
import { signupSchema } from "@/lib/validations/auth"
import type { z } from "zod"
import { signupAction } from "@/app/actions/auth"
import { toast } from "sonner"
import { useRouter } from "next/navigation"

export function SignupForm({
  className,
  ...props
}: React.ComponentProps<"div">) {
  const router = useRouter()
  const [showPassword, setShowPassword] = React.useState(false)
  const [showConfirmPassword, setShowConfirmPassword] = React.useState(false)
  
  const {
    control,
    handleSubmit,
    formState: { isSubmitting },
  } = useForm<z.infer<typeof signupSchema>>({
    resolver: zodResolver(signupSchema),
    defaultValues: {
      name: "",
      email: "",
      password: "",
      confirmPassword: "",
      role: "student" as "student" | "teacher" | "institution",
    },
  })

  async function onSubmit(data: z.infer<typeof signupSchema>) {
    const result = await signupAction(data)
    if (result.success) {
      toast.success("Conta criada com sucesso!")
      router.push("/selecionar-contexto")
    } else {
      toast.error(result.error || "Ocorreu um erro durante o cadastro")
    }
  }

  return (
    <div className={cn("flex flex-col gap-6", className)} {...props}>
      <Card className="overflow-hidden p-0 border-none shadow-2xl">
        <CardContent className="grid p-0 md:grid-cols-2">
          <form className="p-6 md:p-12" onSubmit={handleSubmit(onSubmit)}>
            <FieldGroup className="gap-5">
              <div className="flex flex-col items-center gap-2 text-center mb-4">
                <div className="flex size-10 items-center justify-center rounded-lg bg-primary text-primary-foreground mb-2">
                  <GalleryVerticalEndIcon className="size-6" />
                </div>
                <h1 className="text-2xl font-bold font-heading">Criar sua conta</h1>
              </div>

              {/* Seleção de Perfil */}
              <Controller
                control={control}
                name="role"
                render={({ field, fieldState }) => (
                  <Field data-invalid={fieldState.invalid}>
                    <FieldLabel htmlFor="role">Eu sou um...</FieldLabel>
                    <Select
                      onValueChange={field.onChange}
                      defaultValue={field.value}
                      disabled={isSubmitting}
                    >
                      <SelectTrigger className="w-full h-11">
                        <SelectValue placeholder="Selecione seu perfil" />
                      </SelectTrigger>
                      <SelectContent>
                        <SelectItem value="student">
                          <div className="flex items-center gap-2 py-1">
                            <GraduationCapIcon className="size-4 text-primary" />
                            <span className="font-medium">Aluno</span>
                          </div>
                        </SelectItem>
                        <SelectItem value="institution">
                          <div className="flex items-center gap-2 py-1">
                            <Building2Icon className="size-4 text-primary" />
                            <span className="font-medium">Instituição</span>
                          </div>
                        </SelectItem>
                      </SelectContent>
                    </Select>
                    {fieldState.error && (
                      <FieldError errors={[{ message: fieldState.error.message }]} />
                    )}
                  </Field>
                )}
              />

              <Controller
                control={control}
                name="name"
                render={({ field, fieldState }) => (
                  <Field data-invalid={fieldState.invalid}>
                    <FieldLabel htmlFor="name">Nome completo</FieldLabel>
                    <Input
                      {...field}
                      id="name"
                      type="text"
                      placeholder="Como você quer ser chamado?"
                      disabled={isSubmitting}
                      className="h-11"
                    />
                    {fieldState.error && (
                      <FieldError errors={[{ message: fieldState.error.message }]} />
                    )}
                  </Field>
                )}
              />

              <Controller
                control={control}
                name="email"
                render={({ field, fieldState }) => (
                  <Field data-invalid={fieldState.invalid}>
                    <FieldLabel htmlFor="email">E-mail profissional</FieldLabel>
                    <Input
                      {...field}
                      id="email"
                      type="email"
                      placeholder="seu@email.com"
                      disabled={isSubmitting}
                      className="h-11"
                    />
                    {fieldState.error && (
                      <FieldError errors={[{ message: fieldState.error.message }]} />
                    )}
                  </Field>
                )}
              />

              {/* Grid de Senhas */}
              <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                <Controller
                  control={control}
                  name="password"
                  render={({ field, fieldState }) => (
                    <Field data-invalid={fieldState.invalid}>
                      <FieldLabel htmlFor="password">Senha</FieldLabel>
                      <div className="relative">
                        <Input
                          {...field}
                          id="password"
                          type={showPassword ? "text" : "password"}
                          disabled={isSubmitting}
                          className="h-11 pr-10"
                        />
                        <button
                          type="button"
                          onClick={() => setShowPassword(!showPassword)}
                          className="absolute right-3 top-1/2 -translate-y-1/2 text-muted-foreground hover:text-foreground"
                        >
                          {showPassword ? <EyeOffIcon className="size-4" /> : <EyeIcon className="size-4" />}
                        </button>
                      </div>
                    </Field>
                  )}
                />

                <Controller
                  control={control}
                  name="confirmPassword"
                  render={({ field, fieldState }) => (
                    <Field data-invalid={fieldState.invalid}>
                      <FieldLabel htmlFor="confirmPassword">Confirmar</FieldLabel>
                      <div className="relative">
                        <Input
                          {...field}
                          id="confirmPassword"
                          type={showConfirmPassword ? "text" : "password"}
                          disabled={isSubmitting}
                          className="h-11 pr-10"
                        />
                        <button
                          type="button"
                          onClick={() => setShowConfirmPassword(!showConfirmPassword)}
                          className="absolute right-3 top-1/2 -translate-y-1/2 text-muted-foreground hover:text-foreground"
                        >
                          {showConfirmPassword ? <EyeOffIcon className="size-4" /> : <EyeIcon className="size-4" />}
                        </button>
                      </div>
                    </Field>
                  )}
                />
              </div>
              
              {/* Erros de senha unificados se houver */}
              <Controller
                control={control}
                name="confirmPassword"
                render={({ fieldState }) => (
                  fieldState.error ? <FieldError errors={[{ message: fieldState.error.message }]} /> : <></>
                )}
              />

              <Button type="submit" size="lg" className="w-full h-11 font-bold mt-2" disabled={isSubmitting}>
                {isSubmitting && <Loader2Icon className="mr-2 size-4 animate-spin" />}
                Criar Conta Agora
              </Button>

              

              <FieldDescription className="text-center mt-2">
                Já tem uma conta? <a href="/login" className="underline underline-offset-4 hover:text-primary font-semibold">Entrar agora</a>
              </FieldDescription>
            </FieldGroup>
          </form>
          <div className="relative hidden bg-muted md:block">
            <img
              src="/images/signup-bg.png"
              alt="Anvora Signup Background"
              className="absolute inset-0 h-full w-full object-cover dark:brightness-[0.4]"
            />
            <div className="absolute inset-0 bg-gradient-to-t from-background/80 to-transparent flex items-end p-12">
              <div className="space-y-2">
                <p className="text-lg font-medium text-white italic">
                  "O Anvora transformou a maneira como gerencio meus simulados e acompanho o progresso dos meus alunos."
                </p>
                <p className="text-sm text-white/60">
                  — Prof. Ricardo, Diretor Pedagógico
                </p>
              </div>
            </div>
          </div>
        </CardContent>
      </Card>
      <FieldDescription className="px-6 text-center text-[11px]">
        Ao clicar em Criar Conta, você concorda com nossos <a href="#" className="underline underline-offset-4">Termos de Serviço</a>{" "}
        e <a href="#" className="underline underline-offset-4">Política de Privacidade</a>.
      </FieldDescription>
    </div>
  )
}
