import * as React from "react"
import { Badge } from "@/components/ui/badge"
import { Button } from "@/components/ui/button"
import { PlayCircleIcon, BookMarkedIcon } from "lucide-react"
import Link from "next/link"
import { cn } from "@/lib/utils"
import { StudentDashboardData } from "@/lib/mocks/aluno-dashboard"

interface Props {
  data: StudentDashboardData["nextTask"];
  className?: string;
}

export function AlunoNextTaskHero({ data, className }: Props) {
  return (
    <div className={cn("relative overflow-hidden rounded-3xl bg-gradient-to-br from-blue-600 via-indigo-600 to-violet-700 text-white shadow-xl p-8 sm:p-10 flex flex-col justify-between min-h-[280px]", className)}>
      {/* Abstract Background Shapes */}
      <div className="absolute top-0 right-0 -translate-y-12 translate-x-20 w-64 h-64 bg-white/10 rounded-full blur-3xl pointer-events-none" />
      <div className="absolute bottom-0 left-0 translate-y-1/3 -translate-x-1/3 w-64 h-64 bg-blue-400/20 rounded-full blur-3xl pointer-events-none" />
      
      <div className="relative z-10">
        <Badge variant="outline" className="border-white/20 text-white/90 bg-black/10 backdrop-blur-md px-3 py-1 text-xs mb-5 font-semibold uppercase tracking-wider">
          Próximo Passo do Seu Plano
        </Badge>
        <h2 className="text-3xl sm:text-4xl font-extrabold tracking-tight max-w-xl mb-3 drop-shadow-sm">
          {data.title}
        </h2>
        <p className="text-white/80 font-medium max-w-md text-sm sm:text-base leading-relaxed">
          {data.description}
        </p>
      </div>
      
      <div className="relative z-10 mt-8 flex flex-wrap items-center gap-4">
        <Button asChild size="lg" className="bg-white text-blue-700 hover:bg-white/90 font-bold rounded-xl gap-2 h-12 px-6 shadow-lg transition-transform hover:scale-105 cursor-pointer">
          <Link href={data.href}>
            <PlayCircleIcon className="size-5" />
            Continuar
          </Link>
        </Button>
        <Button asChild size="lg" variant="ghost" className="text-white hover:text-white hover:bg-white/10 font-semibold rounded-xl gap-2 h-12 border border-white/20 backdrop-blur-sm cursor-pointer">
          <Link href="/aluno/planejamento">
            <BookMarkedIcon className="size-4" />
            Ver Plano Completo
          </Link>
        </Button>
      </div>
    </div>
  )
}
