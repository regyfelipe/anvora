"use client"

import * as React from "react"
import { cn } from "@/lib/utils"
import { Button } from "@/components/ui/button"
import { Card, CardContent } from "@/components/ui/card"
import {
  Field,
  FieldDescription,
  FieldGroup,
  FieldLabel,
  FieldSeparator,
  FieldError,
} from "@/components/ui/field"
import { Input } from "@/components/ui/input"
import { GalleryVerticalEndIcon, Loader2Icon, EyeIcon, EyeOffIcon } from "lucide-react"

import { useForm, Controller } from "react-hook-form"
import { zodResolver } from "@hookform/resolvers/zod"
import { loginSchema } from "@/lib/validations/auth"
import type { z } from "zod"
import { loginAction } from "@/app/actions/auth"
import { toast } from "sonner"
import { useRouter } from "next/navigation"

export function LoginForm({
  className,
  ...props
}: React.ComponentProps<"div">) {
  const router = useRouter()
  const [showPassword, setShowPassword] = React.useState(false)
  
  const {
    control,
    handleSubmit,
    formState: { isSubmitting },
  } = useForm<z.infer<typeof loginSchema>>({
    resolver: zodResolver(loginSchema),
    defaultValues: {
      email: "",
      password: "",
    },
  })

  async function onSubmit(data: z.infer<typeof loginSchema>) {
    const result = await loginAction(data)
    if (result.success) {
      toast.success("Login realizado com sucesso!")
      router.push("/selecionar-contexto")
    } else {
      toast.error(result.error || "Ocorreu um erro durante o login")
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
                <h1 className="text-2xl font-bold font-heading">Bem-vindo de volta</h1>
                <p className="text-sm text-balance text-muted-foreground">
                  Acesse sua conta para continuar seus estudos ou gestão
                </p>
              </div>

              <Controller
                control={control}
                name="email"
                render={({ field, fieldState }) => (
                  <Field data-invalid={fieldState.invalid}>
                    <FieldLabel htmlFor="email">E-mail</FieldLabel>
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

              <Controller
                control={control}
                name="password"
                render={({ field, fieldState }) => (
                  <Field data-invalid={fieldState.invalid}>
                    <div className="flex items-center">
                      <FieldLabel htmlFor="password">Senha</FieldLabel>
                      <a
                        href="#"
                        className="ml-auto text-xs underline-offset-4 hover:text-primary transition-colors"
                      >
                        Esqueceu sua senha?
                      </a>
                    </div>
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
                    {fieldState.error && (
                      <FieldError errors={[{ message: fieldState.error.message }]} />
                    )}
                  </Field>
                )}
              />

              <Button type="submit" size="lg" className="w-full h-11 font-bold mt-2" disabled={isSubmitting}>
                {isSubmitting && <Loader2Icon className="mr-2 size-4 animate-spin" />}
                Entrar na Plataforma
              </Button>

              

              <FieldDescription className="text-center mt-2">
                Não tem uma conta? <a href="/signup" className="underline underline-offset-4 hover:text-primary font-semibold">Criar agora</a>
              </FieldDescription>
            </FieldGroup>
          </form>
          <div className="relative hidden bg-muted md:block">
            <img
              src="/images/signup-bg.png"
              alt="Anvora Login Background"
              className="absolute inset-0 h-full w-full object-cover dark:brightness-[0.4]"
            />
            <div className="absolute inset-0 bg-gradient-to-t from-background/80 to-transparent flex items-end p-12">
              <div className="space-y-2">
                <p className="text-lg font-medium text-white italic">
                  "O Anvora simplificou toda a nossa logística de provas e diagnósticos em tempo real."
                </p>
                <p className="text-sm text-white/60">
                  — Coordenação Escolar, Colégio Delta
                </p>
              </div>
            </div>
          </div>
        </CardContent>
      </Card>
    </div>
  )
}
