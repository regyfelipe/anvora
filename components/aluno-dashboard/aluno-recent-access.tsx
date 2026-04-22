import * as React from "react"
import { Badge } from "@/components/ui/badge"
import { ArrowRightIcon, FileTextIcon, BookMarkedIcon, LayersIcon } from "lucide-react"
import Link from "next/link"
import { cn } from "@/lib/utils"
import { StudentDashboardData } from "@/lib/mocks/aluno-dashboard"

interface Props {
  data: StudentDashboardData["recentAccess"];
  className?: string;
}

export function AlunoRecentAccess({ data, className }: Props) {
  const getIcon = (type: string) => {
    switch(type) {
      case "Simulado": return <FileTextIcon className="size-6 text-amber-500" />
      case "Caderno": return <BookMarkedIcon className="size-6 text-blue-500" />
      case "Flashcards": return <LayersIcon className="size-6 text-violet-500" />
      default: return <FileTextIcon className="size-6 text-primary" />
    }
  }

  const getBgClass = (type: string) => {
    switch(type) {
      case "Simulado": return "bg-amber-500/10"
      case "Caderno": return "bg-blue-500/10"
      case "Flashcards": return "bg-violet-500/10"
      default: return "bg-primary/10"
    }
  }

  return (
    <div className={className}>
      <div className="flex items-center justify-between mb-5 px-1">
        <h3 className="text-xs font-extrabold uppercase tracking-widest text-muted-foreground">Continue de onde parou</h3>
        <Link href="/aluno/historico" className="text-sm font-bold text-primary hover:text-primary/80 flex items-center gap-1.5 transition-colors">
          Ver histórico <ArrowRightIcon className="size-3.5" />
        </Link>
      </div>
      
      <div className="grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-5">
        {data.map((item) => (
          <Link key={item.id} href={item.href}>
            <div className="bg-card border border-border/50 rounded-2xl p-5 shadow-sm hover:shadow-md hover:border-foreground/15 transition-all cursor-pointer group h-full flex flex-col justify-between">
              <div>
                <div className="flex items-start justify-between mb-5">
                  <div className={cn("size-12 rounded-2xl flex items-center justify-center", getBgClass(item.type))}>
                    {getIcon(item.type)}
                  </div>
                  <Badge variant="secondary" className="text-[11px] font-bold bg-muted text-muted-foreground">
                    {item.type}
                  </Badge>
                </div>
                
                <h4 className="font-extrabold text-[15px] mb-4 line-clamp-2 leading-tight group-hover:text-primary transition-colors">
                  {item.title}
                </h4>
              </div>
              
              <div className="flex items-center gap-3 mt-auto">
                <div className="flex-1 h-1.5 bg-muted rounded-full overflow-hidden">
                   <div className="h-full bg-foreground/30 rounded-full transition-all duration-1000" style={{ width: `${item.progress}%` }} />
                </div>
                <span className="text-[12px] font-bold text-muted-foreground">{item.progress}%</span>
              </div>
            </div>
          </Link>
        ))}
      </div>
    </div>
  )
}
