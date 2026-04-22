"use client"

import * as React from "react"
import { Badge } from "@/components/ui/badge"
import {
  AreaChart,
  Area,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  ResponsiveContainer,
  RadarChart,
  PolarGrid,
  PolarAngleAxis,
  Radar,
} from "recharts"
import {
  TargetIcon,
  FlameIcon,
  HelpCircleIcon,
  TrendingUpIcon,
  AlertTriangleIcon,
  CalendarIcon,
  ClockIcon,
  BarChart2Icon,
  TrendingDownIcon,
} from "lucide-react"
import { cn } from "@/lib/utils"

interface DesempenhoClientProps {
  initialData: any
}

function pctColor(pct: number) {
  if (pct >= 80) return "bg-emerald-500"
  if (pct >= 60) return "bg-blue-500"
  if (pct >= 40) return "bg-amber-500"
  return "bg-red-500"
}

function TrendIcon({ trend }: { trend: string }) {
  if (trend === "up") return <TrendingUpIcon className="size-3.5 text-emerald-500" />
  if (trend === "down") return <TrendingDownIcon className="size-3.5 text-red-500" />
  return <span className="size-3.5 inline-block rounded-full bg-muted-foreground/30" />
}

export function DesempenhoClient({ initialData }: DesempenhoClientProps) {
  const [period, setPeriod] = React.useState("7d")

  if (!initialData || initialData.total === 0) {
    return (
      <div className="flex flex-col items-center justify-center py-20 text-center bg-card border rounded-2xl">
        <div className="size-16 rounded-full bg-muted flex items-center justify-center mb-4">
          <TargetIcon className="size-8 text-muted-foreground" />
        </div>
        <h3 className="text-xl font-bold">Sem dados de desempenho</h3>
        <p className="text-muted-foreground max-w-xs mx-auto mt-2">
          Responda algumas questões para começar a ver suas estatísticas reais aqui.
        </p>
      </div>
    )
  }

  const iconMap: Record<string, any> = {
    TargetIcon: TargetIcon,
    HelpCircleIcon: HelpCircleIcon,
    FlameIcon: FlameIcon,
  }

  return (
    <div className="space-y-8">
      {/* ── KPI Grid ── */}
      <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
        {initialData.stats.map((stat: any) => {
          const Icon = iconMap[stat.icon] || TargetIcon
          return (
            <div key={stat.label} className="bg-card border border-border/50 rounded-2xl p-6 shadow-sm flex flex-col gap-3">
              <div className="flex items-center justify-between">
                <Icon className={cn("size-5", stat.color)} />
                <TrendIcon trend={stat.trend} />
              </div>
              <div>
                <p className="text-2xl font-bold tracking-tight">{stat.value}</p>
                <p className="text-[12px] text-muted-foreground leading-tight mt-0.5">{stat.sub}</p>
                <p className="text-[12px] font-semibold text-foreground/60 mt-1 uppercase tracking-wider">{stat.label}</p>
              </div>
            </div>
          )
        })}
      </div>

      <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
        {/* ── Por Disciplina Bars ── */}
        <div className="lg:col-span-2 bg-card border border-border/50 rounded-2xl p-6 shadow-sm">
          <h2 className="font-semibold text-base mb-6 flex items-center gap-2">
            <BarChart2Icon className="size-4 text-muted-foreground" />
            Desempenho Real por Disciplina
          </h2>
          <div className="flex flex-col gap-6">
            {initialData.subjects.map(({ name, pct, total, trend }: any) => (
              <div key={name} className="flex items-center gap-4">
                <div className="w-48 shrink-0">
                  <p className="text-[14px] font-bold truncate">{name}</p>
                  <p className="text-[11px] text-muted-foreground uppercase font-bold">{total} questões resolvidas</p>
                </div>
                <div className="flex-1 h-3 bg-muted rounded-full overflow-hidden">
                  <div
                    className={cn("h-full rounded-full transition-all duration-1000", pctColor(pct))}
                    style={{ width: `${pct}%` }}
                  />
                </div>
                <div className="flex items-center gap-2 w-16 shrink-0 justify-end">
                  <span className="text-[14px] font-black">{pct}%</span>
                </div>
              </div>
            ))}
          </div>
        </div>

        {/* ── Últimas sessões ── */}
        <div className="bg-card border border-border/50 rounded-2xl p-6 shadow-sm">
          <h2 className="font-semibold text-base mb-6 flex items-center gap-2">
            <CalendarIcon className="size-4 text-muted-foreground" />
            Atividade Recente
          </h2>
          <div className="flex flex-col gap-2">
            {initialData.recent.map((r: any, i: number) => (
              <div key={i} className="flex items-center gap-4 py-3 border-b border-border/30 last:border-0">
                <div className={cn("size-8 rounded-lg flex items-center justify-center text-[12px] font-bold shrink-0 shadow-sm", r.correct ? "bg-emerald-500 text-white" : "bg-red-500 text-white")}>
                  {r.correct ? "AC" : "ER"}
                </div>
                <div className="flex-1 min-w-0">
                  <p className="text-[13px] font-bold truncate">{r.topic}</p>
                  <p className="text-[11px] text-muted-foreground truncate uppercase">{r.subject}</p>
                </div>
                <div className="text-right shrink-0">
                  <p className="text-[11px] font-bold text-muted-foreground">{r.date}</p>
                </div>
              </div>
            ))}
          </div>
        </div>
      </div>
    </div>
  )
}
