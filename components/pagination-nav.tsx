"use client"

import { Button } from "@/components/ui/button"
import { ChevronLeftIcon, ChevronRightIcon } from "lucide-react"
import { useRouter, usePathname, useSearchParams } from "next/navigation"

interface PaginationNavProps {
  total: number
  pageSize: number
  currentPage: number
}

export function PaginationNav({ total, pageSize, currentPage }: PaginationNavProps) {
  const router = useRouter()
  const pathname = usePathname()
  const searchParams = useSearchParams()

  const totalPages = Math.ceil(total / pageSize)
  
  if (totalPages <= 1) return null

  const goToPage = (page: number) => {
    const params = new URLSearchParams(searchParams)
    params.set("page", page.toString())
    router.push(`${pathname}?${params.toString()}`)
    window.scrollTo({ top: 0, behavior: 'smooth' })
  }

  return (
    <div className="flex items-center justify-center gap-2 mt-12 pb-10">
      <Button
        variant="outline"
        size="sm"
        disabled={currentPage === 0}
        onClick={() => goToPage(currentPage - 1)}
        className="gap-1 font-semibold"
      >
        <ChevronLeftIcon className="size-4" />
        Anterior
      </Button>

      <div className="flex items-center gap-1 mx-4">
        {Array.from({ length: totalPages }).map((_, i) => {
          // Show only a few pages if too many
          if (totalPages > 7) {
            if (i > 0 && i < totalPages - 1 && Math.abs(i - currentPage) > 2) {
              if (i === 1 || i === totalPages - 2) return <span key={i}>...</span>
              return null
            }
          }

          return (
            <Button
              key={i}
              variant={currentPage === i ? "default" : "ghost"}
              size="sm"
              onClick={() => goToPage(i)}
              className={currentPage === i ? "pointer-events-none" : ""}
            >
              {i + 1}
            </Button>
          )
        })}
      </div>

      <Button
        variant="outline"
        size="sm"
        disabled={currentPage >= totalPages - 1}
        onClick={() => goToPage(currentPage + 1)}
        className="gap-1 font-semibold"
      >
        Próxima
        <ChevronRightIcon className="size-4" />
      </Button>
    </div>
  )
}
