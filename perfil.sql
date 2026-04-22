-- Tabela de perfis de usuário para armazenar preferências e metas
create table if not exists public.user_profiles (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null unique references auth.users(id) on delete cascade,
  
  full_name text,
  career_name text default 'Policial Federal',
  
  -- Metas Diárias
  daily_questions_target integer default 40,
  daily_flashcards_target integer default 50,
  daily_study_hours_target decimal default 4.0,
  
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

-- Habilitar RLS
alter table public.user_profiles enable row level security;

create policy "Users can view their own profile"
  on public.user_profiles for select
  using (auth.uid() = user_id);

create policy "Users can update their own profile"
  on public.user_profiles for update
  using (auth.uid() = user_id);

create policy "Users can insert their own profile"
  on public.user_profiles for insert
  with check (auth.uid() = user_id);

-- Trigger para atualizar o updated_at
create or replace function public.handle_updated_at()
returns trigger as $$
begin
  new.updated_at = now();
  return new;
end;
$$ language plpgsql;

create trigger tr_user_profiles_updated_at
  before update on public.user_profiles
  for each row
  execute function public.handle_updated_at();
