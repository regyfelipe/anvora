"use client"

import * as React from "react"
import { 
  MoreVertical, 
  Trash2, 
  Pencil, 
  KeyRound, 
  Loader2,
  ShieldAlert
} from "lucide-react"
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuTrigger,
  DropdownMenuSeparator,
} from "@/components/ui/dropdown-menu"
import { Button } from "@/components/ui/button"
import { deleteProfessorAction, resetProfessorPasswordAction } from "@/app/actions/auth"
import { toast } from "sonner"
import {
  AlertDialog,
  AlertDialogAction,
  AlertDialogCancel,
  AlertDialogContent,
  AlertDialogDescription,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogTitle,
} from "@/components/ui/alert-dialog"

interface ProfessorActionsProps {
  professorId: string
  professorName: string
  professorEmail: string
}

export function ProfessorActions({ professorId, professorName, professorEmail }: ProfessorActionsProps) {
  const [loading, setLoading] = React.useState(false)
  const [showDeleteAlert, setShowDeleteAlert] = React.useState(false)
  const [showResetModal, setShowResetModal] = React.useState(false)
  const [resetData, setResetData] = React.useState<{email: string, pass: string} | null>(null)

  async function handleDelete() {
    setLoading(true)
    try {
      const result = await deleteProfessorAction(professorId)
      if (result.success) {
        toast.success("Professor removido com sucesso")
        window.location.reload()
      } else {
        toast.error(result.error || "Erro ao remover professor")
      }
    } catch (error) {
      toast.error("Erro inesperado")
    } finally {
      setLoading(false)
      setShowDeleteAlert(false)
    }
  }

  async function handleResetPassword() {
    setLoading(true)
    try {
      const result = await resetProfessorPasswordAction(professorId)
      if (result.success && result.data) {
        setResetData({ email: result.data.email || professorEmail, pass: result.data.tempPassword })
        setShowResetModal(true)
        toast.success("Senha resetada com sucesso!")
      } else {
        toast.error(result.error || "Erro ao resetar senha")
      }
    } catch (error) {
      toast.error("Erro ao processar reset")
    } finally {
      setLoading(false)
    }
  }

  return (
    <>
      <DropdownMenu>
        <DropdownMenuTrigger asChild>
          <Button variant="ghost" size="icon" className="absolute top-4 right-4 opacity-0 group-hover:opacity-100 transition-opacity">
            <MoreVertical className="size-5" />
          </Button>
        </DropdownMenuTrigger>
        <DropdownMenuContent align="end" className="w-48 font-bold italic uppercase text-[10px] tracking-widest">
          <DropdownMenuItem className="gap-2 cursor-pointer">
            <Pencil className="size-3" />
            Editar Perfil
          </DropdownMenuItem>
          <DropdownMenuItem className="gap-2 cursor-pointer" onClick={handleResetPassword}>
            {loading ? <Loader2 className="animate-spin size-3 mr-2" /> : <KeyRound className="size-3" />}
            Resetar Senha
          </DropdownMenuItem>
          <DropdownMenuSeparator />
          <DropdownMenuItem 
            className="gap-2 cursor-pointer text-destructive focus:text-destructive"
            onClick={() => setShowDeleteAlert(true)}
          >
            <Trash2 className="size-3" />
            Deletar Professor
          </DropdownMenuItem>
        </DropdownMenuContent>
      </DropdownMenu>

      {/* Modal de Nova Senha (Reset) */}
      <AlertDialog open={showResetModal} onOpenChange={setShowResetModal}>
        <AlertDialogContent className="sm:max-w-[425px]">
          <AlertDialogHeader>
            <div className="size-12 rounded-full bg-green-500/10 flex items-center justify-center mb-4">
              <KeyRound className="size-6 text-green-600" />
            </div>
            <AlertDialogTitle className="text-2xl font-black italic uppercase tracking-tighter">Nova Senha Gerada</AlertDialogTitle>
            <AlertDialogDescription className="font-medium italic">
              A senha de <strong className="text-foreground">{professorName}</strong> foi alterada com sucesso.
            </AlertDialogDescription>
          </AlertDialogHeader>
          
          <div className="py-4">
            <div className="p-4 bg-muted rounded-xl font-mono text-xs space-y-2 border-2 border-dashed">
              <p><strong>E-mail:</strong> {resetData?.email}</p>
              <p><strong>Nova Senha:</strong> <span className="text-primary font-bold text-lg tracking-wider">{resetData?.pass}</span></p>
            </div>
            <p className="mt-4 text-[10px] text-muted-foreground uppercase font-bold italic">
              * Copie esta senha agora. Por segurança, ela não será exibida novamente.
            </p>
          </div>

          <AlertDialogFooter>
            <AlertDialogAction className="w-full font-bold italic uppercase text-[10px] tracking-widest">
              Entendido e Copiado
            </AlertDialogAction>
          </AlertDialogFooter>
        </AlertDialogContent>
      </AlertDialog>

      <AlertDialog open={showDeleteAlert} onOpenChange={setShowDeleteAlert}>
        <AlertDialogContent>
          <AlertDialogHeader>
            <div className="size-12 rounded-full bg-destructive/10 flex items-center justify-center mb-4">
              <ShieldAlert className="size-6 text-destructive" />
            </div>
            <AlertDialogTitle className="text-2xl font-black italic uppercase tracking-tighter">Confirmar Exclusão?</AlertDialogTitle>
            <AlertDialogDescription className="font-medium italic">
              Você está prestes a remover o acesso de <strong className="text-foreground">{professorName}</strong>. 
              Esta ação removerá o vínculo institucional mas não excluirá a conta global do usuário.
            </AlertDialogDescription>
          </AlertDialogHeader>
          <AlertDialogFooter>
            <AlertDialogCancel className="font-bold uppercase text-[10px] tracking-widest italic">Cancelar</AlertDialogCancel>
            <AlertDialogAction 
              onClick={(e) => {
                e.preventDefault()
                handleDelete()
              }}
              className="bg-destructive hover:bg-destructive/90 font-bold uppercase text-[10px] tracking-widest italic"
              disabled={loading}
            >
              {loading ? <Loader2 className="animate-spin size-3 mr-2" /> : "Confirmar Exclusão"}
            </AlertDialogAction>
          </AlertDialogFooter>
        </AlertDialogContent>
      </AlertDialog>
    </>
  )
}
