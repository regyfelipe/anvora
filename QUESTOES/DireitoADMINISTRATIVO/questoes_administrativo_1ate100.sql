-- =============================================================================
-- BANCO DE QUESTÕES ANVORA LAW - DIREITO ADMINISTRATIVO
-- LOTE 001-100
-- =============================================================================

-- -----------------------------------------------------------------------------
-- QUESTÃO 001: CONCEITOS INICIAIS (ESTADO, GOVERNO E ADMINISTRAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000001', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Conceitos e Elementos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O Estado é composto por três elementos indissociáveis. São eles:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Povo, território e governo soberano.', 1),
  ('b', 'B', 'Nação, exército e fronteiras.', 2),
  ('c', 'C', 'Presidente, Congresso e Tribunais.', 3),
  ('d', 'D', 'União, Estados e Municípios.', 4),
  ('e', 'E', 'Constituição, leis e decretos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000001';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000001' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Elementos do Estado.', 'O Estado Moderno exige um povo (elemento humano), um território (elemento espacial) e um governo soberano (elemento condutor).', 'Dica: Sem qualquer um desses três, não há Estado para o Direito Administrativo.' from public.questions q where q.public_code = 'PPCE-DA-000001';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Nação é conceito sociológico, não jurídico-estatal puro.'),
  ('c', 'Incorreta. Estes são os Poderes do Estado, não seus elementos constitutivos.'),
  ('d', 'Incorreta. Estes são os entes federativos (formas de organização).'),
  ('e', 'Incorreta. Estes compõem o ordenamento jurídico.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000001';

-- -----------------------------------------------------------------------------
-- QUESTÃO 002: ADMINISTRAÇÃO DIRETA E INDIRETA
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000002', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Organização Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A criação de uma Autarquia para prestar serviços de fiscalização penitenciária é um exemplo de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Descentralização administrativa.', 1),
  ('b', 'B', 'Desconcentração administrativa.', 2),
  ('c', 'C', 'Centralização administrativa.', 3),
  ('d', 'D', 'Hierarquização setorial.', 4),
  ('e', 'E', 'Privatização de serviços públicos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000002';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000002' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Descentralização vs Desconcentração.', 'Descentralização ocorre quando o Estado cria uma NOVA pessoa jurídica (ex: Autarquia) para exercer a função.', 'Dica: Des-C-entralização = Criar outra pessoa. Des-C-oncentração = Criar órgão dentro da mesma pessoa.' from public.questions q where q.public_code = 'PPCE-DA-000002';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Desconcentração é a criação de órgãos (sem personalidade própria) dentro da mesma estrutura.'),
  ('c', 'Incorreta. Centralização é quando o Estado presta o serviço por si mesmo (órgãos centrais).'),
  ('d', 'Incorreta. Termo não utilizado para definir a criação de entidades.'),
  ('e', 'Incorreta. Autarquias são entes públicos, não privados.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000002';

-- -----------------------------------------------------------------------------
-- QUESTÃO 003: PRINCÍPIOS DA ADMINISTRAÇÃO (LIMPE)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000003', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Princípios', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O princípio constitucional que veda ao agente público a promoção pessoal em publicidade de atos, programas, obras, serviços e campanhas de órgãos públicos é o princípio da:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Impessoalidade.', 1),
  ('b', 'B', 'Legalidade.', 2),
  ('c', 'C', 'Moralidade.', 3),
  ('d', 'D', 'Publicidade.', 4),
  ('e', 'E', 'Eficiência.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000003';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000003' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Princípio da Impessoalidade.', 'A proibição de promoção pessoal está prevista no Art. 37, § 1º da CF e deriva da impessoalidade.', 'Dica: O ato é do ÓRGÃO, não do AGENTE.' from public.questions q where q.public_code = 'PPCE-DA-000003';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Legalidade diz que a administração só age conforme a lei.'),
  ('c', 'Incorreta. Moralidade exige conduta ética, mas a vedação à promoção pessoal é foco específico da impessoalidade.'),
  ('d', 'Incorreta. Publicidade exige a divulgação dos atos para transparência.'),
  ('e', 'Incorreta. Eficiência busca o melhor resultado com o menor custo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000003';

-- -----------------------------------------------------------------------------
-- QUESTÃO 004: PRINCÍPIOS DA ADMINISTRAÇÃO (EFICIÊNCIA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000004', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Princípios', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Qual princípio da Administração Pública foi incluído expressamente no Art. 37 da Constituição Federal pela Emenda Constitucional nº 19/98?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Eficiência.', 1),
  ('b', 'B', 'Supremacia do Interesse Público.', 2),
  ('c', 'C', 'Continuidade dos Serviços Públicos.', 3),
  ('d', 'D', 'Autotutela.', 4),
  ('e', 'E', 'Motivação.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000004';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000004' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Princípio da Eficiência.', 'A eficiência foi o último princípio a ser positivado no "LIMPE" pela Reforma Administrativa de 98.', 'Dica: Antes ela era considerada um princípio implícito.' from public.questions q where q.public_code = 'PPCE-DA-000004';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É um princípio implícito/pedra angular, mas não consta no rol do Art. 37.'),
  ('c', 'Incorreta. É um princípio implícito.'),
  ('d', 'Incorreta. É um princípio implícito.'),
  ('e', 'Incorreta. É um princípio implícito (previsto em leis infraconstitucionais).')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000004';

-- -----------------------------------------------------------------------------
-- QUESTÃO 005: PODERES ADMINISTRATIVOS (PODER DE POLÍCIA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000005', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes Administrativos', 'Poder de Polícia', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A atividade da administração pública que limita ou disciplina direito, interesse ou liberdade, regulando a prática de ato ou a abstenção de fato, em razão de interesse público, define o:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Poder de Polícia.', 1),
  ('b', 'B', 'Poder Disciplinar.', 2),
  ('c', 'C', 'Poder Hierárquico.', 3),
  ('d', 'D', 'Poder Regulamentar.', 4),
  ('e', 'E', 'Abuso de Poder.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000005';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000005' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Poder de Polícia.', 'Conceito legal extraído do Art. 78 do Código Tributário Nacional.', 'Dica: O poder de polícia restringe bens e atividades em prol da coletividade.' from public.questions q where q.public_code = 'PPCE-DA-000005';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O poder disciplinar serve para punir infrações de servidores ou pessoas com vínculo especial.'),
  ('c', 'Incorreta. O poder hierárquico serve para escalonar órgãos e agentes.'),
  ('d', 'Incorreta. O poder regulamentar serve para explicar a lei.'),
  ('e', 'Incorreta. Abuso de poder é a atuação ilegal (vício).')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000005';

-- -----------------------------------------------------------------------------
-- QUESTÃO 006: ATOS ADMINISTRATIVOS (REQUISITOS - FF MCO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000006', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Requisitos e Elementos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São requisitos (elementos) de validade do ato administrativo:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Competência, Finalidade, Forma, Motivo e Objeto.', 1),
  ('b', 'B', 'Povo, Território e Soberania.', 2),
  ('c', 'C', 'Legalidade, Impessoalidade e Moralidade.', 3),
  ('d', 'D', 'Presunção de Legitimidade e Imperatividade.', 4),
  ('e', 'E', 'Celeridade, Economia e Eficiência.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000006';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000006' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Elementos do Ato (COM FI FOR MO OB).', 'Estes são os 5 elementos essenciais para que um ato seja válido.', 'Dica: Mnemônico clássico: COFIFORMOB.' from public.questions q where q.public_code = 'PPCE-DA-000006';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Elementos do Estado.'),
  ('c', 'Incorreta. Princípios da Administração.'),
  ('d', 'Incorreta. Atributos do ato administrativo.'),
  ('e', 'Incorreta. Princípios processuais.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000006';

-- -----------------------------------------------------------------------------
-- QUESTÃO 007: ATOS ADMINISTRATIVOS (ATRIBUTOS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000007', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Atributos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O atributo pelo qual os atos administrativos se presumem editados conforme a lei e a verdade dos fatos é a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Presunção de legitimidade e veracidade.', 1),
  ('b', 'B', 'Imperatividade.', 2),
  ('c', 'C', 'Autoexecutoriedade.', 3),
  ('d', 'D', 'Tipicidade.', 4),
  ('e', 'E', 'Motivação.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000007';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000007' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Atributos do Ato.', 'Até que se prove o contrário (juris tantum), o ato administrativo é considerado verdadeiro e legal.', 'Dica: Inverte o ônus da prova: o cidadão é quem deve provar que o ato é ilegal.' from public.questions q where q.public_code = 'PPCE-DA-000007';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Imperatividade é o poder de impor obrigações unilateralmente.'),
  ('c', 'Incorreta. Autoexecutoriedade permite a execução sem ordem judicial.'),
  ('d', 'Incorreta. Tipicidade exige que o ato esteja previsto em lei.'),
  ('e', 'Incorreta. Motivação é a exposição dos fundamentos (requisito, não atributo).')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000007';

-- -----------------------------------------------------------------------------
-- QUESTÃO 008: ATOS ADMINISTRATIVOS (REVOGAÇÃO vs ANULAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000008', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Extinção do Ato', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A retirada de um ato administrativo válido do ordenamento jurídico, por razões de conveniência e oportunidade (mérito administrativo), denomina-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Revogação.', 1),
  ('b', 'B', 'Anulação (ou invalidação).', 2),
  ('c', 'C', 'Cassação.', 3),
  ('d', 'D', 'Caducidade.', 4),
  ('e', 'E', 'Convalidação.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000008';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000008' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Revogação.', 'Revogação recai sobre atos VÁLIDOS por razões de interesse público (mérito).', 'Dica: Só a própria Administração pode revogar; o Judiciário não pode revogar atos de outros poderes por mérito.' from public.questions q where q.public_code = 'PPCE-DA-000008';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Anulação ocorre por motivo de ILEGALIDADE.'),
  ('c', 'Incorreta. Cassação ocorre quando o beneficiário descumpre condições.'),
  ('d', 'Incorreta. Caducidade ocorre por nova norma jurídica incompatível.'),
  ('e', 'Incorreta. Convalidação é o conserto de um ato viciado.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000008';

-- -----------------------------------------------------------------------------
-- QUESTÃO 009: PODERES ADMINISTRATIVOS (ABUSO DE PODER)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000009', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes Administrativos', 'Uso e Abuso do Poder', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Ocorre o vício de DESVIO DE PODER (ou desvio de finalidade) quando o agente público:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Atua fora dos limites de sua competência legal.', 1),
  ('b', 'B', 'Atua dentro de sua competência, mas busca finalidade diversa do interesse público ou da prevista na lei.', 2),
  ('c', 'C', 'Deixa de agir quando tem o dever legal de fazê-lo.', 3),
  ('d', 'D', 'Age com excesso de zelo administrativo.', 4),
  ('e', 'E', 'Cumpre ordens superiores manifestamente ilegais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000009';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000009' and q.id = qo.question_id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Desvio de Poder.', 'Desvio de poder ataca o elemento FINALIDADE do ato.', 'Dica: Exemplo clássico: remover um servidor para puni-lo (finalidade política/pessoal) em vez de interesse do serviço.' from public.questions q where q.public_code = 'PPCE-DA-000009';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Isso define o EXCESSO de poder (vício de competência).'),
  ('c', 'Incorreta. Isso define a omissão administrativa.'),
  ('d', 'Incorreta. O excesso de zelo não é vício por si só.'),
  ('e', 'Incorreta. Trata-se de dever de obediência e ilegalidade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000009';

-- -----------------------------------------------------------------------------
-- QUESTÃO 010: RESPONSABILIDADE CIVIL DO ESTADO (TEORIA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000010', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Responsabilidade civil do Estado', 'Evolução Doutrinária', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A Constituição Federal de 1988 adotou, como regra geral para a responsabilidade civil do Estado por atos comissivos de seus agentes, a teoria da:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Responsabilidade Objetiva (Teoria do Risco Administrativo).', 1),
  ('b', 'B', 'Responsabilidade Subjetiva (Teoria da Culpa).', 2),
  ('c', 'C', 'Irresponsabilidade Estatal.', 3),
  ('d', 'D', 'Responsabilidade Objetiva (Teoria do Risco Integral).', 4),
  ('e', 'E', 'Culpa Anônima (Falta do Serviço).', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000010';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000010' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Responsabilidade Civil.', 'Risco Administrativo = O Estado responde independentemente de dolo ou culpa do agente, mas admite excludentes.', 'Dica: Previsto no Art. 37, § 6º da CF/88.' from public.questions q where q.public_code = 'PPCE-DA-000010';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A regra é objetiva. A subjetiva aplica-se na ação de REGRESSO contra o agente.'),
  ('c', 'Incorreta. Fase superada (The King can do no wrong).'),
  ('d', 'Incorreta. Risco Integral é exceção (danos nucleares, ambientais, etc) e não admite excludentes.'),
  ('e', 'Incorreta. Culpa anônima aplica-se geralmente em casos de OMISSÃO genérica.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000010';

-- -----------------------------------------------------------------------------
-- QUESTÃO 011: ORGANIZAÇÃO ADMINISTRATIVA (SOCIEDADE DE ECONOMIA MISTA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000011', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Organização Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'As Sociedades de Economia Mista, entidades da Administração Indireta, possuem personalidade jurídica de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Direito Privado.', 1),
  ('b', 'B', 'Direito Público.', 2),
  ('c', 'C', 'Natureza mista (pública e privada simultaneamente).', 3),
  ('d', 'D', 'Direito Internacional.', 4),
  ('e', 'E', 'Direito Transindividual.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000011';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000011' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Personalidade Jurídica.', 'Empresas Públicas e Sociedades de Economia Mista são pessoas de Direito PRIVADO.', 'Dica: Autarquias e Fundações Públicas de Direito Público são de Direito PÚBLICO.' from public.questions q where q.public_code = 'PPCE-DA-000011';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Entidades de direito público são Autarquias e Fundações de Direito Público.'),
  ('c', 'Incorreta. Juridicamente não existe personalidade "mista".'),
  ('d', 'Incorreta. São entes nacionais.'),
  ('e', 'Incorreta. Conceito de direitos coletivos, não de personalidade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000011';

-- -----------------------------------------------------------------------------
-- QUESTÃO 012: PODERES ADMINISTRATIVOS (PODER DISCIPLINAR)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000012', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes Administrativos', 'Poder Disciplinar', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A aplicação de uma sanção administrativa a um preso que comete falta grave no sistema penitenciário decorre do:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Poder Disciplinar.', 1),
  ('b', 'B', 'Poder de Polícia.', 2),
  ('c', 'C', 'Poder Hierárquico.', 3),
  ('d', 'D', 'Poder Regulamentar.', 4),
  ('e', 'E', 'Poder Legislativo.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000012';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000012' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Poder Disciplinar.', 'O poder disciplinar atinge servidores e pessoas com VÍNCULO ESPECIAL com a administração (ex: alunos de escola pública, presos).', 'Dica: Se a sanção atinge o cidadão comum (sem vínculo), é Poder de Polícia.' from public.questions q where q.public_code = 'PPCE-DA-000012';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O poder de polícia atinge a coletividade em geral.'),
  ('c', 'Incorreta. O poder hierárquico coordena e subordina, mas a SANÇÃO em si é disciplinar.'),
  ('d', 'Incorreta. Serve para regulamentar leis.'),
  ('e', 'Incorreta. Trata-se de função típica do Estado de criar normas.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000012';

-- -----------------------------------------------------------------------------
-- QUESTÃO 013: ATOS ADMINISTRATIVOS (CONVALIDAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000013', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Convalidação', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A convalidação de um ato administrativo com vício sanável é possível quando:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O vício recair sobre a competência (desde que não exclusiva) ou sobre a forma (desde que não essencial).', 1),
  ('b', 'B', 'O ato for nulo de pleno direito por vício no objeto.', 2),
  ('c', 'C', 'Houver desvio de finalidade comprovado.', 3),
  ('d', 'D', 'O motivo do ato for inexistente.', 4),
  ('e', 'E', 'O ato causar lesão irreparável ao interesse público.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000013';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000013' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Convalidação.', 'Somente vícios de competência (não exclusiva) e forma (não essencial) admitem convalidação (conserto).', 'Dica: Mnemônico: FOCO (FOrma e COmpetência).' from public.questions q where q.public_code = 'PPCE-DA-000013';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Vício no objeto é insanável.'),
  ('c', 'Incorreta. Vício na finalidade é insanável.'),
  ('d', 'Incorreta. Vício no motivo é insanável.'),
  ('e', 'Incorreta. Se houver lesão ao interesse público, não cabe convalidação.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000013';

-- -----------------------------------------------------------------------------
-- QUESTÃO 014: PRINCÍPIOS DA ADMINISTRAÇÃO (MORALIDADE)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000014', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Princípios', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A Súmula Vinculante nº 13 do STF, que veda o nepotismo na Administração Pública, tem como fundamento principal o princípio da:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Moralidade administrativa.', 1),
  ('b', 'B', 'Publicidade.', 2),
  ('c', 'C', 'Continuidade.', 3),
  ('d', 'D', 'Contraditório.', 4),
  ('e', 'E', 'Hierarquia.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000014';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000014' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Nepotismo e Moralidade.', 'O nepotismo fere a ética e a boa-fé esperada do administrador (Moralidade) e também a Impessoalidade.', 'Dica: A SV 13 proíbe a nomeação de parentes até o 3º grau.' from public.questions q where q.public_code = 'PPCE-DA-000014';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Publicidade trata da transparência.'),
  ('c', 'Incorreta. Continuidade trata da não interrupção do serviço.'),
  ('d', 'Incorreta. Contraditório é princípio processual.'),
  ('e', 'Incorreta. Hierarquia é o escalonamento interno.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000014';

-- -----------------------------------------------------------------------------
-- QUESTÃO 015: RESPONSABILIDADE CIVIL (EXCLUDENTES)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000015', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Responsabilidade civil do Estado', 'Causas Excludentes', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Não haverá dever de indenizar pelo Estado (excludente de responsabilidade) no caso de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Culpa exclusiva da vítima.', 1),
  ('b', 'B', 'Culpa concorrente da vítima.', 2),
  ('c', 'C', 'Dano causado por agente público fora do horário de serviço, mas usando sua função.', 3),
  ('d', 'D', 'Caso fortuito interno.', 4),
  ('e', 'E', 'Ato de multidões (vandalismo) quando o Estado poderia ter agido.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000015';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000015' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Excludentes de Responsabilidade.', 'Se a vítima deu causa ÚNICA ao dano, rompe-se o nexo de causalidade.', 'Dica: Se a culpa for CONCORRENTE, a indenização é apenas atenuada (dividida).' from public.questions q where q.public_code = 'PPCE-DA-000015';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Culpa concorrente apenas diminui o valor, não exclui a responsabilidade.'),
  ('c', 'Incorreta. O STF entende que se o agente usou a facilidade da função, o Estado responde.'),
  ('d', 'Incorreta. Caso fortuito interno (risco da atividade) não exclui a responsabilidade.'),
  ('e', 'Incorreta. Se houve omissão específica do Estado em conter a multidão, ele responde.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000015';

-- -----------------------------------------------------------------------------
-- QUESTÃO 016: ATOS ADMINISTRATIVOS (AUTOEXECUTORIEDADE)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000016', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Atributos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A autoexecutoriedade, atributo do ato administrativo, permite que a Administração:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Execute suas decisões diretamente, sem necessidade de prévia autorização judicial.', 1),
  ('b', 'B', 'Crie obrigações para terceiros independentemente de concordância.', 2),
  ('c', 'C', 'Presuma que todos os seus atos são verdadeiros.', 3),
  ('d', 'D', 'Aplique multas que são pagas automaticamente via débito em conta.', 4),
  ('e', 'E', 'Revogue atos de outros poderes por conveniência.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000016';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000016' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Autoexecutoriedade.', 'Permite a execução direta (ex: apreensão de mercadoria estragada) sem ir ao juiz antes.', 'Dica: Nem todo ato é autoexecutório (ex: cobrança de multa exige processo judicial se o particular não pagar).' from public.questions q where q.public_code = 'PPCE-DA-000016';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Este é o conceito de IMPERATIVIDADE.'),
  ('c', 'Incorreta. Este é o conceito de PRESUNÇÃO DE LEGITIMIDADE.'),
  ('d', 'Incorreta. Multas não possuem autoexecutoriedade (exigem o Judiciário para cobrança forçada).'),
  ('e', 'Incorreta. Um poder não revoga atos de outro por mérito.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000016';

-- -----------------------------------------------------------------------------
-- QUESTÃO 017: PODERES ADMINISTRATIVOS (PODER HIERÁRQUICO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000017', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes Administrativos', 'Poder Hierárquico', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A prerrogativa da Administração Pública de escalonar as funções de seus órgãos e rever a atuação de seus agentes, estabelecendo uma relação de subordinação, decorre do:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Poder Hierárquico.', 1),
  ('b', 'B', 'Poder de Polícia.', 2),
  ('c', 'C', 'Poder Disciplinar.', 3),
  ('d', 'D', 'Poder Regulamentar.', 4),
  ('e', 'E', 'Poder de Império.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000017';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000017' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Poder Hierárquico.', 'O poder hierárquico permite comandar, fiscalizar, revisar, delegar e avocar atribuições.', 'Dica: Não há hierarquia entre a Administração Direta e a Indireta (há apenas vinculação/supervisão).' from public.questions q where q.public_code = 'PPCE-DA-000017';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Atuação externa sobre a coletividade.'),
  ('c', 'Incorreta. Serve para punir, embora a punição de servidores decorra da hierarquia, o poder específico é o disciplinar.'),
  ('d', 'Incorreta. Serve para editar decretos explicativos.'),
  ('e', 'Incorreta. Termo genérico para a supremacia do Estado.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000017';

-- -----------------------------------------------------------------------------
-- QUESTÃO 018: ATOS ADMINISTRATIVOS (SILÊNCIO ADMINISTRATIVO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000018', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'O silêncio no direito administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'No Direito Administrativo brasileiro, o silêncio da administração pública, quando esta tem o dever de se pronunciar:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Não é ato administrativo, mas um fato jurídico que pode gerar efeitos se a lei assim previr.', 1),
  ('b', 'B', 'Equivale sempre ao deferimento do pedido do particular.', 2),
  ('c', 'C', 'Equivale sempre ao indeferimento do pedido.', 3),
  ('d', 'D', 'É considerado um ato administrativo tácito em todos os casos.', 4),
  ('e', 'E', 'Impede qualquer tipo de controle judicial.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000018';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000018' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Silêncio Administrativo.', 'O silêncio é a AUSÊNCIA de ato. Só gera efeito (positivo ou negativo) se houver lei específica determinando.', 'Dica: Na ausência de lei, o silêncio permite ao particular buscar o Judiciário para forçar uma resposta.' from public.questions q where q.public_code = 'PPCE-DA-000018';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Depende de previsão legal expressa.'),
  ('c', 'Incorreta. Depende de previsão legal expressa.'),
  ('d', 'Incorreta. Ato exige manifestação de vontade; o silêncio é a omissão dessa vontade.'),
  ('e', 'Incorreta. O Judiciário pode ser acionado por "omissão".')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000018';

-- -----------------------------------------------------------------------------
-- QUESTÃO 019: ORGANIZAÇÃO ADMINISTRATIVA (ADMINISTRAÇÃO DIRETA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000019', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Organização Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Fazem parte da Administração Direta os seguintes entes, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Autarquias.', 1),
  ('b', 'B', 'União.', 2),
  ('c', 'C', 'Estados.', 3),
  ('d', 'D', 'Municípios.', 4),
  ('e', 'E', 'Distrito Federal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000019';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000019' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Administração Direta.', 'Autarquias pertencem à Administração INDIRETA.', 'Dica: Adm. Direta = Pessoas Políticas. Adm. Indireta = Pessoas Administrativas (FASE: Fundações, Autarquias, Sociedades de Economia Mista, Empresas Públicas).' from public.questions q where q.public_code = 'PPCE-DA-000019';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Ente federativo (Direta).'),
  ('c', 'Incorreta. Ente federativo (Direta).'),
  ('d', 'Incorreta. Ente federativo (Direta).'),
  ('e', 'Incorreta. Ente federativo (Direta).')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000019';

-- -----------------------------------------------------------------------------
-- QUESTÃO 020: PRINCÍPIOS DA ADMINISTRAÇÃO (AUTOTUTELA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000020', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Princípios', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O poder-dever da Administração Pública de rever seus próprios atos, anulando os ilegais e revogando os inconvenientes ou inoportunos, fundamenta-se no princípio da:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Autotutela.', 1),
  ('b', 'B', 'Tutela (ou Controle Finalístico).', 2),
  ('c', 'C', 'Hierarquia.', 3),
  ('d', 'D', 'Legalidade estrita.', 4),
  ('e', 'E', 'Razoabilidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000020';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000020' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Princípio da Autotutela.', 'Súmulas 346 e 473 do STF. A administração controla seus próprios atos sem precisar do Judiciário.', 'Dica: Autotutela = Controle interno.' from public.questions q where q.public_code = 'PPCE-DA-000020';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Tutela é o controle da Direta sobre a Indireta.'),
  ('c', 'Incorreta. Embora a autotutela ocorra via hierarquia, o nome do PRINCÍPIO é autotutela.'),
  ('d', 'Incorreta. É a base, mas a autotutela é o mecanismo de revisão.'),
  ('e', 'Incorreta. Limita a discricionariedade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000020';

-- -----------------------------------------------------------------------------
-- QUESTÃO 021: ATOS ADMINISTRATIVOS (CLASSIFICAÇÃO: VINCULADOS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000021', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Classificação', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Os atos administrativos em que a lei não deixa margem de escolha para o administrador, estabelecendo todos os requisitos e a única conduta possível, são chamados de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Atos Vinculados.', 1),
  ('b', 'B', 'Atos Discricionários.', 2),
  ('c', 'C', 'Atos Compostos.', 3),
  ('d', 'D', 'Atos Complexos.', 4),
  ('e', 'E', 'Atos Enunciativos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000021';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000021' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Atos Vinculados.', 'O administrador apenas confere se os requisitos foram preenchidos e pratica o ato. Não há liberdade.', 'Dica: Exemplo: Aposentadoria compulsória, Licença para construir.' from public.questions q where q.public_code = 'PPCE-DA-000021';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Atos discricionários permitem escolha de conveniência e oportunidade.'),
  ('c', 'Incorreta. Atos compostos exigem manifestação de um órgão e ratificação de outro.'),
  ('d', 'Incorreta. Atos complexos exigem manifestação de dois órgãos para um único ato.'),
  ('e', 'Incorreta. Atos enunciativos apenas atestam uma situação (ex: certidão).')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000021';

-- -----------------------------------------------------------------------------
-- QUESTÃO 022: ATOS ADMINISTRATIVOS (CLASSIFICAÇÃO: COMPLEXOS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000022', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Classificação', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O ato administrativo que resulta da manifestação de vontade de dois ou mais órgãos diferentes, que se fundem para formar um único ato, é classificado como:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ato Complexo.', 1),
  ('b', 'B', 'Ato Composto.', 2),
  ('c', 'C', 'Ato Simples.', 3),
  ('d', 'D', 'Ato Geral.', 4),
  ('e', 'E', 'Ato de Gestão.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000022';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000022' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Ato Complexo.', 'Ato Complexo = 2 Vontades + 1 Ato final.', 'Dica: Mnemônico: Com-Plexo = Duas ou mais vontades se misturam. Ex: Aposentadoria (órgão de origem + Tribunal de Contas).' from public.questions q where q.public_code = 'PPCE-DA-000022';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Ato composto tem vontade principal e vontade acessória (visto, homologação).'),
  ('c', 'Incorreta. Ato simples decorre da vontade de apenas um órgão.'),
  ('d', 'Incorreta. Ato geral atinge uma coletividade indeterminada.'),
  ('e', 'Incorreta. Ato de gestão é praticado em situação de igualdade com o particular.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000022';

-- -----------------------------------------------------------------------------
-- QUESTÃO 023: LICITAÇÕES (CONCEITO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000023', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Conceito e Princípios', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O procedimento administrativo isonômico por meio do qual a Administração Pública seleciona a proposta mais vantajosa para o contrato de seu interesse é a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Licitação.', 1),
  ('b', 'B', 'Dispensa de licitação.', 2),
  ('c', 'C', 'Inexigibilidade.', 3),
  ('d', 'D', 'Adjudicação direta.', 4),
  ('e', 'E', 'Contratação precária.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000023';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000023' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Licitação.', 'A licitação visa garantir a isonomia (igualdade) e a seleção da melhor proposta.', 'Dica: Atualmente regida principalmente pela Lei 14.133/2021.' from public.questions q where q.public_code = 'PPCE-DA-000023';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Dispensa é exceção onde a licitação é possível mas a lei desobriga.'),
  ('c', 'Incorreta. Inexigibilidade é quando há inviabilidade de competição (ex: fornecedor único).'),
  ('d', 'Incorreta. Adjudicação é a fase final da licitação.'),
  ('e', 'Incorreta. Termo não técnico para o procedimento.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000023';

-- -----------------------------------------------------------------------------
-- QUESTÃO 024: PODERES ADMINISTRATIVOS (PODER REGULAMENTAR)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000024', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes Administrativos', 'Poder Regulamentar', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Poder Regulamentar (ou Normativo) permite ao Chefe do Executivo:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Editar decretos e regulamentos para a fiel execução da lei.', 1),
  ('b', 'B', 'Criar novos tributos por meio de decreto.', 2),
  ('c', 'C', 'Extinguir crimes previstos no Código Penal.', 3),
  ('d', 'D', 'Substituir a lei em casos de urgência e relevância.', 4),
  ('e', 'E', 'Anular decisões definitivas do Supremo Tribunal Federal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000024';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000024' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Poder Regulamentar.', 'O decreto regulamentar não pode criar direitos ou obrigações novos, apenas explicar a lei já existente.', 'Dica: Deriva do Art. 84, IV da CF.' from public.questions q where q.public_code = 'PPCE-DA-000024';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Fere o princípio da reserva legal/legalidade tributária.'),
  ('c', 'Incorreta. Matéria penal é exclusiva de lei em sentido estrito.'),
  ('d', 'Incorreta. Isso seria função de Medida Provisória, não decreto regulamentar.'),
  ('e', 'Incorreta. Fere a separação de poderes.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000024';

-- -----------------------------------------------------------------------------
-- QUESTÃO 025: CONTROLE DA ADMINISTRAÇÃO (CONTRADITÓRIO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000025', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Controle e responsabilização da administração', 'Processo Administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'No processo administrativo, é garantido ao interessado o direito de produzir provas e manifestar-se sobre as alegações da administração antes da decisão final. Isso define o princípio do:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Contraditório e Ampla Defesa.', 1),
  ('b', 'B', 'Verdade Material.', 2),
  ('c', 'C', 'Oficialidade.', 3),
  ('d', 'D', 'Informalismo.', 4),
  ('e', 'E', 'Indisponibilidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000025';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000025' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Contraditório e Ampla Defesa.', 'Garantia constitucional (Art. 5º, LV) aplicada também aos processos administrativos.', 'Dica: Fundamental para a validade de processos disciplinares contra policiais penais.' from public.questions q where q.public_code = 'PPCE-DA-000025';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Verdade material busca a realidade dos fatos, não apenas o que está nos autos.'),
  ('c', 'Incorreta. Oficialidade permite à administração impulsionar o processo de ofício.'),
  ('d', 'Incorreta. Informalismo dispensa formalidades excessivas que não prejudiquem a defesa.'),
  ('e', 'Incorreta. Indisponibilidade refere-se ao interesse público.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000025';

-- -----------------------------------------------------------------------------
-- QUESTÃO 026: LICITAÇÕES (INEXIGIBILIDADE - LEI 14.133/21)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000026', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Inexigibilidade', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'De acordo com a Nova Lei de Licitações (Lei nº 14.133/2021), a inexigibilidade de licitação ocorre quando:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Houver inviabilidade de competição.', 1),
  ('b', 'B', 'O valor da contratação for inferior a R$ 50.000,00 para serviços comuns.', 2),
  ('c', 'C', 'Houver urgência no atendimento de situação de emergência.', 3),
  ('d', 'D', 'Não aparecerem interessados na licitação anterior (licitação deserta).', 4),
  ('e', 'E', 'A União tiver que intervir no domínio econômico.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000026';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000026' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Inexigibilidade de Licitação.', 'A inexigibilidade (Art. 74) é marcada pela impossibilidade de competir (fornecedor único, artista consagrado, profissional técnico especializado).', 'Dica: O rol é exemplificativo.' from public.questions q where q.public_code = 'PPCE-DA-000026';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Caso de DISPENSA em razão do valor.'),
  ('c', 'Incorreta. Caso de DISPENSA (licitação dispensável).'),
  ('d', 'Incorreta. Caso de DISPENSA.'),
  ('e', 'Incorreta. Caso de DISPENSA.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000026';

-- -----------------------------------------------------------------------------
-- QUESTÃO 027: CONTRATOS ADMINISTRATIVOS (CLÁUSULAS EXORBITANTES)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000027', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Contratos Administrativos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'As cláusulas que conferem à Administração Pública prerrogativas que não existem nos contratos entre particulares, como a alteração unilateral do contrato, são chamadas de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Cláusulas Exorbitantes.', 1),
  ('b', 'B', 'Cláusulas Pétreas.', 2),
  ('c', 'C', 'Cláusulas Adjetivas.', 3),
  ('d', 'D', 'Cláusulas de Barreira.', 4),
  ('e', 'E', 'Cláusulas de Reajuste.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000027';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000027' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Cláusulas Exorbitantes.', 'Dão supremacia ao Poder Público (ex: rescisão unilateral, fiscalização, ocupação provisória).', 'Dica: Derivam do regime jurídico administrativo de direito público.' from public.questions q where q.public_code = 'PPCE-DA-000027';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Termo do Direito Constitucional.'),
  ('c', 'Incorreta. Nome sem sentido jurídico neste contexto.'),
  ('d', 'Incorreta. Termo do Direito Eleitoral.'),
  ('e', 'Incorreta. Existem no direito privado para manter o valor da moeda.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000027';

-- -----------------------------------------------------------------------------
-- QUESTÃO 028: RESPONSABILIDADE CIVIL (DANO POR OMISSÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000028', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Responsabilidade civil do Estado', 'Atos Omissivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Em regra, a responsabilidade do Estado por danos causados em decorrência de uma OMISSÃO GENÉRICA (ex: falta de iluminação pública que facilita um roubo) é considerada:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Subjetiva (exige comprovação de dolo ou culpa - "falta do serviço").', 1),
  ('b', 'B', 'Objetiva (independe de culpa).', 2),
  ('c', 'C', 'Inexistente.', 3),
  ('d', 'D', 'Integral (sempre indenizável).', 4),
  ('e', 'E', 'Subsidiária à do agente.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000028';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000028' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Responsabilidade por Omissão.', 'A omissão genérica (faute du service) exige provar que o Estado deveria ter agido e não agiu por negligência, imperícia ou imprudência.', 'Dica: Já na omissão ESPECÍFICA (preso morto sob custódia), a responsabilidade volta a ser OBJETIVA.' from public.questions q where q.public_code = 'PPCE-DA-000028';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A regra majoritária para omissões genéricas é a subjetiva.'),
  ('c', 'Incorreta. O Estado pode ser responsabilizado se provada a culpa.'),
  ('d', 'Incorreta. Não existe responsabilidade integral por omissão comum.'),
  ('e', 'Incorreta. A responsabilidade do Estado é direta.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000028';

-- -----------------------------------------------------------------------------
-- QUESTÃO 029: CONTROLE DA ADMINISTRAÇÃO (JUDICIAL)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000029', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Controle e responsabilização da administração', 'Controle Judicial', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Sobre o controle que o Poder Judiciário exerce sobre os atos do Poder Executivo, assinale a alternativa correta:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O Judiciário pode anular atos ilegais, mas não pode revogar atos por mérito administrativo (conveniência e oportunidade).', 1),
  ('b', 'B', 'O Judiciário pode substituir a decisão do administrador se achá-la inoportuna.', 2),
  ('c', 'C', 'O Judiciário não pode exercer nenhum controle sobre atos discricionários.', 3),
  ('d', 'D', 'O controle judicial só ocorre após o esgotamento de todas as instâncias administrativas.', 4),
  ('e', 'E', 'O Judiciário pode criar novos atos administrativos para o Executivo.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000029';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000029' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Limites do Controle Judicial.', 'O Judiciário controla a LEGALIDADE. O mérito (escolha política) é exclusivo do administrador.', 'Dica: O Judiciário pode controlar o ato discricionário quanto aos seus elementos vinculados (competência, finalidade e forma).' from public.questions q where q.public_code = 'PPCE-DA-000029';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Seria interferência indevida no outro poder.'),
  ('c', 'Incorreta. Pode controlar a legalidade e a razoabilidade/proporcionalidade do ato discricionário.'),
  ('d', 'Incorreta. No Brasil vigora a jurisdição uma (inefastabilidade), não sendo obrigatório o esgotamento administrativo (regra geral).'),
  ('e', 'Incorreta. Fere a separação de poderes.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000029';

-- -----------------------------------------------------------------------------
-- QUESTÃO 030: ORGANIZAÇÃO ADMINISTRATIVA (ADMINISTRAÇÃO INDIRETA - REGIME)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000030', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Organização Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Qual das seguintes entidades da Administração Indireta é criada diretamente por lei (sem necessidade de registro posterior para ganhar personalidade)?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Autarquia.', 1),
  ('b', 'B', 'Empresa Pública.', 2),
  ('c', 'C', 'Sociedade de Economia Mista.', 3),
  ('d', 'D', 'Fundação Pública de Direito Privado.', 4),
  ('e', 'E', 'Consórcio Público de Direito Privado.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000030';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000030' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Criação de Entidades.', 'Autarquias são CRIADAS por lei. As demais têm sua criação AUTORIZADA por lei (exigem registro).', 'Dica: Art. 37, XIX da CF.' from public.questions q where q.public_code = 'PPCE-DA-000030';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Lei apenas autoriza.'),
  ('c', 'Incorreta. Lei apenas autoriza.'),
  ('d', 'Incorreta. Lei apenas autoriza.'),
  ('e', 'Incorreta. Lei apenas autoriza.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000030';

-- -----------------------------------------------------------------------------
-- QUESTÃO 031: PODERES ADMINISTRATIVOS (EXCESSO DE PODER)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000031', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes Administrativos', 'Uso e Abuso do Poder', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Quando um agente público atua além das fronteiras de sua competência legal, embora buscando um interesse público, ele comete a modalidade de abuso de poder denominada:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Excesso de poder.', 1),
  ('b', 'B', 'Desvio de finalidade.', 2),
  ('c', 'C', 'Omissão administrativa.', 3),
  ('d', 'D', 'Improbidade culposa.', 4),
  ('e', 'E', 'Dolo direto.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000031';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000031' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Excesso de Poder.', 'Excesso = Vício na COMPETÊNCIA. O agente vai além do que a lei permitiu.', 'Dica: Abuso de Poder é o gênero que tem como espécies o Excesso e o Desvio.' from public.questions q where q.public_code = 'PPCE-DA-000031';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Desvio é vício na FINALIDADE (o agente tem competência mas usa para fim errado).'),
  ('c', 'Incorreta. Refere-se a não agir.'),
  ('d', 'Incorreta. Refere-se à Lei 8.429/92.'),
  ('e', 'Incorreta. Refere-se ao elemento subjetivo da conduta.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000031';

-- -----------------------------------------------------------------------------
-- QUESTÃO 032: ATOS ADMINISTRATIVOS (CONCEITO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000032', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Conceitos e Elementos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A declaração do Estado ou de quem lhe faça as vezes, expedida no exercício de prerrogativas públicas, sob regime de direito público e sujeita a controle judicial, é a definição de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ato administrativo.', 1),
  ('b', 'B', 'Ato legislativo.', 2),
  ('c', 'C', 'Contrato privado.', 3),
  ('d', 'D', 'Fato administrativo.', 4),
  ('e', 'E', 'Parecer jurídico.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000032';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000032' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Conceito de Ato Administrativo.', 'Manifestação unilateral de vontade do Estado para criar, modificar, transferir ou extinguir direitos.', 'Dica: Distingue-se do fato administrativo porque este último é uma ocorrência material (ex: limpeza de rua).' from public.questions q where q.public_code = 'PPCE-DA-000032';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Atos de criar leis (função típica legislativa).'),
  ('c', 'Incorreta. Atos bilaterais sob regime de direito privado.'),
  ('d', 'Incorreta. Fato é a execução material do ato.'),
  ('e', 'Incorreta. É um ato enunciativo, mas a definição da questão é do gênero Ato Administrativo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000032';

-- -----------------------------------------------------------------------------
-- QUESTÃO 033: LICITAÇÕES (MODALIDADES - LEI 14.133/21)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000033', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Modalidades', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Qual modalidade de licitação, prevista na Lei 14.133/2021, destina-se à contratação de bens e serviços especiais e de obras e serviços de engenharia comuns e especiais, na qual a Administração realiza diálogos com licitantes previamente selecionados?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Diálogo competitivo.', 1),
  ('b', 'B', 'Pregão.', 2),
  ('c', 'C', 'Concorrência.', 3),
  ('d', 'D', 'Concurso.', 4),
  ('e', 'E', 'Leilão.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000033';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000033' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Diálogo Competitivo.', 'Grande novidade da Lei 14.133/21, inspirada no modelo europeu para soluções complexas.', 'Dica: O Convite e a Tomada de Preços foram extintos na nova lei.' from public.questions q where q.public_code = 'PPCE-DA-000033';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Para bens e serviços COMUNS.'),
  ('c', 'Incorreta. Para bens e serviços especiais e obras, mas sem a fase de diálogo.'),
  ('d', 'Incorreta. Para escolha de trabalho técnico, científico ou artístico.'),
  ('e', 'Incorreta. Para venda de bens.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000033';

-- -----------------------------------------------------------------------------
-- QUESTÃO 034: ESTADO, GOVERNO E ADMINISTRAÇÃO (SISTEMA DE GOVERNO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000034', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Conceitos e Elementos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O Brasil adota, respectivamente, a seguinte forma de Estado e sistema de Governo:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Federação e Presidencialismo.', 1),
  ('b', 'B', 'Confederação e Parlamentarismo.', 2),
  ('c', 'C', 'Estado Unitário e República.', 3),
  ('d', 'D', 'Federação e Monarquia.', 4),
  ('e', 'E', 'Estado Composto e Autocracia.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000034';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000034' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Organização do Estado e Governo.', 'Forma de Estado = Federação. Sistema de Governo = Presidencialismo. Forma de Governo = República.', 'Dica: Mnemônico: FOGO NA REPÚBLICA (FOrma de GOverno -> REPública). FEDERAÇÃO é FOrma de Estado.' from public.questions q where q.public_code = 'PPCE-DA-000034';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O Brasil é Federação.'),
  ('c', 'Incorreta. República é forma de governo, não sistema.'),
  ('d', 'Incorreta. O Brasil é República.'),
  ('e', 'Incorreta. O Brasil é uma Democracia.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000034';

-- -----------------------------------------------------------------------------
-- QUESTÃO 035: RESPONSABILIDADE CIVIL (DIREITO DE REGRESSO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000035', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Responsabilidade civil do Estado', 'Controle e Responsabilização', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Estado, após indenizar um terceiro por dano causado por seu agente, poderá cobrar deste agente o valor pago, desde que comprovado que o agente agiu com dolo ou culpa. Essa ação chama-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ação de Regresso.', 1),
  ('b', 'B', 'Ação de Cobrança Administrativa.', 2),
  ('c', 'C', 'Ação Civil Pública.', 3),
  ('d', 'D', 'Ação de Improbidade.', 4),
  ('e', 'E', 'Denunciação da lide.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000035';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000035' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Ação de Regresso.', 'Prevista no Art. 37, § 6º da CF. É uma responsabilidade SUBJETIVA do agente perante o Estado.', 'Dica: O particular não pode processar o agente diretamente (Teoria da Dupla Garantia - STF).' from public.questions q where q.public_code = 'PPCE-DA-000035';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Nome não técnico para este fim constitucional.'),
  ('c', 'Incorreta. Serve para proteger interesses difusos.'),
  ('d', 'Incorreta. Serve para punir atos de corrupção ou má gestão, embora possa ser usada para ressarcimento.'),
  ('e', 'Incorreta. O STF veda a denunciação da lide do agente pelo Estado na ação indenizatória movida pelo particular.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000035';

-- -----------------------------------------------------------------------------
-- QUESTÃO 036: ADMINISTRAÇÃO PÚBLICA (GOVERNANÇA E ACCOUNTABILITY)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000036', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Governança e Accountability', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O dever dos gestores públicos de prestar contas de sua gestão e assumir a responsabilidade por seus atos e omissões, permitindo o controle social, é conhecido pelo termo:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Accountability.', 1),
  ('b', 'B', 'Compliance.', 2),
  ('c', 'C', 'Stakeholder management.', 3),
  ('d', 'D', 'Autotutela.', 4),
  ('e', 'E', 'Discricionariedade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000036';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000036' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Accountability.', 'Accountability envolve transparência, prestação de contas e responsabilidade (responsiveness).', 'Dica: É um dos pilares da moderna governança pública.' from public.questions q where q.public_code = 'PPCE-DA-000036';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Compliance refere-se ao cumprimento de normas e ética interna.'),
  ('c', 'Incorreta. Refere-se à gestão das partes interessadas.'),
  ('d', 'Incorreta. É o controle dos próprios atos pela administração.'),
  ('e', 'Incorreta. É a margem de escolha do administrador.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000036';

-- -----------------------------------------------------------------------------
-- QUESTÃO 037: ATOS ADMINISTRATIVOS (ESPÉCIES: ATOS ENUNCIATIVOS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000037', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Atos administrativos em espécie', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Certidões, atestados, pareceres e apostilas são exemplos de atos administrativos da espécie:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Enunciativos.', 1),
  ('b', 'B', 'Normativos.', 2),
  ('c', 'C', 'Ordinatórios.', 4),
  ('d', 'D', 'Negociais.', 5),
  ('e', 'E', 'Punitivos.', 6)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000037';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000037' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Atos Enunciativos.', 'Apenas atestam ou reconhecem uma situação preexistente, sem criar direitos novos diretamente.', 'Dica: Mnemônico: CAPA (Certidão, Atestado, Parecer, Apostila).' from public.questions q where q.public_code = 'PPCE-DA-000037';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Atos normativos contêm comandos gerais (ex: decretos).'),
  ('c', 'Incorreta. Atos ordinatórios visam organizar o serviço interno (ex: portarias).'),
  ('d', 'Incorreta. Atos negociais coincidem com a vontade do particular (ex: licença).'),
  ('e', 'Incorreta. Atos punitivos aplicam sanções.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000037';

-- -----------------------------------------------------------------------------
-- QUESTÃO 038: LICITAÇÕES (CRITÉRIOS DE JULGAMENTO - LEI 14.133/21)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000038', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Noções de Licitações', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Qual critério de julgamento da Lei 14.133/2021 substituiu o antigo "tipo de licitação" de melhor técnica?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Melhor técnica ou conteúdo artístico.', 1),
  ('b', 'B', 'Menor preço.', 2),
  ('c', 'C', 'Maior desconto.', 3),
  ('d', 'D', 'Maior lance.', 4),
  ('e', 'E', 'Maior retorno econômico.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000038';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000038' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Critérios de Julgamento.', 'A nova lei lista: menor preço, maior desconto, melhor técnica ou conteúdo artístico, técnica e preço, maior lance, maior retorno econômico.', 'Dica: O critério "maior retorno econômico" é novo e usado em contratos de eficiência.' from public.questions q where q.public_code = 'PPCE-DA-000038';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Critério focado no custo.'),
  ('c', 'Incorreta. Critério focado no abatimento sobre tabela.'),
  ('d', 'Incorreta. Usado em leilões.'),
  ('e', 'Incorreta. Usado para economizar recursos do Estado.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000038';

-- -----------------------------------------------------------------------------
-- QUESTÃO 039: CONTROLE DA ADMINISTRAÇÃO (CONTROLE LEGISLATIVO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000039', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Controle e responsabilização da administração', 'Controle legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O controle parlamentar direto sobre os atos do Poder Executivo, que pode sustar atos normativos que exorbitem do poder regulamentar, compete ao:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Congresso Nacional.', 1),
  ('b', 'B', 'Tribunal de Contas da União.', 2),
  ('c', 'C', 'Supremo Tribunal Federal.', 3),
  ('d', 'D', 'Ministério Público Federal.', 4),
  ('e', 'E', 'Conselho da República.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000039';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000039' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Controle Legislativo.', 'Art. 49, V da CF. É uma competência exclusiva do Congresso Nacional (ou Assembleias Estaduais).', 'Dica: O TCU auxilia o Legislativo, mas a competência de SUSTAR o ato normativo é do próprio Parlamento.' from public.questions q where q.public_code = 'PPCE-DA-000039';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O TCU realiza o controle financeiro e orçamentário.'),
  ('c', 'Incorreta. O STF realiza o controle judicial.'),
  ('d', 'Incorreta. O MP exerce controle da lei e fiscalização.'),
  ('e', 'Incorreta. Órgão de consulta do Presidente.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000039';

-- -----------------------------------------------------------------------------
-- QUESTÃO 040: ATOS ADMINISTRATIVOS (TEORIA DOS MOTIVOS DETERMINANTES)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000040', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Teoria dos motivos determinantes', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Pela Teoria dos Motivos Determinantes, a validade de um ato administrativo está vinculada à:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Existência e veracidade dos motivos declarados para a sua prática.', 1),
  ('b', 'B', 'Vontade subjetiva do agente que praticou o ato.', 2),
  ('c', 'C', 'Forma escrita obrigatoriamente.', 3),
  ('d', 'D', 'Autorização judicial prévia.', 4),
  ('e', 'E', 'Publicação no Diário Oficial apenas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000040';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000040' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Teoria dos Motivos Determinantes.', 'Se o administrador motiva o ato (mesmo que a lei não obrigue), ele fica vinculado àquela motivação. Se os motivos forem falsos, o ato é nulo.', 'Dica: Aplica-se inclusive a atos discricionários.' from public.questions q where q.public_code = 'PPCE-DA-000040';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O ato deve ser impessoal.'),
  ('c', 'Incorreta. Forma é requisito, mas a teoria refere-se ao motivo.'),
  ('d', 'Incorreta. Não exige autorização judicial.'),
  ('e', 'Incorreta. Refere-se à publicidade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000040';

-- -----------------------------------------------------------------------------
-- QUESTÃO 041: PODERES ADMINISTRATIVOS (USO E ABUSO - MODALIDADES)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000041', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes Administrativos', 'Uso e Abuso do Poder', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O policial penal que, visando favorecer um amigo, deixa de aplicar uma sanção disciplinar prevista em lei, comete abuso de poder na modalidade:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Desvio de poder (ou finalidade).', 1),
  ('b', 'B', 'Excesso de poder.', 2),
  ('c', 'C', 'Hierarquização indevida.', 4),
  ('d', 'D', 'Usurpação de função pública.', 5),
  ('e', 'E', 'Convalidação tática.', 6)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000041';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000041' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Desvio de Poder.', 'O agente tem a competência (aplicar sanções), mas usa para um fim pessoal (favorecer amigo) em vez do interesse público.', 'Dica: Vício de finalidade é sempre insanável.' from public.questions q where q.public_code = 'PPCE-DA-000041';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Excesso é quando o agente não tem a competência para o ato.'),
  ('c', 'Incorreta. Termo inventado.'),
  ('d', 'Incorreta. Usurpação é crime (quando alguém sem cargo algum finge ser agente).'),
  ('e', 'Incorreta. Convalidação é o conserto de um ato viciado, não um abuso.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000041';

-- -----------------------------------------------------------------------------
-- QUESTÃO 042: ATOS ADMINISTRATIVOS (MÉRITO ADMINISTRATIVO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000042', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Mérito do ato administrativo, discricionariedade', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O chamado "mérito administrativo" corresponde à análise realizada pelo administrador sobre quais elementos do ato discricionário?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Motivo e Objeto.', 1),
  ('b', 'B', 'Competência e Forma.', 2),
  ('c', 'C', 'Finalidade e Competência.', 3),
  ('d', 'D', 'Apenas o Objeto.', 4),
  ('e', 'E', 'Apenas a Finalidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000042';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000042' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Mérito Administrativo.', 'O mérito é a conveniência e oportunidade de agir, incidindo sobre a escolha do MOTIVO e do OBJETO.', 'Dica: Competência, Finalidade e Forma são sempre VINCULADOS.' from public.questions q where q.public_code = 'PPCE-DA-000042';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. São elementos vinculados.'),
  ('c', 'Incorreta. São elementos vinculados.'),
  ('d', 'Incorreta. O motivo também compõe o mérito.'),
  ('e', 'Incorreta. A finalidade é sempre vinculada ao interesse público.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000042';

-- -----------------------------------------------------------------------------
-- QUESTÃO 043: ORGANIZAÇÃO ADMINISTRATIVA (ADMINISTRAÇÃO INDIRETA - EP)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000043', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Organização Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A Empresa Pública (EP) diferencia-se da Sociedade de Economia Mista (SEM) principalmente pela composição de seu capital. Na Empresa Pública, o capital é:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Integralmente público.', 1),
  ('b', 'B', 'Majoritariamente público, mas permite participação privada.', 2),
  ('c', 'C', 'Integralmente privado.', 3),
  ('d', 'D', 'Misto entre capital estrangeiro e nacional.', 4),
  ('e', 'E', 'Majoritariamente privado, com controle estatal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000043';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000043' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Empresa Pública vs SEM.', 'Empresa Pública = 100% Capital Público. SEM = Capital Misto (Público + Privado), com maioria de votos do Estado.', 'Dica: Ex de EP: Caixa Econômica Federal. Ex de SEM: Banco do Brasil.' from public.questions q where q.public_code = 'PPCE-DA-000043';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Esta é a característica da Sociedade de Economia Mista.'),
  ('c', 'Incorreta. Seria uma empresa privada comum.'),
  ('d', 'Incorreta. Não é o critério definidor.'),
  ('e', 'Incorreta. O controle e a maioria do capital votante devem ser do Estado nas SEMs.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000043';

-- -----------------------------------------------------------------------------
-- QUESTÃO 044: ATOS ADMINISTRATIVOS (ANULAÇÃO POR DECISÃO JUDICIAL)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000044', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Revogação e anulação', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Quando o Poder Judiciário declara a nulidade de um ato administrativo ilegal, os efeitos dessa decisão retroagem à data da prática do ato (efeito retroativo). Esse efeito é chamado de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Efeito Ex Tunc.', 1),
  ('b', 'B', 'Efeito Ex Nunc.', 2),
  ('c', 'C', 'Efeito Devolutivo.', 3),
  ('d', 'D', 'Efeito Suspensivo.', 4),
  ('e', 'E', 'Efeito Erga Omnes.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000044';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000044' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Efeito Ex Tunc.', 'Ex Tunc = "Tapa na nuca" (vai para trás). A anulação desfaz tudo desde o início.', 'Dica: A revogação, por outro lado, tem efeito EX NUNC (daqui para frente).' from public.questions q where q.public_code = 'PPCE-DA-000044';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Ex Nunc = "No nariz" (vai para frente). Não retroage.'),
  ('c', 'Incorreta. Efeito de recursos que devolvem a matéria ao tribunal.'),
  ('d', 'Incorreta. Efeito que trava a execução.'),
  ('e', 'Incorreta. Efeito contra todos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000044';

-- -----------------------------------------------------------------------------
-- QUESTÃO 045: PODERES ADMINISTRATIVOS (PODER HIERÁRQUICO - AVOCAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000045', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes Administrativos', 'Poder hierárquico', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A avocação de competência no Direito Administrativo brasileiro:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'É medida excepcional, temporária e exige que o órgão avocador seja superior hierárquico.', 1),
  ('b', 'B', 'É a regra geral de distribuição de tarefas entre órgãos de mesma hierarquia.', 2),
  ('c', 'C', 'Pode ser feita permanentemente por meio de decreto.', 4),
  ('d', 'D', 'Não exige motivação, por ser ato puramente discricionário.', 5),
  ('e', 'E', 'É vedada pela Lei 9.784/99.', 6)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000045';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000045' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Avocação de Competência.', 'Avocar é trazer para si a tarefa do subordinado. Exige motivo relevante e é sempre temporária.', 'Dica: Diferente da delegação, que pode ocorrer entre órgãos sem hierarquia.' from public.questions q where q.public_code = 'PPCE-DA-000045';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Avocação é a exceção.'),
  ('c', 'Incorreta. Deve ser temporária.'),
  ('d', 'Incorreta. Exige motivação e circunstâncias relevantes.'),
  ('e', 'Incorreta. É permitida pela Lei 9.784/99 (Art. 15).')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000045';

-- -----------------------------------------------------------------------------
-- QUESTÃO 046: ORGANIZAÇÃO ADMINISTRATIVA (DESCONCENTRAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000046', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Organização Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A criação de Secretarias, Ministérios ou Delegacias dentro da estrutura de uma mesma pessoa jurídica denomina-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Desconcentração.', 1),
  ('b', 'B', 'Descentralização.', 2),
  ('c', 'C', 'Terceirização.', 3),
  ('d', 'D', 'Privatização.', 4),
  ('e', 'E', 'Avocação.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000046';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000046' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Desconcentração.', 'Desconcentração é a distribuição interna de competências (criação de órgãos).', 'Dica: Pense no "O" de descOncentração como "Órgão".' from public.questions q where q.public_code = 'PPCE-DA-000046';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Descentralização cria uma nova pessoa jurídica (entidade).'),
  ('c', 'Incorreta. Contratação de serviços externos.'),
  ('d', 'Incorreta. Venda de ativos estatais.'),
  ('e', 'Incorreta. É o ato de um superior atrair competência do subordinado.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000046';

-- -----------------------------------------------------------------------------
-- QUESTÃO 047: LICITAÇÕES (CONTRATAÇÃO DIRETA - DISPENSA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000047', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Contratação Direta', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Ocorre a licitação DISPENSÁVEL quando:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A licitação é possível, mas a lei permite que o administrador decida por não realizá-la em casos específicos.', 1),
  ('b', 'B', 'A competição é inviável por natureza.', 2),
  ('c', 'C', 'A lei proíbe terminantemente a realização do certame.', 3),
  ('d', 'D', 'O fornecedor é detentor de marca exclusiva no país.', 4),
  ('e', 'E', 'O objeto é um trabalho técnico de natureza singular.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000047';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000047' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Licitação Dispensável.', 'Diferente da inexigibilidade, na dispensa a competição existe, mas o legislador abriu mão do rito por economia ou estratégia.', 'Dica: Ver Art. 75 da Lei 14.133/21.' from public.questions q where q.public_code = 'PPCE-DA-000047';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Definição de Inexigibilidade.'),
  ('c', 'Incorreta. Definição de Licitação Dispensada (Art. 76).'),
  ('d', 'Incorreta. Definição de Inexigibilidade.'),
  ('e', 'Incorreta. Definição de Inexigibilidade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000047';

-- -----------------------------------------------------------------------------
-- QUESTÃO 048: ATOS ADMINISTRATIVOS (IMPERATIVIDADE)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000048', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Atributos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O atributo do ato administrativo que impõe a obrigação ao particular independentemente de sua concordância é a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Imperatividade.', 1),
  ('b', 'B', 'Presunção de veracidade.', 2),
  ('c', 'C', 'Tipicidade.', 3),
  ('d', 'D', 'Autoexecutoriedade.', 4),
  ('e', 'E', 'Legalidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000048';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000048' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Imperatividade.', 'Também chamada de Poder Extroverso. O Estado "manda" e o particular "obedece" (supremacia do interesse público).', 'Dica: Nem todos os atos são imperativos (ex: atos enunciativos não impõem obrigações).' from public.questions q where q.public_code = 'PPCE-DA-000048';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Refere-se à verdade dos fatos.'),
  ('c', 'Incorreta. Refere-se à previsão em lei.'),
  ('d', 'Incorreta. Refere-se à execução direta (ação material).'),
  ('e', 'Incorreta. É princípio, não atributo específico de imposição.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000048';

-- -----------------------------------------------------------------------------
-- QUESTÃO 049: PODERES ADMINISTRATIVOS (PODER HIERÁRQUICO - DELEGAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000049', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes Administrativos', 'Poder hierárquico', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'De acordo com a Lei 9.784/99, NÃO podem ser objeto de delegação:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A edição de atos de caráter normativo, a decisão de recursos administrativos e as matérias de competência exclusiva.', 1),
  ('b', 'B', 'A realização de licitações e a nomeação de servidores estáveis.', 2),
  ('c', 'C', 'A fiscalização de contratos e a aplicação de advertências.', 3),
  ('d', 'D', 'O atendimento ao público e o protocolo de documentos.', 4),
  ('e', 'E', 'A autorização de viagens e o pagamento de diárias.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000049';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000049' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Vedações à Delegação.', 'Art. 13 da Lei 9.784/99. Mnemônico: CENORA (CE-xclusiva, NO-rmativo, RA-cursos).', 'Dica: Muito cobrado em provas de nível médio e superior.' from public.questions q where q.public_code = 'PPCE-DA-000049';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. São delegáveis.'),
  ('c', 'Incorreta. São delegáveis.'),
  ('d', 'Incorreta. São delegáveis.'),
  ('e', 'Incorreta. São delegáveis.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000049';

-- -----------------------------------------------------------------------------
-- QUESTÃO 050: RESPONSABILIDADE CIVIL (TEORIA DO RISCO INTEGRAL)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000050', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Responsabilidade civil do State', 'Evolução Doutrinária', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A Teoria do Risco Integral, modalidade extremada de responsabilidade objetiva que não admite causas excludentes, é aplicada no Brasil em casos de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Danos nucleares e ataques terroristas a aeronaves brasileiras.', 1),
  ('b', 'B', 'Acidentes de trânsito envolvendo viaturas policiais comuns.', 2),
  ('c', 'C', 'Queda de árvores em vias públicas durante tempestades.', 3),
  ('d', 'D', 'Fuga de presos de presídios de segurança média.', 4),
  ('e', 'E', 'Erros médicos em hospitais filantrópicos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000050';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000050' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Risco Integral.', 'Nesta teoria, o Estado funciona como um "segurador universal". Aplica-se a danos nucleares (Art. 21, XXIII, d da CF).', 'Dica: Cuidado, a regra geral é o Risco ADMINISTRATIVO (que admite excludentes).' from public.questions q where q.public_code = 'PPCE-DA-000050';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Risco administrativo.'),
  ('c', 'Incorreta. Risco administrativo (omissão/fortuito).'),
  ('d', 'Incorreta. Risco administrativo.'),
  ('e', 'Incorreta. Risco administrativo (se houver convênio/subvenção pública).')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000050';

-- -----------------------------------------------------------------------------
-- QUESTÃO 051: ATOS ADMINISTRATIVOS (INVALIDAÇÃO PELO JUDICIÁRIO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000051', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Revogação e anulação', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Poder Judiciário, ao analisar um ato administrativo discricionário, pode:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Anular o ato se ele for ilegal ou desproporcional.', 1),
  ('b', 'B', 'Revogar o ato se considerá-lo inoportuno.', 2),
  ('c', 'C', 'Substituir a escolha do administrador pela escolha do juiz.', 3),
  ('d', 'D', 'Alterar o mérito administrativo para melhor atender ao povo.', 4),
  ('e', 'E', 'O Judiciário é impedido de analisar atos discricionários em qualquer hipótese.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000051';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000051' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Controle Judicial do Mérito.', 'O Judiciário controla a LEGALIDADE. Um ato desproporcional ou irrazoável é ILEGAL, por isso pode ser anulado.', 'Dica: Mantenha em mente: Judiciário ANULA (ilegalidade). Administração ANULA ou REVOGA (mérito).' from public.questions q where q.public_code = 'PPCE-DA-000051';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Revogação é exclusiva de quem praticou o ato.'),
  ('c', 'Incorreta. Fere a independência dos poderes.'),
  ('d', 'Incorreta. Mérito é campo político-administrativo.'),
  ('e', 'Incorreta. Pode analisar se houve desvio de finalidade ou falta de razoabilidade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000051';

-- -----------------------------------------------------------------------------
-- QUESTÃO 052: ORGANIZAÇÃO ADMINISTRATIVA (ADMINISTRAÇÃO DIRETA vs INDIRETA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000052', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Organização Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A relação entre o Ministério da Justiça (Administração Direta) e o Departamento de Polícia Federal (Órgão da União) é de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Hierarquia e subordinação.', 1),
  ('b', 'B', 'Vinculação técnica sem hierarquia.', 2),
  ('c', 'C', 'Controle finalístico (tutela).', 3),
  ('d', 'D', 'Autonomia plena de pessoas jurídicas distintas.', 4),
  ('e', 'E', 'Cooperação internacional.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000052';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000052' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Hierarquia entre Órgãos.', 'Ambos pertencem à mesma pessoa jurídica (União). Entre órgãos da mesma pessoa há hierarquia.', 'Dica: Se fosse entre a União e uma Autarquia (pessoa diferente), haveria vinculação, não subordinação.' from public.questions q where q.public_code = 'PPCE-DA-000052';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Há hierarquia.'),
  ('c', 'Incorreta. Tutela ocorre na Administração Indireta.'),
  ('d', 'Incorreta. A PF não tem personalidade jurídica própria; é órgão.'),
  ('e', 'Incorreta. Ambos são órgãos nacionais.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000052';

-- -----------------------------------------------------------------------------
-- QUESTÃO 053: ATOS ADMINISTRATIVOS (CLASSIFICAÇÃO: ATOS GERAIS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000053', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Classificação', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Atos administrativos que atingem uma coletividade de pessoas indeterminadas, como um regulamento de trânsito, são classificados como:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Atos Gerais.', 1),
  ('b', 'B', 'Atos Individuais.', 2),
  ('c', 'C', 'Atos Internos.', 3),
  ('d', 'D', 'Atos de Império.', 4),
  ('e', 'E', 'Atos Compostos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000053';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000053' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Atos Gerais.', 'Atos gerais não têm destinatário certo. Prevalecem sobre os individuais.', 'Dica: Exemplo: Decreto que estabelece o horário de funcionamento das repartições.' from public.questions q where q.public_code = 'PPCE-DA-000053';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Atos individuais atingem destinatários certos.'),
  ('c', 'Incorreta. Atos internos atingem apenas os órgãos administrativos.'),
  ('d', 'Incorreta. Atos de império são impostos unilateralmente, mas podem ser individuais.'),
  ('e', 'Incorreta. Classificação quanto à formação do ato.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000053';

-- -----------------------------------------------------------------------------
-- QUESTÃO 054: LICITAÇÕES (OBJETO SINGULAR - INEXIGIBILIDADE)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000054', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Inexigibilidade', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A contratação de serviços técnicos especializados de natureza predominantemente intelectual, com profissionais de notável especialização, justifica a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Inexigibilidade de licitação.', 1),
  ('b', 'B', 'Dispensa de licitação por valor.', 2),
  ('c', 'C', 'Modalidade convite.', 3),
  ('d', 'D', 'Contratação via pregão eletrônico.', 4),
  ('e', 'E', 'Intervenção do Ministério Público.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000054';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000054' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Inexigibilidade por Notável Especialização.', 'Serviços singulares com profissionais renomados tornam inviável o julgamento objetivo da licitação.', 'Dica: Vedada para serviços de publicidade e divulgação.' from public.questions q where q.public_code = 'PPCE-DA-000054';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Dispensa é para casos de valores baixos ou situações específicas na lei.'),
  ('c', 'Incorreta. Modalidade extinta na nova lei.'),
  ('d', 'Incorreta. Pregão é para serviços COMUNS.'),
  ('e', 'Incorreta. O MP não contrata pela administração.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000054';

-- -----------------------------------------------------------------------------
-- QUESTÃO 055: PODERES ADMINISTRATIVOS (PODER DE POLÍCIA - DELEGAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000055', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes Administrativos', 'Poder de Polícia', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Segundo o entendimento atual do STF (Tema 532), é constitucional a delegação do poder de polícia a pessoas jurídicas de direito privado integrantes da Administração Indireta (ex: empresas públicas) para a fase de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Consentimento e Fiscalização apenas.', 1),
  ('b', 'B', 'Sanção e Ordem apenas.', 2),
  ('c', 'C', 'Ordem, Consentimento, Fiscalização e Sanção.', 3),
  ('d', 'D', 'Consentimento, Fiscalização e Sanção apenas.', 4),
  ('e', 'E', 'Apenas a fase de Ordem.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000055';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000055' and q.id = qo.question_id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Ciclo do Poder de Polícia.', 'O STF permite delegar Consentimento, Fiscalização e SANÇÃO (desde que a entidade seja de capital público e preste serviço público em regime não concorrencial).', 'Dica: A fase de ORDEM (legislar) continua indelegável.' from public.questions q where q.public_code = 'PPCE-DA-000055';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Também pode delegar a sanção (multa).'),
  ('b', 'Incorreta. Ordem é indelegável.'),
  ('c', 'Incorreta. Ordem é indelegável.'),
  ('e', 'Incorreta. Ordem é a única que NÃO pode ser delegada.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000055';

-- -----------------------------------------------------------------------------
-- QUESTÃO 056: RESPONSABILIDADE CIVIL (MORTE DE PRESO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000056', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Responsabilidade civil do Estado', 'Causas Omissivas', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Segundo o entendimento consolidado do STF (Recurso Extraordinário 841.526), em caso de morte de detento em estabelecimento penitenciário, a responsabilidade do Estado é:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Objetiva, em razão do seu dever de vigilância e proteção (custódia).', 1),
  ('b', 'B', 'Subjetiva, devendo a família provar que houve dolo do Estado.', 2),
  ('c', 'C', 'Inexistente, pois o preso assumiu o risco ao cometer o crime.', 3),
  ('d', 'D', 'Objetiva, mas apenas se o crime foi cometido por um agente público.', 4),
  ('e', 'E', 'Subjetiva por culpa anônima.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000056';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000056' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Responsabilidade por Presos.', 'O Estado tem o dever de custódia. Se o preso morre (mesmo por suicídio ou briga de facções), o Estado responde objetivamente, salvo se provar que a morte era absolutamente inevitável.', 'Dica: Tema fundamental para concursos de Polícia Penal.' from public.questions q where q.public_code = 'PPCE-DA-000056';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A custódia gera dever de proteção objetivo.'),
  ('c', 'Incorreta. O Estado deve garantir a integridade física do preso (Art. 5º, XLIX da CF).'),
  ('d', 'Incorreta. Responde mesmo se o dano foi causado por outro preso ou autoflagelo.'),
  ('e', 'Incorreta. Aplica-se a teoria objetiva.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000056';

-- -----------------------------------------------------------------------------
-- QUESTÃO 057: ATOS ADMINISTRATIVOS (FORMA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000057', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Requisitos e Elementos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'No Direito Administrativo, o elemento FORMA do ato administrativo:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'É, em regra, a forma escrita, admitindo-se exceções como gestos, sinais luminosos ou sonoros.', 1),
  ('b', 'B', 'Pode ser escolhida livremente pelo administrador em todos os casos.', 2),
  ('c', 'C', 'Deve ser sempre eletrônica para ser válida.', 3),
  ('d', 'D', 'Refere-se exclusivamente à assinatura da autoridade.', 4),
  ('e', 'E', 'É o elemento que permite ao administrador decidir sobre a conveniência do ato.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000057';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000057' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Elemento Forma.', 'A forma é o revestimento exterior do ato. Regra: Escrita. Exceção: Sinais de trânsito, apito policial.', 'Dica: A forma é requisito vinculado.' from public.questions q where q.public_code = 'PPCE-DA-000057';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A forma é vinculada à lei.'),
  ('c', 'Incorreta. A forma eletrônica é tendência, mas não obrigatória para todos os atos.'),
  ('d', 'Incorreta. Assinatura é parte da forma, mas não é tudo.'),
  ('e', 'Incorreta. Este é o elemento motivo/objeto do ato discricionário.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000057';

-- -----------------------------------------------------------------------------
-- QUESTÃO 058: LICITAÇÕES (DISPENSA DE LICITAÇÃO - VALOR)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000058', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Contratação Direta', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Na Lei 14.133/2021, a dispensa de licitação em razão do baixo valor para obras e serviços de engenharia ou de serviços de manutenção de veículos automotores é permitida até o limite de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'R$ 100.000,00.', 1),
  ('b', 'B', 'R$ 50.000,00.', 2),
  ('c', 'C', 'R$ 10.000,00.', 3),
  ('d', 'D', 'R$ 150.000,00.', 4),
  ('e', 'E', 'R$ 25.000,00.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000058';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000058' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Dispensa por Valor (Nova Lei).', 'Art. 75, I da Lei 14.133/21. Limite de 100 mil reais.', 'Dica: Para outros serviços e compras, o limite é de 50 mil reais (Art. 75, II).' from public.questions q where q.public_code = 'PPCE-DA-000058';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Limite para compras e serviços comuns.'),
  ('c', 'Incorreta. Valor defasado da lei antiga.'),
  ('d', 'Incorreta. Valor acima do limite legal.'),
  ('e', 'Incorreta. Valor abaixo do limite legal.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000058';

-- -----------------------------------------------------------------------------
-- QUESTÃO 059: CONTROLE DA ADMINISTRAÇÃO (SÚMULA 473 STF)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000059', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Controle e responsabilização da administração', 'Controle Administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Complete a frase da Súmula 473 do STF: "A administração pode anular seus próprios atos, quando eivados de vícios que os tornam ilegais [...] ou revogá-los, por motivo de:"', false); 

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Conveniência ou oportunidade.', 1),
  ('b', 'B', 'Improbidade ou corrupção.', 2),
  ('c', 'C', 'Pressão popular ou política.', 3),
  ('d', 'D', 'Falta de verba orçamentária.', 4),
  ('e', 'E', 'Decisão do Tribunal de Contas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000059';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000059' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Súmula 473 STF.', 'Consagra o princípio da autotutela.', 'Dica: Memorize esta súmula, ela cai em quase todos os concursos.' from public.questions q where q.public_code = 'PPCE-DA-000059';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Seria motivo de anulação.'),
  ('c', 'Incorreta. Não são os termos da súmula.'),
  ('d', 'Incorreta. Não são os termos da súmula.'),
  ('e', 'Incorreta. A autotutela independe de outros órgãos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000059';

-- -----------------------------------------------------------------------------
-- QUESTÃO 060: PODERES ADMINISTRATIVOS (PODER DE POLÍCIA - ATRIBUTOS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000060', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes Administrativos', 'Poder de Polícia', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A discricionariedade, a autoexecutoriedade e a coercibilidade são atributos clássicos de qual poder administrativo?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Poder de Polícia.', 1),
  ('b', 'B', 'Poder Disciplinar.', 2),
  ('c', 'C', 'Poder Hierárquico.', 3),
  ('d', 'D', 'Poder Regulamentar.', 4),
  ('e', 'E', 'Poder Judiciário.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000060';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000060' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Atributos do Poder de Polícia.', 'Mnemônico: DAC (Discricionariedade, Autoexecutoriedade, Coercibilidade).', 'Dica: Coercibilidade é a possibilidade de uso da força.' from public.questions q where q.public_code = 'PPCE-DA-000060';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Embora tenha alguns atributos, a DAC é marca do Poder de Polícia.'),
  ('c', 'Incorreta. Atributo principal é a subordinação.'),
  ('d', 'Incorreta. Atributo principal é a normatização.'),
  ('e', 'Incorreta. O Judiciário não atua via poder de polícia administrativo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000060';

-- -----------------------------------------------------------------------------
-- QUESTÃO 061: ESTADO, GOVERNO E ADMINISTRAÇÃO (SENTIDO FORMAL vs MATERIAL)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000061', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Conceitos e Elementos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A Administração Pública em sentido FORMAL (também chamado de subjetivo ou orgânico) compreende:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O conjunto de órgãos, agentes e pessoas jurídicas que exercem a função administrativa.', 1),
  ('b', 'B', 'A própria atividade administrativa (serviço público, fomento, polícia).', 2),
  ('c', 'C', 'As leis que regem o Direito Administrativo.', 3),
  ('d', 'D', 'O conjunto de metas políticas do Governo.', 4),
  ('e', 'E', 'O controle exercido pelo Tribunal de Contas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000061';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000061' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Sentidos da Administração.', 'Formal/Subjetivo = QUEM (órgãos, agentes). Material/Objetivo = O QUE (a atividade).', 'Dica: Escreva em iniciais maiúsculas: Administração (formal) vs administração (material).' from public.questions q where q.public_code = 'PPCE-DA-000061';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Este é o sentido MATERIAL.'),
  ('c', 'Incorreta. Refere-se à legislação.'),
  ('d', 'Incorreta. Refere-se ao conceito de Governo.'),
  ('e', 'Incorreta. Refere-se ao controle externo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000061';

-- -----------------------------------------------------------------------------
-- QUESTÃO 062: ATOS ADMINISTRATIVOS (INVALIDAÇÃO: CASSAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000062', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Revogação e anulação', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A extinção do ato administrativo quando o beneficiário descumpre as condições que deveriam permanecer para o exercício do direito denomina-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Cassação.', 1),
  ('b', 'B', 'Revogação.', 2),
  ('c', 'C', 'Anulação.', 3),
  ('d', 'D', 'Caducidade.', 4),
  ('e', 'E', 'Contraposição.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000062';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000062' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Cassação do Ato.', 'Ex: Cassação de licença de hotel que passa a funcionar como prostíbulo.', 'Dica: É uma sanção aplicada ao particular.' from public.questions q where q.public_code = 'PPCE-DA-000062';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Retirada por conveniência.'),
  ('c', 'Incorreta. Retirada por ilegalidade.'),
  ('d', 'Incorreta. Retirada por lei nova contrária.'),
  ('e', 'Incorreta. Retirada por ato novo contrário.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000062';

-- -----------------------------------------------------------------------------
-- QUESTÃO 063: LICITAÇÕES (OBJETO COMUM - PREGÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000063', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Modalidades', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A modalidade de licitação obrigatória para a aquisição de bens e serviços comuns, cujo critério de julgamento poderá ser o de menor preço ou o de maior desconto, é o:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Pregão.', 1),
  ('b', 'B', 'Concorrência.', 2),
  ('c', 'C', 'Leilão.', 3),
  ('d', 'D', 'Concurso.', 4),
  ('e', 'E', 'Convite.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000063';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000063' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Pregão.', 'O pregão é a modalidade para bens/serviços comuns (aqueles cujos padrões de desempenho podem ser definidos por edital).', 'Dica: Na Lei 14.133, o pregão não se aplica a obras de engenharia, mas se aplica a serviços comuns de engenharia.' from public.questions q where q.public_code = 'PPCE-DA-000063';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Concorrência é para bens/serviços especiais.'),
  ('c', 'Incorreta. Leilão é para venda.'),
  ('d', 'Incorreta. Concurso é para trabalho artístico/técnico.'),
  ('e', 'Incorreta. Extinto.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000063';

-- -----------------------------------------------------------------------------
-- QUESTÃO 064: PODERES ADMINISTRATIVOS (RESERVA DE LEI vs REGULAMENTO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000064', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes Administrativos', 'Poder Regulamentar', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O Decreto Autônomo, previsto no Art. 84, VI da CF/88, permite ao Presidente da República dispor, mediante decreto, sobre:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Organização e funcionamento da administração federal, quando não implicar aumento de despesa nem criação ou extinção de órgãos públicos.', 1),
  ('b', 'B', 'Extinção de cargos públicos, mesmo que ocupados.', 2),
  ('c', 'C', 'Criação de novos Ministérios em caso de guerra.', 3),
  ('d', 'D', 'Definição de crimes contra a administração pública.', 4),
  ('e', 'E', 'Aumento de salários de servidores por decreto.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000064';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000064' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Decreto Autônomo.', 'É a única exceção onde o decreto não serve apenas para "explicar" a lei, mas substitui a lei em matérias organizacionais específicas.', 'Dica: Também pode extinguir cargos, mas apenas se estiverem VAGOS.' from public.questions q where q.public_code = 'PPCE-DA-000064';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Somente se estiverem vagos.'),
  ('c', 'Incorreta. Criação/Extinção de ÓRGÃO exige lei.'),
  ('d', 'Incorreta. Matéria penal exige lei.'),
  ('e', 'Incorreta. Aumento de despesa é vedado via decreto autônomo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000064';

-- -----------------------------------------------------------------------------
-- QUESTÃO 065: RESPONSABILIDADE CIVIL (ATO LEGISLATIVO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000065', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Responsabilidade civil do State', 'Evolução Doutrinária', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A responsabilidade civil do Estado por atos legislativos (edição de leis) é, em regra, inexistente. Contudo, admite-se indenização excepcionalmente em casos de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Leis declaradas inconstitucionais pelo STF e leis de efeitos concretos que causem dano desproporcional.', 1),
  ('b', 'B', 'Qualquer lei que aumente impostos.', 2),
  ('c', 'C', 'Leis aprovadas por maioria simples.', 3),
  ('d', 'D', 'Leis que mudem a cor das fardas das polícias.', 4),
  ('e', 'E', 'Não há exceção no Brasil para atos legislativos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000065';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000065' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Responsabilidade por Atos Legislativos.', 'Se o STF diz que a lei é inconstitucional, o dano gerado por ela deve ser reparado. Leis de efeito concreto (que atingem pessoas certas) também geram dever.', 'Dica: Tema avançado de jurisprudência.' from public.questions q where q.public_code = 'PPCE-DA-000065';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Leis tributárias constitucionais não geram indenização.'),
  ('c', 'Incorreta. Quórum não é critério para responsabilidade.'),
  ('d', 'Incorreta. Poder de conformação do Estado.'),
  ('e', 'Incorreta. Existem as duas exceções mencionadas na letra A.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000065';

-- -----------------------------------------------------------------------------
-- QUESTÃO 066: PROCESSO ADMINISTRATIVO (PRINCÍPIO DA VERDADE MATERIAL)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000066', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Controle e responsabilização da administração', 'Processo Administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'No processo administrativo, a autoridade deve buscar os fatos como eles ocorreram na realidade, podendo inclusive produzir provas de ofício, independentemente do que foi alegado pelas partes. Este princípio é o da:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Verdade Material (ou Verdade Real).', 1),
  ('b', 'B', 'Verdade Formal.', 2),
  ('c', 'C', 'Livre Convencimento Motivado.', 3),
  ('d', 'D', 'Presunção de Culpa.', 4),
  ('e', 'E', 'Sigilo Administrativo.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000066';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000066' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Verdade Material.', 'No processo civil (privado), vale a verdade formal (o que está no papel). No administrativo (público), busca-se a verdade real para proteger o interesse público.', 'Dica: Permite a reabertura de prazos e produção de novas provas.' from public.questions q where q.public_code = 'PPCE-DA-000066';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Típica do processo civil clássico.'),
  ('c', 'Incorreta. Refere-se à forma como o juiz/autoridade avalia a prova, não à busca da verdade em si.'),
  ('d', 'Incorreta. Fere a presunção de inocência.'),
  ('e', 'Incorreta. Regra é a publicidade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000066';

-- -----------------------------------------------------------------------------
-- QUESTÃO 067: LICITAÇÕES (FASES DO PROCEDIMENTO - LEI 14.133/21)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000067', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Noções de Licitações', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'De acordo com a Lei 14.133/2021, a sequência correta das fases da licitação (rito comum) é:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Preparatória, divulgação do edital, apresentação de propostas, julgamento, habilitação, recursal e homologação.', 1),
  ('b', 'B', 'Habilitação, julgamento, edital e homologação.', 2),
  ('c', 'C', 'Apresentação de propostas, habilitação, edital e recursal.', 3),
  ('d', 'D', 'Preparatória, homologação, julgamento e habilitação.', 4),
  ('e', 'E', 'Edital, julgamento, homologação e habilitação.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000067';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000067' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Fases da Licitação.', 'Inverteu-se a lógica da lei antiga: agora a HABILITAÇÃO ocorre APÓS o julgamento (como já era no Pregão).', 'Dica: Economiza tempo, pois só se habilita quem venceu no julgamento.' from public.questions q where q.public_code = 'PPCE-DA-000067';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Habilitação não é a primeira fase.'),
  ('c', 'Incorreta. Edital deve vir antes das propostas.'),
  ('d', 'Incorreta. Homologação é a última fase.'),
  ('e', 'Incorreta. Habilitação deve vir antes da homologação.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000067';

-- -----------------------------------------------------------------------------
-- QUESTÃO 068: ATOS ADMINISTRATIVOS (INVALIDAÇÃO: CONVALIDAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000068', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Revogação, anulação e convalidação do ato administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A convalidação de um ato administrativo tem efeito:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Retroativo (Ex Tunc).', 1),
  ('b', 'B', 'Não retroativo (Ex Nunc).', 2),
  ('c', 'C', 'Diferido.', 3),
  ('d', 'D', 'Suspensivo.', 4),
  ('e', 'E', 'Erga Omnes imediato.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000068';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000068' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Efeito da Convalidação.', 'A convalidação "conserta" o ato desde o seu nascimento, por isso retroage (Ex Tunc).', 'Dica: Se não retroagisse, o período entre o ato viciado e a convalidação continuaria ilegal.' from public.questions q where q.public_code = 'PPCE-DA-000068';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Efeito da revogação.'),
  ('c', 'Incorreta. Efeito que ocorre no futuro.'),
  ('d', 'Incorreta. Trava os efeitos.'),
  ('e', 'Incorreta. Refere-se à abrangência, não ao tempo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000068';

-- -----------------------------------------------------------------------------
-- QUESTÃO 069: PODERES ADMINISTRATIVOS (PODER DE POLÍCIA vs JUDICIÁRIA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000069', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes Administrativos', 'Poder de polícia', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A principal diferença entre a Polícia Administrativa (Poder de Polícia) e a Polícia Judiciária é que:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A administrativa incide sobre bens, direitos e atividades; a judiciária incide sobre pessoas.', 1),
  ('b', 'B', 'A administrativa é exercida apenas pela PM; a judiciária apenas pela PC.', 2),
  ('c', 'C', 'A administrativa é sempre punitiva; a judiciária é sempre preventiva.', 3),
  ('d', 'D', 'A administrativa não admite controle judicial; a judiciária sim.', 4),
  ('e', 'E', 'A administrativa é regida pelo Direito Penal; a judiciária pelo Direito Administrativo.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000069';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000069' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Polícia Administrativa vs Judiciária.', 'Polícia Administrativa (Ex: Vigilância Sanitária, Fiscalização de Trânsito) foca no ilícito administrativo. Judiciária (Ex: Investigação da PC/PF) foca no ilícito PENAL.', 'Dica: A Polícia Penal exerce funções de ambas, mas a guarda do presídio é majoritariamente administrativa.' from public.questions q where q.public_code = 'PPCE-DA-000069';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Vários órgãos exercem poder de polícia (IBAMA, ANVISA, etc).'),
  ('c', 'Incorreta. Ambas podem ser preventivas ou repressivas.'),
  ('d', 'Incorreta. Todos os atos admitem controle judicial.'),
  ('e', 'Incorreta. É o contrário.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000069';

-- -----------------------------------------------------------------------------
-- QUESTÃO 070: ORGANIZAÇÃO ADMINISTRATIVA (ADMINISTRAÇÃO INDIRETA - FUNDAÇÕES)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000070', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Organização Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'As Fundações Públicas de Direito Público possuem natureza jurídica idêntica à de qual outra entidade?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Autarquias (são chamadas de Autarquias Fundacionais).', 1),
  ('b', 'B', 'Empresas Públicas.', 2),
  ('c', 'C', 'Sociedades de Economia Mista.', 3),
  ('d', 'D', 'Órgãos ministeriais.', 4),
  ('e', 'E', 'Organizações Sociais (OSs).', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000070';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000070' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Fundações de Direito Público.', 'O STF equipara as fundações de direito público às autarquias (regime jurídico público pleno).', 'Dica: Se forem de direito PRIVADO, o regime é híbrido.' from public.questions q where q.public_code = 'PPCE-DA-000070';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. EP são de direito privado.'),
  ('c', 'Incorreta. SEM são de direito privado.'),
  ('d', 'Incorreta. Órgãos não têm personalidade jurídica.'),
  ('e', 'Incorreta. OSs são entes do terceiro setor (privados).')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000070';

-- -----------------------------------------------------------------------------
-- QUESTÃO 071: RESPONSABILIDADE CIVIL (ESTADO DE NECESSIDADE)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000071', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Responsabilidade civil do State', 'Causas excludentes e nexo de causalidade', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O policial penal que, para conter uma rebelião iminente e salvar vidas, causa danos materiais ao patrimônio de um terceiro (ex: arromba um portão de vizinho do presídio), agindo em estado de necessidade:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O Estado responde objetivamente perante o terceiro, mas terá direito de regresso contra quem deu causa ao perigo (se houver).', 1),
  ('b', 'B', 'O policial responde pessoalmente com seu patrimônio.', 2),
  ('c', 'C', 'O Estado está isento de qualquer indenização por ser ato lícito.', 3),
  ('d', 'D', 'O terceiro deve suportar o prejuízo sem direito a nada.', 4),
  ('e', 'E', 'O Estado responde apenas se houver dolo do policial.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000071';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000071' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Responsabilidade em Ato Lícito.', 'O Estado responde por atos lícitos ou ilícitos. Se causou dano a terceiro inocente para salvar um bem maior, deve indenizar e depois cobrar de quem causou a confusão.', 'Dica: O sacrifício individual em prol do coletivo deve ser repartido por todos (via impostos/indenização).' from public.questions q where q.public_code = 'PPCE-DA-000071';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O agente não responde perante o terceiro diretamente.'),
  ('c', 'Incorreta. Atos lícitos também geram dever de indenizar se houver dano especial.'),
  ('d', 'Incorreta. Fere o princípio da repartição dos encargos sociais.'),
  ('e', 'Incorreta. A responsabilidade do Estado é objetiva.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000071';

-- -----------------------------------------------------------------------------
-- QUESTÃO 072: ATOS ADMINISTRATIVOS (INVALIDAÇÃO: CONVALIDAÇÃO - COMPETÊNCIA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000072', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Revogação, anulação e convalidação do ato administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Um ato administrativo praticado por autoridade incompetente pode ser convalidado pela autoridade superior competente por meio do instituto da:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ratificação.', 1),
  ('b', 'B', 'Reforma.', 2),
  ('c', 'C', 'Conversão.', 3),
  ('d', 'D', 'Substituição.', 4),
  ('e', 'E', 'Avocação retroativa.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000072';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000072' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Ratificação.', 'Ratificar é confirmar o ato praticado por subordinado incompetente, assumindo a validade dele retroativamente.', 'Dica: Só cabe se a competência NÃO for exclusiva.' from public.questions q where q.public_code = 'PPCE-DA-000072';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Reforma é quando a autoridade retira a parte ilegal e mantém o resto.'),
  ('c', 'Incorreta. Conversão é transformar um ato inválido em outro válido de espécie diferente.'),
  ('d', 'Incorreta. Termo genérico.'),
  ('e', 'Incorreta. Não existe este termo técnico.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000072';

-- -----------------------------------------------------------------------------
-- QUESTÃO 073: LICITAÇÕES (MENOR PREÇO vs MAIOR DESCONTO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000073', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Noções de Licitações', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O critério de julgamento "maior desconto" na nova Lei de Licitações utiliza como base de referência:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O preço global fixado no edital ou em tabelas oficiais de preços.', 1),
  ('b', 'B', 'A média das propostas dos concorrentes.', 2),
  ('c', 'C', 'O menor preço ofertado no mercado privado.', 3),
  ('d', 'D', 'O lucro líquido esperado pela empresa.', 4),
  ('e', 'E', 'O valor do salário mínimo vigente.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000073';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000073' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Maior Desconto.', 'Muito comum em obras ou serviços com tabelas de referência (ex: Tabela SINAPI). Ganha quem der o maior desconto sobre a tabela.', 'Dica: É uma variação do menor preço.' from public.questions q where q.public_code = 'PPCE-DA-000073';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Inviável para julgamento objetivo.'),
  ('c', 'Incorreta. A referência deve ser o edital/tabela oficial.'),
  ('d', 'Incorreta. Assunto interno da empresa.'),
  ('e', 'Incorreta. Não é base para licitação.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000073';

-- -----------------------------------------------------------------------------
-- QUESTÃO 074: PODERES ADMINISTRATIVOS (PODER REGULAMENTAR - LIMITES)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000074', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes Administrativos', 'Poder regulamentar', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Caso um Decreto do Governador do Estado crie uma nova obrigação tributária não prevista em lei, esse decreto estará viciado por invadir a competência do:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Poder Legislativo.', 1),
  ('b', 'B', 'Poder Judiciário.', 2),
  ('c', 'C', 'Tribunal de Contas.', 3),
  ('d', 'D', 'Ministério Público.', 4),
  ('e', 'E', 'Conselho da República.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000074';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000074' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Limites do Poder Regulamentar.', 'O poder regulamentar é SUBORDINADO à lei. Se cria obrigação nova, usurpa função legislativa.', 'Dica: O Legislativo pode sustar esse decreto (Art. 49, V da CF).' from public.questions q where q.public_code = 'PPCE-DA-000074';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O Judiciário apenas anulará se provocado.'),
  ('c', 'Incorreta. Órgão de controle financeiro.'),
  ('d', 'Incorreta. Órgão de fiscalização da lei.'),
  ('e', 'Incorreta. Órgão de consulta.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000074';

-- -----------------------------------------------------------------------------
-- QUESTÃO 075: ATOS ADMINISTRATIVOS (FATO vs ATO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000075', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Fato e ato administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A demolição de um prédio que ameaça ruir, executada materialmente pela prefeitura, é classificada como um:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Fato administrativo.', 1),
  ('b', 'B', 'Ato administrativo puro.', 2),
  ('c', 'C', 'Contrato administrativo.', 3),
  ('d', 'D', 'Lei em sentido material.', 4),
  ('e', 'E', 'Parecer técnico vinculante.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000075';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000075' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Fato Administrativo.', 'O ATO é a ordem de demolição (declaração). O FATO é a demolição em si (execução material).', 'Dica: Fatos administrativos não produzem efeitos jurídicos por si só, eles são a realização do que o ato previu.' from public.questions q where q.public_code = 'PPCE-DA-000075';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O ato é a decisão jurídica anterior.'),
  ('c', 'Incorreta. Não há acordo de vontades aqui.'),
  ('d', 'Incorreta. Lei é norma geral.'),
  ('e', 'Incorreta. Parecer é apenas opinião.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000075';

-- -----------------------------------------------------------------------------
-- QUESTÃO 076: LICITAÇÕES (DISPENSA vs INEXIGIBILIDADE - MUDANÇA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000076', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Contratação Direta', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A contratação de profissional do setor artístico, diretamente ou por meio de empresário exclusivo, desde que consagrado pela crítica especializada ou pela opinião pública, é caso de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Inexigibilidade de licitação.', 1),
  ('b', 'B', 'Dispensa de licitação.', 2),
  ('c', 'C', 'Licitação dispensada.', 3),
  ('d', 'D', 'Modalidade concurso.', 4),
  ('e', 'E', 'Contratação por diálogo competitivo.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000076';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000076' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Inexigibilidade Artística.', 'Não há como comparar objetivamente dois artistas (inviabilidade de competição).', 'Dica: Lei 14.133, Art. 74, II.' from public.questions q where q.public_code = 'PPCE-DA-000076';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Dispensa pressupõe que a competição é possível, mas a lei desobriga.'),
  ('c', 'Incorreta. Casos de alienação de bens.'),
  ('d', 'Incorreta. Concurso escolhe o trabalho, não contrata o artista consagrado diretamente por sua fama.'),
  ('e', 'Incorreta. Diálogo é modalidade de licitação, não contratação direta.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000076';

-- -----------------------------------------------------------------------------
-- QUESTÃO 077: ATOS ADMINISTRATIVOS (VALIDADE vs EFICÁCIA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000077', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Validade, eficácia e autoexecutoriedade do ato administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Um ato administrativo que preenche todos os requisitos legais, mas que ainda não pode produzir efeitos por estar sujeito a uma condição suspensiva, é um ato:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Válido, porém ineficaz.', 1),
  ('b', 'B', 'Inválido e ineficaz.', 2),
  ('c', 'C', 'Válido e eficaz.', 3),
  ('d', 'D', 'Inexistente.', 4),
  ('e', 'E', 'Imperfeito.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000077';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000077' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Validade vs Eficácia.', 'Validade = Conformidade com a lei. Eficácia = Aptidão para produzir efeitos.', 'Dica: Exemplo: Ato que depende de publicação no Diário Oficial para começar a valer.' from public.questions q where q.public_code = 'PPCE-DA-000077';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Se preenche os requisitos, é válido.'),
  ('c', 'Incorreta. Falta o evento futuro (condição) para ser eficaz.'),
  ('d', 'Incorreta. O ato já foi praticado.'),
  ('e', 'Incorreta. Imperfeito é o ato que ainda não concluiu seu ciclo de formação.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000077';

-- -----------------------------------------------------------------------------
-- QUESTÃO 078: PODERES ADMINISTRATIVOS (PODER HIERÁRQUICO - ORDENS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000078', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes Administrativos', 'Poder hierárquico', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O dever de obediência do subordinado às ordens de seus superiores admite uma exceção fundamental. O subordinado não deve cumprir a ordem quando esta for:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Manifestamente ilegal.', 1),
  ('b', 'B', 'Apenas inconveniente.', 2),
  ('c', 'C', 'Difícil de executar.', 3),
  ('d', 'D', 'Contrária à opinião pessoal do servidor.', 4),
  ('e', 'E', 'Dada verbalmente.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000078';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000078' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Dever de Obediência.', 'Ordens ilegais não se cumprem. Se o fizer, o subordinado responde junto com o superior.', 'Dica: Lei 8.112/90 e estatutos estaduais preveem isso expressamente.' from public.questions q where q.public_code = 'PPCE-DA-000078';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Mérito da ordem não cabe ao subordinado discutir.'),
  ('c', 'Incorreta. Dificuldade não isenta do cumprimento.'),
  ('d', 'Incorreta. Opinião pessoal não prevalece sobre a hierarquia.'),
  ('e', 'Incorreta. Ordens podem ser verbais em casos urgentes.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000078';

-- -----------------------------------------------------------------------------
-- QUESTÃO 079: LICITAÇÕES (AGENTES DE CONTRATAÇÃO - LEI 14.133/21)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000079', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Noções de Licitações', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A pessoa designada pela autoridade competente para conduzir a licitação, acompanhar o trâmite do certame e tomar decisões na fase externa, é chamada pela Lei 14.133/2021 de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Agente de contratação.', 1),
  ('b', 'B', 'Pregoeiro.', 2),
  ('c', 'C', 'Comissão de licitação.', 3),
  ('d', 'D', 'Fiscal de contrato.', 4),
  ('e', 'E', 'Ordenador de despesas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000079';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000079' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Agente de Contratação.', 'Substituiu a antiga figura da "Comissão de Licitação" para a maioria dos casos, visando a segregação de funções e celeridade.', 'Dica: Em licitações de bens/serviços comuns (pregão), ele será chamado de Pregoeiro.' from public.questions q where q.public_code = 'PPCE-DA-000079';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É o nome específico para o pregão.'),
  ('c', 'Incorreta. Nome da lei antiga (ainda existe para casos especiais, mas a figura central agora é o agente).'),
  ('d', 'Incorreta. Atua após a assinatura do contrato.'),
  ('e', 'Incorreta. Autoriza o pagamento.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000079';

-- -----------------------------------------------------------------------------
-- QUESTÃO 080: RESPONSABILIDADE CIVIL (TERCEIRO SETOR)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000080', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Responsabilidade civil do State', 'Responsabilidade Civil do Estado', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Uma concessionária de serviço público (pessoa jurídica de direito privado) responde pelos danos causados a usuários e não usuários do serviço:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Objetivamente, nos termos do Art. 37, § 6º da CF/88.', 1),
  ('b', 'B', 'Subjetivamente, exigindo prova de culpa.', 2),
  ('c', 'C', 'Objetivamente apenas perante os usuários.', 3),
  ('d', 'D', 'O Estado responde diretamente e a concessionária subsidiariamente.', 4),
  ('e', 'E', 'Não responde, pois o risco é do Estado delegante.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000080';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000080' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Responsabilidade de Concessionárias.', 'Entendimento fixado pelo STF (RE 591.874). A responsabilidade é objetiva inclusive para NÃO usuários.', 'Dica: Ex: Ônibus de concessionária que bate em carro particular.' from public.questions q where q.public_code = 'PPCE-DA-000080';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O regime é de direito público (objetivo).'),
  ('c', 'Incorreta. Superado pelo STF.'),
  ('d', 'Incorreta. É o contrário: Concessionária direto, Estado subsidiário.'),
  ('e', 'Incorreta. Elas respondem por seus próprios atos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000080';

-- -----------------------------------------------------------------------------
-- QUESTÃO 081: ATOS ADMINISTRATIVOS (MOTIVAÇÃO vs MOTIVO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000081', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Requisitos e Elementos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A exposição por escrito dos fundamentos de fato e de direito que justificam a prática do ato administrativo chama-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Motivação.', 1),
  ('b', 'B', 'Motivo.', 2),
  ('c', 'C', 'Justificativa subjetiva.', 3),
  ('d', 'D', 'Fundamentação externa.', 4),
  ('e', 'E', 'Mérito.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000081';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000081' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Motivo vs Motivação.', 'MOTIVO é a situação de fato (ex: bater o carro). MOTIVAÇÃO é o texto escrito contando isso (ex: o relatório do acidente).', 'Dica: A motivação é, em regra, obrigatória para permitir o controle do ato.' from public.questions q where q.public_code = 'PPCE-DA-000081';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Motivo é o fato em si, a motivação é o texto.'),
  ('c', 'Incorreta. Deve ser objetiva.'),
  ('d', 'Incorreta. Nome não técnico.'),
  ('e', 'Incorreta. Mérito envolve a escolha, não a escrita do fundamento.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000081';

-- -----------------------------------------------------------------------------
-- QUESTÃO 082: PODERES ADMINISTRATIVOS (PODER HIERÁRQUICO - REVISÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000082', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes Administrativos', 'Poder hierárquico', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O poder hierárquico permite que a autoridade superior:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Dê ordens, fiscalize, reveja atos, delegue e avoque competências.', 1),
  ('b', 'B', 'Aplique sanções a particulares que não possuem contrato com o Estado.', 2),
  ('c', 'C', 'Crie novas Secretarias por meio de portaria.', 3),
  ('d', 'D', 'Anule decisões definitivas do Poder Judiciário.', 4),
  ('e', 'E', 'Exerça controle sobre os demais entes federativos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000082';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000082' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Manifestações do Poder Hierárquico.', 'É a estrutura interna de comando da administração.', 'Dica: Lembre-se: NÃO há hierarquia entre a Administração Direta e a Indireta.' from public.questions q where q.public_code = 'PPCE-DA-000082';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Poder de Polícia.'),
  ('c', 'Incorreta. Criação de órgão exige lei.'),
  ('d', 'Incorreta. Fere a separação de poderes.'),
  ('e', 'Incorreta. Entre entes federativos há autonomia, não hierarquia.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000082';

-- -----------------------------------------------------------------------------
-- QUESTÃO 083: LICITAÇÕES (CONTRATO DE EFICIÊNCIA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000083', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Contratos Administrativos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Nos contratos de eficiência (Lei 14.133/21), a remuneração do contratado será baseada em:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Um percentual da economia efetivamente gerada para a Administração.', 1),
  ('b', 'B', 'Um valor fixo mensal independentemente do resultado.', 2),
  ('c', 'C', 'No número de funcionários alocados no projeto.', 3),
  ('d', 'D', 'No menor preço global da proposta.', 4),
  ('e', 'E', 'Em créditos tributários futuros.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000083';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000083' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Contrato de Eficiência.', 'O contratado recebe "pelo que economizou". É o critério do MAIOR RETORNO ECONÔMICO.', 'Dica: Muito usado para modernização de iluminação pública ou sistemas de TI.' from public.questions q where q.public_code = 'PPCE-DA-000083';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Seria um contrato comum de prestação de serviço.'),
  ('c', 'Incorreta. Critério de esforço, não de resultado.'),
  ('d', 'Incorreta. Não define a essência da eficiência.'),
  ('e', 'Incorreta. Pagamento deve ser em pecúnia ou compensação prevista.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000083';

-- -----------------------------------------------------------------------------
-- QUESTÃO 084: ATOS ADMINISTRATIVOS (ESPÉCIES: ATOS ORDINATÓRIOS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000084', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Atos administrativos em espécie', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Instruções, circulares, avisos e ordens de serviço são exemplos de atos:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ordinatórios.', 1),
  ('b', 'B', 'Normativos.', 2),
  ('c', 'C', 'Negociais.', 3),
  ('d', 'D', 'Punitivos.', 4),
  ('e', 'E', 'Enunciativos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000084';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000084' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Atos Ordinatórios.', 'Visam disciplinar o funcionamento interno e a conduta dos servidores.', 'Dica: Derivam do poder hierárquico.' from public.questions q where q.public_code = 'PPCE-DA-000084';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Atos normativos atingem terceiros externos.'),
  ('c', 'Incorreta. Atos negociais dependem de pedido do particular.'),
  ('d', 'Incorreta. Atos punitivos aplicam multas/suspensões.'),
  ('e', 'Incorreta. Atos enunciativos apenas declaram fatos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000084';

-- -----------------------------------------------------------------------------
-- QUESTÃO 085: RESPONSABILIDADE CIVIL (TEORIA DA CULPA ADMINISTRATIVA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000085', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Responsabilidade civil do State', 'Evolução Doutrinária', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A teoria da "Falta do Serviço" (faute du service), que exige a prova de que o serviço não funcionou, funcionou mal ou funcionou tardiamente, é a base para a responsabilidade:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Subjetiva do Estado por omissão genérica.', 1),
  ('b', 'B', 'Objetiva do Estado por atos comissivos.', 2),
  ('c', 'C', 'Integral do Estado por danos nucleares.', 3),
  ('d', 'D', 'Subjetiva do agente público perante o terceiro.', 4),
  ('e', 'E', 'Solidária entre Estado e Agente.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000085';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000085' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Culpa Administrativa.', 'É a transição entre a teoria subjetiva civilista e a objetiva. No Brasil, vigora para as omissões genéricas.', 'Dica: Também chamada de "culpa anônima".' from public.questions q where q.public_code = 'PPCE-DA-000085';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Atos comissivos usam a Teoria do Risco Administrativo (Objetiva).'),
  ('c', 'Incorreta. Risco Integral independe de prova de falta do serviço.'),
  ('d', 'Incorreta. O agente não responde perante o terceiro.'),
  ('e', 'Incorreta. No Brasil a responsabilidade do Estado é direta e a do agente é regressiva.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000085';

-- -----------------------------------------------------------------------------
-- QUESTÃO 086: LICITAÇÕES (SANEAMENTO DE FALHAS - LEI 14.133/21)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000086', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Noções de Licitações', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'De acordo com a nova Lei de Licitações, falhas puramente formais que não comprometam a isonomia ou o interesse público durante a fase de habilitação:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Podem ser saneadas pela Administração, permitindo que o licitante complemente informações ou corrija erros.', 1),
  ('b', 'B', 'Devem obrigatoriamente levar à desclassificação imediata do licitante.', 2),
  ('c', 'C', 'Só podem ser corrigidas se o licitante pagar uma multa.', 3),
  ('d', 'D', 'Anulam todo o procedimento licitatório.', 4),
  ('e', 'E', 'Podem ser corrigidas apenas na fase recursal judicial.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000086';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000086' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Saneamento de Falhas.', 'A Lei 14.133 preza pela eficiência e seleção da melhor proposta, evitando o excesso de formalismo.', 'Dica: Princípio do Formalismo Moderado.' from public.questions q where q.public_code = 'PPCE-DA-000086';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Seria formalismo excessivo (rigidez desnecessária).'),
  ('c', 'Incorreta. Não há previsão de multa para saneamento.'),
  ('d', 'Incorreta. A anulação exige ilegalidade grave.'),
  ('e', 'Incorreta. O saneamento deve ocorrer preferencialmente na fase administrativa.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000086';

-- -----------------------------------------------------------------------------
-- QUESTÃO 087: ATOS ADMINISTRATIVOS (INVALIDAÇÃO: CADUCIDADE)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000087', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Revogação e anulação', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A extinção do ato administrativo em virtude de norma jurídica superveniente que torne inviável a manutenção do ato anterior denomina-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Caducidade.', 1),
  ('b', 'B', 'Cassação.', 2),
  ('c', 'C', 'Revogação.', 3),
  ('d', 'D', 'Anulação.', 4),
  ('e', 'E', 'Contraposição.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000087';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000087' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Caducidade do Ato.', 'Ex: Alguém tem licença para explorar um quiosque em local que lei nova transformou em área de preservação permanente.', 'Dica: Lei nova mata o ato velho.' from public.questions q where q.public_code = 'PPCE-DA-000087';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Descumprimento pelo beneficiário.'),
  ('c', 'Incorreta. Mérito administrativo.'),
  ('d', 'Incorreta. Ilegalidade.'),
  ('e', 'Incorreta. Ato novo contrário.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000087';

-- -----------------------------------------------------------------------------
-- QUESTÃO 088: PODERES ADMINISTRATIVOS (PODER DE POLÍCIA - LIMITES)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000088', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes Administrativos', 'Poder de polícia', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Poder de Polícia, embora discricionário, encontra limites fundamentais na:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Razoabilidade e Proporcionalidade.', 1),
  ('b', 'B', 'Vontade soberana do agente fiscalizador.', 2),
  ('c', 'C', 'Capacidade financeira do infrator apenas.', 3),
  ('d', 'D', 'Opinião pública momentânea.', 4),
  ('e', 'E', 'Não há limites para o poder de polícia.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000088';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000088' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Limites da Polícia.', 'A medida deve ser necessária, adequada e proporcional ao fim visado. O excesso gera nulidade.', 'Dica: O Judiciário anula atos de polícia que violam a proporcionalidade.' from public.questions q where q.public_code = 'PPCE-DA-000088';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Deve seguir a lei.'),
  ('c', 'Incorreta. Multa deve considerar a gravidade também.'),
  ('d', 'Incorreta. Deve ser impessoal.'),
  ('e', 'Incorreta. Absolutamente errado no Estado Democrático de Direito.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000088';

-- -----------------------------------------------------------------------------
-- QUESTÃO 089: ORGANIZAÇÃO ADMINISTRATIVA (ADMINISTRAÇÃO DIRETA - ÓRGÃOS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000089', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Organização Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Pela Teoria do Órgão (ou Teoria da Imputação Volitiva), os atos praticados pelo agente público são imputados:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'À Pessoa Jurídica a que o órgão pertence.', 1),
  ('b', 'B', 'Ao próprio agente, pessoalmente.', 2),
  ('c', 'C', 'Ao Chefe do Poder Executivo, exclusivamente.', 3),
  ('d', 'D', 'À família do agente em caso de morte.', 4),
  ('e', 'E', 'Ao Ministério Público para fiscalização.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000089';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000089' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Teoria do Órgão.', 'O órgão é parte da pessoa jurídica. Quando o braço (agente) se move, é o corpo (Estado) que agiu.', 'Dica: Criada por Otto Gierke.' from public.questions q where q.public_code = 'PPCE-DA-000089';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Seria a teoria do mandato ou representação (superadas).'),
  ('c', 'Incorreta. Imputa-se ao Estado, não necessariamente ao chefe.'),
  ('d', 'Incorreta. Absurdo jurídico.'),
  ('e', 'Incorreta. O MP fiscaliza, mas não recebe a imputação do ato.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000089';

-- -----------------------------------------------------------------------------
-- QUESTÃO 090: CONTROLE DA ADMINISTRAÇÃO (CONTRADITÓRIO - SÚMULA VINCULANTE 3)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000090', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Controle e responsabilização da administração', 'Processo Administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Nos processos perante o Tribunal de Contas da União (TCU) que resultem em anulação ou revogação de ato administrativo que beneficie o interessado, é obrigatória a observância do contraditório e da ampla defesa, EXCETO na:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Apreciação da legalidade do ato de concessão inicial de aposentadoria, reforma e pensão.', 1),
  ('b', 'B', 'Punição de gestores por má gestão de verba pública.', 2),
  ('c', 'C', 'Análise de contratos de obras superfaturadas.', 3),
  ('d', 'D', 'Fiscalização de editais de concurso público.', 4),
  ('e', 'E', 'Revisão de atos de promoção de carreira.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000090';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000090' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'SV 3 do STF.', 'Como a aposentadoria inicial é um ato COMPLEXO, ela só se torna perfeita após o registro no TCU. Por isso, no primeiro momento, o TCU pode negar sem ouvir o interessado.', 'Dica: Se passar de 5 anos, o TCU deve ouvir o interessado por segurança jurídica.' from public.questions q where q.public_code = 'PPCE-DA-000090';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Exige ampla defesa.'),
  ('c', 'Incorreta. Exige ampla defesa.'),
  ('d', 'Incorreta. Exige ampla defesa.'),
  ('e', 'Incorreta. Exige ampla defesa.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000090';

-- -----------------------------------------------------------------------------
-- QUESTÃO 091: ATOS ADMINISTRATIVOS (SILÊNCIO vs ATO TÁCITO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000091', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'O silêncio no direito administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O chamado "ato administrativo tácito" ocorre quando:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A lei atribui expressamente um efeito jurídico ao silêncio da Administração.', 1),
  ('b', 'B', 'O administrador esquece de assinar o ato.', 2),
  ('c', 'C', 'O particular desiste do pedido verbalmente.', 3),
  ('d', 'D', 'O ato é praticado por gestos ou sinais.', 4),
  ('e', 'E', 'O Judiciário decide no lugar da Administração.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000091';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000091' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Ato Tácito.', 'Diferente do silêncio puro (fato), o ato tácito é quando o silêncio ganha "cor" de deferimento ou indeferimento por força de lei.', 'Dica: Ex: Lei que diz: se em 30 dias a prefeitura não responder, a licença considera-se concedida.' from public.questions q where q.public_code = 'PPCE-DA-000091';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Ato incompleto/irregular.'),
  ('c', 'Incorreta. Desistência do processo.'),
  ('d', 'Incorreta. Atos simbólicos.'),
  ('e', 'Incorreta. Interferência de poderes.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000091';

-- -----------------------------------------------------------------------------
-- QUESTÃO 092: LICITAÇÕES (SANÇÕES - LEI 14.133/21)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000092', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Contratos Administrativos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Na Lei 14.133/2021, qual sanção impede o licitante de licitar ou contratar com TODA a Administração Pública (União, Estados, DF e Municípios)?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Declaração de inidoneidade para licitar ou contratar.', 1),
  ('b', 'B', 'Impedimento de licitar e contratar.', 2),
  ('c', 'C', 'Suspensão temporária.', 3),
  ('d', 'D', 'Multa compensatória.', 4),
  ('e', 'E', 'Advertência verbal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000092';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000092' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Sanções na Nova Lei.', 'A DECLARAÇÃO DE INIDONEIDADE tem alcance nacional. O IMPEDIMENTO tem alcance restrito ao ente que aplicou.', 'Dica: Diferença crucial entre os incisos III e IV do Art. 156.' from public.questions q where q.public_code = 'PPCE-DA-000092';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Alcance apenas no âmbito da Administração Direta e Indireta do ente federativo que a aplicou.'),
  ('c', 'Incorreta. Termo da lei antiga.'),
  ('d', 'Incorreta. É sanção pecuniária.'),
  ('e', 'Incorreta. Sanção mais leve.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000092';

-- -----------------------------------------------------------------------------
-- QUESTÃO 093: RESPONSABILIDADE CIVIL (ATOS JUDICIAIS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000093', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Responsabilidade civil do Estado', 'Responsabilidade Civil do Estado', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O Estado responde civilmente por erro judiciário ou por ficar o preso além do tempo fixado na sentença:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, conforme determinação expressa do Art. 5º, LXXV da CF.', 1),
  ('b', 'B', 'Não, pois o Judiciário é soberano.', 2),
  ('c', 'C', 'Apenas se provado dolo do magistrado.', 3),
  ('d', 'D', 'Apenas em crimes hediondos.', 4),
  ('e', 'E', 'O Estado só responde se houver denúncia ao CNJ.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000093';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000093' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Erro Judiciário.', 'O Estado deve indenizar o condenado por erro judiciário. É uma das poucas exceções onde atos jurisdicionais geram responsabilidade direta.', 'Dica: Muito importante para quem trabalha no sistema prisional.' from public.questions q where q.public_code = 'PPCE-DA-000093';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Ninguém está acima da Constituição.'),
  ('c', 'Incorreta. A regra do erro judiciário é objetiva perante a vítima.'),
  ('d', 'Incorreta. Aplica-se a qualquer crime.'),
  ('e', 'Incorreta. CNJ é controle administrativo, não condição para indenização.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000093';

-- -----------------------------------------------------------------------------
-- QUESTÃO 094: PODERES ADMINISTRATIVOS (PODER DISCIPLINAR vs HIERÁRQUICO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000094', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes Administrativos', 'Poder disciplinar', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A aplicação de uma suspensão a um policial penal que faltou ao serviço sem justificativa é uma manifestação do:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Poder Disciplinar (fundamentado na Hierarquia).', 1),
  ('b', 'B', 'Poder de Polícia.', 2),
  ('c', 'C', 'Poder Regulamentar.', 3),
  ('d', 'D', 'Poder de Império Puro.', 4),
  ('e', 'E', 'Autonomia federativa.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000094';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000094' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Poder Disciplinar.', 'Sanções a servidores = Poder Disciplinar + Poder Hierárquico. Sanções a particulares com vínculo = Poder Disciplinar apenas.', 'Dica: Sanções a particulares sem vínculo = Poder de Polícia.' from public.questions q where q.public_code = 'PPCE-DA-000094';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Polícia é para quem não tem vínculo.'),
  ('c', 'Incorreta. Criar normas.'),
  ('d', 'Incorreta. Nome genérico.'),
  ('e', 'Incorreta. Refere-se à relação entre entes.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000094';

-- -----------------------------------------------------------------------------
-- QUESTÃO 095: ATOS ADMINISTRATIVOS (REQUISITOS - OBJETO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000095', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Requisitos e Elementos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O conteúdo do ato administrativo, ou seja, a alteração no mundo jurídico que o ato se propõe a realizar, corresponde ao elemento:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Objeto.', 1),
  ('b', 'B', 'Finalidade.', 2),
  ('c', 'C', 'Motivo.', 3),
  ('d', 'D', 'Forma.', 4),
  ('e', 'E', 'Competência.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000095';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000095' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Elemento Objeto.', 'Objeto = O efeito jurídico imediato. Ex: No ato de demissão, o objeto é o desligamento do servidor.', 'Dica: O objeto deve ser lícito, possível, determinado e moral.' from public.questions q where q.public_code = 'PPCE-DA-000095';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Finalidade é o objetivo mediato (interesse público).'),
  ('c', 'Incorreta. Motivo é o porquê do ato.'),
  ('d', 'Incorreta. Forma é como o ato se apresenta.'),
  ('e', 'Incorreta. Competência é quem pode praticar o ato.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000095';

-- -----------------------------------------------------------------------------
-- QUESTÃO 100: ORGANIZAÇÃO ADMINISTRATIVA (ÓRGÃOS PÚBLICOS - CAPACIDADE JUDICIÁRIA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000100', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Organização Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Os órgãos públicos, por não possuírem personalidade jurídica própria, em regra não podem demandar ou ser demandados em juízo. Contudo, a jurisprudência (Súmula 525 STJ) admite que órgãos de cúpula (ex: Câmaras de Vereadores) possam ir a juízo exclusivamente para defender seus:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Direitos institucionais e prerrogativas funcionais.', 1),
  ('b', 'B', 'Interesses patrimoniais e financeiros.', 2),
  ('c', 'C', 'Contratos de prestação de serviço.', 3),
  ('d', 'D', 'Servidores em ações de indenização.', 4),
  ('e', 'E', 'Direitos políticos de seus membros.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000100';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000100' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Capacidade Judiciária de Órgãos.', 'Órgãos não têm personalidade, mas têm CAPACIDADE JUDICIÁRIA (ou processual) limitada para defender sua própria existência e competência.', 'Dica: Chamada de Personalidade Judiciária.' from public.questions q where q.public_code = 'PPCE-DA-000100';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Quem defende o patrimônio é a pessoa jurídica (União, Estado, etc).'),
  ('c', 'Incorreta. Contratos são assinados em nome da pessoa jurídica.'),
  ('d', 'Incorreta. Defesa de servidor é pessoal ou via órgão de classe.'),
  ('e', 'Incorreta. Direitos políticos são individuais.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000100';

-- -----------------------------------------------------------------------------
-- QUESTÃO 096: LICITAÇÕES (EXTINÇÃO DO CONTRATO - RESCISÃO UNILATERAL)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000096', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Contratos Administrativos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A Administração Pública pode rescindir o contrato unilateralmente, sem necessidade de decisão judicial, por razões de interesse público. Essa prerrogativa é fundamentada:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Nas cláusulas exorbitantes do contrato administrativo.', 1),
  ('b', 'B', 'No princípio da autonomia da vontade das partes.', 2),
  ('c', 'C', 'No direito de arrependimento do Código de Defesa do Consumidor.', 3),
  ('d', 'D', 'Apenas se houver concordância prévia do contratado.', 4),
  ('e', 'E', 'O Estado não pode rescindir unilateralmente.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000096';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000096' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Rescisão Unilateral.', 'Decorre da supremacia do interesse público. O Estado pode romper o contrato se não for mais vantajoso.', 'Dica: O particular deve ser indenizado pelos prejuízos comprovados.' from public.questions q where q.public_code = 'PPCE-DA-000096';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Vale nos contratos privados.'),
  ('c', 'Incorreta. Não se aplica aqui.'),
  ('d', 'Incorreta. Se houvesse concordância, seria amigável, não unilateral.'),
  ('e', 'Incorreta. Pode, via cláusulas exorbitantes.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000096';

-- -----------------------------------------------------------------------------
-- QUESTÃO 097: PRINCÍPIOS (EFICIÊNCIA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000097', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Princípios', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O princípio constitucional que exige que a Administração Pública obtenha os melhores resultados com o menor custo possível, otimizando o uso do dinheiro público, é o da:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Eficiência.', 1),
  ('b', 'B', 'Legalidade.', 2),
  ('c', 'C', 'Impessoalidade.', 3),
  ('d', 'D', 'Moralidade.', 4),
  ('e', 'E', 'Publicidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000097';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000097' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Princípio da Eficiência.', 'Introduzido pela EC 19/98 (Reforma Administrativa). Foca na qualidade e produtividade.', 'Dica: Último a entrar no LIMPE.' from public.questions q where q.public_code = 'PPCE-DA-000097';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Atuar conforme a lei.'),
  ('c', 'Incorreta. Atuar sem favorecimentos.'),
  ('d', 'Incorreta. Atuar com ética.'),
  ('e', 'Incorreta. Atuar com transparência.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000097';

-- -----------------------------------------------------------------------------
-- QUESTÃO 098: RESPONSABILIDADE CIVIL (CONCEITO DE AGENTE)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000098', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Responsabilidade civil do Estado', 'Responsabilidade Civil do Estado', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Para fins de responsabilidade civil do Estado, o conceito de "agente público" abrange:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Qualquer pessoa que exerça, ainda que transitoriamente ou sem remuneração, por eleição, nomeação, designação, contratação ou qualquer outra forma de investidura ou vínculo, mandato, cargo, emprego ou função pública.', 1),
  ('b', 'B', 'Apenas os servidores estatutários ocupantes de cargos efetivos.', 2),
  ('c', 'C', 'Apenas os agentes políticos (Presidente, Governadores, etc).', 3),
  ('d', 'D', 'Exclusivamente os policiais e militares.', 4),
  ('e', 'E', 'Apenas aqueles que recebem remuneração direta do tesouro nacional.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000098';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000098' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Conceito Amplo de Agente.', 'O Estado responde por atos de estagiários, mesários, jurados e até agentes de fato (quem exerce função sem investidura regular mas com aparência de legalidade).', 'Dica: Conceito idêntico ao da Lei de Improbidade e Código Penal.' from public.questions q where q.public_code = 'PPCE-DA-000098';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Muito restrito.'),
  ('c', 'Incorreta. Muito restrito.'),
  ('d', 'Incorreta. Muito restrito.'),
  ('e', 'Incorreta. Agentes honoríficos (mesários) não recebem e são agentes.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000098';

-- -----------------------------------------------------------------------------
-- QUESTÃO 099: ATOS ADMINISTRATIVOS (INVALIDAÇÃO: CONTRA POSIÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000099', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Revogação e anulação', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A extinção do ato administrativo pela emissão de um novo ato com efeitos opostos ao anterior (ex: exoneração que extingue a nomeação) denomina-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Contraposição (ou Derrubada).', 1),
  ('b', 'B', 'Caducidade.', 2),
  ('c', 'C', 'Cassação.', 3),
  ('d', 'D', 'Anulação.', 4),
  ('e', 'E', 'Invalidação genérica.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000099';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000099' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Contraposição.', 'O novo ato mata o antigo por ser incompatível.', 'Dica: Diferente da caducidade (lei nova) e cassação (falta do particular).' from public.questions q where q.public_code = 'PPCE-DA-000099';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Lei nova.'),
  ('c', 'Incorreta. Sanção.'),
  ('d', 'Incorreta. Ilegalidade.'),
  ('e', 'Incorreta. Termo não técnico.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000099';
