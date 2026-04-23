"use client"

import * as React from "react"
import { Card, CardContent } from "@/components/ui/card"
import { 
  TargetIcon, 
  FlameIcon, 
  TrophyIcon, 
  BarChart3Icon,
  TimerIcon,
  ShieldAlertIcon,
  AwardIcon
} from "lucide-react"
import { cn } from "@/lib/utils"

interface ProfileStatsGridProps {
  performance: any
  premium: any
}

export function ProfileStatsGrid({ performance, premium }: ProfileStatsGridProps) {
  const stats = [
    {
      label: "Taxa de Acerto",
      value: `${performance?.accuracyRate || 0}%`,
      sub: "Média Global",
      icon: TargetIcon,
      color: "text-blue-500",
      bg: "bg-blue-500/5",
    },
    {
      label: "Melhor Matéria",
      value: premium.bestSubject,
      sub: "Performance Máxima",
      icon: AwardIcon,
      color: "text-emerald-500",
      bg: "bg-emerald-500/5",
    },
    {
      label: "Área de Risco",
      value: premium.worstSubject,
      sub: "Precisa de Foco",
      icon: ShieldAlertIcon,
      color: "text-rose-500",
      bg: "bg-rose-500/5",
    },
    {
      label: "Tempo Médio",
      value: `${performance?.averageTimeSeconds || 0}s`,
      sub: "Consistência",
      icon: TimerIcon,
      color: "text-amber-500",
      bg: "bg-amber-500/5",
    }
  ]

  return (
    <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
      {stats.map((stat, idx) => (
        <Card key={idx} className="rounded-2xl border-none shadow-sm bg-muted/20 border border-muted/20 group">
          <CardContent className="p-6">
            <div className="flex items-center gap-2 mb-4">
              <div className={cn("p-2 rounded-lg bg-background shadow-sm", stat.color)}>
                <stat.icon className="size-4" />
              </div>
              <span className="text-[10px] font-bold uppercase tracking-widest text-muted-foreground">{stat.label}</span>
            </div>
            <p className="text-xl font-bold tracking-tight text-foreground truncate">{stat.value}</p>
            <p className="text-[10px] font-medium text-muted-foreground/60 mt-1 uppercase tracking-tighter">{stat.sub}</p>
          </CardContent>
        </Card>
      ))}
    </div>
  )
}
