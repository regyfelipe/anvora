import { redirect } from "next/navigation"

export default function Page() {
  // Redireciona automaticamente para o dashboard principal
  // Em produção, aqui seria a sua Landing Page
  redirect("/dashboard")
}
