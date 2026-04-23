"use client"

import * as React from "react"
import { NavMain } from "@/components/nav-main"
import { NavSecondary } from "@/components/nav-secondary"
import { NavUser } from "@/components/nav-user"
import {
  Sidebar,
  SidebarContent,
  SidebarFooter,
  SidebarHeader,
  SidebarMenu,
  SidebarMenuButton,
  SidebarMenuItem,
} from "@/components/ui/sidebar"
import {
  CommandIcon,
  LayoutDashboardIcon,
  HelpCircleIcon,
  LayersIcon,
  ClipboardCheckIcon,
  BookMarkedIcon,
  CalendarDaysIcon,
  BarChart2Icon,
  SettingsIcon,
  PlusIcon,
  UserIcon,
  UsersIcon,
} from "lucide-react"
import Link from "next/link"
import { createClient } from "@/lib/supabase/client"

export const alunoNavItems = [
  {
    title: "Dashboard",
    url: "/aluno/dashboard",
    icon: <LayoutDashboardIcon />,
  },
  {
    title: "Questões",
    url: "/dashboard/questoes",
    icon: <HelpCircleIcon />,
  },
  {
    title: "Flashcards",
    url: "/aluno/flashcards",
    icon: <LayersIcon />,
  },
  {
    title: "Simulados",
    url: "/aluno/simulados",
    icon: <ClipboardCheckIcon />,
  },
  {
    title: "Caderno",
    url: "/aluno/caderno",
    icon: <BookMarkedIcon />,
  },
  {
    title: "Planejamento",
    url: "/aluno/planejamento",
    icon: <CalendarDaysIcon />,
  },
  {
    title: "Desempenho",
    url: "/aluno/desempenho",
    icon: <BarChart2Icon />,
  },
]

export function AppSidebar({ ...props }: React.ComponentProps<typeof Sidebar>) {
  const [user, setUser] = React.useState({
    name: "Carregando...",
    email: "",
    avatar: "",
    role: "student",
  })

  const supabase = createClient()

  React.useEffect(() => {
    async function getUser() {
      const { data: { user } } = await supabase.auth.getUser()
      if (user) {
        setUser({
          name: user.user_metadata.name || "Usuário",
          email: user.email || "",
          avatar: `https://ui-avatars.com/api/?name=${encodeURIComponent(user.user_metadata.name || 'U')}&background=random`,
          role: user.user_metadata.role || "student",
        })
      }
    }
    getUser()
  }, [])

  const navSecondary = [
    {
      title: "Configurações",
      url: "/dashboard/configuracoes",
      icon: <SettingsIcon />,
    },
  ]

  const getRoleTitle = () => {
    switch (user.role) {
      case "teacher": return "Menu do Professor"
      case "institution": return "Menu da Instituição"
      default: return "Menu do Aluno"
    }
  }

  const getNavItems = () => {
    if (user.role === "teacher") {
      return [
        { title: "Dashboard", url: "/professor/dashboard", icon: <LayoutDashboardIcon /> },
        { title: "Minhas Turmas", url: "/professor/turmas", icon: <CommandIcon /> },
        { title: "Gerenciar Questões", url: "/professor/questoes", icon: <HelpCircleIcon /> },
        { title: "Nova Questão", url: "/dashboard/questoes/criar", icon: <PlusIcon className="size-4" /> },
      ]
    }
    if (user.role === "institution") {
      return [
        { title: "Dashboard", url: "/instituicao/dashboard", icon: <LayoutDashboardIcon /> },
        { title: "Gerenciar Professores", url: "/instituicao/professores", icon: <UserIcon /> },
        { title: "Gerenciar Alunos", url: "/instituicao/alunos", icon: <UsersIcon /> },
        { title: "Banco de Questões", url: "/instituicao/questoes", icon: <HelpCircleIcon /> },
      ]
    }
    return alunoNavItems
  }

  return (
    <Sidebar collapsible="icon" {...props}>
      <SidebarHeader>
        <SidebarMenu>
          <SidebarMenuItem>
            <SidebarMenuButton
              asChild
              className="data-[slot=sidebar-menu-button]:p-1.5!"
            >
              <Link href={
                user.role === 'institution' ? '/instituicao/dashboard' :
                user.role === 'teacher' ? '/professor/dashboard' : 
                '/aluno/dashboard'
              }>
                <CommandIcon className="size-5!" />
                <span className="text-base font-bold tracking-tight">Quero Passar</span>
              </Link>
            </SidebarMenuButton>
          </SidebarMenuItem>
        </SidebarMenu>
      </SidebarHeader>

      <SidebarContent>
        <NavMain title={getRoleTitle()} items={getNavItems()} />
        <NavSecondary items={navSecondary} className="mt-auto" />
      </SidebarContent>

      <SidebarFooter>
        <NavUser user={user} />
      </SidebarFooter>
    </Sidebar>
  )
}
