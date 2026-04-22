"use client"

import * as React from "react"
import { useFormContext, useFieldArray, Controller } from "react-hook-form"
import {
  Field,
  FieldError,
} from "@/components/ui/field"
import { Textarea } from "@/components/ui/textarea"
import { QuestionEditorialFormValues } from "@/lib/validations/question-editorial"
import { Button } from "@/components/ui/button"
import { PlusIcon, Trash2Icon, CheckCircle2Icon } from "lucide-react"
import { cn } from "@/lib/utils"

export function OptionsStep() {
  const { control, watch, setValue, getValues } = useFormContext<QuestionEditorialFormValues>()
  const { fields, append, remove } = useFieldArray({
    control,
    name: "options",
  })

  const correctOptionKey = watch("correctOptionKey")
  const letters = ["a", "b", "c", "d", "e"] as const

  const addOption = () => {
    if (fields.length >= 5) return
    const nextKey = letters[fields.length]
    append({ key: nextKey, text: "" })
  }

  const removeOption = (index: number) => {
    const removedKey = fields[index].key
    const currentValues = getValues("options")
    
    // Remove the item
    const newOptions = currentValues.filter((_, i) => i !== index)
    
    // Re-assign keys to maintain A, B, C sequence
    const remappedOptions = newOptions.map((opt, i) => ({
      ...opt,
      key: letters[i]
    }))
    
    setValue("options", remappedOptions)

    // Update correctOptionKey if needed
    if (correctOptionKey === removedKey) {
      // If we removed the correct one, default to A
      setValue("correctOptionKey", "a")
    } else {
      // Find the new key for the option that was correct
      const oldCorrectIndex = currentValues.findIndex(opt => opt.key === correctOptionKey)
      if (oldCorrectIndex > index) {
        // It shifted up
        setValue("correctOptionKey", letters[oldCorrectIndex - 1])
      }
    }
  }

  return (
    <div className="space-y-6 animate-in fade-in slide-in-from-right-4 duration-500">
      <div className="flex items-center justify-between">
        <div className="flex flex-col gap-1">
          <h2 className="text-2xl font-black italic uppercase tracking-tight">Etapa 3 — Alternativas</h2>
          <p className="text-muted-foreground text-sm">Crie as opções e marque o gabarito oficial.</p>
        </div>
        <Button 
          type="button" 
          variant="outline" 
          size="sm" 
          onClick={addOption}
          disabled={fields.length >= 5}
          className="rounded-xl gap-2 border-dashed h-10 px-4"
        >
          <PlusIcon className="size-4" />
          Nova Opção
        </Button>
      </div>

      <div className="space-y-4">
        {fields.map((field, index) => {
          const currentKey = letters[index]
          const isCorrect = correctOptionKey === currentKey
          return (
            <div 
              key={field.id} 
              className={cn(
                "group relative flex items-start gap-4 p-5 rounded-2xl border transition-all",
                isCorrect 
                  ? "border-primary bg-primary/5 ring-1 ring-primary/20" 
                  : "bg-card hover:border-primary/40"
              )}
            >
              <div className="flex flex-col items-center gap-4 mt-1">
                <button
                  type="button"
                  onClick={() => setValue("correctOptionKey", currentKey)}
                  className={cn(
                    "flex size-10 items-center justify-center rounded-full border-2 transition-all font-black italic uppercase",
                    isCorrect
                      ? "border-primary bg-primary text-primary-foreground shadow-lg shadow-primary/20"
                      : "border-border bg-background text-muted-foreground hover:border-primary/50"
                  )}
                >
                  {currentKey}
                </button>
                {isCorrect && (
                  <CheckCircle2Icon className="size-5 text-primary animate-in zoom-in duration-300" />
                )}
              </div>

              <div className="flex-1 space-y-2">
                <div className="flex items-center justify-between">
                  <span className={cn(
                    "text-xs font-black uppercase italic tracking-widest",
                    isCorrect ? "text-primary" : "text-muted-foreground"
                  )}>
                    Alternativa {currentKey} {isCorrect && "— Gabarito"}
                  </span>
                  {fields.length > 2 && (
                    <Button 
                      type="button" 
                      variant="ghost" 
                      size="icon" 
                      onClick={() => removeOption(index)}
                      className="size-8 rounded-lg text-muted-foreground hover:text-destructive hover:bg-destructive/10 opacity-0 group-hover:opacity-100 transition-opacity"
                    >
                      <Trash2Icon className="size-4" />
                    </Button>
                  )}
                </div>
                <Controller
                  control={control}
                  name={`options.${index}.text`}
                  render={({ field: inputField, fieldState }) => (
                    <Field data-invalid={fieldState.invalid}>
                      <Textarea 
                        placeholder="Texto da alternativa..." 
                        className="min-h-[80px] rounded-xl bg-transparent border-none shadow-none p-0 focus-visible:ring-0 text-base leading-relaxed resize-none"
                        {...inputField}
                      />
                      {fieldState.error && <FieldError errors={[{ message: fieldState.error.message }]} />}
                    </Field>
                  )}
                />
              </div>
            </div>
          )
        })}
      </div>

      {fields.length < 2 && (
        <p className="text-xs text-destructive font-bold uppercase italic">
          Adicione pelo menos duas alternativas para continuar.
        </p>
      )}
    </div>
  )
}
