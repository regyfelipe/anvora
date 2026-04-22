"use client"

import * as React from "react"
import { Button } from "@/components/ui/button"
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from "@/components/ui/dialog"
import { Input } from "@/components/ui/input"
import { Label } from "@/components/ui/label"
import { PlusIcon, Loader2Icon, KeyIcon } from "lucide-react"
import { createProfessorAction } from "@/app/actions/auth"
import { toast } from "sonner"
import { Alert, AlertDescription, AlertTitle } from "@/components/ui/alert"

export function CreateProfessorDialog() {
  const [open, setOpen] = React.useState(false)
  const [loading, setLoading] = React.useState(false)
  const [credentials, setCredentials] = React.useState<{email: string, pass: string} | null>(null)

  async function handleSubmit(event: React.FormEvent<HTMLFormElement>) {
    event.preventDefault()
    setLoading(true)
    setCredentials(null)

    const formData = new FormData(event.currentTarget)
    const name = formData.get("name") as string
    const email = formData.get("email") as string

    try {
      const result = await createProfessorAction({ name, email })
      
      if (result.success) {
        toast.success("Professor cadastrado com sucesso!")
        if (result.data) {
          setCredentials({ email: result.data.email, pass: result.data.tempPassword })
        }
        // Não fechamos o modal imediatamente se quisermos mostrar a senha temporária
      } else {
        toast.error(result.error || "Erro ao cadastrar professor")
      }
    } catch (error) {
      toast.error("Ocorreu um erro inesperado")
    } finally {
      setLoading(false)
    }
  }

  return (
    <Dialog open={open} onOpenChange={(val) => {
      setOpen(val)
      if (!val) setCredentials(null) // Reseta ao fechar
    }}>
      <DialogTrigger asChild>
        <Button size="lg" className="font-black italic uppercase tracking-tighter gap-2">
          <PlusIcon className="size-5" />
          Novo Professor
        </Button>
      </DialogTrigger>
      <DialogContent className="sm:max-w-[425px]">
        <form onSubmit={handleSubmit}>
          <DialogHeader>
            <DialogTitle className="text-2xl font-black italic uppercase tracking-tight">Cadastrar Professor</DialogTitle>
            <DialogDescription>
              Insira os dados do professor. Ele será vinculado automaticamente à sua instituição.
            </DialogDescription>
          </DialogHeader>

          {!credentials ? (
            <div className="grid gap-4 py-4">
              <div className="space-y-2">
                <Label htmlFor="name">Nome Completo</Label>
                <Input id="name" name="name" placeholder="Ex: Prof. Ricardo Silva" required />
              </div>
              <div className="space-y-2">
                <Label htmlFor="email">E-mail de Acesso</Label>
                <Input id="email" name="email" type="email" placeholder="professor@suainstituicao.com" required />
              </div>
            </div>
          ) : (
            <div className="py-4">
              <Alert className="bg-green-500/10 border-green-500/20">
                <KeyIcon className="size-4 text-green-600" />
                <AlertTitle className="text-green-800 font-bold">Acesso Criado!</AlertTitle>
                <AlertDescription className="text-green-700">
                  <p className="mt-2 text-sm">Passe estas credenciais para o professor:</p>
                  <div className="mt-2 p-2 bg-white/50 rounded font-mono text-xs space-y-1">
                    <p><strong>E-mail:</strong> {credentials.email}</p>
                    <p><strong>Senha:</strong> {credentials.pass}</p>
                  </div>
                  <p className="mt-2 text-[10px] text-green-600/70">
                    * Recomende que ele troque a senha no primeiro acesso.
                  </p>
                </AlertDescription>
              </Alert>
            </div>
          )}

          <DialogFooter>
            {!credentials ? (
              <Button type="submit" disabled={loading} className="w-full font-bold">
                {loading && <Loader2Icon className="mr-2 size-4 animate-spin" />}
                Confirmar Cadastro
              </Button>
            ) : (
              <Button type="button" variant="outline" className="w-full" onClick={() => setOpen(false)}>
                Fechar e Continuar
              </Button>
            )}
          </DialogFooter>
        </form>
      </DialogContent>
    </Dialog>
  )
}
