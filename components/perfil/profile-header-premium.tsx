"use client"

import * as React from "react"
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar"
import { Badge } from "@/components/ui/badge"
import { Progress } from "@/components/ui/progress"
import { 
  FlameIcon, 
  TrophyIcon, 
  TargetIcon, 
  ZapIcon,
  CrownIcon,
  BriefcaseIcon
} from "lucide-react"
import { cn } from "@/lib/utils"

interface ProfileHeaderPremiumProps {
  profile: any
  premium: {
    xp: number
    level: number
    levelProgress: number
    ranking: number
    streak: number
  }
}

export function ProfileHeaderPremium({ profile, premium }: ProfileHeaderPremiumProps) {
  return (
    <div className="relative flex flex-col md:flex-row items-center gap-8 p-8 bg-background rounded-3xl border shadow-sm group overflow-hidden">
      {/* Subtle background element */}
      <div className="absolute top-0 right-0 w-1/2 h-full bg-gradient-to-l from-primary/[0.03] to-transparent pointer-events-none" />
      
      {/* Avatar with Badge - Compact Position */}
      <div className="relative shrink-0">
        <Avatar className="size-24 sm:size-28 rounded-full border-2 border-primary/10 shadow-lg">
          <AvatarImage src={`https://ui-avatars.com/api/?name=${encodeURIComponent(profile?.full_name || 'U')}&background=random`} />
          <AvatarFallback className="text-2xl font-bold bg-muted">{profile?.full_name?.charAt(0)}</AvatarFallback>
        </Avatar>
        <div className="absolute -bottom-1 -right-1 size-7 bg-primary text-primary-foreground rounded-full flex items-center justify-center text-[10px] font-black shadow-lg border-2 border-background">
          {premium.level}
        </div>
      </div>

      {/* Main Info - Aligned Center-Left */}
      <div className="flex-1 space-y-4 z-10 text-center md:text-left">
        <div className="space-y-1">
          <div className="flex flex-wrap items-center justify-center md:justify-start gap-3">
            <h1 className="text-3xl font-bold tracking-tight text-foreground">
              {profile?.full_name}
            </h1>
            <Badge variant="secondary" className="bg-primary/10 text-primary border-none text-[10px] font-bold uppercase">
              Top {premium.ranking}%
            </Badge>
          </div>
          <p className="text-sm text-muted-foreground font-medium flex items-center justify-center md:justify-start gap-1.5">
            <BriefcaseIcon className="size-3.5 opacity-60" />
            {profile?.career_name || "Estrategista de Carreira"}
          </p>
        </div>

        {/* Level & XP - Integrated Position */}
        <div className="grid grid-cols-1 sm:grid-cols-2 gap-6 items-center max-w-2xl">
          <div className="space-y-1.5">
            <div className="flex justify-between text-[9px] font-bold uppercase tracking-widest text-muted-foreground/80">
              <span>Nível {premium.level}</span>
              <span>{premium.xp} XP</span>
            </div>
            <div className="h-1.5 w-full bg-muted rounded-full overflow-hidden">
              <div 
                className="h-full bg-primary rounded-full transition-all duration-1000"
                style={{ width: `${premium.levelProgress}%` }}
              />
            </div>
          </div>

          <div className="flex items-center justify-center md:justify-start gap-6">
            <div className="flex items-center gap-2">
              <FlameIcon className="size-4 text-orange-500" />
              <span className="text-sm font-bold">{premium.streak} Dias</span>
            </div>
            <div className="flex items-center gap-2">
              <TrophyIcon className="size-4 text-violet-500" />
              <span className="text-sm font-bold">Posição {premium.ranking}º</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}
