"use client"

import * as React from "react"
import { Badge } from "@/components/ui/badge"
import { Button } from "@/components/ui/button"
import { Separator } from "@/components/ui/separator"
import {
  MessageSquareIcon,
  BookOpenIcon,
  BarChartIcon,
  FolderPlusIcon,
  PenLineIcon,
  FlagIcon,
  CheckCircle2Icon,
  ChevronRightIcon,
  XCircleIcon,
  MoreHorizontalIcon,
  CheckIcon,
  XIcon,
  StarIcon,
  BookMarkedIcon,
} from "lucide-react"
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu"
import { cn } from "@/lib/utils"
import { QuestionData } from "@/lib/mocks/questions"
import { saveQuestionAnswer } from "@/app/actions/questions"

// Re-export for pages that import the type from here
export type { QuestionData }

interface QuestionCardProps {
  data: QuestionData
  isPreview?: boolean
}

export function QuestionCard({ data, isPreview = false }: QuestionCardProps) {
  const [selectedOption, setSelectedOption] = React.useState<string | null>(null)
  const [isAnswered, setIsAnswered] = React.useState(false)
  const [showExplanation, setShowExplanation] = React.useState(false)

  const isCorrect = isAnswered && selectedOption === data.correctOptionId

  React.useEffect(() => {
    if (showExplanation) {
      console.log("Exibindo Gabarito:", data.explanation)
    }
  }, [showExplanation, data.explanation])

  const handleAnswer = async () => {
    if (selectedOption) {
      const isCorrect = selectedOption === data.correctOptionId
      setIsAnswered(true)
      
      // Salva no banco de dados (Produção Real)
      if (!isPreview) {
        await saveQuestionAnswer({
          questionId: data.id,
          optionId: selectedOption,
          isCorrect: isCorrect
        })
      }
    }
  }

  // Derive the correct letter from the options array — no duplication risk
  const correctLetter = data.options.find((o) => o.id === data.correctOptionId)?.letter ?? "?"

  // Derive the letter for a given optionId
  const getLetter = (optionId: string) =>
    data.options.find((o) => o.id === optionId)?.letter ?? optionId.toUpperCase()

  // Derive the "Inédita / Oficial / Adaptada" badge from sourceType
  const getSourceBadge = () => {
    switch (data.sourceType) {
      case "original":
        return <Badge className="text-[10px] uppercase font-bold tracking-wider bg-amber-500 hover:bg-amber-600 text-white px-1.5 py-0 shadow-sm">Inédita</Badge>
      case "adapted":
        return <Badge className="text-[10px] uppercase font-bold tracking-wider bg-sky-500 hover:bg-sky-600 text-white px-1.5 py-0 shadow-sm">Adaptada</Badge>
      default:
        return null
    }
  }

  const getDifficultyBadge = () => {
    switch (data.difficulty) {
      case "easy":   return <Badge className="bg-green-500/10 text-green-700 dark:text-green-400 hover:bg-green-500/20 border-green-500/20 text-[10px] uppercase font-bold tracking-wider px-1.5 py-0">Fácil</Badge>
      case "medium": return <Badge className="bg-amber-500/10 text-amber-700 dark:text-amber-400 hover:bg-amber-500/20 border-amber-500/20 text-[10px] uppercase font-bold tracking-wider px-1.5 py-0">Média</Badge>
      case "hard":   return <Badge className="bg-red-500/10 text-red-700 dark:text-red-400 hover:bg-red-500/20 border-red-500/20 text-[10px] uppercase font-bold tracking-wider px-1.5 py-0">Difícil</Badge>
      default: return null
    }
  }

  const previousAttempt = data.userState?.lastAttempt

  return (
    <div className="flex flex-col rounded-xl border bg-card text-card-foreground shadow-sm transition-all duration-300">

      {/* ── Top Header ────────────────────────────── */}
      <div className="flex items-center gap-2 sm:gap-3 px-4 sm:px-6 py-2.5 sm:py-3 bg-muted/40 rounded-t-xl overflow-x-auto whitespace-nowrap scrollbar-none">
        <span className="text-xs sm:text-sm font-semibold text-muted-foreground min-w-4">{data.index}</span>
        <Badge variant="secondary" className="rounded-md font-mono text-[10px] sm:text-xs bg-slate-200 dark:bg-slate-700 hover:bg-slate-200">
          {data.publicCode}
        </Badge>
        {getSourceBadge()}
        {getDifficultyBadge()}

        <div className="flex items-center text-[12px] sm:text-sm text-muted-foreground ml-1 sm:ml-2">
          <span className="truncate max-w-[100px] sm:max-w-none">{data.subject}</span>
          <ChevronRightIcon className="mx-1 sm:mx-2 size-3 sm:size-3.5 opacity-50" />
          <span className="truncate max-w-[100px] sm:max-w-none">{data.topic}</span>
        </div>

        {/* Right: community stats + user state */}
        <div className="ml-auto flex items-center gap-2 shrink-0">
          {data.userState?.isFavorited && (
            <StarIcon className="size-3.5 text-amber-400 fill-amber-400" />
          )}
          {data.userState?.isInNotebook && (
            <BookMarkedIcon className="size-3.5 text-blue-500" />
          )}
          {previousAttempt != null && (
            <div className={cn(
              "hidden xs:flex items-center gap-1.5 text-[11px] font-semibold px-2 py-0.5 rounded-full",
              previousAttempt.isCorrect
                ? "bg-green-500/10 text-green-700 dark:text-green-400"
                : "bg-red-500/10 text-red-700 dark:text-red-400"
            )}>
              {previousAttempt.isCorrect
                ? <><CheckCircle2Icon className="size-3" /> <span className="hidden sm:inline">Acertou antes</span></>
                : <><XCircleIcon className="size-3" /> <span className="hidden sm:inline">Errou antes</span></>}
            </div>
          )}
          {data.stats && (
            <div className="hidden sm:flex items-center gap-1.5 text-[11px] font-semibold text-muted-foreground bg-background border px-2 py-0.5 rounded-full">
              <BarChartIcon className="size-3" /> {data.stats.accuracyRate}% acertaram
            </div>
          )}
        </div>
      </div>

      {/* ── Meta Row ──────────────────────────────── */}
      <div className="px-4 sm:px-6 py-2 sm:py-3 border-b bg-background flex flex-wrap gap-x-4 sm:gap-x-6 gap-y-1 sm:gap-y-2 text-[12px] sm:text-sm text-muted-foreground">
        <p><span className="font-medium text-foreground">Ano:</span> {data.year}</p>
        <p><span className="font-medium text-foreground">Banca:</span> {data.board}</p>
        <p className="hidden sm:block"><span className="font-medium text-foreground">Órgão:</span> {data.institution}</p>
        <p className="hover:underline cursor-pointer text-primary/80 truncate max-w-[200px] sm:max-w-none">
          <span className="font-medium text-foreground mr-1">Prova:</span>{data.exam}
        </p>
      </div>

      {/* ── Stem ──────────────────────────────────── */}
      <div 
        className="px-4 sm:px-6 py-6 sm:py-8 leading-relaxed text-foreground font-[450] text-pretty"
        style={{ fontSize: 'var(--base-font-size, 15px)' }}
      >
        <p>{data.stem}</p>
      </div>

      {/* ── Options ───────────────────────────────── */}
      <div className="px-6 py-2 flex flex-col gap-3">
        {data.options.map((opt) => {
          const isSelected = selectedOption === opt.id
          const isCorrectOption = opt.id === data.correctOptionId

          let cardStyle = "border-transparent hover:border-border hover:bg-accent/40"
          let letterStyle = "border-muted-foreground/30 text-muted-foreground"

          if (isSelected && !isAnswered) {
            cardStyle = "border-primary bg-primary/5 shadow-sm"
            letterStyle = "border-primary bg-primary text-primary-foreground"
          } else if (isAnswered) {
            if (isSelected && isCorrectOption) {
              cardStyle = "border-green-500 bg-green-500/10 shadow-sm"
              letterStyle = "border-green-500 bg-green-500 text-white"
            } else if (isSelected && !isCorrectOption) {
              cardStyle = "border-red-500 bg-red-500/10 shadow-sm"
              letterStyle = "border-red-500 bg-red-500 text-white"
            } else if (isCorrectOption) {
              cardStyle = "border-green-500 bg-green-500/10"
              letterStyle = "border-green-500 bg-green-500 text-white"
            } else {
              cardStyle = "border-transparent opacity-40 grayscale"
              letterStyle = "border-muted-foreground/20 text-muted-foreground/50"
            }
          }

          return (
            <label
              key={opt.id}
              className={cn(
                "relative flex items-center gap-4 rounded-xl border p-4 transition-all",
                !isAnswered ? "cursor-pointer" : "cursor-default",
                cardStyle
              )}
            >
              <input
                type="radio"
                name={`question-${data.id}`}
                value={opt.id}
                checked={isSelected}
                disabled={isAnswered}
                onChange={() => { if (!isAnswered) setSelectedOption(opt.id) }}
                className="peer sr-only"
              />
              <div className={cn(
                "flex h-7 w-7 shrink-0 items-center justify-center rounded-full border text-xs font-bold transition-colors",
                letterStyle
              )}>
                {opt.letter}
              </div>
              <div 
                className={cn(
                  "leading-relaxed transition-colors",
                  isSelected && !isAnswered ? "text-foreground font-medium" : "text-muted-foreground"
                )}
                style={{ fontSize: 'var(--base-font-size, 15px)' }}
              >
                {opt.text}
              </div>
            </label>
          )
        })}
      </div>

      {/* ── Feedback / Responder ──────────────────── */}
      <div className="px-6 py-6 pt-4 flex flex-col gap-4">
        {!isAnswered ? (
          <Button
            disabled={!selectedOption}
            onClick={handleAnswer}
            className="font-semibold px-8 hover:scale-[1.02] transition-transform active:scale-[0.98] w-fit"
          >
            Responder
          </Button>
        ) : (
          <div className="flex flex-wrap items-center gap-3 animate-in fade-in slide-in-from-bottom-2 duration-300">
            <div className={cn(
              "flex items-center gap-3 px-5 py-3 rounded-xl font-medium text-sm border shadow-sm",
              isCorrect
                ? "bg-green-500/10 border-green-500/20 text-green-800 dark:text-green-300"
                : "bg-red-500/10 border-red-500/20 text-red-800 dark:text-red-300"
            )}>
              {isCorrect ? (
                <><CheckCircle2Icon className="size-5 shrink-0" /><span>Você acertou. Quer registrar esta questão como domínio consolidado ou revisar depois?</span></>
              ) : (
                <><XCircleIcon className="size-5 shrink-0" /><span>Você errou esta questão. Recomendamos adicionar ao caderno de erros e revisar o comentário.</span></>
              )}
            </div>
          </div>
        )}
      </div>

      <Separator />

      {/* ── Footer Toolbar ────────────────────────── */}
      <div className={cn(
        "px-4 py-2 flex flex-wrap items-center gap-1 sm:gap-2 text-[13px] bg-muted/10",
        !(showExplanation && data.explanation) && "rounded-b-xl"
      )}>
        {/* Gabarito Comentado — bloqueado antes de responder */}
        <div className="group relative">
          <Button
            variant="ghost"
            size="sm"
            disabled={!isAnswered}
            onClick={() => setShowExplanation(!showExplanation)}
            className={cn(
              "h-8 hover:bg-transparent px-2 sm:px-3",
              showExplanation ? "text-primary font-bold bg-primary/5" : "text-muted-foreground hover:text-foreground"
            )}
          >
            <MessageSquareIcon className={cn("mr-1.5 size-4", showExplanation && "fill-primary/20 text-primary")} />
            Gabarito Comentado
          </Button>
          {!isAnswered && (
            <div className="absolute -top-10 left-1/2 -translate-x-1/2 hidden group-hover:block bg-foreground text-background text-xs font-bold px-3 py-1.5 rounded-md shadow-xl whitespace-nowrap z-50 animate-in fade-in zoom-in-95 duration-200">
              Responda primeiro para liberar o comentário
              <div className="absolute -bottom-1 left-1/2 -translate-x-1/2 size-2 bg-foreground rotate-45" />
            </div>
          )}
        </div>

        <Button variant="ghost" size="sm" className="h-8 text-muted-foreground hover:text-foreground hover:bg-transparent px-2 sm:px-3 hidden sm:flex">
          <BookOpenIcon className="mr-1.5 size-4" />
          Comentários <span className="ml-1 opacity-50 text-[10px]">(12)</span>
        </Button>
        <Button variant="ghost" size="sm" className="h-8 text-muted-foreground hover:text-foreground hover:bg-transparent px-2 sm:px-3 hidden md:flex">
          <FolderPlusIcon className="mr-1.5 size-4" />
          Adicionar ao Caderno
        </Button>
        <Button variant="ghost" size="sm" className="h-8 text-muted-foreground hover:text-foreground hover:bg-transparent px-2 sm:px-3 hidden lg:flex">
          <BarChartIcon className="mr-1.5 size-4" />
          Estatísticas
        </Button>

        <div className="ml-auto flex items-center gap-1">
          <Button variant="ghost" size="sm" className="h-8 text-muted-foreground hover:text-destructive hover:bg-transparent px-2 hidden sm:flex">
            <FlagIcon className="mr-1.5 size-4" />
            Notificar Erro
          </Button>
          <DropdownMenu>
            <DropdownMenuTrigger asChild>
              <Button variant="ghost" size="sm" className="h-8 w-8 p-0 text-muted-foreground hover:text-foreground hover:bg-muted">
                <MoreHorizontalIcon className="size-4" />
                <span className="sr-only">Mais ações</span>
              </Button>
            </DropdownMenuTrigger>
            <DropdownMenuContent align="end" className="w-52 font-medium">
              <DropdownMenuItem className="sm:hidden"><BookOpenIcon className="mr-2 size-4" /> Comentários</DropdownMenuItem>
              <DropdownMenuItem className="md:hidden"><FolderPlusIcon className="mr-2 size-4" /> Cadernos</DropdownMenuItem>
              <DropdownMenuItem className="lg:hidden"><BarChartIcon className="mr-2 size-4" /> Estatísticas</DropdownMenuItem>
              <DropdownMenuItem><PenLineIcon className="mr-2 size-4" /> Aulas e Vídeos</DropdownMenuItem>
              <DropdownMenuItem><BookOpenIcon className="mr-2 size-4" /> Minhas Anotações</DropdownMenuItem>
              <DropdownMenuItem className="text-destructive focus:bg-destructive/10 focus:text-destructive sm:hidden">
                <FlagIcon className="mr-2 size-4" /> Notificar Erro
              </DropdownMenuItem>
            </DropdownMenuContent>
          </DropdownMenu>
        </div>
      </div>

      {/* ── Gabarito Estruturado ──────────────────── */}
      {showExplanation && data.explanation && (
        <div className="bg-primary/5 border-t border-primary/10 rounded-b-xl animate-in slide-in-from-top-2 fade-in duration-300">
          <div 
            className="px-6 py-8 space-y-6 leading-relaxed text-foreground"
            style={{ fontSize: 'calc(var(--base-font-size, 15px) - 1px)' }}
          >

            {/* Header */}
            <div className="flex items-center gap-3 border-b border-primary/10 pb-4">
              <div className="flex items-center justify-center size-9 rounded-lg bg-primary text-primary-foreground font-extrabold text-base shadow-sm">
                {correctLetter}
              </div>
              <div>
                <h4 className="font-bold text-base leading-none">Gabarito Comentado</h4>
                <p className="text-xs text-muted-foreground mt-1">Alternativa correta: {correctLetter}</p>
              </div>
            </div>

            {/* Resumo */}
            <div>
              <p className="font-semibold text-primary/80 mb-1.5 text-sm uppercase tracking-wide">Resumo</p>
              <p className="opacity-90 leading-7">{data.explanation.summary}</p>
            </div>

            {/* Por que a correta está certa */}
            <div className="bg-green-500/10 border border-green-500/20 p-4 rounded-xl">
              <p className="font-bold text-green-700 dark:text-green-400 mb-2 flex items-center gap-2 text-sm">
                <CheckIcon className="size-4" /> Por que a alternativa {correctLetter} está correta?
              </p>
              <p className="text-green-900/80 dark:text-green-100/80 leading-7">{data.explanation.whyCorrect}</p>
            </div>

            {/* Por que as demais estão erradas */}
            {data.explanation.whyIncorrect.length > 0 && (
              <div>
                <p className="font-bold text-red-600/80 dark:text-red-400/80 mb-3 flex items-center gap-2 text-sm">
                  <XIcon className="size-4" /> Por que as demais estão incorretas?
                </p>
                <div className="space-y-3">
                  {data.explanation.whyIncorrect.map((item) => (
                    <div key={item.optionId} className="flex gap-3">
                      <span className="font-extrabold text-red-600 dark:text-red-400 w-4 shrink-0 text-center">
                        {getLetter(item.optionId)}
                      </span>
                      <p className="opacity-80 leading-7">{item.reason}</p>
                    </div>
                  ))}
                </div>
              </div>
            )}

            {/* Nota do Professor */}
            {data.explanation.teacherNote && (
              <div className="bg-amber-500/10 border border-amber-500/20 p-4 rounded-xl">
                <p className="font-bold text-amber-700 dark:text-amber-400 mb-1 text-sm">Nota do Professor</p>
                <p className="text-amber-900/80 dark:text-amber-100/80 italic leading-7">{data.explanation.teacherNote}</p>
              </div>
            )}

          </div>
        </div>
      )}
    </div>
  )
}
