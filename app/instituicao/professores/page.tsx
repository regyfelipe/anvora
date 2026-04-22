import { AppSidebar } from "@/components/app-sidebar"
import { SiteHeader } from "@/components/site-header"
import { SidebarInset } from "@/components/ui/sidebar"
import { createClient } from "@/lib/supabase/server"
import { redirect } from "next/navigation"
import { Button } from "@/components/ui/button"
import { UserIcon } from "lucide-react"
import { CreateProfessorDialog } from "@/components/institution/create-professor-dialog"
import { ProfessorActions } from "@/components/institution/professor-actions"

export default async function ProfessoresPage() {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  if (!user) redirect("/login")

  // Buscar a instituição do usuário logado
  const { data: membership } = await supabase
    .from('memberships')
    .select('institution_id')
    .eq('user_id', user.id)
    .eq('role', 'institution')
    .single()

  if (!membership) redirect("/aluno/dashboard")

  // 1. Buscar os vínculos dos professores (excluindo a própria instituição admin)
  const { data: memberships, error: mError } = await supabase
    .from('memberships')
    .select('user_id')
    .eq('institution_id', membership.institution_id)
    .neq('user_id', user.id) // Não mostrar o próprio admin na lista

  if (mError) console.error("Erro ao buscar vínculos:", mError)

  // 2. Buscar os perfis desses usuários para obter os nomes
  const userIds = memberships?.map(m => m.user_id) || []
  const { data: profiles } = await supabase
    .from('user_profiles')
    .select('user_id, full_name')
    .in('user_id', userIds)

  // 3. Mapear os dados para facilitar o uso na UI
  const professores = memberships?.map(m => ({
    ...m,
    user_profiles: profiles?.find(p => p.user_id === m.user_id)
  })) || []

  return (
    <>
      <AppSidebar variant="inset" />
      <SidebarInset>
        <SiteHeader />
        
        <div className="flex flex-1 flex-col bg-muted/10">
          <div className="p-8 space-y-8 max-w-7xl mx-auto w-full">
            <div className="flex flex-col md:flex-row md:items-end justify-between gap-4 border-b-4 border-primary pb-6">
              <div>
                <h1 className="text-5xl font-black italic uppercase tracking-tighter leading-none">
                  Corpo <span className="text-primary">Docente</span>
                </h1>
                <p className="text-muted-foreground mt-2 font-medium italic text-sm">
                  Gerenciamento de acesso e produtividade dos mestres da instituição.
                </p>
              </div>
              <CreateProfessorDialog />
            </div>

            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
              {professores?.map((prof: any) => (
                <div key={prof.user_id} className="group relative overflow-hidden rounded-2xl bg-card border-2 border-border/50 hover:border-primary transition-all duration-300 shadow-xl hover:shadow-primary/10">
                  <ProfessorActions 
                    professorId={prof.user_id} 
                    professorName={prof.user_profiles?.full_name || "Professor"} 
                    professorEmail={prof.user_profiles?.email || ""} 
                  />
                  <div className="absolute top-0 left-0 w-2 h-full bg-primary" />
                  <div className="p-6">
                    <div className="flex items-center gap-4 mb-6">
                      <div className="size-16 rounded-xl bg-primary/10 flex items-center justify-center border-2 border-primary/20 group-hover:bg-primary group-hover:scale-110 transition-all duration-500">
                        <UserIcon className="size-8 text-primary group-hover:text-white transition-colors" />
                      </div>
                      <div className="overflow-hidden">
                        <h3 className="text-xl font-black italic uppercase leading-none truncate pr-2">
                          {prof.user_profiles?.full_name || "Professor"}
                        </h3>
                        <p className="text-[10px] text-muted-foreground font-mono mt-1 truncate pr-2">
                          {prof.user_profiles?.email || "Sem e-mail cadastrado"}
                        </p>
                        <div className="flex items-center gap-1.5 mt-2 text-primary">
                          <div className="size-1.5 rounded-full bg-primary animate-pulse" />
                          <span className="text-[10px] font-bold uppercase tracking-widest">Acesso Ativo</span>
                        </div>
                      </div>
                    </div>

                    <div className="space-y-3 pt-4 border-t border-border/50">
                      <div className="flex items-center justify-between text-xs">
                        <span className="text-muted-foreground font-bold uppercase italic">Questões Publicadas</span>
                        <span className="font-black italic">--</span>
                      </div>
                      <div className="flex items-center justify-between text-xs">
                        <span className="text-muted-foreground font-bold uppercase italic">Última Atividade</span>
                        <span className="font-black italic">Hoje</span>
                      </div>
                    </div>

                    <Button variant="outline" className="w-full mt-6 font-bold italic uppercase text-[10px] tracking-widest border-2">
                      Ver Desempenho
                    </Button>
                  </div>
                </div>
              ))}

              {professores?.length === 0 && (
                <div className="col-span-full py-32 text-center border-4 border-dashed border-muted rounded-3xl bg-muted/5">
                  <UserIcon className="size-20 text-muted-foreground mx-auto mb-6 opacity-10" />
                  <h3 className="text-3xl font-black italic uppercase text-muted-foreground/40">Nenhum mestre vinculado</h3>
                  <p className="text-muted-foreground font-medium italic mt-2">Clique em "Novo Professor" para iniciar a expansão da sua equipe.</p>
                </div>
              )}
            </div>
          </div>
        </div>
      </SidebarInset>
    </>
  )
}
