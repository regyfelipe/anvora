"use client"

import * as React from "react"
import { AppSidebar } from "@/components/app-sidebar"
import { SiteHeader } from "@/components/site-header"
import { SidebarInset } from "@/components/ui/sidebar"
import { Card, CardContent, CardHeader, CardTitle, CardFooter } from "@/components/ui/card"
import { Button } from "@/components/ui/button"
import { MOCK_DECKS, FlashcardDeck } from "@/lib/mocks/flashcards"
import { 
  LayersIcon, 
  PlayIcon, 
  PlusIcon, 
  BookOpenIcon, 
  CalendarIcon,
  ZapIcon,
  TrendingUpIcon,
  BrainIcon
} from "lucide-react"
import { cn } from "@/lib/utils"

export default function FlashcardsPage() {
  const totalToReview = MOCK_DECKS.reduce((acc, d) => acc + d.toReview, 0)
  const totalNew = MOCK_DECKS.reduce((acc, d) => acc + d.newCards, 0)

  return (
    <>
      <AppSidebar variant="inset" />
      <SidebarInset>
        <SiteHeader />

        <div className="flex flex-1 flex-col bg-muted/10">
          <div className="mx-auto w-full max-w-7xl px-4 pt-8 pb-32 space-y-10">
            
            {/* ── Header da Página ── */}
            <div className="flex flex-col md:flex-row md:items-center justify-between gap-6 bg-background p-8 rounded-[40px] border shadow-sm overflow-hidden relative">
              <div className="absolute top-0 right-0 p-8 opacity-5">
                <BrainIcon className="size-40" />
              </div>
              
              <div className="space-y-2 relative z-10">
                <h1 className="text-4xl font-black italic uppercase tracking-tighter text-foreground flex items-center gap-3">
                  <LayersIcon className="size-10 text-primary" />
                  Flashcards
                </h1>
                <p className="text-muted-foreground font-medium italic max-w-md">
                  Memorização ativa com repetição espaçada. A técnica mais eficiente para não esquecer o conteúdo.
                </p>
              </div>
              
              <div className="flex items-center gap-4 relative z-10">
                <Button size="lg" className="rounded-2xl font-bold uppercase italic tracking-wider py-7 px-8 shadow-lg shadow-primary/20">
                  <ZapIcon className="mr-2 size-5 fill-current" />
                  Estudar Tudo Agora
                </Button>
                <Button variant="outline" size="lg" className="rounded-2xl font-bold uppercase italic tracking-wider py-7 px-8 border-2">
                  <PlusIcon className="mr-2 size-5" />
                  Novo Deck
                </Button>
              </div>
            </div>

            {/* ── Stats de Hoje ── */}
            <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
              <Card className="rounded-3xl border-none bg-orange-500 text-white shadow-lg shadow-orange-500/20">
                <CardContent className="p-6">
                  <p className="text-3xl font-black italic">{totalToReview}</p>
                  <p className="text-[10px] font-bold uppercase tracking-widest opacity-80 mt-1">Para Revisar Hoje</p>
                </CardContent>
              </Card>
              
              <Card className="rounded-3xl border-none bg-blue-500 text-white shadow-lg shadow-blue-500/20">
                <CardContent className="p-6">
                  <p className="text-3xl font-black italic">{totalNew}</p>
                  <p className="text-[10px] font-bold uppercase tracking-widest opacity-80 mt-1">Novos Cartões</p>
                </CardContent>
              </Card>

              <Card className="rounded-3xl border-none bg-background shadow-sm border border-muted">
                <CardContent className="p-6">
                  <div className="flex items-center gap-2 text-green-600 mb-1">
                    <TrendingUpIcon className="size-4" />
                    <span className="text-xl font-black italic">85%</span>
                  </div>
                  <p className="text-[10px] font-bold uppercase tracking-widest text-muted-foreground">Retenção Média</p>
                </CardContent>
              </Card>

              <Card className="rounded-3xl border-none bg-background shadow-sm border border-muted">
                <CardContent className="p-6">
                  <div className="flex items-center gap-2 text-primary mb-1">
                    <CalendarIcon className="size-4" />
                    <span className="text-xl font-black italic">12</span>
                  </div>
                  <p className="text-[10px] font-bold uppercase tracking-widest text-muted-foreground">Dias de Streak</p>
                </CardContent>
              </Card>
            </div>

            {/* ── Decks por Disciplina ── */}
            <section className="space-y-6">
              <h2 className="text-sm font-black uppercase tracking-widest text-foreground flex items-center gap-2">
                <BookOpenIcon className="size-4 text-primary" />
                Seus Decks de Estudo
              </h2>

              <div className="grid gap-6 sm:grid-cols-2 lg:grid-cols-4">
                {MOCK_DECKS.map(deck => (
                  <Card key={deck.id} className="rounded-[32px] shadow-sm border-muted/20 hover:border-primary/40 transition-all group cursor-pointer overflow-hidden flex flex-col">
                    <div className={cn("h-2 w-full", deck.color)} />
                    <CardHeader className="pb-3">
                      <CardTitle className="text-lg font-bold leading-tight group-hover:text-primary transition-colors">
                        {deck.subject}
                      </CardTitle>
                    </CardHeader>
                    <CardContent className="flex-1">
                      <div className="grid grid-cols-3 gap-2 text-center">
                        <div className="p-2 rounded-xl bg-muted/30">
                          <p className="text-sm font-black italic leading-none">{deck.toReview}</p>
                          <p className="text-[8px] font-bold uppercase text-orange-600 mt-1">Rever</p>
                        </div>
                        <div className="p-2 rounded-xl bg-muted/30">
                          <p className="text-sm font-black italic leading-none">{deck.newCards}</p>
                          <p className="text-[8px] font-bold uppercase text-blue-600 mt-1">Novos</p>
                        </div>
                        <div className="p-2 rounded-xl bg-muted/30">
                          <p className="text-sm font-black italic leading-none">{deck.totalCards}</p>
                          <p className="text-[8px] font-bold uppercase text-muted-foreground mt-1">Total</p>
                        </div>
                      </div>
                    </CardContent>
                    <CardFooter className="pt-0">
                      <Button variant="ghost" className="w-full rounded-2xl font-bold uppercase text-[10px] tracking-widest group-hover:bg-primary group-hover:text-white transition-all py-6">
                        <PlayIcon className="mr-2 size-3 fill-current" />
                        Estudar Deck
                      </Button>
                    </CardFooter>
                  </Card>
                ))}
              </div>
            </section>

          </div>
        </div>
      </SidebarInset>
    </>
  )
}
