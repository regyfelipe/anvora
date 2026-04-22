"use client"

import React, { createContext, useContext, useState, useEffect } from "react"

interface FontSizeContextType {
  fontSize: number
  increaseFontSize: () => void
  decreaseFontSize: () => void
  resetFontSize: () => void
}

const FontSizeContext = createContext<FontSizeContextType | undefined>(undefined)

export function FontSizeProvider({ children }: { children: React.ReactNode }) {
  const [fontSize, setFontSize] = useState(16) // base font size in px

  // Load from local storage
  useEffect(() => {
    const saved = localStorage.getItem("anvora-font-size")
    if (saved) {
      setFontSize(parseInt(saved, 10))
    }
  }, [])

  const increaseFontSize = () => {
    setFontSize((prev) => {
      const next = Math.min(prev + 2, 24)
      localStorage.setItem("anvora-font-size", next.toString())
      return next
    })
  }

  const decreaseFontSize = () => {
    setFontSize((prev) => {
      const next = Math.max(prev - 2, 12)
      localStorage.setItem("anvora-font-size", next.toString())
      return next
    })
  }

  const resetFontSize = () => {
    setFontSize(16)
    localStorage.setItem("anvora-font-size", "16")
  }

  return (
    <FontSizeContext.Provider value={{ fontSize, increaseFontSize, decreaseFontSize, resetFontSize }}>
      <div style={{ "--base-font-size": `${fontSize}px` } as React.CSSProperties}>
        {children}
      </div>
    </FontSizeContext.Provider>
  )
}

export function useFontSize() {
  const context = useContext(FontSizeContext)
  if (context === undefined) {
    throw new Error("useFontSize must be used within a FontSizeProvider")
  }
  return context
}
