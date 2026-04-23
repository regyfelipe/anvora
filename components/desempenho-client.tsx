"use client"

import * as React from "react"
import {
  PieChart,
  Pie,
  Cell,
  ResponsiveContainer,
  Bar,
  Line,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip as RechartsTooltip,
  ComposedChart,
  Legend,
} from "recharts"
import {
  CalendarIcon,
  ClockIcon,
  TargetIcon,
  ZapIcon,
  TrophyIcon,
  TimerIcon,
  AlertTriangleIcon,
} from "lucide-react"
import { cn } from "@/lib/utils"
import { PerformanceStats } from "@/app/actions/performance"
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card"

interface DesempenhoClientProps {
  data: PerformanceStats
}

export function DesempenhoClient({ data }: DesempenhoClientProps) {
  if (!data || data.totalQuestions === 0) {
    return (
      <div className="flex flex-col items-center justify-center py-24 text-center bg-card border rounded-3xl shadow-sm">
        <div className="size-20 rounded-full bg-muted flex items-center justify-center mb-6 animate-pulse">
          <TargetIcon className="size-10 text-muted-foreground/40" />
        </div>
        <h3 className="text-2xl font-black italic uppercase tracking-tighter">Sem dados ainda</h3>
        <p className="text-muted-foreground max-w-xs mx-auto mt-2 font-medium">
          Comece a responder questões para ver sua evolução real ganhar vida aqui.
        </p>
      </div>
    )
  }

  // Data for Donut Chart
  const pieData = [
    { name: "Acertos", value: data.correctAnswers, color: "#10b981" },
    { name: "Erros", value: data.incorrectAnswers, color: "#ef4444" },
  ]

  // Format total time
  const hours = Math.floor(data.totalTimeSeconds / 3600)
  const minutes = Math.floor((data.totalTimeSeconds % 3600) / 60)
  const timeStr = `${hours}h${minutes.toString().padStart(2, '0')}min`

  return (
    <div className="space-y-6">
      {/* ── Top Row: Donut + Stats Cards ── */}
      <div className="grid grid-cols-1 lg:grid-cols-12 gap-6">
        
        {/* Desempenho Donut Card */}
        <Card className="lg:col-span-3 rounded-3xl border-border/50 shadow-sm overflow-hidden flex flex-col">
          <CardHeader className="pb-2">
            <CardTitle className="text-xs font-black uppercase tracking-widest text-muted-foreground/70">Desempenho</CardTitle>
          </CardHeader>
          <CardContent className="flex-1 flex flex-col items-center justify-center pt-0 pb-6">
            <div className="relative size-48">
              <ResponsiveContainer width="100%" height="100%">
                <PieChart>
                  <Pie
                    data={pieData}
                    cx="50%"
                    cy="50%"
                    innerRadius={60}
                    outerRadius={80}
                    paddingAngle={5}
                    dataKey="value"
                    stroke="none"
                  >
                    {pieData.map((entry, index) => (
                      <Cell key={`cell-${index}`} fill={entry.color} />
                    ))}
                  </Pie>
                </PieChart>
              </ResponsiveContainer>
              <div className="absolute inset-0 flex flex-col items-center justify-center">
                <span className="text-4xl font-black italic tracking-tighter">{data.accuracyRate}%</span>
              </div>
            </div>
            <p className="text-[13px] font-bold text-muted-foreground mt-2">
              {data.totalQuestions} questões resolvidas
            </p>
          </CardContent>
        </Card>

        {/* Info Cards Grid */}
        <div className="lg:col-span-9 grid grid-cols-1 sm:grid-cols-2 gap-4">
          {/* Tempo de Estudo */}
          <Card className="rounded-3xl border-border/50 shadow-sm">
            <CardContent className="p-6">
              <div className="flex justify-between items-start mb-4">
                <div>
                  <h4 className="text-[11px] font-black uppercase tracking-widest text-muted-foreground/70 mb-1">Tempo de Estudo</h4>
                  <p className="text-[12px] text-muted-foreground font-medium leading-tight">
                    {Math.round(data.averageTimeSeconds / 60)}min por questão (média)<br />
                    {data.daysStudied} dias estudados<br />
                    {data.totalDays} dias totais
                  </p>
                </div>
                <div className="text-3xl font-black italic tracking-tighter">{timeStr}</div>
              </div>
            </CardContent>
          </Card>

          {/* Constância */}
          <Card className="rounded-3xl border-border/50 shadow-sm">
            <CardContent className="p-6">
              <div className="flex justify-between items-start mb-4">
                <div>
                  <h4 className="text-[11px] font-black uppercase tracking-widest text-muted-foreground/70 mb-1">Constância nos Estudos</h4>
                  <p className="text-[12px] text-muted-foreground font-medium leading-tight">
                    {data.daysStudied} dias estudados<br />
                    {data.totalDays - data.daysStudied} dias falhados
                  </p>
                </div>
                <div className="text-3xl font-black italic tracking-tighter">{data.consistencyRate}%</div>
              </div>
            </CardContent>
          </Card>

          {/* Outros Métricas (Substituindo Páginas/Vídeos) */}
          <Card className="rounded-3xl border-border/50 shadow-sm">
            <CardContent className="p-6">
              <div className="flex justify-between items-start">
                <div>
                  <h4 className="text-[11px] font-black uppercase tracking-widest text-muted-foreground/70 mb-1">Total de Acertos</h4>
                  <p className="text-[12px] text-muted-foreground font-medium">Foco em manter o ritmo!</p>
                </div>
                <div className="text-3xl font-black italic tracking-tighter text-emerald-500">{data.correctAnswers}</div>
              </div>
            </CardContent>
          </Card>

          <Card className="rounded-3xl border-border/50 shadow-sm">
            <CardContent className="p-6">
              <div className="flex justify-between items-start">
                <div>
                  <h4 className="text-[11px] font-black uppercase tracking-widest text-muted-foreground/70 mb-1">Média Diária</h4>
                  <p className="text-[12px] text-muted-foreground font-medium">Questões por dia</p>
                </div>
                <div className="text-3xl font-black italic tracking-tighter text-primary">
                  {Math.round(data.totalQuestions / data.totalDays)}
                </div>
              </div>
            </CardContent>
          </Card>
        </div>
      </div>

      {/* ── Evolution Chart ── */}
      <Card className="rounded-[32px] border-border/50 shadow-md overflow-hidden">
        <CardHeader className="px-8 pt-8">
          <CardTitle className="text-sm font-black uppercase tracking-[0.2em] text-muted-foreground/80 flex items-center gap-2">
            <ZapIcon className="size-4 text-primary" />
            Evolução no Tempo
          </CardTitle>
        </CardHeader>
        <CardContent className="px-4 pb-8">
          <div className="h-[350px] w-full">
            <ResponsiveContainer width="100%" height="100%">
              <ComposedChart data={data.dailyEvolution}>
                <CartesianGrid strokeDasharray="3 3" vertical={false} stroke="rgba(255,255,255,0.05)" />
                <XAxis 
                  dataKey="date" 
                  axisLine={false} 
                  tickLine={false} 
                  tick={{ fontSize: 11, fontWeight: 700, fill: '#888' }}
                  dy={10}
                />
                <YAxis 
                  yAxisId="left"
                  axisLine={false} 
                  tickLine={false} 
                  tick={{ fontSize: 11, fontWeight: 700, fill: '#888' }}
                />
                <YAxis 
                  yAxisId="right"
                  orientation="right"
                  axisLine={false} 
                  tickLine={false} 
                  tick={{ fontSize: 11, fontWeight: 700, fill: '#888' }}
                  unit="%"
                />
                <RechartsTooltip 
                  contentStyle={{ 
                    backgroundColor: 'hsl(var(--card))', 
                    borderRadius: '16px', 
                    border: '1px solid hsl(var(--border))',
                    boxShadow: '0 10px 30px -10px rgba(0,0,0,0.5)',
                    fontWeight: 700,
                    fontSize: '12px'
                  }}
                />
                <Legend iconType="circle" wrapperStyle={{ paddingTop: '20px', fontSize: '11px', fontWeight: 800, textTransform: 'uppercase' }} />
                <Bar 
                  yAxisId="left"
                  dataKey="questions" 
                  name="Questões" 
                  fill="#10b981" 
                  radius={[6, 6, 0, 0]} 
                  barSize={40}
                />
                <Line 
                  yAxisId="right"
                  type="monotone" 
                  dataKey="accuracy" 
                  name="Desempenho" 
                  stroke="#8b5cf6" 
                  strokeWidth={4}
                  dot={{ r: 6, fill: '#8b5cf6', strokeWidth: 2, stroke: '#fff' }}
                  activeDot={{ r: 8 }}
                />
              </ComposedChart>
            </ResponsiveContainer>
          </div>
        </CardContent>
      </Card>
      
      {/* ── Subject & Weakness Analysis ── */}
      <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
        {/* Top Disciplinas */}
        <Card className="rounded-3xl border-border/50 shadow-sm">
          <CardHeader>
            <CardTitle className="text-sm font-black uppercase tracking-widest text-muted-foreground/70">Top Disciplinas</CardTitle>
          </CardHeader>
          <CardContent className="space-y-4">
            {data.subjectPerformance.map((item) => (
              <div key={item.subject} className="space-y-1.5">
                <div className="flex justify-between text-xs font-bold">
                  <span className="truncate max-w-[150px]">{item.subject}</span>
                  <span>{item.accuracy}%</span>
                </div>
                <div className="h-1.5 w-full bg-muted rounded-full overflow-hidden">
                  <div 
                    className="h-full bg-primary rounded-full transition-all duration-1000"
                    style={{ width: `${item.accuracy}%` }}
                  />
                </div>
                <div className="flex justify-between text-[9px] text-muted-foreground font-bold uppercase tracking-tight">
                  <span>{item.total} questões</span>
                  <span className={item.accuracy >= 70 ? "text-emerald-500" : item.accuracy >= 50 ? "text-amber-500" : "text-destructive"}>
                    {item.accuracy >= 70 ? "ÓTIMO" : item.accuracy >= 50 ? "REGULAR" : "CRÍTICO"}
                  </span>
                </div>
              </div>
            ))}
          </CardContent>
        </Card>

        {/* Assuntos com Dificuldade */}
        <Card className="rounded-3xl border-border/50 shadow-sm bg-destructive/5 border-destructive/10">
          <CardHeader>
            <CardTitle className="text-sm font-black uppercase tracking-widest text-destructive/80 flex items-center gap-2">
              <AlertTriangleIcon className="size-4" />
              Atenção: Pontos Fracos
            </CardTitle>
          </CardHeader>
          <CardContent className="space-y-4">
            {data.weakestTopics.length > 0 ? (
              data.weakestTopics.map((item) => (
                <div key={item.topic} className="p-3 rounded-2xl bg-background/50 border border-destructive/5 space-y-2">
                  <div className="flex justify-between items-start gap-2">
                    <div className="space-y-0.5">
                      <p className="text-[10px] font-black text-muted-foreground uppercase tracking-wider">{item.subject}</p>
                      <h5 className="text-[13px] font-bold leading-tight">{item.topic}</h5>
                    </div>
                    <div className="text-right">
                      <p className="text-sm font-black text-destructive italic tracking-tighter">{item.accuracy}%</p>
                      <p className="text-[9px] font-bold text-muted-foreground uppercase">{item.total} Q</p>
                    </div>
                  </div>
                  <div className="h-1 w-full bg-destructive/10 rounded-full overflow-hidden">
                    <div 
                      className="h-full bg-destructive rounded-full"
                      style={{ width: `${item.accuracy}%` }}
                    />
                  </div>
                </div>
              ))
            ) : (
              <div className="h-full flex flex-col items-center justify-center py-10 opacity-40">
                <TargetIcon className="size-8 mb-2" />
                <p className="text-xs font-bold uppercase tracking-widest">Sem alertas ainda</p>
              </div>
            )}
          </CardContent>
        </Card>

        {/* Meta Semanal */}
        <Card className="rounded-3xl border-border/50 shadow-sm bg-primary/5 border-primary/20 flex flex-col justify-center items-center p-8 text-center h-full">
          <TrophyIcon className="size-12 text-primary mb-4" />
          <h3 className="text-xl font-black italic uppercase tracking-tighter mb-2">Meta Semanal</h3>
          <p className="text-sm text-muted-foreground font-medium mb-6">
            Você resolveu {data.dailyEvolution.reduce((acc, d) => acc + d.questions, 0)} questões nos últimos 7 dias.
          </p>
          <div className="w-full h-3 bg-muted rounded-full overflow-hidden mb-2">
            <div 
              className="h-full bg-primary rounded-full"
              style={{ width: `${Math.min(100, (data.dailyEvolution.reduce((acc, d) => acc + d.questions, 0) / 200) * 100)}%` }}
            />
          </div>
          <p className="text-[11px] font-black text-primary uppercase tracking-widest">
            {Math.round((data.dailyEvolution.reduce((acc, d) => acc + d.questions, 0) / 200) * 100)}% da meta alcançada
          </p>
        </Card>
      </div>
    </div>
  )
}
