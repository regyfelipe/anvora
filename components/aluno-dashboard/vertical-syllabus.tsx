"use client"

import * as React from "react"
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from "@/components/ui/table"
import { Progress } from "@/components/ui/progress"
import { Badge } from "@/components/ui/badge"
import { Button } from "@/components/ui/button"
import { Checkbox } from "@/components/ui/checkbox"
import { Edit2Icon, ChevronDownIcon } from "lucide-react"
import { cn } from "@/lib/utils"

interface Topic {
  id: string
  name: string
  correct: number
  total: number
  pct: number
  lastStudy?: string
}

interface Subject {
  name: string
  pct: number
  total: number
  topics: Topic[]
}

interface VerticalSyllabusProps {
  subjects?: Subject[]
}

export function VerticalSyllabus({ subjects = [] }: VerticalSyllabusProps) {
  const totalTopics = subjects.reduce((acc, s) => acc + s.topics.length, 0)
  const completedTopics = subjects.reduce((acc, s) => acc + s.topics.filter(t => t.total > 0).length, 0)
  const overallPct = totalTopics > 0 ? Math.round((completedTopics / totalTopics) * 100) : 0

  return (
    <div className="space-y-8 pb-20">
      {/* Overall Progress */}
      <div className="bg-card border-none shadow-sm rounded-3xl p-6 space-y-4">
        <div className="flex items-center justify-between">
          <div className="space-y-1">
            <h4 className="text-[10px] font-black uppercase tracking-widest text-muted-foreground">Progresso no Edital</h4>
            <p className="text-xs text-muted-foreground font-medium">{completedTopics} de {totalTopics} tópicos estudados</p>
          </div>
          <span className="text-4xl font-black italic text-foreground/80">{overallPct}%</span>
        </div>
        <Progress value={overallPct} className="h-2 rounded-full bg-muted/50" />
      </div>

      {subjects.map((subject) => (
        <div key={subject.name} className="bg-card border-none shadow-sm rounded-3xl overflow-hidden mb-6">
          <div className="p-4 border-b flex items-center justify-between bg-muted/5">
            <h3 className="text-sm font-bold uppercase tracking-tight text-foreground/70 flex items-center gap-2 italic">
              <div className="w-1 h-4 bg-primary rounded-full" />
              {subject.name}
            </h3>
            <div className="flex items-center gap-4">
              <div className="flex items-center gap-2">
                <span className="text-[10px] font-bold text-muted-foreground uppercase">Média: {subject.pct}%</span>
                <Progress value={subject.pct} className="w-20 h-1.5" />
              </div>
              <Button variant="ghost" size="sm" className="size-8 rounded-full p-0"><ChevronDownIcon className="size-4" /></Button>
            </div>
          </div>
          
          <div className="overflow-x-auto">
            <Table className="w-full border-collapse">
              <TableHeader>
                <TableRow className="hover:bg-transparent border-muted/30">
                  <TableHead className="text-[10px] font-black uppercase py-4">Tópicos da Grade Oficial</TableHead>
                  <TableHead className="text-center w-16 px-1"><span className="text-primary font-bold">✓</span></TableHead>
                  <TableHead className="text-center w-16 px-1 text-[10px] font-black uppercase">Total</TableHead>
                  <TableHead className="text-center w-24 px-1 text-[10px] font-black uppercase">% Acerto</TableHead>
                  <TableHead className="text-center w-32 px-1 text-[10px] font-black uppercase">Último Estudo</TableHead>
                  <TableHead className="text-center w-28 px-1 text-[10px] font-black uppercase">Ação</TableHead>
                </TableRow>
              </TableHeader>
              <TableBody>
                {subject.topics.map((item) => (
                  <TableRow key={item.id} className={cn("hover:bg-muted/10 border-muted/20", item.total > 0 && "bg-primary/5")}>
                    <TableCell className="py-5 align-top">
                      <div className="flex items-start gap-4">
                        <Checkbox checked={item.total > 0} className="mt-1 shrink-0 rounded-md border-primary/20 data-[state=checked]:bg-primary data-[state=checked]:border-primary" />
                        <div className={cn(
                          "text-[12px] font-bold leading-relaxed tracking-tight break-words whitespace-normal", 
                          item.total > 0 ? "text-primary/90" : "text-muted-foreground/90"
                        )}>
                          {item.name}
                        </div>
                      </div>
                    </TableCell>
                    <TableCell className="text-center w-16 px-1 align-top pt-6 text-xs font-bold text-primary">{item.correct || 0}</TableCell>
                    <TableCell className="text-center w-16 px-1 align-top pt-6 text-xs font-bold text-muted-foreground">{item.total || 0}</TableCell>
                    <TableCell className="text-center w-24 px-1 align-top pt-6">
                      <Badge className={cn(
                        "rounded-lg px-2 py-0.5 text-[10px] font-black",
                        item.pct >= 80 ? "bg-primary hover:bg-primary" : 
                        item.pct > 0 ? "bg-amber-500 hover:bg-amber-500" : "bg-muted text-muted-foreground"
                      )}>
                        {item.total === 0 ? "-" : `${item.pct}%`}
                      </Badge>
                    </TableCell>
                    <TableCell className="text-center w-32 px-1 align-top pt-6 text-[11px] font-medium text-muted-foreground">{item.lastStudy || "-"}</TableCell>
                    <TableCell className="text-center w-28 px-1 align-top pt-5">
                      <Button variant="ghost" size="sm" className="h-7 text-[10px] font-bold gap-1.5 px-3 rounded-lg hover:bg-muted/50 border border-border/20">
                        Praticar
                      </Button>
                    </TableCell>
                  </TableRow>
                ))}
              </TableBody>
            </Table>
          </div>
        </div>
      ))}
    </div>
  )
}
