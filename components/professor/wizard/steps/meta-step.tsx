"use client"

import * as React from "react"
import { useFormContext, Controller } from "react-hook-form"
import {
  Field,
  FieldLabel,
  FieldError,
} from "@/components/ui/field"
import { Input } from "@/components/ui/input"
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select"
import { QuestionEditorialFormValues } from "@/lib/validations/question-editorial"
import { Building2Icon, UserIcon } from "lucide-react"

export function MetaStep() {
  const { control, watch } = useFormContext<QuestionEditorialFormValues>()

  return (
    <div className="space-y-6 animate-in fade-in slide-in-from-right-4 duration-500">
      <div className="flex flex-col gap-1">
        <h2 className="text-2xl font-black italic uppercase tracking-tight">Etapa 1 — Identificação</h2>
        <p className="text-muted-foreground text-sm">Defina o contexto, disciplina e detalhes técnicos da questão.</p>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
        <Controller
          control={control}
          name="scope"
          render={({ field, fieldState }) => (
            <Field data-invalid={fieldState.invalid}>
              <FieldLabel>Contexto de Criação</FieldLabel>
              <div className="grid grid-cols-2 gap-3">
                <button
                  type="button"
                  onClick={() => field.onChange("personal")}
                  className={`flex flex-col items-center justify-center p-4 rounded-2xl border-2 transition-all gap-2 ${
                    field.value === "personal"
                      ? "border-primary bg-primary/5 text-primary"
                      : "border-border bg-card hover:border-primary/50"
                  }`}
                >
                  <UserIcon className="size-5" />
                  <span className="text-xs font-bold uppercase italic">Autônomo</span>
                </button>
                <button
                  type="button"
                  onClick={() => field.onChange("institution")}
                  className={`flex flex-col items-center justify-center p-4 rounded-2xl border-2 transition-all gap-2 ${
                    field.value === "institution"
                      ? "border-primary bg-primary/5 text-primary"
                      : "border-border bg-card hover:border-primary/50"
                  }`}
                >
                  <Building2Icon className="size-5" />
                  <span className="text-xs font-bold uppercase italic">Instituição</span>
                </button>
              </div>
              {fieldState.error && <FieldError errors={[{ message: fieldState.error.message }]} />}
            </Field>
          )}
        />

        <Controller
          control={control}
          name="meta.sourceType"
          render={({ field, fieldState }) => (
            <Field data-invalid={fieldState.invalid}>
              <FieldLabel>Tipo de Origem</FieldLabel>
              <Select onValueChange={field.onChange} defaultValue={field.value}>
                <SelectTrigger className="h-11 rounded-xl">
                  <SelectValue placeholder="Selecione a origem" />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="official">Oficial</SelectItem>
                  <SelectItem value="adapted">Adaptada</SelectItem>
                  <SelectItem value="original">Original / Inédita</SelectItem>
                </SelectContent>
              </Select>
              {fieldState.error && <FieldError errors={[{ message: fieldState.error.message }]} />}
            </Field>
          )}
        />
      </div>

      <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
        <Controller
          control={control}
          name="meta.subject"
          render={({ field, fieldState }) => (
            <Field data-invalid={fieldState.invalid}>
              <FieldLabel>Disciplina</FieldLabel>
              <Input placeholder="Ex: Direito Constitucional" className="h-11 rounded-xl" {...field} />
              {fieldState.error && <FieldError errors={[{ message: fieldState.error.message }]} />}
            </Field>
          )}
        />
        <Controller
          control={control}
          name="meta.difficulty"
          render={({ field, fieldState }) => (
            <Field data-invalid={fieldState.invalid}>
              <FieldLabel>Dificuldade</FieldLabel>
              <Select onValueChange={field.onChange} defaultValue={field.value}>
                <SelectTrigger className="h-11 rounded-xl">
                  <SelectValue placeholder="Selecione a dificuldade" />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="easy">Fácil</SelectItem>
                  <SelectItem value="medium">Média</SelectItem>
                  <SelectItem value="hard">Difícil</SelectItem>
                </SelectContent>
              </Select>
              {fieldState.error && <FieldError errors={[{ message: fieldState.error.message }]} />}
            </Field>
          )}
        />
      </div>

      <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
        <Controller
          control={control}
          name="meta.topic"
          render={({ field, fieldState }) => (
            <Field data-invalid={fieldState.invalid}>
              <FieldLabel>Assunto</FieldLabel>
              <Input placeholder="Ex: Direitos Fundamentais" className="h-11 rounded-xl" {...field} />
              {fieldState.error && <FieldError errors={[{ message: fieldState.error.message }]} />}
            </Field>
          )}
        />
        <Controller
          control={control}
          name="meta.career"
          render={({ field, fieldState }) => (
            <Field data-invalid={fieldState.invalid}>
              <FieldLabel>Carreira (Opcional)</FieldLabel>
              <Input placeholder="Ex: Policial" className="h-11 rounded-xl" {...field} />
              {fieldState.error && <FieldError errors={[{ message: fieldState.error.message }]} />}
            </Field>
          )}
        />
      </div>

      <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
        <Controller
          control={control}
          name="meta.board"
          render={({ field, fieldState }) => (
            <Field data-invalid={fieldState.invalid}>
              <FieldLabel>Banca</FieldLabel>
              <Input placeholder="Ex: FGV" className="h-11 rounded-xl" {...field} />
              {fieldState.error && <FieldError errors={[{ message: fieldState.error.message }]} />}
            </Field>
          )}
        />
        <Controller
          control={control}
          name="meta.institutionName"
          render={({ field, fieldState }) => (
            <Field data-invalid={fieldState.invalid}>
              <FieldLabel>Órgão</FieldLabel>
              <Input placeholder="Ex: PC-RJ" className="h-11 rounded-xl" {...field} />
              {fieldState.error && <FieldError errors={[{ message: fieldState.error.message }]} />}
            </Field>
          )}
        />
        <Controller
          control={control}
          name="meta.examYear"
          render={({ field, fieldState }) => (
            <Field data-invalid={fieldState.invalid}>
              <FieldLabel>Ano</FieldLabel>
              <Input 
                type="number" 
                className="h-11 rounded-xl" 
                {...field}
                onChange={(e) => field.onChange(e.target.value === "" ? "" : parseInt(e.target.value))}
              />
              {fieldState.error && <FieldError errors={[{ message: fieldState.error.message }]} />}
            </Field>
          )}
        />
      </div>
    </div>
  )
}
