import * as React from "react"
import { TrendingDownIcon, TargetIcon } from "lucide-react"
import { Button } from "@/components/ui/button"
import Link from "next/link"
import { cn } from "@/lib/utils"
import { StudentDashboardData } from "@/lib/mocks/aluno-dashboard"

interface Props {
  data: StudentDashboardData["weakness"];
  className?: string;
}

export function AlunoWeaknessCard({ data, className }: Props) {
  return (
    <div className={cn("bg-card border border-border/50 rounded-2xl p-6 shadow-sm flex flex-col h-full", className)}>
      <h3 className="text-xs font-extrabold uppercase tracking-widest text-muted-foreground mb-6">Ponto de Atenção</h3>
      
      <div className="flex-1 flex flex-col justify-center items-center text-center">
        <div className="size-16 rounded-full bg-red-500/10 flex items-center justify-center mb-4">
          <TrendingDownIcon className="size-8 text-red-500" />
        </div>
        
        <h4 className="font-extrabold text-lg mb-0.5">{data.subject}</h4>
        {data.topic && (
          <p className="text-[10px] font-black text-red-500/80 uppercase tracking-widest mb-2 italic">
            Assunto: {data.topic}
          </p>
        )}
        <p className="text-sm text-muted-foreground max-w-[200px] mb-6">
          Sua taxa de acerto está em <strong className="text-foreground">{data.scorePct}%</strong>. Recomendamos um treino focado.
        </p>
        
        <Button asChild className="w-full bg-red-500 hover:bg-red-600 text-white shadow-sm font-bold gap-2 cursor-pointer">
          <Link href={data.actionHref}>
            <TargetIcon className="size-4" />
            Treinar Fraquezas
          </Link>
        </Button>
      </div>
    </div>
  )
}
