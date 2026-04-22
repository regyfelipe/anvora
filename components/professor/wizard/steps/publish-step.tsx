"use client"

import * as React from "react"
import { useFormContext, Controller } from "react-hook-form"
import {
  Field,
  FieldLabel,
  FieldError,
} from "@/components/ui/field"
import { QuestionEditorialFormValues } from "@/lib/validations/question-editorial"
import { 
  ShieldCheckIcon, 
  LockIcon, 
  GlobeIcon, 
  UsersIcon, 
  CheckCircle2Icon,
  EyeOffIcon,
  BuildingIcon
} from "lucide-react"
import { cn } from "@/lib/utils"

export function PublishStep() {
  const { control } = useFormContext<QuestionEditorialFormValues>()

  return (
    <div className="space-y-8 animate-in fade-in slide-in-from-right-4 duration-500">
      <div className="flex flex-col gap-1">
        <h2 className="text-2xl font-black italic uppercase tracking-tight">Etapa 5 — Publicação e Acesso</h2>
        <p className="text-muted-foreground text-sm">Defina quem pode ver esta questão e o seu status editorial.</p>
      </div>

      <div className="space-y-6">
        <Controller
          control={control}
          name="publication.visibility"
          render={({ field, fieldState }) => (
            <Field data-invalid={fieldState.invalid} className="space-y-4">
              <FieldLabel className="text-lg font-bold">Visibilidade</FieldLabel>
              <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                <button
                  type="button"
                  onClick={() => field.onChange("private_teacher")}
                  className={cn(
                    "flex items-start gap-4 p-5 rounded-2xl border-2 text-left transition-all",
                    field.value === "private_teacher"
                      ? "border-primary bg-primary/5 ring-1 ring-primary/20"
                      : "border-border bg-card hover:border-primary/50"
                  )}
                >
                  <div className={cn(
                    "flex size-10 shrink-0 items-center justify-center rounded-xl",
                    field.value === "private_teacher" ? "bg-primary text-primary-foreground" : "bg-muted text-muted-foreground"
                  )}>
                    <LockIcon className="size-5" />
                  </div>
                  <div className="flex-1">
                    <p className="font-black uppercase italic text-sm">Privada (Só eu)</p>
                    <p className="text-xs text-muted-foreground mt-1">A questão ficará visível apenas no seu banco pessoal.</p>
                  </div>
                </button>

                <button
                  type="button"
                  onClick={() => field.onChange("private_institution")}
                  className={cn(
                    "flex items-start gap-4 p-5 rounded-2xl border-2 text-left transition-all",
                    field.value === "private_institution"
                      ? "border-primary bg-primary/5 ring-1 ring-primary/20"
                      : "border-border bg-card hover:border-primary/50"
                  )}
                >
                  <div className={cn(
                    "flex size-10 shrink-0 items-center justify-center rounded-xl",
                    field.value === "private_institution" ? "bg-primary text-primary-foreground" : "bg-muted text-muted-foreground"
                  )}>
                    <BuildingIcon className="size-5" />
                  </div>
                  <div className="flex-1">
                    <p className="font-black uppercase italic text-sm">Institucional</p>
                    <p className="text-xs text-muted-foreground mt-1">Visível para outros professores e alunos da sua instituição.</p>
                  </div>
                </button>

                <button
                  type="button"
                  onClick={() => field.onChange("shared_class")}
                  className={cn(
                    "flex items-start gap-4 p-5 rounded-2xl border-2 text-left transition-all",
                    field.value === "shared_class"
                      ? "border-primary bg-primary/5 ring-1 ring-primary/20"
                      : "border-border bg-card hover:border-primary/50"
                  )}
                >
                  <div className={cn(
                    "flex size-10 shrink-0 items-center justify-center rounded-xl",
                    field.value === "shared_class" ? "bg-primary text-primary-foreground" : "bg-muted text-muted-foreground"
                  )}>
                    <UsersIcon className="size-5" />
                  </div>
                  <div className="flex-1">
                    <p className="font-black uppercase italic text-sm">Turmas Específicas</p>
                    <p className="text-xs text-muted-foreground mt-1">Disponível apenas para os alunos das turmas selecionadas.</p>
                  </div>
                </button>

                <button
                  type="button"
                  onClick={() => field.onChange("shared_group")}
                  className={cn(
                    "flex items-start gap-4 p-5 rounded-2xl border-2 text-left transition-all",
                    field.value === "shared_group"
                      ? "border-primary bg-primary/5 ring-1 ring-primary/20"
                      : "border-border bg-card hover:border-primary/50"
                  )}
                >
                  <div className={cn(
                    "flex size-10 shrink-0 items-center justify-center rounded-xl",
                    field.value === "shared_group" ? "bg-primary text-primary-foreground" : "bg-muted text-muted-foreground"
                  )}>
                    <GlobeIcon className="size-5" />
                  </div>
                  <div className="flex-1">
                    <p className="font-black uppercase italic text-sm">Grupos de Estudo</p>
                    <p className="text-xs text-muted-foreground mt-1">Compartilhe com grupos colaborativos de professores.</p>
                  </div>
                </button>
              </div>
              {fieldState.error && <FieldError errors={[{ message: fieldState.error.message }]} />}
            </Field>
          )}
        />

        <Controller
          control={control}
          name="publication.status"
          render={({ field, fieldState }) => (
            <Field data-invalid={fieldState.invalid} className="space-y-4">
              <FieldLabel className="text-lg font-bold">Status de Publicação</FieldLabel>
              <div className="flex flex-wrap gap-3">
                <button
                  type="button"
                  onClick={() => field.onChange("draft")}
                  className={cn(
                    "px-6 py-3 rounded-xl border-2 transition-all font-bold uppercase italic text-xs flex items-center gap-2",
                    field.value === "draft"
                      ? "border-primary bg-primary/5 text-primary"
                      : "border-border bg-card hover:border-primary/50 text-muted-foreground"
                  )}
                >
                  {field.value === "draft" ? <EyeOffIcon className="size-3.5" /> : null}
                  Rascunho
                </button>
                <button
                  type="button"
                  onClick={() => field.onChange("published")}
                  className={cn(
                    "px-6 py-3 rounded-xl border-2 transition-all font-bold uppercase italic text-xs flex items-center gap-2",
                    field.value === "published"
                      ? "border-green-500 bg-green-500/5 text-green-600 ring-1 ring-green-500/20"
                      : "border-border bg-card hover:border-green-500/50 text-muted-foreground"
                  )}
                >
                  {field.value === "published" ? <CheckCircle2Icon className="size-3.5" /> : null}
                  Publicada
                </button>
              </div>
              {fieldState.error && <FieldError errors={[{ message: fieldState.error.message }]} />}
            </Field>
          )}
        />
      </div>

      <div className="p-6 rounded-2xl bg-muted/30 border border-dashed flex items-start gap-4 mt-8">
        <ShieldCheckIcon className="size-5 text-primary shrink-0 mt-0.5" />
        <div className="space-y-1">
          <p className="text-sm font-bold uppercase italic">Segurança Editorial</p>
          <p className="text-xs text-muted-foreground leading-relaxed">
            Ao publicar esta questão, você garante que possui os direitos autorais ou que se trata de uma adaptação permitida. Questões marcadas como "Oficiais" passarão por curadoria automática.
          </p>
        </div>
      </div>
    </div>
  )
}
