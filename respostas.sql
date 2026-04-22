-- Tabela para registrar as respostas dos usuários
create table if not exists public.question_answers (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  question_id uuid not null references public.questions(id) on delete cascade,
  option_id uuid not null references public.question_options(id) on delete cascade,
  is_correct boolean not null,
  
  -- Tempo que o usuário levou para responder (em segundos)
  time_spent_seconds integer,
  
  created_at timestamptz not null default now()
);

-- Índices para performance
create index if not exists idx_question_answers_user_id on public.question_answers(user_id);
create index if not exists idx_question_answers_question_id on public.question_answers(question_id);
create index if not exists idx_question_answers_created_at on public.question_answers(created_at);

-- Políticas RLS
alter table public.question_answers enable row level security;

create policy "Users can view their own answers"
  on public.question_answers for select
  using (auth.uid() = user_id);

create policy "Users can insert their own answers"
  on public.question_answers for insert
  with check (auth.uid() = user_id);
