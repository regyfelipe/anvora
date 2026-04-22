"use client"

import * as React from "react"
import { useForm, FormProvider } from "react-hook-form"
import { zodResolver } from "@hookform/resolvers/zod"
import { questionEditorialSchema, QuestionEditorialFormValues, defaultQuestionValues } from "@/lib/validations/question-editorial"
import { MetaStep } from "./steps/meta-step"
import { ContentStep } from "./steps/content-step"
import { OptionsStep } from "./steps/options-step"
import { ExplanationStep } from "./steps/explanation-step"
import { PublishStep } from "./steps/publish-step"
import { QuestionPreviewLive } from "./preview/question-preview-live"
import { Button } from "@/components/ui/button"
import { toast } from "sonner"
import { createEditorialQuestion } from "@/app/actions/questions"
import { useRouter } from "next/navigation"
import { cn } from "@/lib/utils"
import { 
  ChevronRightIcon, 
  ChevronLeftIcon, 
  SaveIcon, 
  RocketIcon, 
  Loader2Icon,
  CheckCircle2Icon
} from "lucide-react"

const STEPS = [
  { id: "meta", label: "Identificação" },
  { id: "content", label: "Corpo" },
  { id: "options", label: "Alternativas" },
  { id: "explanation", label: "Explicação" },
  { id: "publish", label: "Publicação" },
]

export function QuestionWizard() {
  const router = useRouter()
  const [currentStep, setCurrentStep] = React.useState(0)
  const [isSubmitting, setIsSubmitting] = React.useState(false)

  const methods = useForm<QuestionEditorialFormValues>({
    resolver: zodResolver(questionEditorialSchema),
    defaultValues: {
      ...defaultQuestionValues,
      contextId: "default-context", // Mocked
    } as QuestionEditorialFormValues,
    mode: "onChange",
  })

  const { handleSubmit, trigger, formState: { isValid } } = methods

  const nextStep = async () => {
    // Validate current step fields before proceeding
    let fieldsToValidate: any[] = []
    if (currentStep === 0) fieldsToValidate = ["meta.subject", "meta.topic", "meta.sourceType", "meta.difficulty"]
    if (currentStep === 1) fieldsToValidate = ["content.stem"]
    if (currentStep === 2) fieldsToValidate = ["options", "correctOptionKey"]
    
    const result = await trigger(fieldsToValidate)
    if (result) {
      setCurrentStep((prev) => Math.min(prev + 1, STEPS.length - 1))
      window.scrollTo({ top: 0, behavior: "smooth" })
    } else {
      toast.error("Por favor, preencha os campos obrigatórios.")
    }
  }

  const prevStep = () => {
    setCurrentStep((prev) => Math.max(prev - 1, 0))
    window.scrollTo({ top: 0, behavior: "smooth" })
  }

  const onSubmit = async (data: QuestionEditorialFormValues) => {
    setIsSubmitting(true)
    try {
      const result = await createEditorialQuestion(data)
      if (result.success) {
        toast.success(`Questão ${result.data?.publicCode} publicada com sucesso!`)
        router.push("/professor/questoes")
      } else {
        toast.error(result.error || "Erro ao publicar a questão.")
      }
    } catch (error) {
      toast.error("Erro inesperado ao publicar.")
    } finally {
      setIsSubmitting(false)
    }
  }

  return (
    <FormProvider {...methods}>
      <div className="flex flex-col lg:flex-row gap-10">
        {/* Main Content Area */}
        <div className="flex-1 min-w-0">
          {/* Stepper */}
          <div className="mb-10 overflow-x-auto pb-4">
            <div className="flex items-center justify-between min-w-[800px]">
              {STEPS.map((step, index) => (
                <React.Fragment key={step.id}>
                  <div className="flex flex-col items-center gap-2 group cursor-pointer" onClick={() => index < currentStep && setCurrentStep(index)}>
                    <div className={cn(
                      "flex size-10 items-center justify-center rounded-xl border-2 transition-all font-black italic text-sm",
                      index === currentStep 
                        ? "border-primary bg-primary text-primary-foreground shadow-lg shadow-primary/20 scale-110" 
                        : index < currentStep 
                          ? "border-primary bg-primary/10 text-primary" 
                          : "border-border bg-muted/50 text-muted-foreground"
                    )}>
                      {index < currentStep ? <CheckCircle2Icon className="size-5" /> : index + 1}
                    </div>
                    <span className={cn(
                      "text-[10px] font-black uppercase italic tracking-widest transition-colors",
                      index === currentStep ? "text-primary" : "text-muted-foreground"
                    )}>
                      {step.label}
                    </span>
                  </div>
                  {index < STEPS.length - 1 && (
                    <div className={cn(
                      "h-0.5 flex-1 mx-4 rounded-full",
                      index < currentStep ? "bg-primary/30" : "bg-border"
                    )} />
                  )}
                </React.Fragment>
              ))}
            </div>
          </div>

          <form onSubmit={handleSubmit(onSubmit)} className="space-y-12">
            {currentStep === 0 && <MetaStep />}
            {currentStep === 1 && <ContentStep />}
            {currentStep === 2 && <OptionsStep />}
            {currentStep === 3 && <ExplanationStep />}
            {currentStep === 4 && <PublishStep />}

            {/* Actions */}
            <div className="flex items-center justify-between pt-10 border-t">
              <Button
                type="button"
                variant="ghost"
                onClick={prevStep}
                disabled={currentStep === 0}
                className="h-14 rounded-2xl px-8 gap-2 font-black italic uppercase tracking-tight hover:bg-muted"
              >
                <ChevronLeftIcon className="size-5" />
                Anterior
              </Button>

              <div className="flex items-center gap-4">
                <Button
                  type="button"
                  variant="outline"
                  onClick={() => toast.success("Rascunho salvo localmente!")}
                  className="h-14 rounded-2xl px-8 gap-2 font-black italic uppercase tracking-tight border-2 hidden sm:flex"
                >
                  <SaveIcon className="size-5" />
                  Salvar Rascunho
                </Button>

                {currentStep === STEPS.length - 1 ? (
                  <Button
                    type="submit"
                    disabled={isSubmitting}
                    className="h-14 rounded-2xl px-12 gap-3 font-black italic uppercase tracking-tight shadow-xl shadow-primary/20 animate-in zoom-in"
                  >
                    {isSubmitting ? (
                      <Loader2Icon className="size-5 animate-spin" />
                    ) : (
                      <RocketIcon className="size-5" />
                    )}
                    Publicar Agora
                  </Button>
                ) : (
                  <Button
                    type="button"
                    onClick={nextStep}
                    className="h-14 rounded-2xl px-12 gap-3 font-black italic uppercase tracking-tight shadow-lg shadow-primary/10"
                  >
                    Próxima Etapa
                    <ChevronRightIcon className="size-5" />
                  </Button>
                )}
              </div>
            </div>
          </form>
        </div>

        {/* Preview Sidebar */}
        <div className="w-full lg:w-[450px] shrink-0">
          <QuestionPreviewLive />
        </div>
      </div>
    </FormProvider>
  )
}
