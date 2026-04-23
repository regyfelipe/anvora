import { AppSidebar } from "@/components/app-sidebar"
import { SiteHeader } from "@/components/site-header"
import { SidebarInset } from "@/components/ui/sidebar"
import { QuestionCard } from "@/components/question-card"
import { QuestionFilters as FiltersComponent } from "@/components/question-filters"
import { QuestoesHeader } from "@/components/questoes-header"
import { PaginationNav } from "@/components/pagination-nav"
import { getQuestions, type QuestionFilters } from "@/lib/services/questions"
import { createClient } from "@/lib/supabase/server"
import { FileQuestionIcon } from "lucide-react"

export default async function FeedQuestoesPage({
  searchParams,
}: {
  searchParams: Promise<{ [key: string]: string | string[] | undefined }>
}) {
  const params = await searchParams
  
  const currentPage = typeof params.page === 'string' ? parseInt(params.page, 10) : 0
  const pageSize = typeof params.pageSize === 'string' ? parseInt(params.pageSize, 10) : 10

  const filters: QuestionFilters = {
    disciplina: typeof params.disciplina === 'string' ? params.disciplina.split(',') : undefined,
    assunto: typeof params.assunto === 'string' ? params.assunto.split(',') : undefined,
    banca: typeof params.banca === 'string' ? params.banca.split(',') : undefined,
    carreira: typeof params.carreira === 'string' ? params.carreira.split(',') : undefined,
    ano: typeof params.ano === 'string' ? params.ano.split(',') : undefined,
    nivel: typeof params.nivel === 'string' ? params.nivel.split(',') : undefined,
    search: typeof params.search === 'string' ? params.search : undefined,
    filter: typeof params.filter === 'string' ? params.filter : undefined,
    sort: typeof params.sort === 'string' ? params.sort : undefined,
    page: currentPage,
    pageSize: pageSize,
  }

  const { questions, total } = await getQuestions(filters)

  // Buscar Role para o Header
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()
  const role = user?.user_metadata?.role || "student"

  return (
    <>
      <AppSidebar variant="inset" />
      <SidebarInset>
        <SiteHeader />
        <div className="flex flex-1 flex-col bg-muted/10">
          <div className="@container/main flex flex-1 flex-col gap-2 mx-auto w-full max-w-6xl pt-2 sm:pt-6">
            <div className="flex flex-col py-2 md:py-6 px-2 sm:px-4 pb-20">
              <FiltersComponent />

              <QuestoesHeader count={total} role={role} />

              <div className="flex flex-col gap-10 mt-2">
                {questions.length > 0 ? (
                  <>
                    {questions.map((q) => (
                      <QuestionCard key={q.id} data={q} />
                    ))}
                    
                    <PaginationNav 
                      total={total} 
                      pageSize={pageSize} 
                      currentPage={currentPage} 
                    />
                  </>
                ) : (
                  <div className="flex flex-col items-center justify-center py-20 text-center">
                    <div className="size-16 rounded-full bg-muted flex items-center justify-center mb-4">
                      <FileQuestionIcon className="size-8 text-muted-foreground" />
                    </div>
                    <h3 className="text-xl font-bold">Nenhuma questão encontrada</h3>
                    <p className="text-muted-foreground max-w-xs mx-auto mt-2">
                      Não há questões cadastradas no momento ou elas não correspondem aos seus filtros.
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
