import * as React from "react"
import { Button } from "@/components/ui/button"
import { ZapIcon, LayersIcon, TargetIcon, BookMarkedIcon } from "lucide-react"
import Link from "next/link"

export function AlunoQuickActions() {
  return (
    <div>
      <h3 className="text-xs font-extrabold uppercase tracking-widest text-muted-foreground mb-4 px-1">Ações Rápidas</h3>
      <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
        <Button asChild variant="outline" className="h-auto flex-col items-start gap-4 p-5 rounded-2xl border-border/50 bg-card hover:bg-accent/40 hover:border-foreground/20 hover:shadow-md transition-all justify-start text-left group cursor-pointer">
          <Link href="/aluno/simulados">
            <div className="size-12 rounded-2xl bg-blue-500/10 flex items-center justify-center group-hover:scale-110 transition-transform">
              <ZapIcon className="size-6 text-blue-600 dark:text-blue-400" />
            </div>
            <div>
              <p className="font-bold text-base">Novo Simulado</p>
              <p className="text-[13px] text-muted-foreground font-medium mt-1">Teste seus conhecimentos</p>
            </div>
          </Link>
        </Button>
        
        <Button asChild variant="outline" className="h-auto flex-col items-start gap-4 p-5 rounded-2xl border-border/50 bg-card hover:bg-accent/40 hover:border-foreground/20 hover:shadow-md transition-all justify-start text-left group cursor-pointer">
          <Link href="/aluno/flashcards">
            <div className="size-12 rounded-2xl bg-violet-500/10 flex items-center justify-center group-hover:scale-110 transition-transform">
              <LayersIcon className="size-6 text-violet-600 dark:text-violet-400" />
            </div>
            <div>
              <p className="font-bold text-base">Revisar Cards</p>
              <p className="text-[13px] text-muted-foreground font-medium mt-1">Sessão de repetição espaçada</p>
            </div>
          </Link>
        </Button>

        <Button asChild variant="outline" className="h-auto flex-col items-start gap-4 p-5 rounded-2xl border-border/50 bg-card hover:bg-accent/40 hover:border-foreground/20 hover:shadow-md transition-all justify-start text-left group cursor-pointer">
          <Link href="/aluno/questoes">
            <div className="size-12 rounded-2xl bg-emerald-500/10 flex items-center justify-center group-hover:scale-110 transition-transform">
              <TargetIcon className="size-6 text-emerald-600 dark:text-emerald-400" />
            </div>
            <div>
              <p className="font-bold text-base">Treino Rápido</p>
              <p className="text-[13px] text-muted-foreground font-medium mt-1">Resolver questões aleatórias</p>
            </div>
          </Link>
        </Button>

        <Button asChild variant="outline" className="h-auto flex-col items-start gap-4 p-5 rounded-2xl border-border/50 bg-card hover:bg-accent/40 hover:border-foreground/20 hover:shadow-md transition-all justify-start text-left group cursor-pointer">
          <Link href="/aluno/caderno">
            <div className="size-12 rounded-2xl bg-primary/10 flex items-center justify-center group-hover:scale-110 transition-transform">
              <BookMarkedIcon className="size-6 text-primary" />
            </div>
            <div>
              <p className="font-bold text-base">Caderno de Erros</p>
              <p className="text-[13px] text-muted-foreground font-medium mt-1">Revise o que você errou</p>
            </div>
          </Link>
        </Button>
      </div>
    </div>
  )
}
