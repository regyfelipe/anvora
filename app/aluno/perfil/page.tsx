"use client"

import * as React from "react"
import { AppSidebar } from "@/components/app-sidebar"
import { SiteHeader } from "@/components/site-header"
import { SidebarInset } from "@/components/ui/sidebar"
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card"
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar"
import { Button } from "@/components/ui/button"
import { Input } from "@/components/ui/input"
import { Label } from "@/components/ui/label"
import { Separator } from "@/components/ui/separator"
import { Slider } from "@/components/ui/slider"
import { ThemeToggle } from "@/components/theme-toggle"
import { getUserProfile, updateUserProfile } from "@/app/actions/questions"
import { getStudentPerformance } from "@/app/actions/performance"
import { logoutAction } from "@/app/actions/auth"
import { useRouter } from "next/navigation"
import { 
  UserIcon, 
  TargetIcon, 
  FlameIcon, 
  TrophyIcon, 
  LogOutIcon, 
  Settings2Icon,
  TypeIcon,
  BriefcaseIcon
} from "lucide-react"
import { toast } from "sonner"

export default function PerfilPage() {
  const router = useRouter()
  const [profile, setProfile] = React.useState<any>(null)
  const [performance, setPerformance] = React.useState<any>(null)
  const [loading, setLoading] = React.useState(true)
  const [saving, setSaving] = React.useState(false)

  // Estados do formulário
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

  const handleSave = async () => {
    setSaving(true)
    const res = await updateUserProfile({
      careerName,
      dailyQuestionsTarget: dailyTarget
    })
    
    if (res.success) {
      toast.success("Perfil atualizado com sucesso!")
    } else {
      toast.error("Erro ao atualizar perfil")
    }
    setSaving(false)
  }

  const handleLogout = async () => {
    await logoutAction()
    router.push("/login")
  }

  if (loading) {
    return (
      <>
        <AppSidebar variant="inset" />
        <SidebarInset>
          <SiteHeader />
          <div className="flex items-center justify-center min-h-[60vh]">
            <div className="animate-pulse flex flex-col items-center gap-4">
              <div className="size-20 bg-muted rounded-full" />
              <div className="h-4 w-32 bg-muted rounded" />
            </div>
          </div>
        </SidebarInset>
      </>
    )
  }

  return (
    <>
      <AppSidebar variant="inset" />
      <SidebarInset>
        <SiteHeader />

        <div className="flex flex-1 flex-col bg-muted/10">
          <div className="mx-auto w-full max-w-4xl px-4 pt-8 pb-32 space-y-8">
            
            {/* ── Header do Perfil ── */}
            <div className="relative flex flex-col items-center sm:items-start sm:flex-row gap-6 p-6 bg-background rounded-3xl border shadow-sm">
              <Avatar className="size-24 sm:size-32 rounded-2xl border-4 border-background shadow-xl grayscale hover:grayscale-0 transition-all duration-500">
                <AvatarImage src={`https://ui-avatars.com/api/?name=${encodeURIComponent(profile?.full_name || 'U')}&background=random`} />
                <AvatarFallback>CN</AvatarFallback>
              </Avatar>
              <div className="flex-1 text-center sm:text-left space-y-2">
                <h1 className="text-3xl font-black italic uppercase tracking-tighter text-foreground">
                  {profile?.full_name}
                </h1>
                <div className="flex flex-wrap items-center justify-center sm:justify-start gap-2">
                  <span className="px-3 py-1 bg-primary/10 text-primary text-xs font-bold uppercase tracking-widest rounded-full">
                    Aluno Premium
                  </span>
                  <span className="flex items-center gap-1 text-muted-foreground text-sm font-medium">
                    <BriefcaseIcon className="size-3.5" />
                    {profile?.career_name || "Carreira não definida"}
                  </span>
                </div>
              </div>
              <Button variant="outline" size="sm" onClick={handleLogout} className="sm:absolute sm:top-6 sm:right-6 text-destructive hover:text-destructive hover:bg-destructive/10">
                <LogOutIcon className="mr-2 size-4" />
                Sair
              </Button>
            </div>

            {/* ── Stats Rápidos ── */}
            <div className="grid grid-cols-2 md:grid-cols-3 gap-4">
              <Card className="rounded-2xl border-none shadow-sm bg-blue-500/5 overflow-hidden group">
                <CardContent className="p-5">
                  <div className="flex items-center justify-between mb-2">
                    <TargetIcon className="size-5 text-blue-500" />
                    <span className="text-[10px] font-bold uppercase text-blue-500/60">Taxa</span>
                  </div>
                  <p className="text-2xl font-black text-blue-600 italic">{performance?.accuracyRate || 0}%</p>
                  <p className="text-[10px] text-blue-600/60 font-bold uppercase mt-1">Acertos Totais</p>
                </CardContent>
              </Card>
              
              <Card className="rounded-2xl border-none shadow-sm bg-orange-500/5 overflow-hidden group">
                <CardContent className="p-5">
                  <div className="flex items-center justify-between mb-2">
                    <FlameIcon className="size-5 text-orange-500" />
                    <span className="text-[10px] font-bold uppercase text-orange-500/60">Frequência</span>
                  </div>
                  <p className="text-2xl font-black text-orange-600 italic">{performance?.daysStudied || 0} Dias</p>
                  <p className="text-[10px] text-orange-600/60 font-bold uppercase mt-1">Estudados</p>
                </CardContent>
              </Card>

              <Card className="col-span-2 md:col-span-1 rounded-2xl border-none shadow-sm bg-violet-500/5 overflow-hidden group">
                <CardContent className="p-5">
                  <div className="flex items-center justify-between mb-2">
                    <TrophyIcon className="size-5 text-violet-500" />
                    <span className="text-[10px] font-bold uppercase text-violet-500/60">Histórico</span>
                  </div>
                  <p className="text-2xl font-black text-violet-600 italic">{performance?.totalQuestions || 0}</p>
                  <p className="text-[10px] text-violet-600/60 font-bold uppercase mt-1">Questões Resolvidas</p>
                </CardContent>
              </Card>
            </div>

            <div className="grid gap-8 md:grid-cols-2">
              {/* ── Configurações de Estudo ── */}
              <Card className="rounded-3xl shadow-sm border-muted/20">
                <CardHeader>
                  <CardTitle className="text-lg flex items-center gap-2 italic uppercase font-black tracking-tight">
                    <Settings2Icon className="size-5 text-primary" />
                    Preferências de Estudo
                  </CardTitle>
                  <CardDescription className="italic font-medium">Ajuste seu foco e metas diárias.</CardDescription>
                </CardHeader>
                <CardContent className="space-y-6">
                  <div className="space-y-2">
                    <Label className="text-xs font-bold uppercase tracking-widest text-muted-foreground">Sua Carreira Foco</Label>
                    <Input 
                      value={careerName} 
                      onChange={(e) => setCareerName(e.target.value)}
                      placeholder="Ex: Polícia Penal do Ceará"
                      className="rounded-xl bg-muted/30 border-none font-medium"
                    />
                  </div>

                  <div className="space-y-4 pt-2">
                    <div className="flex justify-between items-center">
                      <Label className="text-xs font-bold uppercase tracking-widest text-muted-foreground">Meta Diária: {dailyTarget} Questões</Label>
                    </div>
                    <Slider 
                      value={[dailyTarget]} 
                      onValueChange={(v) => setDailyTarget(v[0])}
                      max={200} 
                      step={5}
                      className="py-4"
                    />
                    <p className="text-[10px] text-muted-foreground italic">Recomendamos pelo menos 40 questões por dia para evolução constante.</p>
                  </div>

                  <Button onClick={handleSave} disabled={saving} className="w-full rounded-xl font-bold uppercase italic tracking-wider">
                    {saving ? "Salvando..." : "Salvar Alterações"}
                  </Button>
                </CardContent>
              </Card>

              {/* ── Configurações de Interface ── */}
              <Card className="rounded-3xl shadow-sm border-muted/20">
                <CardHeader>
                  <CardTitle className="text-lg flex items-center gap-2 italic uppercase font-black tracking-tight">
                    <TypeIcon className="size-5 text-primary" />
                    Interface e Acessibilidade
                  </CardTitle>
                  <CardDescription className="italic font-medium">Personalize sua experiência visual.</CardDescription>
                </CardHeader>
                <CardContent className="space-y-6">
                  <div className="flex items-center justify-between p-4 rounded-2xl bg-muted/30">
                    <div className="space-y-0.5">
                      <Label className="text-sm font-bold">Modo Escuro / Claro</Label>
                      <p className="text-xs text-muted-foreground italic">Alternar entre temas do sistema.</p>
                    </div>
                    <ThemeToggle />
                  </div>

                  <div className="space-y-4 pt-2">
                    <div className="flex justify-between items-center">
                      <Label className="text-xs font-bold uppercase tracking-widest text-muted-foreground">Tamanho da Fonte</Label>
                    </div>
                    {/* Aqui poderíamos integrar com o FontSizeProvider se necessário, por enquanto simulamos a opção */}
                    <Slider defaultValue={[16]} max={24} min={12} step={1} className="py-4" />
                    <p className="text-[10px] text-muted-foreground italic">Ajuste o tamanho do texto das questões para melhor leitura.</p>
                  </div>

                  <Separator className="bg-muted/30" />
                  
                  <div className="p-4 rounded-2xl bg-primary/5 border border-primary/10">
                    <p className="text-xs font-bold text-primary italic uppercase tracking-wider mb-1">Dica Premium</p>
                    <p className="text-[11px] text-muted-foreground leading-relaxed">
                      Utilize o tema escuro (Dark Mode) para reduzir o cansaço visual durante longas sessões de estudo noturno.
                    </p>
                  </div>
                </CardContent>
              </Card>
            </div>

          </div>
        </div>
      </SidebarInset>
    </>
  )
}
