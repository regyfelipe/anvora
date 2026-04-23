export interface FlashcardDeck {
  id: string
  subject: string
  totalCards: number
  toReview: number
  newCards: number
  lastStudied?: string
  color: string
}

export const MOCK_DECKS: FlashcardDeck[] = [
  {
    id: "deck-1",
    subject: "Direito Constitucional",
    totalCards: 150,
    toReview: 12,
    newCards: 5,
    lastStudied: "2026-04-20",
    color: "bg-blue-500",
  },
  {
    id: "deck-2",
    subject: "Direito Penal",
    totalCards: 85,
    toReview: 45,
    newCards: 0,
    lastStudied: "2026-04-21",
    color: "bg-red-500",
  },
  {
    id: "deck-3",
    subject: "Processo Penal",
    totalCards: 120,
    toReview: 0,
    newCards: 20,
    lastStudied: "2026-04-18",
    color: "bg-orange-500",
  },
  {
    id: "deck-4",
    subject: "Língua Portuguesa",
    totalCards: 200,
    toReview: 8,
    newCards: 15,
    lastStudied: "2026-04-22",
    color: "bg-emerald-500",
  }
]
