"use client"

import * as React from "react"
import { useFormContext, Controller } from "react-hook-form"
import {
  Field,
  FieldLabel,
  FieldError,
} from "@/components/ui/field"
import { Textarea } from "@/components/ui/textarea"
import { Input } from "@/components/ui/input"
import { QuestionEditorialFormValues } from "@/lib/validations/question-editorial"
import { LightbulbIcon, XCircleIcon, CheckCircle2Icon, BookOpenIcon } from "lucide-react"

export function ExplanationStep() {
  const { control, watch, setValue, getValues } = useFormContext<QuestionEditorialFormValues>()
  const options = watch("options")
  const correctOptionKey = watch("correctOptionKey")
  // Synchronize whyIncorrect fields with current options (except the correct one)
  React.useEffect(() => {
    const incorrectOptions = options.filter(opt => opt.key !== correctOptionKey)
    const currentValues = getValues("explanation.whyIncorrect") || []
    
    // Map current values by key for easy lookup
    const valueMap = new Map(currentValues.map(v => [v.optionKey, v.reason]))
    
    // Build the new list maintaining existing reasons if they still exist
    const newList = incorrectOptions.map(opt => ({
      optionKey: opt.key,
      reason: valueMap.get(opt.key) || ""
    }))

    // Only update if the keys have actually changed to avoid infinite loops
    const currentKeys = currentValues.map(v => v.optionKey).join(",")
    const newKeys = newList.map(v => v.optionKey).join(",")

    if (currentKeys !== newKeys) {
      setValue("explanation.whyIncorrect", newList)
    }
  }, [options, correctOptionKey, setValue, getValues])

  // We use the raw value from watch instead of fields from useFieldArray 
  // for rendering to ensure UI is always in sync with the form state
  const whyIncorrectFields = watch("explanation.whyIncorrect") || []

  return (
    <div className="space-y-8 animate-in fade-in slide-in-from-right-4 duration-500">
      <div className="flex flex-col gap-1">
        <h2 className="text-2xl font-black italic uppercase tracking-tight">Etapa 4 — Explicação Pedagógica</h2>
        <p className="text-muted-foreground text-sm">Transforme a questão em um material de estudo completo.</p>
      </div>

      <div className="space-y-6">
        <Controller
          control={control}
          name="explanation.summary"
          render={({ field, fieldState }) => (
            <Field data-invalid={fieldState.invalid}>
              <FieldLabel className="flex items-center gap-2">
                <LightbulbIcon className="size-4 text-amber-500" />
                Resumo da Explicação
              </FieldLabel>
              <Textarea 
                placeholder="Visão geral do tema abordado na questão..." 
                className="min-h-[100px] rounded-xl bg-card"
                {...field}
              />
              {fieldState.error && <FieldError errors={[{ message: fieldState.error.message }]} />}
            </Field>
          )}
        />

        <Controller
          control={control}
          name="explanation.whyCorrect"
          render={({ field, fieldState }) => (
            <Field data-invalid={fieldState.invalid}>
              <FieldLabel className="flex items-center gap-2 text-green-600">
                <CheckCircle2Icon className="size-4" />
                Por que a alternativa {correctOptionKey.toUpperCase()} está correta?
              </FieldLabel>
              <Textarea 
                placeholder="Fundamentação teórica da resposta correta..." 
                className="min-h-[120px] rounded-xl border-green-500/20 bg-green-500/5 focus:border-green-500"
                {...field}
              />
              {fieldState.error && <FieldError errors={[{ message: fieldState.error.message }]} />}
            </Field>
          )}
        />

        <div className="space-y-4">
          <FieldLabel className="flex items-center gap-2 text-destructive">
            <XCircleIcon className="size-4" />
            Por que as outras estão incorretas?
          </FieldLabel>
          <div className="space-y-4">
            {whyIncorrectFields.map((field, index) => (
              <div key={field.optionKey} className="flex gap-4 p-4 rounded-xl border bg-card/50">
                <span className="flex size-8 shrink-0 items-center justify-center rounded-lg bg-destructive/10 text-destructive font-black italic uppercase text-sm">
                  {field.optionKey}
                </span>
                <Controller
                  control={control}
                  name={`explanation.whyIncorrect.${index}.reason`}
                  render={({ field: reasonField, fieldState }) => (
                    <Field data-invalid={fieldState.invalid} className="flex-1">
                      <Textarea 
                        placeholder={`Erro da alternativa ${field.optionKey.toUpperCase()}...`} 
                        className="min-h-[80px] rounded-lg border-none bg-transparent p-0 shadow-none focus-visible:ring-0 text-base"
                        {...reasonField}
                      />
                      {fieldState.error && <FieldError errors={[{ message: fieldState.error.message }]} />}
                    </Field>
                  )}
                />
              </div>
            ))}
          </div>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
          <Controller
            control={control}
            name="explanation.teacherNote"
            render={({ field, fieldState }) => (
              <Field data-invalid={fieldState.invalid}>
                <FieldLabel>Nota do Professor</FieldLabel>
                <Input placeholder="Dicas, pegadinhas ou avisos..." className="h-11 rounded-xl" {...field} />
                {fieldState.error && <FieldError errors={[{ message: fieldState.error.message }]} />}
              </Field>
            )}
          />
          <Controller
            control={control}
            name="explanation.legalReference"
            render={({ field, fieldState }) => (
              <Field data-invalid={fieldState.invalid}>
                <FieldLabel className="flex items-center gap-2">
                  <BookOpenIcon className="size-4" />
                  Referência Legal / Aula
                </FieldLabel>
                <Input placeholder="Art. 5º, CF ou Link da Aula" className="h-11 rounded-xl" {...field} />
                {fieldState.error && <FieldError errors={[{ message: fieldState.error.message }]} />}
              </Field>
            )}
          />
        </div>
      </div>
    </div>
  )
}
