import { AppSidebar } from "@/components/app-sidebar"
import { SiteHeader } from "@/components/site-header"
import { SidebarInset } from "@/components/ui/sidebar"
import { Button } from "@/components/ui/button"
import { 
  PlusIcon, 
  FilterIcon, 
  SearchIcon, 
  MoreHorizontalIcon,
  ChevronRightIcon,
  EyeIcon,
  Trash2Icon,
  CopyIcon,
  Building2Icon,
  UserIcon,
  ClockIcon
} from "lucide-react"
import Link from "next/link"
import { Badge } from "@/components/ui/badge"
import { Separator } from "@/components/ui/separator"
import { MOCK_QUESTIONS } from "@/lib/mocks/questions"

export default function ProfessorQuestionsPage() {
  return (
    <>
      <AppSidebar variant="inset" />
      <SidebarInset>
        <SiteHeader />
        <div className="flex flex-1 flex-col bg-muted/10">
          <div className="mx-auto w-full max-w-[1600px] px-6 pt-10 pb-20">
            
            <div className="mb-12 flex flex-col md:flex-row md:items-end justify-between gap-6">
              <div>
                <h1 className="text-5xl font-black italic uppercase tracking-tighter">Minhas Questões</h1>
                <p className="text-muted-foreground mt-2 font-medium">Gerencie seu banco de dados e contribuições para a plataforma.</p>
              </div>
              <Link href="/professor/questoes/nova">
                <Button className="h-14 rounded-2xl px-8 gap-3 font-black italic uppercase tracking-tight shadow-xl shadow-primary/20">
                  <PlusIcon className="size-5" />
                  Nova Questão
                </Button>
              </Link>
            </div>

            {/* Quick Stats */}
            <div className="grid grid-cols-1 md:grid-cols-4 gap-4 mb-10">
              <div className="bg-card border rounded-3xl p-6 shadow-sm">
                <p className="text-[10px] font-black uppercase italic tracking-widest text-muted-foreground mb-1">Total Criado</p>
                <p className="text-3xl font-black italic tracking-tighter">124</p>
              </div>
              <div className="bg-card border rounded-3xl p-6 shadow-sm border-green-500/20">
                <p className="text-[10px] font-black uppercase italic tracking-widest text-green-600 mb-1">Publicadas</p>
                <p className="text-3xl font-black italic tracking-tighter text-green-700">98</p>
              </div>
              <div className="bg-card border rounded-3xl p-6 shadow-sm border-amber-500/20">
                <p className="text-[10px] font-black uppercase italic tracking-widest text-amber-600 mb-1">Em Revisão</p>
                <p className="text-3xl font-black italic tracking-tighter text-amber-700">12</p>
              </div>
              <div className="bg-card border rounded-3xl p-6 shadow-sm">
                <p className="text-[10px] font-black uppercase italic tracking-widest text-muted-foreground mb-1">Rascunhos</p>
                <p className="text-3xl font-black italic tracking-tighter">14</p>
              </div>
            </div>

            <div className="bg-card border border-border/50 rounded-[40px] shadow-sm overflow-hidden">
              {/* Toolbar */}
              <div className="p-6 border-b bg-muted/20 flex flex-wrap items-center gap-4">
                <div className="relative flex-1 min-w-[300px]">
                  <SearchIcon className="absolute left-4 top-1/2 -translate-y-1/2 size-4 text-muted-foreground" />
                  <input 
                    placeholder="Filtrar por enunciado, assunto ou código..." 
                    className="w-full h-12 pl-12 pr-4 rounded-xl bg-background border shadow-none focus:ring-1 focus:ring-primary outline-none text-sm font-medium"
                  />
                </div>
                <Button variant="outline" className="h-12 rounded-xl gap-2 font-bold px-5">
                  <FilterIcon className="size-4" />
                  Filtros Avançados
                </Button>
              </div>

              {/* List */}
              <div className="divide-y">
                {MOCK_QUESTIONS.map((q, idx) => (
                  <div key={q.id} className="group hover:bg-muted/30 transition-colors p-6 flex flex-col md:flex-row md:items-center gap-6">
                    <div className="flex-1 space-y-2">
                      <div className="flex flex-wrap items-center gap-2">
                        <Badge variant="outline" className="rounded-md font-mono text-[10px] uppercase font-bold tracking-tighter">
                          {q.publicCode}
                        </Badge>
                        <Badge variant="secondary" className="bg-primary/5 text-primary border-primary/10 rounded-md text-[10px] uppercase font-black italic tracking-widest">
                          {q.subject}
                        </Badge>
                        <span className="text-xs text-muted-foreground font-medium">•</span>
                        <span className="text-xs text-muted-foreground font-medium">{q.topic}</span>
                      </div>
                      <h3 className="text-base font-bold leading-tight line-clamp-1 opacity-80 group-hover:opacity-100 transition-opacity">
                        {q.stem}
                      </h3>
                      <div className="flex items-center gap-4 text-[11px] text-muted-foreground font-bold uppercase italic tracking-wider">
                        <span className="flex items-center gap-1.5">
                          <ClockIcon className="size-3" />
                          Editado há 2 dias
                        </span>
                        <span className="flex items-center gap-1.5">
                          <UserIcon className="size-3" />
                          Modo Autônomo
                        </span>
                      </div>
                    </div>

                    <div className="flex items-center gap-6 shrink-0">
                      <div className="flex flex-col items-end gap-1 min-w-[100px]">
                        <Badge className={cn(
                          "rounded-full text-[10px] uppercase font-black italic tracking-widest px-3 py-0.5",
                          idx % 3 === 0 ? "bg-green-500 text-white" : idx % 3 === 1 ? "bg-amber-500 text-white" : "bg-muted text-muted-foreground"
                        )}>
                          {idx % 3 === 0 ? "Publicada" : idx % 3 === 1 ? "Em Revisão" : "Rascunho"}
                        </Badge>
                        <span className="text-[10px] text-muted-foreground font-bold uppercase tracking-widest">Visibility: Personal</span>
                      </div>

                      <div className="flex items-center gap-1">
                        <Button variant="ghost" size="icon" className="size-10 rounded-xl hover:bg-primary/10 hover:text-primary transition-colors">
                          <EyeIcon className="size-4" />
                        </Button>
                        <Button variant="ghost" size="icon" className="size-10 rounded-xl hover:bg-blue-500/10 hover:text-blue-600 transition-colors">
                          <CopyIcon className="size-4" />
                        </Button>
                        <Button variant="ghost" size="icon" className="size-10 rounded-xl hover:bg-destructive/10 hover:text-destructive transition-colors">
                          <Trash2Icon className="size-4" />
                        </Button>
                      </div>
                    </div>
                  </div>
                ))}
              </div>

              {/* Footer */}
              <div className="p-6 bg-muted/10 border-t flex items-center justify-between">
                <p className="text-xs text-muted-foreground font-medium">Mostrando 10 de 124 questões</p>
                <div className="flex items-center gap-2">
                   <Button variant="outline" disabled className="h-10 rounded-xl px-4 text-xs font-bold uppercase tracking-widest italic">Anterior</Button>
                   <Button variant="outline" className="h-10 rounded-xl px-4 text-xs font-bold uppercase tracking-widest italic">Próximo</Button>
                </div>
              </div>
            </div>

          </div>
        </div>
      </SidebarInset>
    </>
  )
}

function cn(...inputs: any[]) {
  return inputs.filter(Boolean).join(" ")
}
