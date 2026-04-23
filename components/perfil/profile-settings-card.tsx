"use client"

import * as React from "react"
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card"
import { Label } from "@/components/ui/label"
import { Slider } from "@/components/ui/slider"
import { Separator } from "@/components/ui/separator"
import { ThemeToggle } from "@/components/theme-toggle"
import { TypeIcon, PaletteIcon } from "lucide-react"

export function ProfileSettingsCard() {
  return (
    <Card className="rounded-[32px] shadow-sm border-muted/20">
      <CardHeader>
        <CardTitle className="text-lg flex items-center gap-2 italic uppercase font-black tracking-tight">
          <PaletteIcon className="size-5 text-primary" />
          Interface e Acessibilidade
        </CardTitle>
        <CardDescription className="italic font-medium text-muted-foreground">Personalize sua experiência visual.</CardDescription>
      </CardHeader>
      <CardContent className="space-y-6">
        <div className="flex items-center justify-between p-4 rounded-2xl bg-muted/30 border border-transparent hover:border-primary/10 transition-all">
          <div className="space-y-0.5">
            <Label className="text-sm font-bold">Modo de Exibição</Label>
            <p className="text-xs text-muted-foreground italic">Alternar entre temas do sistema.</p>
          </div>
          <ThemeToggle />
        </div>

        <div className="space-y-4 pt-2">
          <div className="flex justify-between items-center">
            <Label className="text-xs font-black uppercase tracking-widest text-muted-foreground flex items-center gap-2">
              <TypeIcon className="size-3" />
              Tamanho da Fonte
            </Label>
          </div>
          <Slider defaultValue={[16]} max={24} min={12} step={1} className="py-4" />
          <p className="text-[10px] text-muted-foreground italic">Ajuste o texto das questões para melhor leitura.</p>
        </div>

        <Separator className="bg-muted/30" />
        
        <div className="p-4 rounded-2xl bg-primary/5 border border-primary/10">
          <p className="text-xs font-bold text-primary italic uppercase tracking-wider mb-1">Dica de Ergonomia</p>
          <p className="text-[11px] text-muted-foreground leading-relaxed italic font-medium">
            O Modo Escuro ajuda a reduzir o cansaço visual em sessões longas de estudo.
          </p>
        </div>
      </CardContent>
    </Card>
  )
}
