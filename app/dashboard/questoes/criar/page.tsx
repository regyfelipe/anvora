import { AppSidebar } from "@/components/app-sidebar"
import { SiteHeader } from "@/components/site-header"
import { SidebarInset } from "@/components/ui/sidebar"
import { QuestionWizard } from "@/components/professor/wizard/question-wizard"
import { ArrowLeftIcon } from "lucide-react"
import Link from "next/link"

export default function CreateQuestionPage() {
  return (
    <>
      <AppSidebar variant="inset" />
      <SidebarInset>
        <SiteHeader />
        <div className="flex flex-1 flex-col bg-muted/10">
          <div className="mx-auto w-full max-w-[1800px]  px-6 pt-10 pb-20">
            
            <div className="mb-12 flex items-center justify-between">
              <div>
                <Link 
                  href="/dashboard/questoes" 
                  className="flex items-center gap-2 text-sm text-muted-foreground hover:text-primary mb-4 transition-colors group font-black uppercase italic tracking-widest"
                >
                  <ArrowLeftIcon className="size-4 group-hover:-translate-x-1 transition-transform" />
                  Voltar para o Feed
                </Link>
                <h1 className="text-5xl font-black italic uppercase tracking-tighter">Módulo Editorial</h1>
                <p className="text-muted-foreground mt-2 font-medium">Crie questões de alto nível com fundamentação pedagógica completa.</p>
              </div>
            </div>

            <div className="bg-card border border-border/50 rounded-[40px] p-8 lg:p-12 shadow-2xl shadow-primary/5">
              <QuestionWizard />
            </div>

          </div>
        </div>
      </SidebarInset>
    </>
  )
}
