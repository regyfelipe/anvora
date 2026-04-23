import * as React from "react"
import { AppSidebar } from "@/components/app-sidebar"
import { SiteHeader } from "@/components/site-header"
import { SidebarInset } from "@/components/ui/sidebar"
import { getStudentPerformance } from "@/app/actions/performance"
import { DesempenhoClient } from "@/components/desempenho-client"
import { BarChart2Icon } from "lucide-react"

export default async function DesempenhoPage() {
  const data = await getStudentPerformance()

  return (
    <>
      <AppSidebar variant="inset" />
      <SidebarInset>
        <SiteHeader />

        <div className="flex flex-1 flex-col bg-muted/10">
          <div className="mx-auto w-full max-w-7xl px-4 pt-8 pb-20">
            {/* ── Page Header ── */}
            <div className="flex flex-col sm:flex-row sm:items-end justify-between gap-4 mb-8">
              <div>
                <h1 className="text-3xl font-bold tracking-tight flex items-center gap-2 italic uppercase font-black">
                  <BarChart2Icon className="size-7 text-primary" />
                  Desempenho
                </h1>
                <p className="text-sm text-muted-foreground mt-1 font-medium italic">Dados reais baseados nas suas respostas.</p>
              </div>
            </div>

            {data ? (
              <DesempenhoClient data={data} />
            ) : (
              <div className="text-center py-20">
                <p>Carregando dados...</p>
              </div>
            )}
          </div>
        </div>
      </SidebarInset>
    </>
  )
}
