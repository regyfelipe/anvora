"use client"

import * as React from "react"
import {
  SearchIcon,
  SlidersHorizontalIcon,
  XIcon,
  ChevronDownIcon,
  CheckIcon,
  BookOpenIcon,
  Building2Icon,
  CalendarIcon,
  LayersIcon,
  TrophyIcon,
  BarChart2Icon,
  SparklesIcon,
  TargetIcon,
  ListTreeIcon,
} from "lucide-react"
import { Button } from "@/components/ui/button"
import { Input } from "@/components/ui/input"
import { Badge } from "@/components/ui/badge"
import { Separator } from "@/components/ui/separator"
import { cn } from "@/lib/utils"
import { fetchFilterOptions } from "@/app/actions/questions"
import { useRouter, useSearchParams, usePathname } from "next/navigation"
import {
  Sheet,
  SheetContent,
  SheetDescription,
  SheetHeader,
  SheetTitle,
  SheetTrigger,
} from "@/components/ui/sheet"
import { ScrollArea } from "@/components/ui/scroll-area"

/* ─── Types ──────────────────────────────────── */
interface FilterOption {
  value: string
  label: string
}

interface FilterGroup {
  id: string
  icon: React.ReactNode
  label: string
  options: FilterOption[]
}

/* ─── Static Data ────────────────────────────── */
const STATUS_OPTIONS = [
  { value: "todas",          label: "Todas",          color: "bg-muted text-muted-foreground" },
  { value: "nao-resolvidas", label: "Não resolvidas", color: "bg-muted text-muted-foreground" },
  { value: "acertei",        label: "Acertei",        color: "bg-green-500/15 text-green-700 dark:text-green-400 border-green-500/30" },
  { value: "errei",          label: "Errei",          color: "bg-red-500/15 text-red-700 dark:text-red-400 border-red-500/30" },
]

const CONTEUDO_OPTIONS = [
  { value: "gabarito",    label: "Com gabarito" },
  { value: "comentarios", label: "Com comentários" },
  { value: "aulas",       label: "Com aulas" },
  { value: "anotacoes",   label: "Minhas anotações" },
]

/* ─── Component ──────────────────────────────── */
export function QuestionFilters() {
  const router = useRouter()
  const pathname = usePathname()
  const searchParams = useSearchParams()
  
  const [filterGroups, setFilterGroups] = React.useState<FilterGroup[]>([
    { id: "disciplina", icon: <BookOpenIcon className="size-3.5" />, label: "Disciplina", options: [] },
    { id: "assunto",    icon: <ListTreeIcon className="size-3.5" />, label: "Assunto", options: [] },
    { id: "banca",      icon: <Building2Icon className="size-3.5" />, label: "Banca", options: [] },
    { id: "carreira",   icon: <TargetIcon className="size-3.5" />, label: "Carreira", options: [] },
    { id: "ano",        icon: <CalendarIcon className="size-3.5" />, label: "Ano", options: [] },
    { id: "nivel",      icon: <BarChart2Icon className="size-3.5" />, label: "Dificuldade", options: [] },
    { id: "conteudo",   icon: <LayersIcon className="size-3.5" />, label: "Conteúdo", options: CONTEUDO_OPTIONS },
  ])

  const [keyword, setKeyword]             = React.useState(searchParams.get("search") || "")
  const [status, setStatus]               = React.useState(searchParams.get("status") || "todas")
  const [isExpanded, setIsExpanded]       = React.useState(false)
  const [openGroup, setOpenGroup]         = React.useState<string | null>(null)
  const [selected, setSelected]           = React.useState<Record<string, string[]>>(() => {
    const initial: Record<string, string[]> = {}
    searchParams.forEach((value, key) => {
      if (["disciplina", "assunto", "banca", "carreira", "ano", "nivel", "conteudo"].includes(key)) {
        initial[key] = value.split(",")
      }
    })
    return initial
  })
  const [dropdownSearch, setDropdownSearch] = React.useState("")

  // Fetch real options from DB
  React.useEffect(() => {
    async function loadOptions() {
      const options = await fetchFilterOptions()
      setFilterGroups([
        { id: "disciplina", icon: <BookOpenIcon className="size-3.5" />, label: "Disciplina", options: options.disciplina },
        { id: "assunto",    icon: <ListTreeIcon className="size-3.5" />, label: "Assunto", options: options.assunto },
        { id: "banca",      icon: <Building2Icon className="size-3.5" />, label: "Banca", options: options.banca },
        { id: "carreira",   icon: <TargetIcon className="size-3.5" />, label: "Carreira", options: options.carreira },
        { id: "ano",        icon: <CalendarIcon className="size-3.5" />, label: "Ano", options: options.ano },
        { id: "nivel",      icon: <BarChart2Icon className="size-3.5" />, label: "Dificuldade", options: options.nivel },
        { id: "conteudo",   icon: <LayersIcon className="size-3.5" />, label: "Conteúdo", options: CONTEUDO_OPTIONS },
      ])
    }
    loadOptions()
  }, [])

  const totalActive = Object.values(selected).flat().length

  const applyFilters = () => {
    const params = new URLSearchParams()
    if (keyword) params.set("search", keyword)
    if (status !== "todas") params.set("status", status)
    
    Object.entries(selected).forEach(([key, values]) => {
      if (values.length > 0) {
        params.set(key, values.join(","))
      }
    })

    router.push(`${pathname}?${params.toString()}`)
    setIsExpanded(false)
  }

  const toggleOption = (groupId: string, value: string) => {
    setSelected((prev) => {
      const current = prev[groupId] ?? []
      const exists  = current.includes(value)
      return {
        ...prev,
        [groupId]: exists ? current.filter((v) => v !== value) : [...current, value],
      }
    })
  }

  const removeChip = (groupId: string, value: string) => {
    toggleOption(groupId, value)
    const newSelected = { ...selected }
    newSelected[groupId] = (newSelected[groupId] ?? []).filter(v => v !== value)
    const params = new URLSearchParams()
    if (keyword) params.set("search", keyword)
    if (status !== "todas") params.set("status", status)
    Object.entries(newSelected).forEach(([key, values]) => {
      if (values.length > 0) params.set(key, values.join(","))
    })
    router.push(`${pathname}?${params.toString()}`)
  }

  const clearAll = () => {
    setSelected({})
    setKeyword("")
    setStatus("todas")
    router.push(pathname)
  }

  const getLabelForValue = (groupId: string, value: string) =>
    filterGroups.find((g) => g.id === groupId)?.options.find((o) => o.value === value)?.label ?? value

  return (
    <div className="w-full mb-6 sm:mb-8">
      {/* ── Search Bar ────────────────────────────── */}
      <div className={cn(
        "flex items-center gap-2 sm:gap-3 px-3 sm:px-4 h-12 sm:h-14 bg-card border border-border/60 shadow-sm transition-all duration-300",
        isExpanded ? "rounded-t-2xl border-b-0" : "rounded-2xl"
      )}>
        <SearchIcon className="size-4 sm:size-5 shrink-0 text-muted-foreground/60" />

        <Input
          value={keyword}
          onChange={(e) => setKeyword(e.target.value)}
          onKeyDown={(e) => e.key === 'Enter' && applyFilters()}
          placeholder="Buscar..."
          className="flex-1 border-0 bg-transparent shadow-none focus-visible:ring-0 p-0 h-auto text-[14px] sm:text-[15px] placeholder:text-muted-foreground/50 font-medium"
        />

        {/* Active filter chips (inline, max 1 on mobile, 3 on desktop) */}
        <div className="flex items-center gap-2 shrink-0 max-w-[80px] sm:max-w-xs overflow-hidden">
          {Object.entries(selected).flatMap(([gid, vals]) =>
            vals.map((v) => (
              <Badge
                key={`${gid}-${v}`}
                variant="secondary"
                className="gap-1.5 pr-1.5 font-medium text-[10px] sm:text-[12px] rounded-full shrink-0 animate-in fade-in zoom-in duration-200"
              >
                <span className="max-w-[40px] sm:max-w-none truncate">{getLabelForValue(gid, v)}</span>
                <button
                  onClick={() => removeChip(gid, v)}
                  className="opacity-50 hover:opacity-100 transition-opacity"
                >
                  <XIcon className="size-2 sm:size-2.5" />
                </button>
              </Badge>
            ))
          ).slice(0, 1)}
          {totalActive > 1 && (
            <span className="text-[10px] sm:text-[11px] text-muted-foreground font-bold">+{totalActive - 1}</span>
          )}
        </div>

        <Separator orientation="vertical" className="h-5 sm:h-6 shrink-0 mx-1 sm:mx-0" />

        {/* Mobile Filter Button (Sheet) */}
        <div className="sm:hidden">
          <Sheet>
            <SheetTrigger asChild>
              <button className="flex items-center gap-1.5 rounded-xl px-2 py-1.5 text-[12px] font-bold text-foreground">
                <SlidersHorizontalIcon className="size-4" />
                {totalActive > 0 && (
                  <span className="size-4 rounded-full bg-foreground text-background text-[9px] font-bold flex items-center justify-center">
                    {totalActive}
                  </span>
                )}
              </button>
            </SheetTrigger>
            <SheetContent side="bottom" className="h-[92vh] rounded-t-[32px] p-0 border-t-0 bg-background">
              <SheetHeader className="px-6 pt-6 pb-2 text-left">
                <SheetTitle className="text-2xl font-black italic uppercase tracking-tighter">Filtros</SheetTitle>
                <SheetDescription className="font-medium">Refine sua busca por questões</SheetDescription>
              </SheetHeader>
              <ScrollArea className="h-full px-6 pb-32">
                <div className="flex flex-col gap-8 py-4">
                  {/* Status */}
                  <div className="space-y-3">
                    <h4 className="text-sm font-bold uppercase tracking-widest text-muted-foreground/60">Status da Questão</h4>
                    <div className="flex flex-wrap gap-2">
                      {STATUS_OPTIONS.map(({ value, label, color }) => (
                        <button
                          key={value}
                          onClick={() => setStatus(value)}
                          className={cn(
                            "px-4 h-9 rounded-full text-[13px] font-bold border transition-all",
                            status === value ? cn(color, "border-current shadow-sm") : "bg-muted/40 text-muted-foreground border-transparent"
                          )}
                        >
                          {label}
                        </button>
                      ))}
                    </div>
                  </div>

                  <Separator />

                  {/* Groups */}
                  <div className="space-y-6">
                    {filterGroups.map((group) => (
                      <div key={group.id} className="space-y-3">
                        <h4 className="text-sm font-bold uppercase tracking-widest text-muted-foreground/60 flex items-center gap-2">
                          {group.icon}
                          {group.label}
                        </h4>
                        <div className="flex flex-wrap gap-2">
                          {group.options.slice(0, 12).map((opt) => {
                            const checked = (selected[group.id] ?? []).includes(opt.value)
                            return (
                              <button
                                key={opt.value}
                                onClick={() => toggleOption(group.id, opt.value)}
                                className={cn(
                                  "px-3 h-8 rounded-lg text-[12px] font-semibold border transition-all",
                                  checked ? "bg-primary/10 border-primary text-primary" : "bg-muted/30 text-muted-foreground border-transparent"
                                )}
                              >
                                {opt.label}
                              </button>
                            )
                          })}
                        </div>
                      </div>
                    ))}
                  </div>
                </div>
              </ScrollArea>
              <div className="absolute bottom-0 left-0 right-0 p-6 bg-gradient-to-t from-background via-background to-transparent border-t flex gap-3">
                <Button variant="outline" className="flex-1 h-12 rounded-2xl font-bold" onClick={clearAll}>Limpar</Button>
                <Button className="flex-[2] h-12 rounded-2xl font-bold text-base" onClick={applyFilters}>Ver Resultados</Button>
              </div>
            </SheetContent>
          </Sheet>
        </div>

        {/* Desktop Filter Toggle */}
        <button
          onClick={() => setIsExpanded(!isExpanded)}
          className={cn(
            "hidden sm:flex items-center gap-2 rounded-xl px-3.5 py-1.5 text-[13px] font-semibold transition-all duration-200 shrink-0",
            isExpanded || totalActive > 0
              ? "bg-foreground/10 text-foreground"
              : "text-muted-foreground hover:text-foreground hover:bg-muted"
          )}
        >
          <SlidersHorizontalIcon className="size-4" />
          <span>Filtros</span>
          {totalActive > 0 && (
            <span className="size-5 rounded-full bg-foreground text-background text-[10px] font-bold flex items-center justify-center">
              {totalActive}
            </span>
          )}
          <ChevronDownIcon className={cn("size-3.5 transition-transform duration-300", isExpanded && "rotate-180")} />
        </button>
      </div>

      {/* ── Desktop Expanded Panel ────────────────────────── */}
      <div
        className={cn(
          "hidden sm:block transition-all duration-300 ease-in-out bg-card border border-t-0 border-border/60 rounded-b-2xl shadow-sm",
          isExpanded
            ? "max-h-[900px] opacity-100 overflow-visible"
            : "max-h-0 opacity-0 pointer-events-none overflow-hidden"
        )}
      >
        <div className="p-5 flex flex-col gap-5">
          {/* Status Tabs */}
          <div className="flex flex-wrap gap-2">
            {STATUS_OPTIONS.map(({ value, label, color }) => (
              <button
                key={value}
                onClick={() => setStatus(value)}
                className={cn(
                  "px-4 h-8 rounded-full text-[13px] font-semibold border transition-all duration-200",
                  status === value
                    ? cn(color, "border-current shadow-sm scale-[1.02]")
                    : "bg-muted/40 text-muted-foreground border-transparent hover:bg-muted hover:text-foreground"
                )}
              >
                {label}
              </button>
            ))}
          </div>

          <Separator />

          {/* Filter Groups Grid */}
          <div className="grid grid-cols-2 lg:grid-cols-3 xl:grid-cols-5 gap-3">
            {filterGroups.map((group) => {
              const groupSelected = selected[group.id] ?? []
              const isOpen = openGroup === group.id

              return (
                <div key={group.id} className="relative">
                  <button
                    onClick={() => {
                      setOpenGroup(isOpen ? null : group.id)
                      setDropdownSearch("")
                    }}
                    className={cn(
                      "w-full flex items-center justify-between gap-2 px-4 h-10 rounded-xl text-[13px] font-semibold border transition-all duration-200",
                      groupSelected.length > 0
                        ? "bg-foreground/10 text-foreground border-foreground/15 hover:bg-foreground/15"
                        : "bg-muted/40 text-muted-foreground border-transparent hover:bg-muted hover:text-foreground"
                    )}
                  >
                    <span className="flex items-center gap-2 truncate">
                      {group.icon}
                      <span className="truncate">{group.label}</span>
                      {groupSelected.length > 0 && (
                        <span className="size-4 rounded-full bg-foreground text-background text-[9px] font-bold flex items-center justify-center shrink-0">
                          {groupSelected.length}
                        </span>
                      )}
                    </span>
                    <ChevronDownIcon className={cn("size-3.5 shrink-0 transition-transform duration-200", isOpen && "rotate-180")} />
                  </button>

                  {isOpen && (
                    <div className="absolute top-[calc(100%+6px)] left-0 z-50 w-64 bg-popover border border-border rounded-xl shadow-xl overflow-hidden animate-in fade-in zoom-in-95 duration-150">
                      <div className="flex items-center gap-2 px-3 py-2.5 border-b border-border">
                        <SearchIcon className="size-3.5 text-muted-foreground/60 shrink-0" />
                        <input
                          autoFocus
                          value={dropdownSearch}
                          onChange={(e) => setDropdownSearch(e.target.value)}
                          placeholder="Busca rápida"
                          className="flex-1 bg-transparent text-[13px] outline-none placeholder:text-muted-foreground/50 text-foreground"
                        />
                      </div>
                      <div className="max-h-60 overflow-y-auto py-1">
                        {group.options
                          .filter((opt) => opt.label.toLowerCase().includes(dropdownSearch.toLowerCase()))
                          .map((opt) => {
                          const checked = groupSelected.includes(opt.value)
                          return (
                            <button
                              key={opt.value}
                              onClick={() => toggleOption(group.id, opt.value)}
                              className="w-full flex items-center gap-3 px-3 py-2 text-[13px] hover:bg-accent transition-colors text-left"
                            >
                              <span className={cn(
                                "size-4 rounded shrink-0 border flex items-center justify-center transition-colors",
                                checked ? "bg-foreground border-foreground" : "border-border"
                              )}>
                                {checked && <CheckIcon className="size-2.5 text-background" />}
                              </span>
                              <span className={cn("truncate", checked ? "text-foreground font-medium" : "text-muted-foreground")}>
                                {opt.label}
                              </span>
                            </button>
                          )
                        })}
                      </div>
                    </div>
                  )}
                </div>
              )
            })}
          </div>

          <div className="flex items-center justify-between pt-1 border-t border-border/40">
            <Button
              variant="ghost"
              size="sm"
              onClick={clearAll}
              disabled={totalActive === 0 && !keyword && status === "todas"}
              className="text-muted-foreground text-[13px] font-semibold hover:text-destructive gap-1.5"
            >
              <XIcon className="size-3.5" />
              Limpar tudo
            </Button>
            <div className="flex items-center gap-2">
              <Button
                variant="outline"
                size="sm"
                className="text-[13px] font-semibold gap-1.5 bg-background shadow-sm"
              >
                <SparklesIcon className="size-3.5 text-amber-500" />
                Salvar busca
              </Button>
              <Button
                size="sm"
                className="text-[13px] font-bold px-6 shadow-sm hover:scale-[1.02] active:scale-[0.98] transition-transform gap-1.5"
                onClick={applyFilters}
              >
                <TrophyIcon className="size-3.5" />
                Filtrar
              </Button>
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}
