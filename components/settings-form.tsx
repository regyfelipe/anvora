"use client"

import * as React from "react"
import { Button } from "@/components/ui/button"
import { Input } from "@/components/ui/input"
import { Label } from "@/components/ui/label"
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select"
import { updateUserProfile } from "@/app/actions/questions"
import { toast } from "sonner"
import { Loader2Icon, SaveIcon } from "lucide-react"

import { useRouter } from "next/navigation"

export function SettingsForm({ initialData }: { initialData: any }) {
  const router = useRouter()
  const [loading, setLoading] = React.useState(false)
  const [career, setCareer] = React.useState(initialData?.career_name || "Policial Federal")
  const [target, setTarget] = React.useState(initialData?.daily_questions_target || 40)

  async function onSubmit(e: React.FormEvent) {
    e.preventDefault()
    setLoading(true)
    
    const res = await updateUserProfile({
      careerName: career,
      dailyQuestionsTarget: Number(target)
    })

    if (res.success) {
      toast.success("Perfil atualizado com sucesso!")
      // Redireciona para o dashboard para ver as mudanças
      router.push('/aluno/dashboard')
      router.refresh()
    } else {
      toast.error("Erro ao atualizar: " + res.error)
    }
    setLoading(false)
  }

  return (
    <form onSubmit={onSubmit} className="space-y-6">
      <div className="space-y-2">
        <Label htmlFor="career">Qual carreira você está focando?</Label>
        <Select value={career} onValueChange={setCareer}>
          <SelectTrigger id="career" className="h-11 rounded-xl">
            <SelectValue placeholder="Selecione sua carreira" />
          </SelectTrigger>
          <SelectContent>
            <SelectItem value="Policial Federal">Policial Federal</SelectItem>
            <SelectItem value="Policial Rodoviário Federal">Policial Rodoviário Federal</SelectItem>
            <SelectItem value="Polícia Civil">Polícia Civil</SelectItem>
            <SelectItem value="Polícia Militar">Polícia Militar</SelectItem>
            <SelectItem value="Polícia Penal">Polícia Penal</SelectItem>
            <SelectItem value="Magistratura">Magistratura</SelectItem>
            <SelectItem value="Ministério Público">Ministério Público</SelectItem>
          </SelectContent>
        </Select>
      </div>

      <div className="space-y-2">
        <Label htmlFor="target">Meta diária de questões</Label>
        <div className="flex items-center gap-4">
          <Input 
            id="target" 
            type="number" 
            value={target} 
            onChange={(e) => setTarget(Number(e.target.value))}
            className="h-11 rounded-xl text-lg font-bold w-32"
          />
          <span className="text-muted-foreground font-medium">questões por dia</span>
        </div>
        <p className="text-[11px] text-muted-foreground">Recomendamos entre 20 e 60 questões para manter a constância.</p>
      </div>

      <Separator className="my-6" />

      <Button type="submit" disabled={loading} className="w-full h-11 rounded-xl gap-2 font-bold shadow-lg shadow-primary/20">
        {loading ? <Loader2Icon className="size-4 animate-spin" /> : <SaveIcon className="size-4" />}
        Salvar Alterações
      </Button>
    </form>
  )
}

import { Separator } from "@/components/ui/separator"
