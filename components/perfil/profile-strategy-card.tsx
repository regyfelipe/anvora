"use client"

import * as React from "react"
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card"
import { Button } from "@/components/ui/button"
import { Input } from "@/components/ui/input"
import { Label } from "@/components/ui/label"
import { Slider } from "@/components/ui/slider"
import { 
  TargetIcon, 
  ShieldCheckIcon,
  RocketIcon
} from "lucide-react"

interface ProfileStrategyCardProps {
  careerName: string
  setCareerName: (val: string) => void
  dailyTarget: number
  setDailyTarget: (val: number) => void
  onSave: () => void
  saving: boolean
}

export function ProfileStrategyCard({
  careerName,
  setCareerName,
  dailyTarget,
  setDailyTarget,
  onSave,
  saving
}: ProfileStrategyCardProps) {
  return (
    <Card className="rounded-[32px] shadow-sm border-muted/20 overflow-hidden">
      <CardHeader className="bg-muted/30 pb-6">
        <div className="flex items-center justify-between">
          <div className="space-y-1">
            <CardTitle className="text-xl flex items-center gap-2 italic uppercase font-black tracking-tight">
              <RocketIcon className="size-5 text-primary" />
              Modo Estratégico
            </CardTitle>
            <CardDescription className="italic font-medium">Configure seu foco e intensidade de estudo.</CardDescription>
          </div>
          <div className="size-12 bg-primary/10 rounded-2xl flex items-center justify-center text-primary">
            <TargetIcon className="size-6" />
          </div>
        </div>
      </CardHeader>
      <CardContent className="space-y-8 pt-8">
        <div className="space-y-3">
          <div className="flex items-center justify-between">
            <Label className="text-xs font-black uppercase tracking-widest text-muted-foreground">Carreira Alvo</Label>
          </div>
          <Input 
            value={careerName} 
            onChange={(e) => setCareerName(e.target.value)}
            placeholder="Ex: Polícia Penal do Ceará"
            className="h-12 rounded-2xl bg-muted/30 border-none font-bold text-lg"
          />
        </div>

        <div className="space-y-6">
          <div className="flex justify-between items-end">
            <div className="space-y-1">
              <Label className="text-xs font-black uppercase tracking-widest text-muted-foreground">Intensidade Diária</Label>
              <p className="text-lg font-black italic text-primary leading-none">{dailyTarget} Questões</p>
            </div>
          </div>
          
          <div className="px-1">
            <Slider 
              value={[dailyTarget]} 
              onValueChange={(v) => setDailyTarget(v[0])}
              max={200} 
              step={5}
            />
          </div>
          
          <div className="p-4 rounded-2xl bg-primary/5 border border-primary/10 flex items-start gap-3">
            <ShieldCheckIcon className="size-4 text-primary shrink-0 mt-0.5" />
            <p className="text-[11px] text-muted-foreground leading-relaxed italic font-medium">
              Sua estratégia atual requer foco diário.
            </p>
          </div>
        </div>

        <Button 
          onClick={onSave} 
          disabled={saving} 
          className="w-full h-14 rounded-2xl font-black uppercase italic tracking-wider text-base"
        >
          {saving ? "Atualizando..." : "Aplicar Estratégia"}
        </Button>
      </CardContent>
    </Card>
  )
}
