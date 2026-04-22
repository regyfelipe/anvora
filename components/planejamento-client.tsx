"use client"

import * as React from "react"
import { useRouter } from "next/navigation"
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs"
import { Button } from "@/components/ui/button"
import { StudyCycleChart } from "./aluno-dashboard/study-cycle-chart"
import { WeeklyCalendar } from "./aluno-dashboard/weekly-calendar"
import { VerticalSyllabus } from "./aluno-dashboard/vertical-syllabus"
import { 
  CalendarIcon, 
  ListChecksIcon, 
  RefreshCcwIcon, 
  SparklesIcon, 
  ArrowRightIcon, 
  Loader2Icon,
  ClockIcon,
  CheckCircle2Icon,
  ChevronLeftIcon,
  TargetIcon
} from "lucide-react"
import { setupStudyPlan, deleteStudyPlan } from "@/app/actions/questions"
import { cn } from "@/lib/utils"

interface PlanejamentoClientProps {
  initialData: any
}

export function PlanejamentoClient({ initialData }: PlanejamentoClientProps) {
  const router = useRouter()
  const [step, setStep] = React.useState(0) 
  const [isSettingUp, setIsSettingUp] = React.useState(false)
  const [isRemoving, setIsRemoving] = React.useState(false)
  const [forceWizard, setForceWizard] = React.useState<boolean | null>(null)
  
  // Configurações do usuário
  const [hoursPerDay, setHoursPerDay] = React.useState(4)
  const [questionsPerDay, setQuestionsPerDay] = React.useState(40)
  const [selectedDays, setSelectedDays] = React.useState(["Seg", "Ter", "Qua", "Qui", "Sex", "Sáb"])
  const [selectedSubjects, setSelectedSubjects] = React.useState<string[]>(
    initialData?.subjects?.map((s: any) => s.name) || []
  )
  const [subjectDifficulties, setSubjectDifficulties] = React.useState<Record<string, "Fácil" | "Médio" | "Difícil">>({})

  // Debug
  React.useEffect(() => {
    console.log("PlanejamentoClient: initialData", initialData)
  }, [initialData])

  if (!initialData) return null

  // A lógica de exibição agora prioriza o estado local 'forceWizard'
  const hasPlan = forceWizard !== null ? !forceWizard : initialData.hasPlan

  const handleSetup = async () => {
    setIsSettingUp(true)
    try {
      const config = {
        selectedSubjects,
        subjectDifficulties,
        questionsPerDay,
        selectedDays,
        startDate
      }
      const res = await setupStudyPlan(hoursPerDay, config)
      if (res.success) {
        setForceWizard(false)
        router.refresh()
        // Fallback para garantir sincronia total
        setTimeout(() => window.location.reload(), 1000)
      }
    } catch (error) {
      console.error(error)
    } finally {
      setIsSettingUp(false)
    }
  }

  const handleRemove = async () => {
    setIsRemoving(true)
    try {
      const res = await deleteStudyPlan()
      if (res.success) {
        setForceWizard(true)
        setStep(0)
        router.refresh()
        // Fallback para garantir sincronia total
        setTimeout(() => window.location.reload(), 1000)
      }
    } catch (error) {
      console.error(error)
    } finally {
      setIsRemoving(false)
    }
  }

  const toggleDay = (day: string) => {
    setSelectedDays(prev => 
      prev.includes(day) ? prev.filter(d => d !== day) : [...prev, day]
    )
  }

  const toggleSubject = (name: string) => {
    setSelectedSubjects(prev => 
      prev.includes(name) ? prev.filter(s => s !== name) : [...prev, name]
    )
  }

  const setDifficulty = (subject: string, diff: "Fácil" | "Médio" | "Difícil") => {
    setSubjectDifficulties(prev => ({ ...prev, [subject]: diff }))
  }

  const [startDate, setStartDate] = React.useState(new Date().toISOString().split('T')[0])

  // Cálculo de estimativa de conclusão
  const calculateEstimate = () => {
    const totalTopics = initialData?.subjects
      ?.filter((s: any) => selectedSubjects.includes(s.name))
      ?.reduce((acc: number, s: any) => acc + s.topics.length, 0) || 0
    
    if (totalTopics === 0 || hoursPerDay === 0 || selectedDays.length === 0) return "N/A"

    // Estimativa base: 1 tópico a cada 2 horas de estudo
    const totalHoursNeeded = totalTopics * 2
    const hoursPerWeek = hoursPerDay * selectedDays.length
    const weeksNeeded = Math.ceil(totalHoursNeeded / hoursPerWeek)
    
    const finishDate = new Date(startDate)
    finishDate.setDate(finishDate.getDate() + (weeksNeeded * 7))
    
    return finishDate.toLocaleDateString('pt-BR', { day: '2-digit', month: 'long', year: 'numeric' })
  }

  // ── Renderização do Wizard de Planejamento ──
  if (!hasPlan) {
    return (
      <div className="flex flex-col items-center justify-center min-h-[80vh] w-full max-w-4xl mx-auto py-10">
        
        {/* STEP 0: CARREIRAS SELECTOR */}
        {step === 0 && (
          <div className="w-full space-y-12 animate-in fade-in slide-in-from-bottom-8 duration-1000">
            <div className="text-center space-y-4">
              <h1 className="text-4xl font-black tracking-tight italic uppercase text-foreground/90">
                Escolha sua <span className="text-primary">Carreira</span>
              </h1>
              <p className="text-muted-foreground font-medium text-lg">Selecione o edital que deseja planejar hoje.</p>
            </div>

            <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
              {/* PPCE CARD (ACTIVE) */}
              <div 
                onClick={() => setStep(1)}
                className="group relative bg-card rounded-[32px] overflow-hidden border border-border/40 shadow-xl hover:shadow-primary/20 hover:scale-105 transition-all cursor-pointer ring-offset-background hover:ring-2 ring-primary"
              >
                <div className="h-48 w-full relative">
                  <img src="/ppce_hero.png" alt="PPCE" className="w-full h-full object-cover" />
                  <div className="absolute inset-0 bg-gradient-to-t from-card to-transparent" />
                  <div className="absolute top-4 right-4 bg-primary text-white text-[10px] font-black uppercase px-3 py-1 rounded-full shadow-lg">
                    Ativo
                  </div>
                </div>
                <div className="p-6 space-y-3">
                  <h3 className="text-xl font-black italic uppercase text-white leading-none">Polícia Penal <br /> do Ceará</h3>
                  <p className="text-[10px] text-muted-foreground font-bold uppercase tracking-widest leading-relaxed">
                    Edital Completo <br /> 2024 / 2025
                  </p>
                  <Button size="sm" className="w-full rounded-xl font-black uppercase italic text-[10px] gap-2 mt-4">
                    Planejar Agora <ArrowRightIcon className="size-3" />
                  </Button>
                </div>
              </div>

              {/* PF (SOON) */}
              <div className="group relative bg-muted/20 rounded-[32px] overflow-hidden border border-border/10 opacity-60 grayscale hover:grayscale-0 transition-all cursor-not-allowed">
                <div className="h-48 w-full bg-muted flex items-center justify-center relative">
                   <TargetIcon className="size-12 text-muted-foreground/30" />
                   <div className="absolute top-4 right-4 bg-background/80 text-muted-foreground text-[10px] font-black uppercase px-3 py-1 rounded-full border">
                    Em breve
                  </div>
                </div>
                <div className="p-6 space-y-3">
                  <h3 className="text-xl font-black italic uppercase text-muted-foreground leading-none">Polícia <br /> Federal</h3>
                  <p className="text-[10px] text-muted-foreground font-bold uppercase tracking-widest leading-relaxed">
                    Agente e <br /> Escrivão
                  </p>
                </div>
              </div>

              {/* PRF (SOON) */}
              <div className="group relative bg-muted/20 rounded-[32px] overflow-hidden border border-border/10 opacity-60 grayscale hover:grayscale-0 transition-all cursor-not-allowed">
                <div className="h-48 w-full bg-muted flex items-center justify-center relative">
                   <TargetIcon className="size-12 text-muted-foreground/30" />
                   <div className="absolute top-4 right-4 bg-background/80 text-muted-foreground text-[10px] font-black uppercase px-3 py-1 rounded-full border">
                    Em breve
                  </div>
                </div>
                <div className="p-6 space-y-3">
                  <h3 className="text-xl font-black italic uppercase text-muted-foreground leading-none">Polícia <br /> Rodoviária</h3>
                  <p className="text-[10px] text-muted-foreground font-bold uppercase tracking-widest leading-relaxed">
                    Edital <br /> 2025
                  </p>
                </div>
              </div>
            </div>
          </div>
        )}

        {/* STEP 1: SELEÇÃO DE DISCIPLINAS */}
        {step === 1 && (
          <div className="w-full space-y-8 animate-in fade-in slide-in-from-right-4 duration-500">
            <div className="flex items-center justify-between">
              <div className="space-y-1">
                <h2 className="text-3xl font-black italic uppercase text-foreground/80 tracking-tight">Suas Disciplinas</h2>
                <p className="text-muted-foreground font-medium">Quais matérias você deseja incluir no seu plano?</p>
              </div>
              <Button 
                variant="outline" 
                size="sm" 
                className="rounded-xl font-bold uppercase text-[10px] tracking-widest"
                onClick={() => setSelectedSubjects(initialData.subjects.map((s: any) => s.name))}
              >
                Selecionar Todas
              </Button>
            </div>

            {initialData.subjects.length === 0 ? (
              <div className="p-12 border-2 border-dashed border-border/40 rounded-[32px] text-center space-y-4">
                <div className="size-16 bg-muted rounded-full flex items-center justify-center mx-auto opacity-50">
                  <TargetIcon className="size-8" />
                </div>
                <div className="space-y-2">
                  <h3 className="font-bold text-lg">Nenhuma disciplina encontrada</h3>
                  <p className="text-sm text-muted-foreground max-w-xs mx-auto italic">
                    Parece que a grade do concurso ainda não foi carregada no banco de dados.
                  </p>
                </div>
                <Button onClick={() => window.location.reload()} variant="outline" className="rounded-xl font-bold">
                  Tentar Novamente
                </Button>
              </div>
            ) : (
              <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
                {initialData.subjects.map((s: any) => (
                  <button
                    key={s.name}
                    onClick={() => toggleSubject(s.name)}
                    className={cn(
                      "p-4 rounded-2xl border-2 transition-all flex items-center justify-between group",
                      selectedSubjects.includes(s.name)
                        ? "border-primary bg-primary/5"
                        : "border-border/40 hover:border-primary/20 text-muted-foreground"
                    )}
                  >
                    <div className="flex items-center gap-3">
                      <div className={cn(
                        "size-5 rounded-md border-2 flex items-center justify-center transition-all",
                        selectedSubjects.includes(s.name) ? "bg-primary border-primary" : "border-border/60"
                      )}>
                        {selectedSubjects.includes(s.name) && <CheckCircle2Icon className="size-3 text-white" />}
                      </div>
                      <span className={cn(
                        "font-bold text-sm uppercase tracking-tight",
                        selectedSubjects.includes(s.name) ? "text-primary" : ""
                      )}>{s.name}</span>
                    </div>
                    <span className="text-[10px] font-black opacity-40">{s.topics.length} Tópicos</span>
                  </button>
                ))}
              </div>
            )}

            <div className="flex gap-4 pt-8">
              <Button variant="ghost" onClick={() => setStep(0)} className="h-14 px-8 rounded-2xl font-bold gap-2">
                <ChevronLeftIcon className="size-4" /> Voltar
              </Button>
              <Button 
                onClick={() => setStep(2)} 
                disabled={selectedSubjects.length === 0}
                className="h-14 flex-1 rounded-2xl font-black uppercase italic tracking-widest gap-2"
              >
                Próximo Passo <ArrowRightIcon className="size-4" />
              </Button>
            </div>
          </div>
        )}

        {/* STEP 2: NÍVEL DE DIFICULDADE */}
        {step === 2 && (
          <div className="w-full space-y-8 animate-in fade-in slide-in-from-right-4 duration-500">
            <div className="space-y-1">
              <h2 className="text-3xl font-black italic uppercase text-foreground/80 tracking-tight">Avaliação de Nível</h2>
              <p className="text-muted-foreground font-medium">Qual a sua facilidade com cada matéria selecionada?</p>
            </div>

            <div className="space-y-3 max-h-[400px] pr-2 overflow-y-auto custom-scrollbar">
              {selectedSubjects.map((subject) => (
                <div key={subject} className="p-4 bg-muted/20 border border-border/40 rounded-2xl flex flex-col sm:flex-row sm:items-center justify-between gap-4">
                  <span className="font-bold uppercase text-xs tracking-tight flex-1">{subject}</span>
                  <div className="flex gap-2">
                    {["Fácil", "Médio", "Difícil"].map((level) => (
                      <button
                        key={level}
                        onClick={() => setDifficulty(subject, level as any)}
                        className={cn(
                          "px-4 py-2 rounded-xl text-[10px] font-black uppercase tracking-widest transition-all border",
                          subjectDifficulties[subject] === level
                            ? level === "Fácil" ? "bg-green-500/10 border-green-500 text-green-500" :
                              level === "Médio" ? "bg-orange-500/10 border-orange-500 text-orange-500" :
                              "bg-red-500/10 border-red-500 text-red-500"
                            : "bg-background/50 border-border/60 text-muted-foreground hover:border-primary/40"
                        )}
                      >
                        {level}
                      </button>
                    ))}
                  </div>
                </div>
              ))}
            </div>

            <div className="flex gap-4 pt-8">
              <Button variant="ghost" onClick={() => setStep(1)} className="h-14 px-8 rounded-2xl font-bold gap-2">
                <ChevronLeftIcon className="size-4" /> Voltar
              </Button>
              <Button 
                onClick={() => setStep(3)}
                className="h-14 flex-1 rounded-2xl font-black uppercase italic tracking-widest gap-2"
              >
                Configurar Carga Horária <ArrowRightIcon className="size-4" />
              </Button>
            </div>
          </div>
        )}

        {/* STEP 3: CARGA E QUESTÕES */}
        {step === 3 && (
          <div className="w-full space-y-8 animate-in fade-in slide-in-from-right-4 duration-500">
            <div className="space-y-1">
              <h2 className="text-3xl font-black italic uppercase text-foreground/80 tracking-tight">Carga & Metas</h2>
              <p className="text-muted-foreground font-medium">Defina seu ritmo diário de estudos e simulados.</p>
            </div>

            <div className="grid grid-cols-1 sm:grid-cols-2 gap-8 pt-4">
              <div className="space-y-6">
                <div className="flex items-center gap-3">
                  <div className="size-10 rounded-xl bg-primary/10 flex items-center justify-center">
                    <ClockIcon className="size-5 text-primary" />
                  </div>
                  <h3 className="font-bold uppercase text-xs tracking-widest">Horas por Dia</h3>
                </div>
                <div className="grid grid-cols-3 gap-2">
                  {[2, 4, 6, 8, 10, 12].map(h => (
                    <button
                      key={h}
                      onClick={() => setHoursPerDay(h)}
                      className={cn(
                        "h-14 rounded-xl border-2 font-black italic transition-all",
                        hoursPerDay === h ? "border-primary bg-primary/5 text-primary" : "border-border/40 text-muted-foreground"
                      )}
                    >
                      {h}h
                    </button>
                  ))}
                </div>
              </div>

              <div className="space-y-6">
                <div className="flex items-center gap-3">
                  <div className="size-10 rounded-xl bg-orange-500/10 flex items-center justify-center">
                    <ListChecksIcon className="size-5 text-orange-500" />
                  </div>
                  <h3 className="font-bold uppercase text-xs tracking-widest">Questões por Dia</h3>
                </div>
                <div className="grid grid-cols-3 gap-2">
                  {[20, 40, 60, 80, 100, 150].map(q => (
                    <button
                      key={q}
                      onClick={() => setQuestionsPerDay(q)}
                      className={cn(
                        "h-14 rounded-xl border-2 font-black italic transition-all",
                        questionsPerDay === q ? "border-orange-500 bg-orange-500/5 text-orange-500" : "border-border/40 text-muted-foreground"
                      )}
                    >
                      {q}q
                    </button>
                  ))}
                </div>
              </div>
            </div>

            <div className="flex gap-4 pt-12">
              <Button variant="ghost" onClick={() => setStep(2)} className="h-14 px-8 rounded-2xl font-bold gap-2">
                <ChevronLeftIcon className="size-4" /> Voltar
              </Button>
              <Button onClick={() => setStep(4)} className="h-14 flex-1 rounded-2xl font-black uppercase italic tracking-widest gap-2">
                Definir Dias <ArrowRightIcon className="size-4" />
              </Button>
            </div>
          </div>
        )}

        {/* STEP 4: DISPONIBILIDADE */}
        {step === 4 && (
          <div className="w-full space-y-8 animate-in fade-in slide-in-from-right-4 duration-500">
            <div className="space-y-1">
              <h2 className="text-3xl font-black italic uppercase text-foreground/80 tracking-tight">Sua Agenda</h2>
              <p className="text-muted-foreground font-medium">Quais dias você dedicará à sua aprovação?</p>
            </div>

            <div className="flex flex-wrap gap-3">
              {["Dom", "Seg", "Ter", "Qua", "Qui", "Sex", "Sáb"].map((day) => (
                <button
                  key={day}
                  onClick={() => toggleDay(day)}
                  className={cn(
                    "flex-1 min-w-[80px] h-20 rounded-2xl border-2 transition-all flex items-center justify-center font-black italic text-lg",
                    selectedDays.includes(day)
                      ? "border-primary bg-primary/5 text-primary"
                      : "border-border/40 text-muted-foreground"
                  )}
                >
                  {day}
                </button>
              ))}
            </div>

            <div className="flex gap-4 pt-8">
              <Button variant="ghost" onClick={() => setStep(3)} className="h-14 px-8 rounded-2xl font-bold gap-2">
                <ChevronLeftIcon className="size-4" /> Voltar
              </Button>
              <Button onClick={() => setStep(5)} className="h-14 flex-1 rounded-2xl font-black uppercase italic tracking-widest gap-2">
                Revisar Plano <ArrowRightIcon className="size-4" />
              </Button>
            </div>
          </div>
        )}

        {/* STEP 5: RESUMO FINAL */}
        {step === 5 && (
          <div className="w-full space-y-8 animate-in fade-in slide-in-from-right-4 duration-500">
            <div className="space-y-1">
              <h2 className="text-3xl font-black italic uppercase text-foreground/80 tracking-tight">Pronto para Gerar!</h2>
              <p className="text-muted-foreground font-medium">Confirme os detalhes e o cronograma do seu plano.</p>
            </div>

            <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
              {/* Card de Configurações */}
              <div className="bg-card border border-border/40 rounded-[32px] p-8 space-y-6 shadow-xl">
                <div className="space-y-2">
                  <h4 className="text-[10px] font-black uppercase tracking-[0.2em] text-primary">Carga Horária</h4>
                  <p className="text-2xl font-black italic">{hoursPerDay}h <span className="text-muted-foreground text-sm">diárias</span></p>
                  <p className="text-xs font-bold opacity-60 uppercase">{selectedDays.length} dias por semana</p>
                </div>
                <div className="space-y-2">
                  <h4 className="text-[10px] font-black uppercase tracking-[0.2em] text-orange-500">Meta de Questões</h4>
                  <p className="text-2xl font-black italic">{questionsPerDay}q <span className="text-muted-foreground text-sm">por dia</span></p>
                </div>
                <div className="pt-4 border-t border-border/20">
                   <h4 className="text-[10px] font-black uppercase tracking-[0.2em] text-muted-foreground mb-3">Data de Início</h4>
                   <input 
                     type="date" 
                     value={startDate}
                     onChange={(e) => setStartDate(e.target.value)}
                     className="w-full bg-background border-2 border-border/40 rounded-xl h-12 px-4 font-bold text-sm focus:border-primary transition-all"
                   />
                </div>
              </div>

              {/* Card de Previsão */}
              <div className="bg-primary/5 border border-primary/20 rounded-[32px] p-8 flex flex-col justify-between shadow-xl relative overflow-hidden">
                <div className="absolute top-0 right-0 p-4 opacity-10">
                  <CalendarIcon className="size-24 text-primary" />
                </div>
                
                <div className="space-y-6 relative z-10">
                  <div className="space-y-1">
                    <h4 className="text-[10px] font-black uppercase tracking-[0.2em] text-primary">Previsão de Conclusão</h4>
                    <p className="text-2xl font-black italic text-white">{calculateEstimate()}</p>
                    <p className="text-[10px] font-medium italic opacity-70">Estimativa baseada no volume total do edital</p>
                  </div>

                  <div className="p-4 bg-primary/10 rounded-2xl border border-primary/20">
                    <p className="text-[10px] font-bold leading-relaxed">
                      Este cálculo considera a cobertura de todos os tópicos selecionados com revisão integrada.
                    </p>
                  </div>
                </div>

                <div className="pt-6">
                   <p className="text-xs font-black uppercase tracking-widest text-primary/60">Foco: Polícia Penal</p>
                </div>
              </div>
            </div>

            <div className="flex gap-4 pt-4 w-full">
              <Button variant="ghost" onClick={() => setStep(4)} className="h-14 px-8 rounded-2xl font-bold gap-2">
                <ChevronLeftIcon className="size-4" /> Voltar
              </Button>
              <Button 
                onClick={handleSetup} 
                disabled={isSettingUp}
                className="h-14 flex-1 rounded-2xl font-black uppercase italic tracking-widest gap-2 shadow-2xl shadow-primary/20 bg-primary text-white"
              >
                {isSettingUp ? <Loader2Icon className="size-5 animate-spin" /> : "Gerar Meu Plano Agora"}
                {!isSettingUp && <SparklesIcon className="size-4" />}
              </Button>
            </div>
          </div>
        )}
      </div>
    )
  }

  // ── Renderização do Dashboard de Planejamento (Caso o usuário já tenha um plano) ──
  return (
    <div className="space-y-8 animate-in fade-in duration-700">
      {/* ── Page Header ── */}
      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4">
        <div>
          <h1 className="text-3xl font-black tracking-tight text-foreground/80 italic">Meu Planejamento</h1>
          <p className="text-xs font-bold text-muted-foreground uppercase tracking-widest mt-1">
            Foco: {initialData.careerName}
          </p>
        </div>

        <div className="flex items-center gap-2">
          <Button 
            variant="default" 
            disabled={isRemoving}
            onClick={handleRemove}
            className="rounded-xl font-bold h-10 px-6 shadow-sm"
          >
            {isRemoving ? <Loader2Icon className="size-4 animate-spin" /> : "Replanejar"}
          </Button>
          <Button 
            variant="outline" 
            disabled={isRemoving}
            onClick={handleRemove}
            className="rounded-xl font-bold h-10 px-6 shadow-sm"
          >
            {isRemoving ? <Loader2Icon className="size-4 animate-spin" /> : "Remover"}
          </Button>
        </div>
      </div>

      {/* ── Main Navigation Tabs ── */}
      <Tabs defaultValue="cronograma" className="w-full">
        <div className="flex justify-between items-center mb-6">
          <TabsList className="bg-muted/50 p-1 rounded-2xl h-14 border border-border/40">
            <TabsTrigger 
              value="cronograma" 
              className="rounded-xl h-12 px-6 data-[state=active]:bg-background data-[state=active]:shadow-sm data-[state=active]:text-primary font-bold gap-2"
            >
              <CalendarIcon className="size-4" />
              Cronograma Semanal
            </TabsTrigger>
            <TabsTrigger 
              value="ciclo" 
              className="rounded-xl h-12 px-6 data-[state=active]:bg-background data-[state=active]:shadow-sm data-[state=active]:text-primary font-bold gap-2"
            >
              <RefreshCcwIcon className="size-4" />
              Ciclo de Estudos
            </TabsTrigger>
            <TabsTrigger 
              value="edital" 
              className="rounded-xl h-12 px-6 data-[state=active]:bg-background data-[state=active]:shadow-sm data-[state=active]:text-primary font-bold gap-2"
            >
              <ListChecksIcon className="size-4" />
              Edital Verticalizado
            </TabsTrigger>
          </TabsList>
        </div>

        <div className="min-h-[600px]">
          <TabsContent value="cronograma" className="mt-0 focus-visible:outline-none">
            <WeeklyCalendar 
              plan={initialData.plan} 
              subjects={initialData.subjects} 
            />
          </TabsContent>
          
          <TabsContent value="ciclo" className="mt-0 focus-visible:outline-none">
            <div className="bg-card border-none shadow-sm rounded-3xl p-8">
              <StudyCycleChart subjects={initialData.subjects} />
            </div>
          </TabsContent>
          
          <TabsContent value="edital" className="mt-0 focus-visible:outline-none">
            <VerticalSyllabus subjects={initialData.subjects} />
          </TabsContent>
        </div>
      </Tabs>
    </div>
  )
}
