"use client"

import * as React from "react"
import { AppSidebar } from "@/components/app-sidebar"
import { SiteHeader } from "@/components/site-header"
import { SidebarInset } from "@/components/ui/sidebar"
import { getUserProfile, updateUserProfile } from "@/app/actions/questions"
import { getStudentPerformance } from "@/app/actions/performance"
import { deleteAccountAction } from "@/app/actions/auth"
import { useRouter } from "next/navigation"
import { toast } from "sonner"

// Novos Componentes Premium
import { ProfileHeaderPremium } from "@/components/perfil/profile-header-premium"
import { ProfileStatsGrid } from "@/components/perfil/profile-stats-grid"
import { ProfileInsightsCard } from "@/components/perfil/profile-insights-card"
import { ProfileStrategyCard } from "@/components/perfil/profile-strategy-card"
import { ProfileActivityHistory } from "@/components/perfil/profile-activity-history"
import { ProfileDangerZone } from "@/components/perfil/profile-danger-zone"

export default function PerfilPage() {
  const router = useRouter()
  const [profile, setProfile] = React.useState<any>(null)
  const [performance, setPerformance] = React.useState<any>(null)
  const [loading, setLoading] = React.useState(true)
  const [saving, setSaving] = React.useState(false)

  // Estados da Estratégia
  const [careerName, setCareerName] = React.useState("")
  const [dailyTarget, setDailyTarget] = React.useState(40)

  React.useEffect(() => {
    async function loadData() {
      const [prof, perf] = await Promise.all([
        getUserProfile(),
        getStudentPerformance()
      ])
      
      if (prof) {
        setProfile(prof)
        setCareerName(prof.career_name || "")
        setDailyTarget(prof.daily_questions_target || 40)
      }
      if (perf) {
        setPerformance(perf)
      }
      setLoading(false)
    }
    loadData()
  }, [])

  const handleSaveStrategy = async () => {
    setSaving(true)
    const res = await updateUserProfile({
      careerName,
      dailyQuestionsTarget: dailyTarget
    })
    
    if (res.success) {
      toast.success("Estratégia aplicada com sucesso!")
    } else {
      toast.error("Erro ao aplicar estratégia")
    }
    setSaving(false)
  }

  const handleDeleteAccount = async () => {
    const res = await deleteAccountAction()
    if (res.success) {
      toast.success("Sua conta foi excluída permanentemente.")
      router.push("/login")
    } else {
      toast.error("Erro ao excluir conta: " + res.error)
    }
  }

  if (loading) {
    return (
      <div className="flex flex-col min-h-screen">
        <AppSidebar variant="inset" />
        <SidebarInset>
          <SiteHeader />
          <div className="flex flex-1 items-center justify-center bg-muted/10">
            <div className="animate-pulse flex flex-col items-center gap-6">
              <div className="size-24 bg-muted rounded-[32px]" />
              <div className="h-6 w-48 bg-muted rounded-full" />
              <div className="h-4 w-32 bg-muted rounded-full opacity-50" />
            </div>
          </div>
        </SidebarInset>
      </div>
    )
  }

  return (
    <>
      <AppSidebar variant="inset" />
      <SidebarInset>
        <SiteHeader />

       <div className="flex flex-1 flex-col bg-muted/10">
          <div className="mx-auto w-full max-w-7xl px-4 pt-8 pb-32 space-y-10">
            
            {/* Header com Status Premium */}
            <ProfileHeaderPremium 
              profile={profile} 
              premium={performance?.premium || { xp: 0, level: 1, levelProgress: 0, ranking: 0, streak: 0 }} 
            />

            {/* Grid de Performance e Insights */}
            <div className="grid gap-6 md:grid-cols-3">
              <div className="md:col-span-2 space-y-6">
                <ProfileStatsGrid 
                  performance={performance} 
                  premium={performance?.premium || { worstSubject: "N/A", bestSubject: "N/A" }} 
                />
                <ProfileActivityHistory 
                  activities={performance?.recent || []} 
                />
              </div>

              <div className="space-y-6">
                <ProfileInsightsCard 
                  insights={performance?.premium?.insights || []} 
                />
                <ProfileStrategyCard 
                  careerName={careerName}
                  setCareerName={setCareerName}
                  dailyTarget={dailyTarget}
                  setDailyTarget={setDailyTarget}
                  onSave={handleSaveStrategy}
                  saving={saving}
                />
              </div>
            </div>

            {/* Danger Zone */}
            <ProfileDangerZone onDeleteAccount={handleDeleteAccount} />
            
          </div>
        </div>
      </SidebarInset>
    </>
  )
}
