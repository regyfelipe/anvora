import { SidebarProvider } from "@/components/ui/sidebar"
import { MobileNav } from "@/components/mobile-nav"
import { cookies } from "next/headers"

export default async function ProfessorLayout({
  children,
}: {
  children: React.ReactNode
}) {
  const cookieStore = await cookies()
  const defaultOpen = cookieStore.get("sidebar_state")?.value === "true"

  return (
    <SidebarProvider
      defaultOpen={defaultOpen}
      style={{
        "--sidebar-width": "calc(var(--spacing) * 72)",
        "--header-height": "calc(var(--spacing) * 12)",
      } as React.CSSProperties}
    >
      <div className="flex flex-col min-h-screen w-full">
        <div className="flex-1 flex w-full">
          {children}
        </div>
        <MobileNav />
      </div>
    </SidebarProvider>
  )
}
