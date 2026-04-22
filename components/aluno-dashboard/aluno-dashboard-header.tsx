"use client"

import * as React from "react"
import { FlameIcon, Building2Icon, UsersIcon, BookOpenIcon, GraduationCapIcon } from "lucide-react"
import { StudentDashboardData } from "@/lib/mocks/aluno-dashboard"

interface Props {
  data: StudentDashboardData;
}

export function AlunoDashboardHeader({ data }: Props) {
  const [dateStr, setDateStr] = React.useState("")

  React.useEffect(() => {
    // Generate date dynamically on client to avoid hydration mismatch
    const today = new Intl.DateTimeFormat("pt-BR", {
      weekday: "long",
      day: "2-digit",
      month: "long",
    }).format(new Date())
    
    // Capitalize first letter of weekday
    setDateStr(today.charAt(0).toUpperCase() + today.slice(1))
  }, [])

  return (
    <div className="flex flex-col gap-5 sm:flex-row sm:items-end justify-between mb-8">
      <div>
        <p className="text-muted-foreground font-medium mb-1 h-5">{dateStr}</p>
        <h1 className="text-3xl font-bold tracking-tight mb-4">Bom dia, {data.studentName}! 👋</h1>
        
        {/* Context Badges */}
        <div className="flex flex-wrap items-center gap-2">
          {data.institutionName && (
            <div className="flex items-center gap-1.5 text-xs font-semibold bg-muted/50 text-foreground px-2.5 py-1 rounded-md border">
              <Building2Icon className="size-3.5 text-muted-foreground" />
              {data.institutionName}
            </div>
          )}
          {data.className && (
            <div className="flex items-center gap-1.5 text-xs font-semibold bg-muted/50 text-foreground px-2.5 py-1 rounded-md border">
              <UsersIcon className="size-3.5 text-muted-foreground" />
              {data.className}
            </div>
          )}
          {data.professorName && (
            <div className="flex items-center gap-1.5 text-xs font-semibold bg-muted/50 text-foreground px-2.5 py-1 rounded-md border">
              <GraduationCapIcon className="size-3.5 text-muted-foreground" />
              {data.professorName}
            </div>
          )}
          <div className="flex items-center gap-1.5 text-xs font-bold bg-primary/10 text-primary px-2.5 py-1 rounded-md border border-primary/20">
            <BookOpenIcon className="size-3.5" />
            Carreira: {data.careerName}
          </div>
        </div>
      </div>

      <div className="flex items-center gap-3 bg-background border border-border/50 rounded-full pl-1.5 pr-4 py-1.5 shadow-sm shrink-0 self-start sm:self-auto">
        <div className="size-8 rounded-full bg-gradient-to-br from-orange-400 to-red-500 flex items-center justify-center shadow-inner">
          <FlameIcon className="size-4 text-white" />
        </div>
        <div className="flex flex-col">
          <span className="text-[13px] font-bold leading-none">{data.streakDays} dias seguidos</span>
          <span className="text-[11px] text-muted-foreground font-medium leading-none mt-1">Ofensiva de estudos</span>
        </div>
      </div>
    </div>
  )
}
