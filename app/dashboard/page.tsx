export const dynamic = "force-dynamic"

import { AppSidebar } from "@/components/app-sidebar"
import { SiteHeader } from "@/components/site-header"
import { SidebarInset } from "@/components/ui/sidebar"
import { QuestionCard } from "@/components/question-card"
import { QuestionFilters } from "@/components/question-filters"
import { getQuestions } from "@/lib/services/questions"
import { FileQuestionIcon } from "lucide-react"

export default async function Page() {
  const { questions } = await getQuestions()

  return (
    <>
      <AppSidebar variant="inset" />
      <SidebarInset>
        <SiteHeader />
        <div className="flex flex-1 flex-col bg-muted/10">
          <div className="@container/main flex flex-1 flex-col gap-2 mx-auto w-full max-w-4xl pt-6">
            <div className="flex flex-col gap-8 py-4 md:py-6 px-4 pb-20">

              <QuestionFilters />

              {/* Cabeçalho do Feed */}
              <div className="mb-2">
                <h1 className="text-3xl font-bold font-heading">Recomendações Diárias</h1>
                <p className="text-muted-foreground text-sm mt-1">Resolva questões recomendadas para o seu plano de estudos e consolide seu conhecimento.</p>
              </div>

              {/* Lista de Questões */}
              <div className="flex flex-col gap-10">
                {questions.length > 0 ? (
                  questions.map((q) => (
                    <QuestionCard key={q.id} data={q} />
                  ))
                ) : (
                  <div className="flex flex-col items-center justify-center py-20 text-center border-2 border-dashed rounded-2xl bg-muted/5">
                    <div className="size-16 rounded-full bg-muted flex items-center justify-center mb-4">
                      <FileQuestionIcon className="size-8 text-muted-foreground" />
                    </div>
                    <h3 className="text-xl font-bold">Sem recomendações no momento</h3>
                    <p className="text-muted-foreground max-w-xs mx-auto mt-2">
                      Parece que você está em dia com seus estudos! Volte mais tarde para novas recomendações.
                    </p>
                  </div>
                )}
              </div>

            </div>
          </div>
        </div>
      </SidebarInset>
    </>
  )
}
