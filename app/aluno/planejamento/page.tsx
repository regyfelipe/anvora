import * as React from "react"
import { AppSidebar } from "@/components/app-sidebar"
import { SiteHeader } from "@/components/site-header"
import { SidebarInset } from "@/components/ui/sidebar"
import { getPerformanceData } from "@/app/actions/questions"
import { PlanejamentoClient } from "@/components/planejamento-client"

export default async function PlanejamentoPage() {
  const data = await getPerformanceData()

  return (
    <>
      <AppSidebar variant="inset" />
      <SidebarInset>
        <SiteHeader />
        <div className="flex flex-1 flex-col bg-muted/10">
          <div className="mx-auto w-full  px-4 pt-8 pb-20">
            <PlanejamentoClient initialData={data} />
          </div>
        </div>
      </SidebarInset>
    </>
  )
}
