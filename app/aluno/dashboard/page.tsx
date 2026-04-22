export const dynamic = "force-dynamic"

import { AppSidebar } from "@/components/app-sidebar"
import { SiteHeader } from "@/components/site-header"
import { SidebarInset } from "@/components/ui/sidebar"


// Components
import { AlunoDashboardHeader } from "@/components/aluno-dashboard/aluno-dashboard-header"
import { AlunoNextTaskHero } from "@/components/aluno-dashboard/aluno-next-task-hero"
import { AlunoDailyGoalCard } from "@/components/aluno-dashboard/aluno-daily-goal-card"
import { AlunoAlertsSection } from "@/components/aluno-dashboard/aluno-alerts-section"
import { AlunoQuickActions } from "@/components/aluno-dashboard/aluno-quick-actions"
import { AlunoRecentAccess } from "@/components/aluno-dashboard/aluno-recent-access"
import { AlunoWeaknessCard } from "@/components/aluno-dashboard/aluno-weakness-card"

import { getStudentDashboardData } from "@/app/actions/questions"
import { redirect } from "next/navigation"

export default async function AlunoDashboardPage() {
  const data = await getStudentDashboardData()

  if (!data) {
    redirect("/login")
  }

  return (
    <>
      <AppSidebar variant="inset" />
      <SidebarInset>
        <SiteHeader />
        
        <div className="flex flex-1 flex-col bg-muted/10">
          <div className="mx-auto w-full max-w-7xl px-4 pt-8 pb-20 space-y-10">
            
            <AlunoDashboardHeader data={data} />

            <div className="grid gap-6 lg:grid-cols-4">
              <AlunoNextTaskHero className="lg:col-span-2" data={data.nextTask} />
              <AlunoDailyGoalCard data={data.dailyGoal} careerName={data.careerName} />
              <AlunoWeaknessCard data={data.weakness} />
            </div>

            <AlunoAlertsSection alerts={data.alerts} />
            
            <AlunoQuickActions />
            
            <div>
              <AlunoRecentAccess data={data.recentAccess} />
            </div>

          </div>
        </div>
      </SidebarInset>
    </>
  )
}
