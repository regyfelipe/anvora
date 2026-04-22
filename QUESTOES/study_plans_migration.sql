-- study_plans table to store user planning configuration
create table if not exists public.study_plans (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  hours_per_day integer default 4,
  days_per_week integer default 6,
  career_id text,
  created_at timestamptz default now(),
  updated_at timestamptz default now(),
  unique(user_id)
);

-- Enable RLS
alter table public.study_plans enable row level security;

create policy "Users can view their own study plan"
  on public.study_plans for select
  using (auth.uid() = user_id);

create policy "Users can insert their own study plan"
  on public.study_plans for insert
  with check (auth.uid() = user_id);

create policy "Users can update their own study plan"
  on public.study_plans for update
  using (auth.uid() = user_id);
