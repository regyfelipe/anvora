"use client"

import * as React from "react"
import { AppSidebar } from "@/components/app-sidebar"
import { SiteHeader } from "@/components/site-header"
import { SidebarInset } from "@/components/ui/sidebar"
import { Card, CardContent, CardDescription, CardHeader, CardTitle, CardFooter } from "@/components/ui/card"
import { Button } from "@/components/ui/button"
import { Progress } from "@/components/ui/progress"
import { Badge } from "@/components/ui/badge"
import { MOCK_SIMULADOS, Simulado } from "@/lib/mocks/simulados"
import { 
  ClipboardCheckIcon, 
  PlayIcon, 
  HistoryIcon, 
  ClockIcon, 
  TargetIcon, 
  ArrowRightIcon,
  SearchIcon,
  FilterIcon
} from "lucide-react"
import { Input } from "@/components/ui/input"
import { cn } from "@/lib/utils"

export default function SimuladosPage() {
  const [searchQuery, setSearchQuery] = React.useState("")
  
  const inProgress = MOCK_SIMULADOS.filter(s => s.status === "in_progress")
  const available = MOCK_SIMULADOS.filter(s => s.status === "not_started")
  const completed = MOCK_SIMULADOS.filter(s => s.status === "completed")

  return (
    <>
      <AppSidebar variant="inset" />
      <SidebarInset>
        <SiteHeader />

        <div className="flex flex-1 flex-col bg-muted/10">
          <div className="mx-auto w-full max-w-7xl px-4 pt-8 pb-32 space-y-10">
            
            {/* ── Header da Página ── */}
            <div className="flex flex-col md:flex-row md:items-end justify-between gap-6">
              <div className="space-y-1">
                <h1 className="text-4xl font-black italic uppercase tracking-tighter text-foreground flex items-center gap-3">
                  <ClipboardCheckIcon className="size-10 text-primary" />
                  Simulados
                </h1>
                <p className="text-muted-foreground font-medium italic">Prepare-se com provas reais e simulados inéditos.</p>
              </div>
              
              <div className="flex items-center gap-3 bg-background p-2 rounded-2xl border shadow-sm">
                <div className="px-4 py-1 text-center border-r">
                  <p className="text-lg font-black italic leading-none">{completed.length}</p>
                  <p className="text-[10px] uppercase font-bold text-muted-foreground mt-1">Concluídos</p>
                </div>
                <div className="px-4 py-1 text-center">
                  <p className="text-lg font-black italic leading-none text-primary">{inProgress.length}</p>
                  <p className="text-[10px] uppercase font-bold text-muted-foreground mt-1">Em Aberto</p>
                </div>
              </div>
            </div>

            {/* ── Simulados em Andamento ── */}
            {inProgress.length > 0 && (
              <section className="space-y-4">
                <h2 className="text-sm font-black uppercase tracking-widest text-primary flex items-center gap-2">
                  <span className="size-2 rounded-full bg-primary animate-pulse" />
                  Continuar de onde parou
                </h2>
                <div className="grid gap-4 md:grid-cols-2">
                  {inProgress.map(s => (
                    <Card key={s.id} className="rounded-3xl border-none shadow-sm bg-primary/5 hover:bg-primary/10 transition-colors group overflow-hidden">
                      <CardHeader className="pb-3">
                        <div className="flex justify-between items-start">
                          <Badge variant="secondary" className="bg-primary/10 text-primary border-none rounded-lg text-[10px] font-bold uppercase tracking-wider">
                            {s.career}
                          </Badge>
                          <span className="text-[10px] font-bold text-muted-foreground uppercase flex items-center gap-1">
                            <ClockIcon className="size-3" />
                            {s.durationMinutes} min
                          </span>
                        </div>
                        <CardTitle className="text-xl font-bold mt-2 leading-tight">{s.title}</CardTitle>
                      </CardHeader>
                      <CardContent className="space-y-4">
                        <div className="space-y-2">
                          <div className="flex justify-between text-xs font-bold uppercase tracking-wider">
                            <span className="text-muted-foreground">Progresso</span>
                            <span className="text-primary">{s.progress}%</span>
                          </div>
                          <Progress value={s.progress} className="h-2 bg-primary/10" />
                        </div>
                      </CardContent>
                      <CardFooter>
                        <Button className="w-full rounded-2xl font-bold uppercase italic tracking-wider py-6 group-hover:scale-[1.02] transition-transform">
                          Retomar Simulado
                          <ArrowRightIcon className="ml-2 size-4" />
                        </Button>
                      </CardFooter>
                    </Card>
                  ))}
                </div>
              </section>
            )}

            {/* ── Explorar Novos Simulados ── */}
            <section className="space-y-6">
              <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4">
                <h2 className="text-sm font-black uppercase tracking-widest text-foreground flex items-center gap-2">
                  <PlayIcon className="size-4 text-primary fill-primary" />
                  Explorar Simulados
                </h2>
                
                <div className="flex items-center gap-2 w-full sm:w-auto">
                  <div className="relative flex-1 sm:w-64">
                    <SearchIcon className="absolute left-3 top-1/2 -translate-y-1/2 size-4 text-muted-foreground" />
                    <Input 
                      placeholder="Buscar por prova..." 
                      className="pl-9 rounded-xl bg-background border-muted-foreground/20"
                      value={searchQuery}
                      onChange={(e) => setSearchQuery(e.target.value)}
                    />
                  </div>
                  <Button variant="outline" size="icon" className="rounded-xl shrink-0 border-muted-foreground/20">
                    <FilterIcon className="size-4" />
                  </Button>
                </div>
              </div>

              <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
                {available.filter(s => s.title.toLowerCase().includes(searchQuery.toLowerCase())).map(s => (
                  <Card key={s.id} className="rounded-3xl shadow-sm border-muted/20 hover:border-primary/50 transition-all hover:shadow-md flex flex-col">
                    <CardHeader className="pb-3">
                      <Badge variant="outline" className="w-fit rounded-lg text-[10px] font-bold uppercase tracking-wider border-muted-foreground/30 text-muted-foreground">
                        {s.career}
                      </Badge>
                      <CardTitle className="text-lg font-bold mt-3 leading-tight line-clamp-2">{s.title}</CardTitle>
                      <CardDescription className="flex items-center gap-3 mt-2 text-[10px] font-bold uppercase tracking-wider">
                        <span className="flex items-center gap-1"><ClipboardCheckIcon className="size-3" /> {s.totalQuestions} questões</span>
                        <span className="flex items-center gap-1"><ClockIcon className="size-3" /> {s.durationMinutes} min</span>
                      </CardDescription>
                    </CardHeader>
                    <CardFooter className="mt-auto pt-4">
                      <Button variant="secondary" className="w-full rounded-2xl font-bold uppercase italic tracking-wider hover:bg-primary hover:text-white transition-colors">
                        Iniciar Agora
                      </Button>
                    </CardFooter>
                  </Card>
                ))}
              </div>
            </section>

            {/* ── Histórico de Resultados ── */}
            <section className="space-y-6">
              <h2 className="text-sm font-black uppercase tracking-widest text-foreground flex items-center gap-2">
                <HistoryIcon className="size-4 text-muted-foreground" />
                Histórico de Resultados
              </h2>

              <div className="space-y-3">
                {completed.map(s => (
                  <div key={s.id} className="flex flex-col sm:flex-row items-center gap-4 p-4 bg-background rounded-3xl border border-muted/20 hover:border-primary/30 transition-colors">
                    <div className="size-12 rounded-2xl bg-green-500/10 flex items-center justify-center shrink-0">
                      <TargetIcon className="size-6 text-green-600" />
                    </div>
                    
                    <div className="flex-1 text-center sm:text-left">
                      <h3 className="font-bold text-base leading-tight">{s.title}</h3>
                      <p className="text-[10px] font-bold text-muted-foreground uppercase tracking-widest mt-1">
                        Finalizado em {new Date(s.date!).toLocaleDateString('pt-BR')}
                      </p>
                    </div>

                    <div className="flex items-center gap-6 pr-4">
                      <div className="text-center">
                        <p className="text-xl font-black italic text-green-600 leading-none">{s.score}%</p>
                        <p className="text-[9px] font-bold text-muted-foreground uppercase mt-1 tracking-tighter">Nota Final</p>
                      </div>
                      <Button variant="outline" size="sm" className="rounded-xl font-bold uppercase text-[10px] tracking-widest border-muted-foreground/30">
                        Detalhes
                      </Button>
                    </div>
                  </div>
                ))}
              </div>
            </section>

          </div>
        </div>
      </SidebarInset>
    </>
  )
}
