"use client"

import * as React from "react"
import { Button } from "@/components/ui/button"
import { Input } from "@/components/ui/input"
import { Label } from "@/components/ui/label"
import { Textarea } from "@/components/ui/textarea"
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select"
import { RadioGroup, RadioGroupItem } from "@/components/ui/radio-group"
import { Separator } from "@/components/ui/separator"
import { toast } from "sonner"
import { Loader2Icon, SaveIcon, PlusIcon, Trash2Icon } from "lucide-react"
import { cn } from "@/lib/utils"

export function CreateQuestionForm() {
  const [loading, setLoading] = React.useState(false)
  const [options, setOptions] = React.useState([
    { key: 'a', text: '', isCorrect: true },
    { key: 'b', text: '', isCorrect: false },
    { key: 'c', text: '', isCorrect: false },
    { key: 'd', text: '', isCorrect: false },
  ])

  const addOption = () => {
    if (options.length >= 5) return
    const nextKey = ['a', 'b', 'c', 'd', 'e'][options.length]
    setOptions([...options, { key: nextKey, text: '', isCorrect: false }])
  }

  const removeOption = (idx: number) => {
    if (options.length <= 2) return
    const newOptions = options.filter((_, i) => i !== idx).map((opt, i) => ({
      ...opt,
      key: ['a', 'b', 'c', 'd', 'e'][i]
    }))
    setOptions(newOptions)
  }

  async function onSubmit(e: React.FormEvent) {
    e.preventDefault()
    setLoading(true)
    // Simulação de salvamento
    await new Promise(r => setTimeout(r, 1500))
    toast.success("Questão enviada para revisão!")
    setLoading(false)
  }

  return (
    <form onSubmit={onSubmit} className="space-y-8">
      {/* Context Metadata */}
      <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
        <div className="space-y-2">
          <Label>Carreira Alvo</Label>
          <Input placeholder="Ex: Policial, Jurídica, Administrativa..." className="h-11 rounded-xl" />
        </div>
        <div className="space-y-2">
          <Label>Ano de Criação</Label>
          <Input type="number" defaultValue={new Date().getFullYear()} className="h-11 rounded-xl" />
        </div>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
        <div className="space-y-2">
          <Label>Disciplina</Label>
          <Select defaultValue="constitucional">
            <SelectTrigger className="h-11 rounded-xl">
              <SelectValue />
            </SelectTrigger>
            <SelectContent>
              <SelectItem value="constitucional">Direito Constitucional</SelectItem>
              <SelectItem value="administrativo">Direito Administrativo</SelectItem>
              <SelectItem value="portugues">Português</SelectItem>
              <SelectItem value="rlm">Raciocínio Lógico</SelectItem>
              <SelectItem value="informatica">Informática</SelectItem>
            </SelectContent>
          </Select>
        </div>
        <div className="space-y-2">
          <Label>Dificuldade</Label>
          <Select defaultValue="medium">
            <SelectTrigger className="h-11 rounded-xl">
              <SelectValue />
            </SelectTrigger>
            <SelectContent>
              <SelectItem value="easy">Fácil</SelectItem>
              <SelectItem value="medium">Média</SelectItem>
              <SelectItem value="hard">Difícil</SelectItem>
            </SelectContent>
          </Select>
        </div>
      </div>

      <div className="grid grid-cols-1 gap-6">
        <div className="space-y-2">
          <Label>Assunto / Tópico</Label>
          <Input placeholder="Ex: Direitos Fundamentais" className="h-11 rounded-xl" />
        </div>
      </div>

      <Separator />

      {/* Stem */}
      <div className="space-y-2">
        <Label className="text-lg font-bold">Enunciado da Questão</Label>
        <Textarea 
          placeholder="Digite aqui o texto da questão..." 
          className="min-h-[200px] rounded-2xl p-6 text-base leading-relaxed"
        />
      </div>

      <Separator />

      {/* Options */}
      <div className="space-y-4">
        <div className="flex items-center justify-between">
          <Label className="text-lg font-bold">Alternativas</Label>
          <Button 
            type="button" 
            variant="outline" 
            size="sm" 
            onClick={addOption}
            disabled={options.length >= 5}
            className="rounded-lg gap-2 font-bold border-dashed"
          >
            <PlusIcon className="size-3.5" />
            Adicionar Opção
          </Button>
        </div>

        <RadioGroup defaultValue="a" className="space-y-3">
          {options.map((opt, idx) => (
            <div key={opt.key} className="flex items-start gap-4 p-4 rounded-2xl border bg-muted/30 group transition-all">
              <RadioGroupItem value={opt.key} id={`opt-${opt.key}`} className="mt-1.5" />
              <div className="flex-1 space-y-2">
                <div className="flex items-center justify-between">
                  <Label htmlFor={`opt-${opt.key}`} className="font-black uppercase italic text-sm">Alternativa {opt.key}</Label>
                  <Button 
                    type="button" 
                    variant="ghost" 
                    size="icon" 
                    onClick={() => removeOption(idx)}
                    className="size-8 rounded-lg text-muted-foreground hover:text-destructive opacity-0 group-hover:opacity-100 transition-opacity"
                  >
                    <Trash2Icon className="size-4" />
                  </Button>
                </div>
                <Textarea 
                  placeholder="Texto da alternativa..." 
                  className="min-h-[80px] rounded-xl bg-background border-none shadow-none focus-visible:ring-1"
                />
              </div>
            </div>
          ))}
        </RadioGroup>
      </div>

      <Separator />

      {/* Explanation */}
      <div className="space-y-2">
        <Label className="text-lg font-bold italic uppercase">Explicação do Professor</Label>
        <Textarea 
          placeholder="Explique por que a alternativa correta está certa e as outras estão erradas..." 
          className="min-h-[150px] rounded-2xl p-6 text-base"
        />
      </div>

      <div className="pt-6">
        <Button 
          type="submit" 
          disabled={loading} 
          className="w-full h-14 rounded-2xl gap-3 text-lg font-black italic uppercase shadow-xl shadow-primary/20"
        >
          {loading ? <Loader2Icon className="size-5 animate-spin" /> : <SaveIcon className="size-5" />}
          Publicar Questão no Banco
        </Button>
        <p className="text-center text-[11px] text-muted-foreground mt-4 uppercase font-bold tracking-widest">
          Sua questão passará por uma revisão pedagógica antes de ser liberada.
        </p>
      </div>
    </form>
  )
}
