"use client"

import * as React from "react"
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card"
import { 
  HistoryIcon, 
  CheckCircle2Icon, 
  XCircleIcon,
  ChevronRightIcon
} from "lucide-react"
import { cn } from "@/lib/utils"

interface Activity {
  subject: string
  topic: string
  correct: number
  total: number
  date: string
}

interface ProfileActivityHistoryProps {
  activities: Activity[]
}

export function ProfileActivityHistory({ activities }: ProfileActivityHistoryProps) {
  return (
    <Card className="rounded-[32px] border-none shadow-sm bg-background border border-muted/20">
      <CardHeader>
        <CardTitle className="text-lg flex items-center gap-2 italic uppercase font-black tracking-tight">
          <HistoryIcon className="size-5 text-primary" />
          Atividade Recente
        </CardTitle>
      </CardHeader>
      <CardContent className="px-2">
        <div className="space-y-1">
          {activities && activities.map((activity, idx) => (
            <div 
              key={idx}
              className="flex items-center gap-4 p-4 rounded-2xl hover:bg-muted/30 transition-all cursor-pointer group"
            >
              <div className={cn(
                "size-10 rounded-xl flex items-center justify-center shrink-0",
                activity.correct > 0 ? "bg-green-500/10 text-green-600" : "bg-red-500/10 text-red-600"
              )}>
                {activity.correct > 0 ? <CheckCircle2Icon className="size-5" /> : <XCircleIcon className="size-5" />}
              </div>
              
              <div className="flex-1 min-w-0">
                <div className="flex justify-between items-start">
                  <p className="text-sm font-black italic uppercase tracking-tight truncate">
                    {activity.subject}
                  </p>
                  <span className="text-[10px] font-bold text-muted-foreground uppercase">{activity.date}</span>
                </div>
                <p className="text-xs text-muted-foreground truncate italic font-medium">
                  {activity.topic}
                </p>
              </div>

              <div className="flex flex-col items-end gap-1">
                <span className="text-xs font-black italic">
                  {activity.correct}/{activity.total}
                </span>
                <ChevronRightIcon className="size-3 text-muted-foreground/40 group-hover:translate-x-1 transition-transform" />
              </div>
            </div>
          ))}

          {(!activities || activities.length === 0) && (
            <div className="p-8 text-center space-y-2">
              <p className="text-sm font-bold text-muted-foreground italic">Nenhuma atividade recente encontrada.</p>
              <p className="text-xs text-muted-foreground/60">Comece a resolver questões para ver seu histórico aqui.</p>
            </div>
          )}
        </div>
      </CardContent>
    </Card>
  )
}
