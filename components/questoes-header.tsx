"use client"

import * as React from "react"
import { useTheme } from "next-themes"
import {
  MoonIcon,
  SunIcon,
  PrinterIcon,
  Settings2Icon,
  AArrowUpIcon,
  AArrowDownIcon,
} from "lucide-react"
import { Button } from "@/components/ui/button"
import { Separator } from "@/components/ui/separator"
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select"
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/components/ui/tooltip"
import { useRouter, usePathname, useSearchParams } from "next/navigation"

import { cn } from "@/lib/utils"
import { useFontSize } from "@/components/providers/font-size-provider"

import { PlusIcon, UserCheckIcon, FolderPlusIcon } from "lucide-react"

export function QuestoesHeader({ count, role = "student" }: { count?: number; role?: string }) {
  const isTeacher = role === "teacher"
  const router = useRouter()
  const pathname = usePathname()
  const searchParams = useSearchParams()
  
  const { theme, setTheme } = useTheme()
  const { increaseFontSize, decreaseFontSize } = useFontSize()
  const [mounted, setMounted] = React.useState(false)

  React.useEffect(() => setMounted(true), [])

  const isDark = theme === "dark"

  return (
    <div className="flex flex-col sm:flex-row sm:items-center gap-3 px-1 py-4 mb-4 border-b border-border/40">
      <div className="flex items-center justify-between w-full sm:w-auto gap-1.5">
        {/* Left icon actions */}
        <div className="flex items-center gap-0.5">
          <Tooltip>
            <TooltipTrigger asChild>
              <Button
                variant="ghost"
                size="icon"
                onClick={() => setTheme(isDark ? "light" : "dark")}
                className="size-9 rounded-xl text-muted-foreground hover:text-foreground"
              >
                {mounted && isDark
                  ? <SunIcon className="size-4" />
                  : <MoonIcon className="size-4" />}
              </Button>
            </TooltipTrigger>
            <TooltipContent>
              {isDark ? "Modo claro" : "Modo escuro"}
            </TooltipContent>
          </Tooltip>

          <Tooltip>
            <TooltipTrigger asChild>
              <Button
                variant="ghost"
                size="icon"
                onClick={() => typeof window !== 'undefined' && window.print()}
                className="size-9 rounded-xl text-muted-foreground hover:text-foreground"
              >
                <PrinterIcon className="size-4" />
              </Button>
            </TooltipTrigger>
            <TooltipContent>Imprimir questões</TooltipContent>
          </Tooltip>

          <Tooltip>
            <TooltipTrigger asChild className="hidden sm:inline-flex">
              <Button
                variant="ghost"
                size="icon"
                className="size-9 rounded-xl text-muted-foreground hover:text-foreground"
              >
                <Settings2Icon className="size-4" />
              </Button>
            </TooltipTrigger>
            <TooltipContent>Configurações</TooltipContent>
          </Tooltip>
        </div>

        <Separator orientation="vertical" className="h-5 mx-1" />

        {/* Font size */}
        <div className="flex items-center gap-0.5">
          <Tooltip>
            <TooltipTrigger asChild>
              <Button
                variant="ghost"
                size="icon"
                onClick={increaseFontSize}
                className="size-9 rounded-xl text-muted-foreground hover:text-foreground"
              >
                <AArrowUpIcon className="size-4" />
              </Button>
            </TooltipTrigger>
            <TooltipContent>Aumentar fonte</TooltipContent>
          </Tooltip>

          <Tooltip>
            <TooltipTrigger asChild>
              <Button
                variant="ghost"
                size="icon"
                onClick={decreaseFontSize}
                className="size-9 rounded-xl text-muted-foreground hover:text-foreground"
              >
                <AArrowDownIcon className="size-4" />
              </Button>
            </TooltipTrigger>
            <TooltipContent>Diminuir fonte</TooltipContent>
          </Tooltip>
        </div>

        {/* Mobile results count */}
        <div className="sm:hidden flex-1 flex justify-end px-2">
          <span className="text-[11px] text-muted-foreground font-bold uppercase tracking-tight">
            {count ?? 0} QUESTÕES
          </span>
        </div>
      </div>

      <Separator orientation="vertical" className="h-5 mx-1 hidden sm:block" />

      {/* Pagination + Sort */}
      <div className="flex items-center gap-3 w-full sm:w-auto overflow-x-auto pb-2 sm:pb-0 scrollbar-none">
        <div className="flex items-center gap-1.5 shrink-0">
          <span className="text-[13px] text-muted-foreground font-medium whitespace-nowrap hidden lg:inline">Por página:</span>
          <Select 
            defaultValue={searchParams.get("pageSize") || "10"}
            onValueChange={(val) => {
              const params = new URLSearchParams(searchParams)
              params.set("pageSize", val)
              params.set("page", "0") // Reset to first page
              router.push(`${pathname}?${params.toString()}`)
            }}
          >
            <SelectTrigger className="h-8 w-16 rounded-lg text-[13px] font-medium border-border/60 bg-background shadow-none shrink-0">
              <SelectValue />
            </SelectTrigger>
            <SelectContent>
              <SelectItem value="5">5</SelectItem>
              <SelectItem value="10">10</SelectItem>
              <SelectItem value="20">20</SelectItem>
              <SelectItem value="50">50</SelectItem>
            </SelectContent>
          </Select>
        </div>

        <div className="flex items-center gap-1.5 shrink-0">
          <span className="text-[13px] text-muted-foreground font-medium whitespace-nowrap hidden lg:inline">Ordenar por:</span>
          <Select defaultValue="relevancia">
            <SelectTrigger className="h-8 w-32 sm:w-36 rounded-lg text-[13px] font-medium border-border/60 bg-background shadow-none shrink-0">
              <SelectValue />
            </SelectTrigger>
            <SelectContent>
              <SelectItem value="relevancia">Relevância</SelectItem>
              <SelectItem value="recente">Mais recente</SelectItem>
              <SelectItem value="antiga">Mais antiga</SelectItem>
              <SelectItem value="dificuldade">Dificuldade</SelectItem>
            </SelectContent>
          </Select>
        </div>

        {/* Professor Actions (Mobile) */}
        {isTeacher && (
          <div className="flex sm:hidden items-center gap-1.5 ml-auto">
            <Button
              variant="default"
              size="sm"
              onClick={() => router.push('/dashboard/questoes/criar')}
              className="h-8 rounded-lg font-bold px-3 shadow-md bg-primary hover:bg-primary/90 shrink-0"
            >
              <PlusIcon className="size-3.5" />
            </Button>
          </div>
        )}
      </div>

      {/* Desktop Features */}
      {isTeacher && (
        <div className="hidden sm:flex items-center gap-1.5 ml-1">
          <Separator orientation="vertical" className="h-5 mx-1" />
          <Tooltip>
            <TooltipTrigger asChild>
              <Button
                variant="default"
                size="sm"
                onClick={() => router.push('/dashboard/questoes/criar')}
                className="h-8 rounded-lg gap-1.5 font-bold px-3 shadow-md bg-primary hover:bg-primary/90"
              >
                <PlusIcon className="size-3.5" />
                <span className="hidden md:inline">Criar Questão</span>
              </Button>
            </TooltipTrigger>
            <TooltipContent>Inserir nova questão no banco</TooltipContent>
          </Tooltip>

          <Tooltip>
            <TooltipTrigger asChild>
              <Button
                variant="outline"
                size="sm"
                onClick={() => {
                  const params = new URLSearchParams(searchParams)
                  params.set("filter", "mine")
                  router.push(`${pathname}?${params.toString()}`)
                }}
                className={cn(
                  "h-8 rounded-lg gap-1.5 font-bold px-3 border-border/60",
                  searchParams.get("filter") === "mine" && "bg-primary/5 border-primary text-primary"
                )}
              >
                <UserCheckIcon className="size-3.5" />
                <span className="hidden md:inline">Minhas Questões</span>
              </Button>
            </TooltipTrigger>
            <TooltipContent>Ver questões criadas por você</TooltipContent>
          </Tooltip>

          <Tooltip>
            <TooltipTrigger asChild>
              <Button
                variant="ghost"
                size="icon"
                className="size-8 rounded-lg text-muted-foreground hover:text-foreground"
              >
                <FolderPlusIcon className="size-4" />
              </Button>
            </TooltipTrigger>
            <TooltipContent>Organizar em Turmas/Pastas</TooltipContent>
          </Tooltip>
        </div>
      )}

      {/* Results Count (Desktop) */}
      <div className="hidden sm:flex flex-1 justify-end px-2">
        <span className="text-[13px] text-muted-foreground font-semibold">
          {count !== undefined ? `${count} questões encontradas` : 'Buscando questões...'}
        </span>
      </div>
    </div>
  )
}
