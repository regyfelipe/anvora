"use client"

import * as React from "react"
import { Calendar } from "@/components/ui/calendar"
import { Card, CardContent } from "@/components/ui/card"
import { Badge } from "@/components/ui/badge"
import { Checkbox } from "@/components/ui/checkbox"
import { ChevronLeftIcon, ChevronRightIcon, ClockIcon } from "lucide-react"
import { Button } from "@/components/ui/button"
import { cn } from "@/lib/utils"

const THEMES = [
  { bg: "bg-blue-500/10", text: "text-blue-500", border: "border-blue-500/20" },
  { bg: "bg-emerald-500/10", text: "text-emerald-500", border: "border-emerald-500/20" },
  { bg: "bg-orange-500/10", text: "text-orange-500", border: "border-orange-500/20" },
  { bg: "bg-purple-500/10", text: "text-purple-500", border: "border-purple-500/20" },
  { bg: "bg-rose-500/10", text: "text-rose-500", border: "border-rose-500/20" },
  { bg: "bg-indigo-500/10", text: "text-indigo-500", border: "border-indigo-500/20" },
  { bg: "bg-cyan-500/10", text: "text-cyan-500", border: "border-cyan-500/20" },
  { bg: "bg-amber-500/10", text: "text-amber-500", border: "border-amber-500/20" },
]

const getSubjectStyle = (name: string) => {
  if (!name) return THEMES[0]
  let hash = 0
  for (let i = 0; i < name.length; i++) {
    hash = name.charCodeAt(i) + ((hash << 5) - hash)
  }
  const index = Math.abs(hash) % THEMES.length
  return THEMES[index]
}

interface WeeklyCalendarProps {
  plan?: any;
  subjects?: any[];
}

export function WeeklyCalendar({ plan, subjects }: WeeklyCalendarProps) {
  const [date, setDate] = React.useState<Date | undefined>(new Date())

  // Log de diagnóstico
  React.useEffect(() => {
    console.log("Plan data in WeeklyCalendar:", plan)
  }, [plan])

  // Cálculo dinâmico da semana baseada na data selecionada
  const getWeekDays = (baseDate: Date) => {
    const current = new Date(baseDate)
    const dayOfWeek = current.getDay() // 0 (Dom) a 6 (Sáb)
    const startOfWeek = new Date(current)
    startOfWeek.setDate(current.getDate() - dayOfWeek)

    return Array.from({ length: 7 }).map((_, i) => {
      const d = new Date(startOfWeek)
      d.setDate(startOfWeek.getDate() + i)
      const isToday = d.toDateString() === new Date().toDateString()
      const isSelected = d.toDateString() === baseDate.toDateString()
      
      return {
        label: d.toLocaleDateString('pt-BR', { weekday: 'short' }).replace('.', ''),
        date: d.getDate().toString(),
        fullDate: d,
        active: isSelected || isToday,
        isToday
      }
    })
  }

  const generateSchedule = () => {
    if (!plan || !plan.config) return []
    
    const selectedDays = plan.config.selectedDays || []
    const selectedSubjects = plan.config.selectedSubjects || []
    const hoursPerDay = plan.hours_per_day || 4
    
    const slots: any[] = []
    const dayMap: Record<string, number> = { "Dom": 0, "Seg": 1, "Ter": 2, "Qua": 3, "Qui": 4, "Sex": 5, "Sáb": 6 }
    
    let subjectIdx = 0
    selectedDays.forEach((dayLabel: string) => {
      const dayIdx = dayMap[dayLabel]
      if (dayIdx === undefined) return
      
      // Divide as horas do dia em blocos de 2h
      const numBlocks = Math.floor(hoursPerDay / 2)
      for (let i = 0; i < numBlocks; i++) {
        const subject = selectedSubjects[subjectIdx % selectedSubjects.length]
        if (!subject) continue

        const startTime = 8 + (i * 2.5)
        const startStr = `${Math.floor(startTime).toString().padStart(2, '0')}:00`
        const endStr = `${(Math.floor(startTime) + 2).toString().padStart(2, '0')}:00`
        
        const style = getSubjectStyle(subject)
        
        slots.push({
          day: dayIdx,
          start: startStr,
          end: endStr,
          subject: subject,
          topic: "Tópico do Edital",
          color: `${style.bg} ${style.text} ${style.border}`
        })
        subjectIdx++
      }
    })
    
    return slots
  }

  const schedule = generateSchedule()
  const currentWeek = getWeekDays(date || new Date())
  const monthYear = (date || new Date()).toLocaleDateString('pt-BR', { month: 'long', year: 'numeric' })

  return (
    <div className="flex flex-col lg:flex-row gap-6">
      {/* Main Calendar Grid */}
      <div className="flex-1 overflow-x-auto">
        <div className="min-w-[800px]">
          <div className="flex items-center justify-between mb-6 px-2">
            <div className="flex items-center gap-4">
              <div className="flex items-center gap-2">
                <Button 
                  variant="ghost" 
                  size="icon" 
                  className="size-8 rounded-full"
                  onClick={() => {
                    const prev = new Date(date || new Date())
                    prev.setDate(prev.getDate() - 7)
                    setDate(prev)
                  }}
                >
                  <ChevronLeftIcon className="size-4" />
                </Button>
                <h3 className="text-lg font-bold text-primary capitalize">{monthYear}</h3>
                <Button 
                  variant="ghost" 
                  size="icon" 
                  className="size-8 rounded-full"
                  onClick={() => {
                    const next = new Date(date || new Date())
                    next.setDate(next.getDate() + 7)
                    setDate(next)
                  }}
                >
                  <ChevronRightIcon className="size-4" />
                </Button>
              </div>
            </div>
            <Button variant="outline" size="sm" className="rounded-xl border-primary/20 text-primary bg-primary/5" onClick={() => setDate(new Date())}>
              Hoje
            </Button>
          </div>

          <div className="grid grid-cols-7 border-l">
              {currentWeek.map((day, dayIdx) => (
                <div key={dayIdx} className="flex flex-col min-h-[600px] bg-background">
                  <div className={cn(
                    "p-3 text-center border-b font-bold text-sm flex flex-col items-center justify-center gap-0.5",
                    day.active ? "bg-primary text-primary-foreground" : "text-muted-foreground"
                  )}>
                    <span className="text-[10px] uppercase opacity-70 leading-none">{day.label}</span>
                    <span className="text-lg leading-none">{day.date}</span>
                  </div>
                  
                  <div className="flex-1 relative border-r p-2 space-y-3">
                    {(() => {
                      // Verifica se a data atual da coluna é anterior à data de início do plano
                      const planStartDate = plan?.config?.startDate ? new Date(plan.config.startDate + 'T00:00:00') : null
                      const isBeforeStart = planStartDate && day.fullDate < planStartDate

                      if (isBeforeStart) return null

                      return schedule.filter(item => item.day === dayIdx).map((item, i) => (
                        <div 
                          key={i} 
                          className={cn(
                            "p-2 rounded-xl border text-[10px] space-y-1 relative group hover:shadow-md transition-all",
                            item.color
                          )}
                        >
                          <div className="flex items-center justify-between">
                            <span className="font-black uppercase truncate">{item.subject}</span>
                            {item.revision && (
                              <span className="bg-white/50 px-1 rounded text-[8px] font-black uppercase">Rev</span>
                            )}
                          </div>
                          <p className="font-medium opacity-80 leading-tight line-clamp-2">{item.topic}</p>
                          <div className="flex items-center gap-1 mt-1 opacity-60">
                            <ClockIcon className="size-2" />
                            <span>{item.start} - {item.end}</span>
                          </div>
                        </div>
                      ))
                    })()}
                  </div>
                </div>
              ))}
            </div>
        </div>
      </div>

      {/* Sidebar Controls */}
      <div className="w-full lg:w-72 space-y-6">
        <Card className="rounded-3xl border-none shadow-xl shadow-black/5">
          <CardContent className="p-4">
            <Calendar
              mode="single"
              selected={date}
              onSelect={setDate}
              className="rounded-md border-none"
              classNames={{
                day_selected: "bg-primary text-primary-foreground hover:bg-primary hover:text-primary-foreground focus:bg-primary focus:text-primary-foreground",
                day_today: "bg-accent text-accent-foreground",
              }}
            />
            
            <div className="mt-6 space-y-4 px-2">
              <h4 className="text-[10px] font-black uppercase tracking-widest text-muted-foreground">Minhas Agendas</h4>
              <div className="space-y-2">
                {[
                  { label: "REVISÕES", checked: true },
                  { label: "HISTÓRICO", checked: true },
                  { label: "PLANEJAMENTO", checked: true },
                ].map((item) => (
                  <div key={item.label} className="flex items-center gap-3">
                    <Checkbox id={item.label} defaultChecked={item.checked} className="rounded-md border-primary/20 data-[state=checked]:bg-primary data-[state=checked]:border-primary" />
                    <label htmlFor={item.label} className="text-xs font-bold text-muted-foreground cursor-pointer">
                      {item.label}
                    </label>
                  </div>
                ))}
              </div>
            </div>
          </CardContent>
        </Card>
      </div>
    </div>
  )
}
