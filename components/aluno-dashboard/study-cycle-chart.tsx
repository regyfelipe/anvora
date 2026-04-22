"use client"

import * as React from "react"
import { PieChart, Pie, Cell, ResponsiveContainer, Label } from "recharts"
import { Progress } from "@/components/ui/progress"
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card"
import { ClockIcon, CheckCircle2Icon } from "lucide-react"

const SUBJECT_COLORS = [
  "#93C5FD", // Blue
  "#FDBA74", // Orange
  "#86EFAC", // Green
  "#CFFAFE", // Cyan
  "#DDD6FE", // Purple
  "#FCA5A5", // Red
  "#E2E8F0", // Slate
  "#94A3B8", // Slate-400
  "#FDE68A", // Amber-200
  "#C084FC", // Purple-400
]

interface Subject {
  name: string
  pct: number
  total: number
}

interface StudyCycleChartProps {
  subjects?: Subject[]
}

export function StudyCycleChart({ subjects = [] }: StudyCycleChartProps) {
  // Para o ciclo, usamos os assuntos da grade. 
  // O peso de cada um no gráfico é proporcional ao total de tópicos (representado aqui por 'total' de questões resolvidas ou peso fixo)
  const chartData = subjects.map((s, i) => ({
    name: s.name,
    value: 1, // Peso igual no ciclo por padrão
    color: SUBJECT_COLORS[i % SUBJECT_COLORS.length]
  }))

  const totalResolved = subjects.reduce((acc, s) => acc + s.total, 0)

  return (
    <div className="grid grid-cols-1 lg:grid-cols-12 gap-10 p-8">
      {/* Sequence List */}
      <Card className="lg:col-span-7 border-none shadow-none bg-transparent">
        <CardHeader className="pb-8">
          <div className="flex items-center justify-between">
            <CardTitle className="text-sm font-black uppercase tracking-[0.2em] text-muted-foreground/70">
              Sequência dos Estudos (Grade Real)
            </CardTitle>
            <div className="flex items-center gap-2 text-[10px] font-black text-primary uppercase bg-primary/10 px-3 py-1 rounded-full border border-primary/20">
              <CheckCircle2Icon className="size-3" />
              Progressivo
            </div>
          </div>
        </CardHeader>
        <CardContent className="space-y-4">
          {subjects.map((item, i) => (
            <div key={i} className="group relative">
              <div className="flex items-center gap-6 p-5 rounded-[28px] hover:bg-muted/30 border border-transparent hover:border-border/40 transition-all duration-300">
                <div 
                  className="w-2 h-10 rounded-full shrink-0" 
                  style={{ backgroundColor: SUBJECT_COLORS[i % SUBJECT_COLORS.length] }} 
                />
                <div className="flex-1 space-y-2">
                  <div className="flex justify-between items-center">
                    <span className="text-[14px] font-black uppercase tracking-tight text-foreground/90 italic">{item.name}</span>
                    <span className="text-[11px] font-bold text-muted-foreground/60 flex items-center gap-1.5">
                      <ClockIcon className="size-3" />
                      {item.total} questões resolvidas
                    </span>
                  </div>
                  <Progress 
                    value={item.pct} 
                    className="h-2 rounded-full bg-muted/20" 
                    // @ts-ignore
                    style={{ "--progress-foreground": SUBJECT_COLORS[i % SUBJECT_COLORS.length] }}
                  />
                </div>
              </div>
            </div>
          ))}
        </CardContent>
      </Card>

      {/* Donut Chart */}
      <Card className="lg:col-span-5 border-none shadow-none bg-transparent flex flex-col items-center">
        <CardHeader className="pb-12 w-full text-center lg:text-left">
          <CardTitle className="text-sm font-black uppercase tracking-[0.2em] text-muted-foreground/70">
            Distribuição do Ciclo
          </CardTitle>
        </CardHeader>
        <div className="relative w-full aspect-square max-w-[360px] animate-in zoom-in-95 duration-1000">
          <ResponsiveContainer width="100%" height="100%">
            <PieChart>
              <Pie
                data={chartData}
                innerRadius="72%"
                outerRadius="98%"
                paddingAngle={4}
                dataKey="value"
                stroke="none"
              >
                {chartData.map((entry, index) => (
                  <Cell key={`cell-${index}`} fill={entry.color} className="outline-none" />
                ))}
                <Label
                  content={({ viewBox }) => {
                    if (viewBox && "cx" in viewBox && "cy" in viewBox) {
                      return (
                        <text
                          x={viewBox.cx}
                          y={viewBox.cy}
                          textAnchor="middle"
                          dominantBaseline="middle"
                        >
                          <tspan
                            x={viewBox.cx}
                            y={viewBox.cy}
                            className="fill-foreground text-5xl font-black italic tracking-tighter"
                          >
                            {totalResolved}
                          </tspan>
                          <tspan
                            x={viewBox.cx}
                            y={viewBox.cy + 32}
                            className="fill-muted-foreground text-[11px] font-black uppercase tracking-[0.2em]"
                          >
                            Questões Totais
                          </tspan>
                        </text>
                      )
                    }
                  }}
                />
              </Pie>
            </PieChart>
          </ResponsiveContainer>
        </div>
        
        {/* Simple Legend / Indicator */}
        <div className="mt-10 w-full h-2 rounded-full overflow-hidden flex gap-1.5 bg-muted/10 p-1">
          {subjects.map((item, i) => (
            <div 
              key={i} 
              className="h-full flex-1 rounded-full opacity-60 hover:opacity-100 transition-opacity" 
              style={{ backgroundColor: SUBJECT_COLORS[i % SUBJECT_COLORS.length] }} 
            />
          ))}
        </div>
      </Card>
    </div>
  )
}
