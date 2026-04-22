-- Add missing DELETE policy for study_plans
create policy "Users can delete their own study plan"
  on public.study_plans for delete
  using (auth.uid() = user_id);
