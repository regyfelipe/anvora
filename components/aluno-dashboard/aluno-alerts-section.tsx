import * as React from "react"
import { AlertTriangleIcon, InfoIcon, AlertCircleIcon } from "lucide-react"
import { cn } from "@/lib/utils"
import { StudentDashboardData } from "@/lib/mocks/aluno-dashboard"

interface Props {
  alerts: StudentDashboardData["alerts"];
}

export function AlunoAlertsSection({ alerts }: Props) {
  if (!alerts || alerts.length === 0) return null;

  return (
    <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
      {alerts.map((alert) => {
        const isDanger = alert.type === "danger"
        const isWarning = alert.type === "warning"
        const isInfo = alert.type === "info"
        
        let Icon = InfoIcon
        if (isDanger) Icon = AlertCircleIcon
        if (isWarning) Icon = AlertTriangleIcon

        return (
          <div 
            key={alert.id} 
            className={cn(
              "p-4 rounded-2xl border flex gap-3 shadow-sm",
              isDanger && "bg-red-500/5 border-red-500/20 text-red-900 dark:text-red-200",
              isWarning && "bg-amber-500/5 border-amber-500/20 text-amber-900 dark:text-amber-200",
              isInfo && "bg-blue-500/5 border-blue-500/20 text-blue-900 dark:text-blue-200"
            )}
          >
            <Icon className={cn(
              "size-5 shrink-0 mt-0.5",
              isDanger && "text-red-500",
              isWarning && "text-amber-500",
              isInfo && "text-blue-500"
            )} />
            <div className="flex flex-col gap-1">
              <h4 className="text-[14px] font-bold leading-none">{alert.title}</h4>
              <p className={cn(
                "text-[13px] leading-snug",
                isDanger && "text-red-700/80 dark:text-red-300/80",
                isWarning && "text-amber-700/80 dark:text-amber-300/80",
                isInfo && "text-blue-700/80 dark:text-blue-300/80"
              )}>
                {alert.description}
              </p>
            </div>
          </div>
        )
      })}
    </div>
  )
}
