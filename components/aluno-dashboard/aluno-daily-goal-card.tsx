import * as React from "react"
import { TrophyIcon, HelpCircleIcon, LayersIcon, ClockIcon } from "lucide-react"
import { StudentDashboardData } from "@/lib/mocks/aluno-dashboard"

interface Props {
  data: StudentDashboardData["dailyGoal"];
  careerName: string;
}

export function AlunoDailyGoalCard({ data, careerName }: Props) {
  const getProgress = (done: number, target: number) => {
    return Math.min(Math.round((done / target) * 100), 100)
  }

  const qPct = getProgress(data.questions.done, data.questions.target)
  const fPct = getProgress(data.flashcards.done, data.flashcards.target)
  const hPct = getProgress(data.studyHours.done, data.studyHours.target)

  const isComplete = qPct === 100 && fPct === 100 && hPct === 100

  return (
    <div className="bg-card border border-border/50 rounded-3xl p-6 sm:p-8 shadow-sm flex flex-col relative overflow-hidden">
      <div className="absolute top-0 right-0 p-5 opacity-10 pointer-events-none">
        <TrophyIcon className="size-20 -rotate-12 translate-x-2 -translate-y-2" />
      </div>
      
      <h3 className="font-extrabold text-xl mb-1 relative z-10">Meta Diária</h3>
      <div className="flex items-center gap-2 mb-8 relative z-10">
        <p className="text-sm text-muted-foreground">Foco: <span className="font-semibold text-foreground">{careerName}</span></p>
        {isComplete && (
          <span className="text-[10px] font-bold bg-emerald-500/10 text-emerald-600 px-2 py-0.5 rounded-full uppercase tracking-wider">
            Concluída
          </span>
        )}
      </div>
      
      <div className="flex-1 flex flex-col justify-center gap-6 relative z-10">
        
        <div>
          <div className="flex justify-between items-end mb-2.5">
            <span className="text-sm font-semibold flex items-center gap-2"><HelpCircleIcon className="size-4 text-blue-500" /> Questões</span>
            <span className="text-sm font-bold">{data.questions.done}<span className="text-muted-foreground font-medium">/{data.questions.target}</span></span>
          </div>
          <div className="h-2 w-full bg-muted rounded-full overflow-hidden">
            <div className="h-full bg-blue-500 rounded-full transition-all duration-1000" style={{ width: `${qPct}%` }} />
          </div>
        </div>
        
        <div>
          <div className="flex justify-between items-end mb-2.5">
            <span className="text-sm font-semibold flex items-center gap-2"><LayersIcon className="size-4 text-violet-500" /> Flashcards</span>
            <span className="text-sm font-bold">{data.flashcards.done}<span className="text-muted-foreground font-medium">/{data.flashcards.target}</span></span>
          </div>
          <div className="h-2 w-full bg-muted rounded-full overflow-hidden">
            <div className="h-full bg-violet-500 rounded-full transition-all duration-1000" style={{ width: `${fPct}%` }} />
          </div>
        </div>
        
        <div>
          <div className="flex justify-between items-end mb-2.5">
            <span className="text-sm font-semibold flex items-center gap-2"><ClockIcon className="size-4 text-emerald-500" /> Horas Líquidas</span>
            <span className="text-sm font-bold">{data.studyHours.done}<span className="text-muted-foreground font-medium">/{data.studyHours.target}h</span></span>
          </div>
          <div className="h-2 w-full bg-muted rounded-full overflow-hidden">
            <div className="h-full bg-emerald-500 rounded-full transition-all duration-1000" style={{ width: `${hPct}%` }} />
          </div>
        </div>

      </div>
    </div>
  )
}
