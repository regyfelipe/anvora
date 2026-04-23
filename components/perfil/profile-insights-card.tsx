"use client"

import * as React from "react"
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card"
import { 
  LightbulbIcon, 
  AlertCircleIcon, 
  CheckCircle2Icon,
  TrendingUpIcon,
  ArrowRightIcon
} from "lucide-react"
import { cn } from "@/lib/utils"

interface Insight {
  type: "warning" | "success" | "info"
  title: string
  text: string
}

interface ProfileInsightsCardProps {
  insights: Insight[]
}

export function ProfileInsightsCard({ insights }: ProfileInsightsCardProps) {
  if (!insights || insights.length === 0) return null

  return (
    <Card className="rounded-3xl border-none shadow-sm bg-background border border-muted/20 overflow-hidden">
      <CardHeader className="pb-4">
        <CardTitle className="text-sm flex items-center gap-2 font-bold uppercase tracking-widest text-muted-foreground">
          <LightbulbIcon className="size-4" />
          Inteligência de Dados
        </CardTitle>
      </CardHeader>
      <CardContent className="space-y-4">
        <div className="grid gap-4">
          {insights.map((insight, idx) => (
            <div 
              key={idx}
              className={cn(
                "flex gap-4 p-4 rounded-2xl border transition-all group",
                insight.type === "warning" ? "bg-rose-500/5 border-rose-500/10 text-rose-700" : 
                insight.type === "success" ? "bg-emerald-500/5 border-emerald-500/10 text-emerald-700" :
                "bg-blue-500/5 border-blue-500/10 text-blue-700"
              )}
            >
              <div className="shrink-0 pt-1 opacity-80">
                {insight.type === "warning" ? <AlertCircleIcon className="size-5" /> : 
                 insight.type === "success" ? <CheckCircle2Icon className="size-5" /> : 
                 <TrendingUpIcon className="size-5" />}
              </div>
              <div className="space-y-1">
                <p className="text-sm font-bold leading-tight">
                  {insight.title}
                </p>
                <p className="text-xs font-medium opacity-80 leading-relaxed">
                  {insight.text}
                </p>
              </div>
            </div>
          ))}
        </div>

        {/* Recomendação de Ação */}
        <div className="p-4 rounded-2xl bg-muted/30 border border-transparent flex items-center justify-between group cursor-pointer hover:bg-muted/50 transition-all">
          <div className="space-y-0.5">
            <p className="text-[10px] font-bold uppercase tracking-widest text-muted-foreground">Recomendação</p>
            <p className="text-sm font-semibold">Focar em Direito Administrativo</p>
          </div>
          <ArrowRightIcon className="size-4 text-muted-foreground group-hover:translate-x-1 transition-transform" />
        </div>
      </CardContent>
    </Card>
  )
}
