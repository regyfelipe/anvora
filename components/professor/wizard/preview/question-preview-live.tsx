"use client"

import * as React from "react"
import { useFormContext } from "react-hook-form"
import { QuestionEditorialFormValues } from "@/lib/validations/question-editorial"
import { QuestionCard } from "@/components/question-card"
import { QuestionData } from "@/lib/mocks/questions"
import { 
  EyeIcon, 
  SmartphoneIcon, 
  MonitorIcon, 
  Maximize2Icon,
  XIcon
} from "lucide-react"
import { cn } from "@/lib/utils"
import {
  Dialog,
  DialogContent,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from "@/components/ui/dialog"
import { Button } from "@/components/ui/button"
import { Badge } from "@/components/ui/badge"

export function QuestionPreviewLive() {
  const { watch } = useFormContext<QuestionEditorialFormValues>()
  const formData = watch()
  const [previewMode, setPreviewMode] = React.useState<"mobile" | "desktop">("desktop")

  // Map form data to QuestionData structure
  const previewData: QuestionData = {
    id: "preview-id",
    publicCode: "Q-PREVIEW",
    index: 0,
    subject: formData.meta.subject || "Disciplina não informada",
    topic: formData.meta.topic || "Assunto não informado",
    career: formData.meta.career,
    difficulty: formData.meta.difficulty,
    sourceType: formData.meta.sourceType,
    year: formData.meta.examYear || new Date().getFullYear(),
    board: formData.meta.board || "BANCA",
    institution: formData.meta.institutionName || "INSTITUIÇÃO",
    exam: formData.meta.examName || "Nome da Prova",
    stem: formData.content.stem || "O enunciado da questão aparecerá aqui conforme você digita...",
    options: formData.options.map((opt) => ({
      id: opt.key,
      letter: opt.key.toUpperCase(),
      text: opt.text || "...",
    })),
    correctOptionId: formData.correctOptionKey,
    explanation: {
      summary: formData.explanation.summary || "O resumo da explicação aparecerá aqui.",
      whyCorrect: formData.explanation.whyCorrect || "Justificativa da alternativa correta.",
      whyIncorrect: formData.explanation.whyIncorrect.map(item => ({
        optionId: item.optionKey,
        reason: item.reason || "Justificativa da alternativa incorreta."
      })),
      teacherNote: formData.explanation.teacherNote
    },
    stats: {
      accuracyRate: 0,
      totalAnswers: 0
    }
  }

  return (
    <div className="sticky top-24 space-y-4">
      <div className="flex items-center justify-between px-2">
        <div className="flex items-center gap-2 text-sm font-black uppercase italic tracking-wider text-muted-foreground">
          <EyeIcon className="size-4" />
          Preview Real-Time
        </div>
        
        <div className="flex items-center gap-2">
          <div className="flex items-center bg-muted/50 p-1 rounded-lg border">
            <button 
              onClick={() => setPreviewMode("mobile")}
              className={cn(
                "p-1.5 rounded-md transition-all",
                previewMode === "mobile" ? "bg-background text-primary shadow-sm" : "text-muted-foreground"
              )}
            >
              <SmartphoneIcon className="size-4" />
            </button>
            <button 
              onClick={() => setPreviewMode("desktop")}
              className={cn(
                "p-1.5 rounded-md transition-all",
                previewMode === "desktop" ? "bg-background text-primary shadow-sm" : "text-muted-foreground"
              )}
            >
              <MonitorIcon className="size-4" />
            </button>
          </div>

          <Dialog>
            <DialogTrigger asChild>
              <Button variant="outline" size="icon" className="size-9 rounded-lg">
                <Maximize2Icon className="size-4" />
              </Button>
            </DialogTrigger>
            <DialogContent className="max-w-5xl p-0 overflow-hidden rounded-[32px] border-none shadow-2xl bg-transparent">
              <div className="bg-muted/10 p-6 md:p-12 overflow-y-auto max-h-[90vh]">
                <div className="mx-auto max-w-3xl">
                  <div className="mb-6 flex items-center justify-between">
                    <Badge variant="secondary" className="font-black italic uppercase tracking-widest px-4 py-1">
                      Visualização Final
                    </Badge>
                  </div>
                  <QuestionCard data={previewData} isPreview={true} />
                </div>
              </div>
            </DialogContent>
          </Dialog>
        </div>
      </div>

      <div className={cn(
        "transition-all duration-500 mx-auto",
        previewMode === "mobile" ? "max-w-[360px]" : "w-full"
      )}>
        <QuestionCard data={previewData} isPreview={true} />
      </div>

      <div className="px-4 py-3 rounded-xl bg-primary/5 border border-primary/10">
        <p className="text-[11px] text-center text-primary/60 font-bold uppercase tracking-widest italic">
          O layout acima é exatamente o que o aluno verá no feed.
        </p>
      </div>
    </div>
  )
}
