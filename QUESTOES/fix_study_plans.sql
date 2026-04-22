-- Add config column and delete policy
alter table public.study_plans add column if not exists config jsonb default '{}'::jsonb;

drop policy if exists "Users can delete their own study plan" on public.study_plans;
create policy "Users can delete their own study plan" 
  on public.study_plans for delete 
  using (auth.uid() = user_id);
