"use client"

import * as React from "react"
import { useFormContext, Controller } from "react-hook-form"
import {
  Field,
  FieldLabel,
  FieldError,
} from "@/components/ui/field"
import { Textarea } from "@/components/ui/textarea"
import { QuestionEditorialFormValues } from "@/lib/validations/question-editorial"
import { ImageIcon, TableIcon, FileTextIcon } from "lucide-react"

export function ContentStep() {
  const { control } = useFormContext<QuestionEditorialFormValues>()

  return (
    <div className="space-y-6 animate-in fade-in slide-in-from-right-4 duration-500">
      <div className="flex flex-col gap-1">
        <h2 className="text-2xl font-black italic uppercase tracking-tight">Etapa 2 — Corpo da Questão</h2>
        <p className="text-muted-foreground text-sm">Insira o enunciado principal e materiais de suporte.</p>
      </div>

      <div className="space-y-4">
        <Controller
          control={control}
          name="content.stem"
          render={({ field, fieldState }) => (
            <Field data-invalid={fieldState.invalid}>
              <FieldLabel className="text-lg font-bold">Enunciado</FieldLabel>
              <Textarea 
                placeholder="Digite aqui o texto da questão..." 
                className="min-h-[300px] rounded-2xl p-6 text-base leading-relaxed resize-none bg-card focus:ring-primary"
                {...field}
              />
              {fieldState.error && <FieldError errors={[{ message: fieldState.error.message }]} />}
            </Field>
          )}
        />
      </div>

      <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
        <button
          type="button"
          className="flex items-center gap-3 p-4 rounded-xl border border-dashed hover:border-primary hover:bg-primary/5 transition-colors text-sm text-muted-foreground hover:text-primary"
        >
          <ImageIcon className="size-4" />
          Adicionar Imagem
        </button>
        <button
          type="button"
          className="flex items-center gap-3 p-4 rounded-xl border border-dashed hover:border-primary hover:bg-primary/5 transition-colors text-sm text-muted-foreground hover:text-primary"
        >
          <TableIcon className="size-4" />
          Adicionar Tabela
        </button>
        <button
          type="button"
          className="flex items-center gap-3 p-4 rounded-xl border border-dashed hover:border-primary hover:bg-primary/5 transition-colors text-sm text-muted-foreground hover:text-primary"
        >
          <FileTextIcon className="size-4" />
          Trecho de Lei
        </button>
      </div>
    </div>
  )
}
