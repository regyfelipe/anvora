Abaixo vai uma modelagem realista para a sua plataforma.

1) Tabelas
questions
create table if not exists public.questions (
  id uuid primary key default gen_random_uuid(),

  public_code text not null unique, -- ex: PPCE-DC-000001

  exam_name text,                   -- ex: POLÍCIA PENAL DO CEARÁ
  exam_slug text,                   -- ex: policia-penal-do-ceara

  subject text not null,            -- ex: DIREITO CONSTITUCIONAL
  topic text not null,              -- ex: Estado e Constituição
  subtopic text,                    -- opcional

  career text,                      -- ex: Carreiras Policiais
  institution_name text,            -- órgão/instituição da prova
  board_name text,                  -- banca
  exam_year integer,

  source_type text not null check (source_type in ('official', 'adapted', 'original')),
  difficulty text not null check (difficulty in ('easy', 'medium', 'hard')),

  stem text not null,
  correct_option_id uuid null,      -- preenchido depois que inserir as alternativas

  is_annulled boolean not null default false,
  annulled_reason text,

  has_essay_commentary boolean not null default false,
  is_active boolean not null default true,

  created_by uuid null,             -- professor autor
  workspace_id uuid null,           -- contexto/proprietário
  institution_id uuid null,         -- se for questão institucional

  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
question_options
create table if not exists public.question_options (
  id uuid primary key default gen_random_uuid(),
  question_id uuid not null references public.questions(id) on delete cascade,

  option_key text not null check (option_key in ('a','b','c','d','e')),
  letter text not null check (letter in ('A','B','C','D','E')),
  text text not null,

  sort_order integer not null,

  created_at timestamptz not null default now(),

  unique (question_id, option_key),
  unique (question_id, letter),
  unique (question_id, sort_order)
);
question_explanations
create table if not exists public.question_explanations (
  id uuid primary key default gen_random_uuid(),
  question_id uuid not null unique references public.questions(id) on delete cascade,

  summary text,
  why_correct text,
  teacher_note text,

  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
question_explanation_incorrect_items
create table if not exists public.question_explanation_incorrect_items (
  id uuid primary key default gen_random_uuid(),
  explanation_id uuid not null references public.question_explanations(id) on delete cascade,

  option_key text not null check (option_key in ('a','b','c','d','e')),
  reason text not null,

  created_at timestamptz not null default now(),

  unique (explanation_id, option_key)
);
2) Índices importantes
create index if not exists idx_questions_subject on public.questions(subject);
create index if not exists idx_questions_topic on public.questions(topic);
create index if not exists idx_questions_exam_slug on public.questions(exam_slug);
create index if not exists idx_questions_exam_year on public.questions(exam_year);
create index if not exists idx_questions_board_name on public.questions(board_name);
create index if not exists idx_questions_source_type on public.questions(source_type);
create index if not exists idx_questions_difficulty on public.questions(difficulty);
create index if not exists idx_question_options_question_id on public.question_options(question_id);
3) Insert real da questão PPCE

Como você pediu algo sobre:

POLÍCIA PENAL DO CEARÁ
DIREITO CONSTITUCIONAL
Estado e Constituição

vou te entregar um insert completo já no formato certo.

Inserir a questão
insert into public.questions (
  public_code,
  exam_name,
  exam_slug,
  subject,
  topic,
  subtopic,
  career,
  institution_name,
  board_name,
  exam_year,
  source_type,
  difficulty,
  stem,
  has_essay_commentary
)
values (
  'PPCE-DC-000001',
  'POLÍCIA PENAL DO CEARÁ',
  'policia-penal-do-ceara',
  'DIREITO CONSTITUCIONAL',
  'Estado e Constituição',
  'Conceito, elementos e classificação da Constituição',
  'Carreiras Policiais',
  'Polícia Penal do Ceará',
  'Banca Própria',
  2026,
  'original',
  'easy',
  'No estudo do Direito Constitucional, a Constituição pode ser compreendida em diferentes sentidos. Assinale a alternativa correta acerca do conceito de Constituição em seu sentido jurídico.',
  false
);
Inserir alternativas
insert into public.question_options (
  question_id,
  option_key,
  letter,
  text,
  sort_order
)
select q.id, v.option_key, v.letter, v.text, v.sort_order
from public.questions q
cross join (
  values
    ('a', 'A', 'Constituição em sentido jurídico é o conjunto de fatores reais de poder que regem uma sociedade em determinado momento histórico.', 1),
    ('b', 'B', 'Constituição em sentido jurídico é a norma fundamental do Estado, dotada de supremacia, que organiza os poderes e assegura os direitos fundamentais.', 2),
    ('c', 'C', 'Constituição em sentido jurídico corresponde apenas às normas materialmente constitucionais, ainda que não estejam no texto solene.', 3),
    ('d', 'D', 'Constituição em sentido jurídico é sinônimo de Constituição histórica, pois ambas decorrem da evolução política e social do Estado.', 4),
    ('e', 'E', 'Constituição em sentido jurídico limita-se às normas referentes à estrutura administrativa do Poder Executivo.', 5)
) as v(option_key, letter, text, sort_order)
where q.public_code = 'PPCE-DC-000001';
Marcar a alternativa correta

A correta aqui é a B.

update public.questions q
set correct_option_id = qo.id,
    updated_at = now()
from public.question_options qo
where q.public_code = 'PPCE-DC-000001'
  and qo.question_id = q.id
  and qo.option_key = 'b';
Inserir explicação estruturada
insert into public.question_explanations (
  question_id,
  summary,
  why_correct,
  teacher_note
)
select
  q.id,
  'No sentido jurídico, a Constituição é entendida como norma fundamental e suprema do Estado, fundamento de validade das demais normas do ordenamento.',
  'A alternativa B está correta porque expressa a concepção jurídica de Constituição, associada à ideia de norma superior que estrutura o Estado, organiza os poderes e protege direitos fundamentais. Essa leitura é típica do constitucionalismo moderno e da teoria jurídica da Constituição.',
  'Atenção: não confundir o sentido jurídico com o sentido sociológico de Ferdinand Lassalle, que relaciona a Constituição aos fatores reais de poder.'
from public.questions q
where q.public_code = 'PPCE-DC-000001';
Inserir por que as erradas estão erradas
insert into public.question_explanation_incorrect_items (
  explanation_id,
  option_key,
  reason
)
select
  qe.id,
  v.option_key,
  v.reason
from public.question_explanations qe
join public.questions q
  on q.id = qe.question_id
cross join (
  values
    ('a', 'A alternativa A está incorreta porque descreve o sentido sociológico de Constituição, associado a Ferdinand Lassalle, e não o sentido jurídico.'),
    ('c', 'A alternativa C está incorreta porque mistura a noção material de Constituição com o conceito jurídico estrito de norma fundamental suprema.'),
    ('d', 'A alternativa D está incorreta porque Constituição histórica e Constituição em sentido jurídico não são conceitos equivalentes.'),
    ('e', 'A alternativa E está incorreta porque a Constituição não se limita ao Poder Executivo, abrangendo a organização do Estado como um todo e a proteção de direitos fundamentais.')
) as v(option_key, reason)
where q.public_code = 'PPCE-DC-000001';
4) Consulta pronta para recuperar a questão completa
select
  q.id,
  q.public_code,
  q.exam_name,
  q.subject,
  q.topic,
  q.subtopic,
  q.career,
  q.institution_name,
  q.board_name,
  q.exam_year,
  q.source_type,
  q.difficulty,
  q.stem,
  q.correct_option_id,
  q.is_annulled,
  q.annulled_reason,
  q.has_essay_commentary,
  qe.summary,
  qe.why_correct,
  qe.teacher_note
from public.questions q
left join public.question_explanations qe
  on qe.question_id = q.id
where q.public_code = 'PPCE-DC-000001';

Para as alternativas:

select
  qo.id,
  qo.question_id,
  qo.option_key,
  qo.letter,
  qo.text,
  qo.sort_order
from public.question_options qo
join public.questions q
  on q.id = qo.question_id
where q.public_code = 'PPCE-DC-000001'
order by qo.sort_order;

Para os motivos das erradas:

select
  qei.option_key,
  qei.reason
from public.question_explanation_incorrect_items qei
join public.question_explanations qe
  on qe.id = qei.explanation_id
join public.questions q
  on q.id = qe.question_id
where q.public_code = 'PPCE-DC-000001'
order by qei.option_key;