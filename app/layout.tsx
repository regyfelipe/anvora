import { Geist, Geist_Mono, Nunito_Sans, Noto_Sans } from "next/font/google"
import "./globals.css"
import { ThemeProvider } from "@/components/theme-provider"
import { TooltipProvider } from "@/components/ui/tooltip"
import { Toaster } from "@/components/ui/sonner"
import { cn } from "@/lib/utils";
import { FontSizeProvider } from "@/components/providers/font-size-provider"

const notoSansHeading = Noto_Sans({subsets:['latin'],variable:'--font-heading'});
const nunitoSans = Nunito_Sans({subsets:['latin'],variable:'--font-sans'})

const fontMono = Geist_Mono({
  subsets: ["latin"],
  variable: "--font-mono",
})

export default async function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode
}>) {
  return (
    <html
      lang="en"
      suppressHydrationWarning
      className={cn("antialiased", fontMono.variable, "font-sans", nunitoSans.variable, notoSansHeading.variable)}
    >
      <body>
        <ThemeProvider>
          <TooltipProvider>
            <FontSizeProvider>
              {children}
            </FontSizeProvider>
          </TooltipProvider>
          <Toaster />
        </ThemeProvider>
      </body>
    </html>
  )
}
