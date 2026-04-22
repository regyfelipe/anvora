"use client"

import * as React from "react"
import { useTheme } from "next-themes"
import { SunIcon, MoonIcon, MonitorIcon } from "lucide-react"
import { Button } from "@/components/ui/button"
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu"
import { cn } from "@/lib/utils"

export function ThemeToggle() {
  const { theme, setTheme } = useTheme()
  const [mounted, setMounted] = React.useState(false)

  React.useEffect(() => {
    setMounted(true)
  }, [])

  if (!mounted) {
    return <div className="size-9" />
  }

  return (
    <DropdownMenu>
      <DropdownMenuTrigger asChild>
        <Button
          variant="ghost"
          size="icon"
          className="size-9 rounded-xl text-muted-foreground hover:text-foreground hover:bg-muted transition-colors"
        >
          <SunIcon className="size-4 rotate-0 scale-100 transition-all dark:-rotate-90 dark:scale-0" />
          <MoonIcon className="absolute size-4 rotate-90 scale-0 transition-all dark:rotate-0 dark:scale-100" />
          <span className="sr-only">Alternar tema</span>
        </Button>
      </DropdownMenuTrigger>
      <DropdownMenuContent align="end" className="w-36 rounded-xl">
        <DropdownMenuItem
          onClick={() => setTheme("light")}
          className={cn("gap-2.5 rounded-lg cursor-pointer", theme === "light" && "bg-accent font-medium")}
        >
          <SunIcon className="size-4 text-muted-foreground" />
          Claro
        </DropdownMenuItem>
        <DropdownMenuItem
          onClick={() => setTheme("dark")}
          className={cn("gap-2.5 rounded-lg cursor-pointer", theme === "dark" && "bg-accent font-medium")}
        >
          <MoonIcon className="size-4 text-muted-foreground" />
          Escuro
        </DropdownMenuItem>
        <DropdownMenuItem
          onClick={() => setTheme("system")}
          className={cn("gap-2.5 rounded-lg cursor-pointer", theme === "system" && "bg-accent font-medium")}
        >
          <MonitorIcon className="size-4 text-muted-foreground" />
          Sistema
        </DropdownMenuItem>
      </DropdownMenuContent>
    </DropdownMenu>
  )
}
