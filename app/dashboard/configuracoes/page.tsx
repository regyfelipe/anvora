import { AppSidebar } from "@/components/app-sidebar"
import { SiteHeader } from "@/components/site-header"
import { SidebarInset } from "@/components/ui/sidebar"
import { getUserProfile } from "@/app/actions/questions"
import { SettingsForm } from "@/components/settings-form"
import { SettingsIcon } from "lucide-react"

export default async function SettingsPage() {
  const profile = await getUserProfile()

  return (
    <>
      <AppSidebar variant="inset" />
      <SidebarInset>
        <SiteHeader />
        <div className="flex flex-1 flex-col bg-muted/10">
          <div className="mx-auto w-full max-w-2xl px-4 pt-12 pb-20">
            <div className="mb-8">
              <h1 className="text-3xl font-bold tracking-tight flex items-center gap-2">
                <SettingsIcon className="size-8 text-muted-foreground" />
                Configurações do Perfil
              </h1>
              <p className="text-muted-foreground mt-2">
                Personalize sua carreira e suas metas de estudo diárias.
              </p>
            </div>

            <div className="bg-card border rounded-2xl p-8 shadow-sm">
              <SettingsForm initialData={profile} />
            </div>
          </div>
        </div>
      </SidebarInset>
    </>
  )
}
