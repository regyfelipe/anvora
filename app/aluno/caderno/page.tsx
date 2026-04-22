"use client"

import * as React from "react"
import { AppSidebar } from "@/components/app-sidebar"
import { SiteHeader } from "@/components/site-header"
import { SidebarInset } from "@/components/ui/sidebar"
import { Badge } from "@/components/ui/badge"
import { Button } from "@/components/ui/button"
import { Input } from "@/components/ui/input"
import { Separator } from "@/components/ui/separator"
import {
  BookMarkedIcon,
  SearchIcon,
  PlusIcon,
  FolderIcon,
  TagIcon,
  XCircleIcon,
  PenLineIcon,
  StarIcon,
  RefreshCcwIcon,
  FilterIcon,
  ChevronRightIcon,
  StickyNoteIcon,
  BookOpenIcon,
  ClockIcon,
  MoreHorizontalIcon,
} from "lucide-react"
import { cn } from "@/lib/utils"

/* ─── Types ─────────────────────────────────── */
type EntryType = "erro" | "anotacao" | "destaque" | "revisao"

interface Entry {
  id: number
  type: EntryType
  subject: string
  topic: string
  qId?: string
  content: string
  note?: string
  tags: string[]
  date: string
  reviewDue?: boolean
}

/* ─── Mock Data ─────────────────────────────── */
const NOTEBOOKS = [
  { id: "all", label: "Todos os cadernos", count: 24 },
  { id: "pf", label: "Policial Federal", count: 14 },
  { id: "const", label: "Constitucional", count: 6 },
  { id: "admin", label: "Administrativo", count: 4 },
]

const TAGS = ["atenção", "revisar", "decorar", "jurisprudência", "art. 5º", "princípios"]

const ENTRIES: Entry[] = [
  {
    id: 1, type: "erro",
    subject: "Direito Constitucional", topic: "Direitos Fundamentais",
    qId: "Q4002294",
    content: "A fonoaudióloga está correta: a ética refere-se às normas externas e institucionais de conduta, ao passo que a moral é o campo da reflexão racional e da motivação interna.",
    note: "Confundi ética com moral. Lembrar: Moral = interno/motivacional | Ética = normas externas/comportamento público.",
    tags: ["atenção", "revisar"], date: "Hoje, 22:10", reviewDue: true,
  },
  {
    id: 2, type: "anotacao",
    subject: "Direito Constitucional", topic: "Art. 5º - Manifestação de Pensamento",
    content: "CF/88, Art. 5º, IV: É livre a manifestação do pensamento, sendo vedado o anonimato. A censura prévia é expressamente proibida no ordenamento jurídico brasileiro.",
    note: "Regra: Liberdade + Identificação. Qualquer questão sobre censura prévia → ERRADO.",
    tags: ["art. 5º", "decorar"], date: "Hoje, 21:43",
  },
  {
    id: 3, type: "destaque",
    subject: "Direito Administrativo", topic: "Princípios da Administração Pública",
    content: "LIMPE: Legalidade, Impessoalidade, Moralidade, Publicidade, Eficiência. Art. 37 da CF/88. A Eficiência foi acrescentada pela EC 19/98.",
    tags: ["princípios", "decorar"], date: "Ontem, 18:30",
  },
  {
    id: 4, type: "erro",
    subject: "Português", topic: "Coesão Textual",
    qId: "Q3981102",
    content: "O pronome 'que' em 'A lei que foi aprovada...' substitui o substantivo 'lei' e exerce a função de sujeito da oração subordinada.",
    note: "Erro clássico: confundi adjunto com sujeito. Identificar o verbo da subordinada primeiro, depois o sujeito.",
    tags: ["atenção"], date: "Ontem, 15:12", reviewDue: true,
  },
  {
    id: 5, type: "revisao",
    subject: "Raciocínio Lógico", topic: "Lógica Proposicional",
    content: "Tabela-verdade da condicional P→Q: só é FALSA quando P é verdadeiro e Q é falso. Contrapositiva: ¬Q→¬P (equivalente). Inversa e Recíproca NÃO são equivalentes.",
    tags: ["revisar", "decorar"], date: "22 Abr, 10:00",
  },
]

const TYPE_CONFIG: Record<EntryType, { label: string; icon: React.ElementType; bg: string; text: string; border: string }> = {
  erro: { label: "Erro", icon: XCircleIcon, bg: "bg-red-500/10", text: "text-red-600 dark:text-red-400", border: "border-red-500/20" },
  anotacao: { label: "Anotação", icon: PenLineIcon, bg: "bg-blue-500/10", text: "text-blue-600 dark:text-blue-400", border: "border-blue-500/20" },
  destaque: { label: "Destaque", icon: StarIcon, bg: "bg-amber-500/10", text: "text-amber-600 dark:text-amber-400", border: "border-amber-500/20" },
  revisao: { label: "Revisão", icon: RefreshCcwIcon, bg: "bg-violet-500/10", text: "text-violet-600 dark:text-violet-400", border: "border-violet-500/20" },
}

const TABS: { value: EntryType | "todos"; label: string; icon: React.ElementType }[] = [
  { value: "todos", label: "Todos", icon: BookOpenIcon },
  { value: "erro", label: "Erros", icon: XCircleIcon },
  { value: "anotacao", label: "Anotações", icon: PenLineIcon },
  { value: "destaque", label: "Destaques", icon: StarIcon },
  { value: "revisao", label: "Revisões", icon: RefreshCcwIcon },
]

/* ─── Page ──────────────────────────────────── */
export default function CadernoPage() {
  const [activeTab, setActiveTab] = React.useState<EntryType | "todos">("todos")
  const [activeNotebook, setActiveNotebook] = React.useState("all")
  const [search, setSearch] = React.useState("")

  const filtered = ENTRIES.filter((e) => {
    const matchTab = activeTab === "todos" || e.type === activeTab
    const matchSearch = !search || e.content.toLowerCase().includes(search.toLowerCase()) || e.subject.toLowerCase().includes(search.toLowerCase())
    return matchTab && matchSearch
  })

  return (
    <>
      <AppSidebar variant="inset" />
      <SidebarInset>
        <SiteHeader />

        <div className="flex flex-1 overflow-hidden">
          {/* ── Cadernos Sidebar ── */}
          <aside className="hidden md:flex flex-col w-56 shrink-0 border-r border-border/40  px-3 py-5 gap-6">
            <div>
              <p className="text-[11px] font-bold uppercase tracking-widest text-muted-foreground px-2 mb-2">Cadernos</p>
              <div className="flex flex-col gap-0.5">
                {NOTEBOOKS.map(({ id, label, count }) => (
                  <button
                    key={id}
                    onClick={() => setActiveNotebook(id)}
                    className={cn(
                      "flex items-center justify-between gap-2 px-3 py-2 rounded-lg text-[13px] font-medium transition-colors",
                      activeNotebook === id
                        ? "bg-foreground/10 text-foreground"
                        : "text-muted-foreground hover:bg-muted hover:text-foreground"
                    )}
                  >
                    <span className="flex items-center gap-2 truncate">
                      <FolderIcon className="size-3.5 shrink-0" />
                      <span className="truncate">{label}</span>
                    </span>
                    <span className="text-[11px] font-bold opacity-50">{count}</span>
                  </button>
                ))}
              </div>
            </div>

            <Separator />

            <div>
              <p className="text-[11px] font-bold uppercase tracking-widest text-muted-foreground px-2 mb-2">Tags</p>
              <div className="flex flex-wrap gap-1.5 px-1">
                {TAGS.map((tag) => (
                  <button key={tag} className="px-2.5 py-1 rounded-full border border-border/60 text-[11px] font-medium text-muted-foreground hover:text-foreground hover:border-border transition-colors flex items-center gap-1">
                    <TagIcon className="size-2.5" />
                    {tag}
                  </button>
                ))}
              </div>
            </div>

            <div className="mt-auto">
              <Button className="w-full gap-2 text-[13px]" size="sm">
                <PlusIcon className="size-3.5" />
                Nova anotação
              </Button>
            </div>
          </aside>

          {/* ── Main Content ── */}
          <div className="flex flex-1 flex-col overflow-hidden">
            {/* Header */}
            <div className="px-6 pt-6 pb-0">
              <div className="flex items-center justify-between mb-5">
                <div>
                  <h1 className="text-2xl font-bold tracking-tight flex items-center gap-2">
                    <BookMarkedIcon className="size-6 text-muted-foreground" />
                    Caderno de Estudos
                  </h1>
                  <p className="text-sm text-muted-foreground mt-0.5">{filtered.length} entradas · {ENTRIES.filter(e => e.reviewDue).length} aguardando revisão</p>
                </div>
                <Button size="sm" className="gap-1.5 hidden sm:flex">
                  <PlusIcon className="size-3.5" />
                  Adicionar
                </Button>
              </div>

              {/* Search */}
              <div className="relative mb-5">
                <SearchIcon className="absolute left-3.5 top-1/2 -translate-y-1/2 size-4 text-muted-foreground/60 pointer-events-none" />
                <Input
                  value={search}
                  onChange={(e) => setSearch(e.target.value)}
                  placeholder="Buscar no caderno…"
                  className="pl-10 h-10 rounded-xl bg-background border-border/60 shadow-sm"
                />
              </div>

              {/* Tabs */}
              <div className="flex items-center gap-1 overflow-x-auto pb-1">
                {TABS.map(({ value, label, icon: Icon }) => {
                  const count = value === "todos" ? ENTRIES.length : ENTRIES.filter(e => e.type === value).length
                  return (
                    <button
                      key={value}
                      onClick={() => setActiveTab(value)}
                      className={cn(
                        "flex items-center gap-1.5 px-4 py-2 rounded-xl text-[13px] font-semibold whitespace-nowrap transition-all border",
                        activeTab === value
                          ? "bg-foreground text-background border-foreground shadow-sm"
                          : "border-transparent text-muted-foreground hover:text-foreground hover:bg-muted"
                      )}
                    >
                      <Icon className="size-3.5" />
                      {label}
                      <span className={cn("text-[11px] font-bold ml-0.5", activeTab === value ? "opacity-60" : "opacity-40")}>{count}</span>
                    </button>
                  )
                })}
              </div>
            </div>

            {/* Entries List */}
            <div className="flex-1 overflow-y-auto px-6 py-5">
              {filtered.length === 0 ? (
                <div className="flex flex-col items-center justify-center h-48 gap-3 text-muted-foreground">
                  <StickyNoteIcon className="size-10 opacity-30" />
                  <p className="text-sm font-medium">Nenhuma entrada encontrada</p>
                </div>
              ) : (
                <div className="flex flex-col gap-4">
                  {filtered.map((entry) => {
                    const cfg = TYPE_CONFIG[entry.type]
                    const Icon = cfg.icon
                    return (
                      <div
                        key={entry.id}
                        className={cn(
                          "group bg-card border rounded-2xl p-5 shadow-sm hover:shadow-md transition-all duration-200 cursor-pointer",
                          entry.reviewDue ? "border-amber-500/30" : "border-border/50"
                        )}
                      >
                        {/* Top row */}
                        <div className="flex items-start justify-between gap-3 mb-3">
                          <div className="flex items-center gap-2 flex-wrap">
                            <span className={cn("flex items-center gap-1.5 px-2.5 py-1 rounded-full text-[11px] font-bold", cfg.bg, cfg.text)}>
                              <Icon className="size-3" />
                              {cfg.label}
                            </span>
                            <Badge variant="outline" className="text-[11px] rounded-full border-border/60 font-medium">
                              {entry.subject}
                            </Badge>
                            {entry.reviewDue && (
                              <span className="flex items-center gap-1 text-amber-600 dark:text-amber-400 text-[11px] font-bold">
                                <ClockIcon className="size-3" />
                                Revisar hoje
                              </span>
                            )}
                          </div>
                          <button className="opacity-0 group-hover:opacity-100 transition-opacity text-muted-foreground hover:text-foreground shrink-0">
                            <MoreHorizontalIcon className="size-4" />
                          </button>
                        </div>

                        {/* Topic */}
                        <p className="text-[12px] text-muted-foreground font-medium mb-2 flex items-center gap-1">
                          <ChevronRightIcon className="size-3" />
                          {entry.topic}
                          {entry.qId && <span className="font-mono opacity-60 ml-1">· {entry.qId}</span>}
                        </p>

                        {/* Content */}
                        <p className="text-[14px] text-foreground leading-relaxed line-clamp-3 mb-3">
                          {entry.content}
                        </p>

                        {/* Note */}
                        {entry.note && (
                          <div className="bg-amber-500/5 border border-amber-500/15 rounded-xl px-4 py-3 mb-3">
                            <p className="text-[13px] text-foreground/80 leading-relaxed italic">
                              <span className="not-italic font-bold text-amber-600 dark:text-amber-400 mr-1.5">✏️ Nota:</span>
                              {entry.note}
                            </p>
                          </div>
                        )}

                        {/* Footer */}
                        <div className="flex items-center justify-between">
                          <div className="flex flex-wrap gap-1.5">
                            {entry.tags.map((tag) => (
                              <span key={tag} className="px-2 py-0.5 bg-muted rounded-full text-[11px] font-medium text-muted-foreground flex items-center gap-1">
                                <TagIcon className="size-2.5" />
                                {tag}
                              </span>
                            ))}
                          </div>
                          <span className="text-[11px] text-muted-foreground/60 shrink-0 ml-3">{entry.date}</span>
                        </div>
                      </div>
                    )
                  })}
                </div>
              )}
            </div>
          </div>
        </div>
      </SidebarInset>
    </>
  )
}
