"use client"

import * as React from "react"
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card"
import { Button } from "@/components/ui/button"
import { 
  AlertTriangleIcon, 
  Trash2Icon,
  ShieldAlertIcon
} from "lucide-react"
import {
  AlertDialog,
  AlertDialogAction,
  AlertDialogCancel,
  AlertDialogContent,
  AlertDialogDescription,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogTitle,
  AlertDialogTrigger,
} from "@/components/ui/alert-dialog"

interface ProfileDangerZoneProps {
  onDeleteAccount: () => Promise<void>
}

export function ProfileDangerZone({ onDeleteAccount }: ProfileDangerZoneProps) {
  return (
    <Card className="rounded-[32px] shadow-sm border-red-500/20 bg-red-500/[0.01]">
      <CardHeader>
        <CardTitle className="text-lg flex items-center gap-2 italic uppercase font-black tracking-tight text-red-600">
          <ShieldAlertIcon className="size-5" />
          Gerenciamento Crítico
        </CardTitle>
        <CardDescription className="italic font-medium text-red-600/60">Ações irreversíveis para sua identidade e dados.</CardDescription>
      </CardHeader>
      <CardContent>
        <div className="flex flex-col sm:flex-row items-center justify-between gap-6 p-6 rounded-[24px] bg-red-500/5 border border-red-500/10">
          <div className="space-y-1 text-center sm:text-left">
            <p className="text-base font-black text-red-700 italic uppercase tracking-tight">Excluir Conta Permanentemente</p>
            <p className="text-xs text-red-600/70 italic font-medium leading-relaxed">
              Isso apagará todo seu progresso, histórico de acertos, XP e filtros salvos. Esta ação não pode ser desfeita.
            </p>
          </div>
          
          <AlertDialog>
            <AlertDialogTrigger asChild>
              <Button variant="destructive" className="rounded-xl font-black uppercase italic tracking-wider px-8 h-12 shadow-xl shadow-red-500/20 hover:scale-[1.02] active:scale-[0.98] transition-all">
                <Trash2Icon className="mr-2 size-4" />
                Excluir Conta
              </Button>
            </AlertDialogTrigger>
            <AlertDialogContent className="rounded-[40px] border-none shadow-2xl p-8">
              <AlertDialogHeader className="space-y-4">
                <div className="size-16 bg-red-500/10 rounded-3xl flex items-center justify-center text-red-600 mb-2">
                  <AlertTriangleIcon className="size-8" />
                </div>
                <AlertDialogTitle className="text-3xl font-black italic uppercase tracking-tighter text-red-600 leading-none">
                  Tem certeza absoluta?
                </AlertDialogTitle>
                <AlertDialogDescription className="text-base font-medium italic text-muted-foreground leading-relaxed">
                  Esta ação é irreversível. Seu progresso de estudos, ranking global e conquistas serão eliminados permanentemente dos nossos servidores.
                </AlertDialogDescription>
              </AlertDialogHeader>
              <AlertDialogFooter className="gap-4 mt-8">
                <AlertDialogCancel className="h-14 rounded-[20px] font-black italic uppercase border-none bg-muted hover:bg-muted/80 px-8">
                  Manter minha conta
                </AlertDialogCancel>
                <AlertDialogAction 
                  onClick={onDeleteAccount}
                  className="h-14 rounded-[20px] font-black italic uppercase bg-red-600 hover:bg-red-700 shadow-xl shadow-red-500/20 px-8"
                >
                  Confirmar Exclusão
                </AlertDialogAction>
              </AlertDialogFooter>
            </AlertDialogContent>
          </AlertDialog>
        </div>
      </CardContent>
    </Card>
  )
}
