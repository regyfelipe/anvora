"use client"

import * as React from "react"
import Link from "next/link"
import { usePathname } from "next/navigation"
import { cn } from "@/lib/utils"
import { getNavItemsByRole } from "@/components/app-sidebar"
import { createClient } from "@/lib/supabase/client"
import { UserIcon } from "lucide-react"

export function MobileNav() {
  const pathname = usePathname()
  const [role, setRole] = React.useState("student")
  const supabase = createClient()

  React.useEffect(() => {
    async function getRole() {
      const { data: { user } } = await supabase.auth.getUser()
      if (user) {
        setRole(user.user_metadata.role || "student")
      }
    }
    getRole()
  }, [])

  const navItems = getNavItemsByRole(role)
  
  // Selecionar os 4 primeiros itens + Perfil
  const displayItems = navItems.slice(0, 4)

  return (
    <nav className="md:hidden fixed bottom-0 left-0 right-0 z-50 bg-background/80 backdrop-blur-lg border-t border-border px-4 pb-safe-area-inset-bottom">
      <ul className="flex items-center justify-around h-16">
        {displayItems.map((item) => {
          const isActive = pathname === item.url
          return (
            <li key={item.url} className="flex-1">
              <Link
                href={item.url}
                className={cn(
                  "flex flex-col items-center justify-center gap-1 transition-colors w-full",
                  isActive ? "text-primary font-bold" : "text-muted-foreground hover:text-foreground"
                )}
              >
                <div className={cn(
                  "p-1 rounded-lg transition-all",
                  isActive && "bg-primary/10 text-primary scale-110"
                )}>
                  {React.cloneElement(item.icon as React.ReactElement<{ className?: string }>, { 
                    className: "size-5" 
                  })}
                </div>
                <span className="text-[10px] truncate max-w-[60px]">{item.title}</span>
              </Link>
            </li>
          )
        })}
        
        {/* Item de Perfil Fixo */}
        <li className="flex-1">
          <Link
            href="/aluno/perfil"
            className={cn(
              "flex flex-col items-center justify-center gap-1 transition-colors w-full",
              pathname.includes('/perfil') ? "text-primary font-bold" : "text-muted-foreground hover:text-foreground"
            )}
          >
            <div className={cn(
              "p-1 rounded-lg transition-all",
              pathname.includes('/perfil') && "bg-primary/10 text-primary scale-110"
            )}>
              <UserIcon className="size-5" />
            </div>
            <span className="text-[10px]">Perfil</span>
          </Link>
        </li>
      </ul>
    </nav>
  )
}
