import { createClient } from '@/lib/supabase/server'

export async function checkDatabaseState() {
  const supabase = await createClient()
  
  const { count: syllabusCount } = await supabase
    .from('exam_syllabus')
    .select('*', { count: 'exact', head: true })

  const { count: planCount } = await supabase
    .from('study_plans')
    .select('*', { count: 'exact', head: true })

  return {
    syllabusCount,
    planCount
  }
}
