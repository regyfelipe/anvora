-- =============================================================================
-- BATCH: QUESTÕES 301 A 400
-- ASSUNTO: DIREITO CONSTITUCIONAL
-- FOCO: ADMINISTRAÇÃO PÚBLICA, SEGURANÇA PÚBLICA, PODERES E ORDEM SOCIAL
-- =============================================================================

-- -----------------------------------------------------------------------------
-- QUESTÃO 301: ADMINISTRAÇÃO PÚBLICA (PRINCÍPIOS - ART. 37, CAPUT)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000301', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Princípios', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A administração pública direta e indireta de qualquer dos Poderes da União, dos Estados, do Distrito Federal e dos Municípios obedecerá aos princípios de legalidade, impessoalidade, moralidade, publicidade e:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Eficiência.', 1),
  ('b', 'B', 'Economicidade.', 2),
  ('c', 'C', 'Hierarquia.', 3),
  ('d', 'D', 'Finalidade.', 4),
  ('e', 'E', 'Proporcionalidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000301';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000301' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Princípios da Adm. Pública (Art. 37).', 'O mnemônico LIMPE (Legalidade, Impessoalidade, Moralidade, Publicidade e Eficiência) resume os princípios expressos.', 'Dica: A Eficiência foi incluída pela EC 19/98.' from public.questions q where q.public_code = 'PPCE-DC-000301';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É princípio do controle externo/TCU, mas não está no LIMPE.'),
  ('c', 'Incorreta. É característica do poder hierárquico, não princípio expresso.'),
  ('d', 'Incorreta. É princípio implícito (decorrente da impessoalidade).'),
  ('e', 'Incorreta. É princípio geral do Direito Administrativo, não expresso no Art. 37.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000301';

-- -----------------------------------------------------------------------------
-- QUESTÃO 302: ADMINISTRAÇÃO PÚBLICA (CARGOS E CONCURSOS - ART. 37, II)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000302', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Cargos, Empregos e Funções', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A investidura em cargo ou emprego público depende de aprovação prévia em concurso público de provas ou de provas e títulos, de acordo com a natureza e a complexidade do cargo ou emprego, na forma prevista em lei, ressalvadas as nomeações para:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Cargos de provimento derivado.', 1),
  ('b', 'B', 'Cargos em comissão declarados em lei de livre nomeação e exoneração.', 2),
  ('c', 'C', 'Funções de confiança exercidas por qualquer servidor.', 3),
  ('d', 'D', 'Cargos de natureza técnica e científica.', 4),
  ('e', 'E', 'Empregos públicos em empresas de economia mista.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000302';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000302' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Concurso Público (Art. 37, II).', 'Cargos em comissão são a exceção constitucional à regra do concurso público.', 'Dica: Funções de confiança são exclusivas de servidores de carreira.' from public.questions q where q.public_code = 'PPCE-DC-000302';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Provimento derivado (como promoção) não dispensa a regra original.'),
  ('c', 'Incorreta. Funções de confiança exigem cargo efetivo prévio.'),
  ('d', 'Incorreta. Cargos técnicos exigem concurso.'),
  ('e', 'Incorreta. Empregos em estatais também exigem concurso (Art. 37, II).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000302';

-- -----------------------------------------------------------------------------
-- QUESTÃO 303: ADMINISTRAÇÃO PÚBLICA (VALIDADE DO CONCURSO - ART. 37, III)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000303', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Concursos Públicos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O prazo de validade do concurso público será de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Até dois anos, prorrogável uma vez, por igual período.', 1),
  ('b', 'B', 'Dois anos, obrigatoriamente.', 2),
  ('c', 'C', 'Um ano, prorrogável por mais dois.', 3),
  ('d', 'D', 'Até quatro anos, sem prorrogação.', 4),
  ('e', 'E', 'Definido livremente pelo edital, sem limites máximos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000303';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000303' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Validade de Concurso (Art. 37, III).', 'A CF estabelece o teto de 2 anos e a possibilidade de uma única prorrogação.', 'Dica: "Até" significa que pode ser menos (ex: 6 meses).' from public.questions q where q.public_code = 'PPCE-DC-000303';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Não é obrigatório ser 2 anos, mas ATÉ 2 anos.'),
  ('c', 'Incorreta. Prazo de prorrogação deve ser IGUAL ao original.'),
  ('d', 'Incorreta. O limite original é 2 anos.'),
  ('e', 'Incorreta. A CF impõe o limite de 2 anos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000303';

-- -----------------------------------------------------------------------------
-- QUESTÃO 304: ADMINISTRAÇÃO PÚBLICA (FUNÇÕES E COMISSÃO - ART. 37, V)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000304', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Cargos e Funções', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'As funções de confiança e os cargos em comissão destinam-se exclusivamente às atribuições de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Execução, planejamento e controle.', 1),
  ('b', 'B', 'Direção, chefia e assessoramento.', 2),
  ('c', 'C', 'Atividades técnicas e burocráticas.', 3),
  ('d', 'D', 'Segurança, vigilância e transporte.', 4),
  ('e', 'E', 'Fiscalização e arrecadação tributária.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000304';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000304' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Atribuições de Confiança (Art. 37, V).', 'DCA: Direção, Chefia e Assessoramento são as únicas finalidades permitidas.', 'Dica: Não podem ser usados para funções meramente técnicas.' from public.questions q where q.public_code = 'PPCE-DC-000304';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Planejamento/Controle não são os termos expressos.'),
  ('c', 'Incorreta. Atividades técnicas exigem cargo efetivo.'),
  ('d', 'Incorreta. Segurança e transporte são atividades operacionais.'),
  ('e', 'Incorreta. Fiscalização é atividade típica de Estado (concurso).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000304';

-- -----------------------------------------------------------------------------
-- QUESTÃO 305: ADMINISTRAÇÃO PÚBLICA (ASSOCIAÇÃO SINDICAL E GREVE - ART. 37, VI/VII)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000305', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Direitos do Servidor', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Sobre os direitos do servidor público civil, assinale a alternativa correta de acordo com a Constituição Federal:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'É garantido ao servidor público civil o direito à livre associação sindical.', 1),
  ('b', 'B', 'O direito de greve será exercido nos termos e nos limites definidos em lei complementar.', 2),
  ('c', 'C', 'O direito à sindicalização é proibido aos servidores da segurança pública.', 3),
  ('d', 'D', 'O direito de greve é norma de eficácia plena, não dependendo de lei.', 4),
  ('e', 'E', 'Servidores militares podem se sindicalizar, mas não podem fazer greve.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000305';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000305' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direitos Sindicais (Art. 37).', 'O servidor civil tem direito à livre associação sindical (Art. 37, VI).', 'Dica: O direito de greve depende de LEI ESPECÍFICA (não complementar).' from public.questions q where q.public_code = 'PPCE-DC-000305';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A CF fala em "lei específica" (Art. 37, VII).'),
  ('c', 'Incorreta. Servidores civis da segurança podem se sindicalizar (exceto militares).'),
  ('d', 'Incorreta. É norma de eficácia limitada (depende de lei).'),
  ('e', 'Incorreta. Militares são proibidos de sindicalização e greve (Art. 42).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000305';

-- -----------------------------------------------------------------------------
-- QUESTÃO 306: ADMINISTRAÇÃO PÚBLICA (RESERVA PARA PCD - ART. 37, VIII)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000306', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Concursos Públicos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A lei reservará percentual dos cargos e empregos públicos para as pessoas portadoras de deficiência e definirá os critérios de sua admissão. Esta reserva é:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Facultativa para a Administração.', 1),
  ('b', 'B', 'Obrigatória e o percentual deve ser definido em lei.', 2),
  ('c', 'C', 'Fixada em exatamente 10% pela Constituição.', 3),
  ('d', 'D', 'Aplicável apenas aos cargos em comissão.', 4),
  ('e', 'E', 'Inexistente para carreiras de segurança pública.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000306';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000306' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Reserva para PCD (Art. 37, VIII).', 'A CF impõe que a lei RESERVE o percentual, tornando a medida obrigatória.', 'Dica: A lei federal 8.112 fixa em ATÉ 20%.' from public.questions q where q.public_code = 'PPCE-DC-000306';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. É um imperativo legal ("a lei reservará").'),
  ('c', 'Incorreta. A CF não fixa o número, delega à lei.'),
  ('d', 'Incorreta. Aplica-se primordialmente a cargos efetivos/concursos.'),
  ('e', 'Incorreta. Existe reserva, mas com critérios de aptidão física específicos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000306';

-- -----------------------------------------------------------------------------
-- QUESTÃO 307: ADMINISTRAÇÃO PÚBLICA (CONTRATAÇÃO TEMPORÁRIA - ART. 37, IX)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000307', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Cargos e Funções', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A lei estabelecerá os casos de contratação por tempo determinado para atender a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Necessidade permanente do serviço público.', 1),
  ('b', 'B', 'Necessidade temporária de excepcional interesse público.', 2),
  ('c', 'C', 'Vagas ociosas em cargos de carreira.', 3),
  ('d', 'D', 'Substituição de servidores em greve.', 4),
  ('e', 'E', 'Atividades de consultoria jurídica.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000307';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000307' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Contratação Temporária (Art. 37, IX).', 'Requisitos: Lei prevendo casos, tempo determinado e interesse excepcional.', 'Dica: É o regime dos professores substitutos, por exemplo.' from public.questions q where q.public_code = 'PPCE-DC-000307';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Necessidade permanente exige concurso.'),
  ('c', 'Incorreta. Vagas ociosas devem ser providas por concurso.'),
  ('d', 'Incorreta. Greve não justifica contratação temporária em regra.'),
  ('e', 'Incorreta. Advocacia pública exige cargo efetivo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000307';

-- -----------------------------------------------------------------------------
-- QUESTÃO 308: ADMINISTRAÇÃO PÚBLICA (TETO REMUNERATÓRIO - ART. 37, XI)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000308', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Remuneração', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O teto remuneratório geral aplicado aos servidores públicos da União é o subsídio mensal, em espécie, dos:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ministros do Supremo Tribunal Federal.', 1),
  ('b', 'B', 'Presidente da República.', 2),
  ('c', 'C', 'Membros do Congresso Nacional.', 3),
  ('d', 'D', 'Ministros de Estado.', 4),
  ('e', 'E', 'Procurador-Geral da República.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000308';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000308' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Teto Constitucional (Art. 37, XI).', 'Os Ministros do STF representam o teto máximo do funcionalismo público.', 'Dica: Nos Estados, o teto do Executivo é o subsídio do Governador.' from public.questions q where q.public_code = 'PPCE-DC-000308';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O subsídio do Presidente não é o teto geral (STF > Presidente).'),
  ('c', 'Incorreta. O Legislativo tem teto próprio vinculado ao STF.'),
  ('d', 'Incorreta. Ministros de Estado seguem o teto do Executivo.'),
  ('e', 'Incorreta. O PGR segue o teto do STF.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000308';

-- -----------------------------------------------------------------------------
-- QUESTÃO 309: ADMINISTRAÇÃO PÚBLICA (ACUMULAÇÃO DE CARGOS - ART. 37, XVI)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000309', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Acumulação de Cargos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'É vedada a acumulação remunerada de cargos públicos, exceto, quando houver compatibilidade de horários, a de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Dois cargos de professor.', 1),
  ('b', 'B', 'Dois cargos técnicos.', 2),
  ('c', 'C', 'Um cargo de professor com outro de nível médio.', 3),
  ('d', 'D', 'Dois cargos de auxiliar administrativo.', 4),
  ('e', 'E', 'Três cargos de médico.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000309';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000309' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Acumulação de Cargos (Art. 37, XVI).', 'A CF permite 2 de professor, 1 professor + 1 técnico/científico, ou 2 de saúde.', 'Dica: A compatibilidade de horários é sempre requisito essencial.' from public.questions q where q.public_code = 'PPCE-DC-000309';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Dois cargos técnicos não podem ser acumulados (apenas 1 prof + 1 téc).'),
  ('c', 'Incorreta. Deve ser cargo TÉCNICO ou CIENTÍFICO, não meramente nível médio.'),
  ('d', 'Incorreta. Cargos burocráticos/administrativos não permitem acumulação.'),
  ('e', 'Incorreta. O limite para profissionais de saúde é de DOIS cargos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000309';

-- -----------------------------------------------------------------------------
-- QUESTÃO 310: ADMINISTRAÇÃO PÚBLICA (ESTATAIS E ACUMULAÇÃO - ART. 37, XVII)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000310', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Acumulação de Cargos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A proibição de acumular proventos de aposentadoria com remuneração de cargo, emprego ou função pública estende-se a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Autarquias e fundações apenas.', 1),
  ('b', 'B', 'Empresas públicas e sociedades de economia mista, suas subsidiárias e sociedades controladas.', 2),
  ('c', 'C', 'Apenas aos órgãos da administração direta.', 3),
  ('d', 'D', 'Organizações Sociais (OS) e OSCIPs.', 4),
  ('e', 'E', 'Entidades do Sistema S.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000310';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000310' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Extensão da Proibição (Art. 37, XVII).', 'A proibição de acumular é ampla e atinge toda a administração indireta e controladas.', 'Dica: Exceção para cargos acumuláveis na ativa, cargos eletivos e cargos em comissão.' from public.questions q where q.public_code = 'PPCE-DC-000310';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Estende-se também às estatais.'),
  ('c', 'Incorreta. Atinge tanto a direta quanto a indireta.'),
  ('d', 'Incorreta. OS/OSCIPs são entidades privadas (terceiro setor).'),
  ('e', 'Incorreta. Sistema S não integra a Administração Pública.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000310';

-- -----------------------------------------------------------------------------
-- QUESTÃO 311: ADMINISTRAÇÃO PÚBLICA (PUBLICIDADE E NOME - ART. 37, § 1º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000311', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Princípios', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A publicidade dos atos, programas, obras, serviços e campanhas dos órgãos públicos deverá ter caráter educativo, informativo ou de orientação social, dela não podendo constar nomes, símbolos ou imagens que caracterizem:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Eficiência administrativa.', 1),
  ('b', 'B', 'Promoção pessoal de autoridades ou servidores públicos.', 2),
  ('c', 'C', 'Identidade visual do ente federado.', 3),
  ('d', 'D', 'Transparência pública.', 4),
  ('e', 'E', 'Gastos excessivos com publicidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000311';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000311' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Impessoalidade na Publicidade (Art. 37).', 'A vedação à promoção pessoal é um desdobramento direto do princípio da Impessoalidade.', 'Dica: A violação gera ato de improbidade administrativa.' from public.questions q where q.public_code = 'PPCE-DC-000311';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Publicidade pode mostrar eficiência, mas não a pessoa.'),
  ('c', 'Incorreta. Símbolos do ente (bandeira, brasão) são permitidos.'),
  ('d', 'Incorreta. Transparência é o objetivo da publicidade.'),
  ('e', 'Incorreta. Embora relevante, a CF foca na "promoção pessoal" neste parágrafo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000311';

-- -----------------------------------------------------------------------------
-- QUESTÃO 312: ADMINISTRAÇÃO PÚBLICA (RESPONSABILIDADE CIVIL - ART. 37, § 6º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000312', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Responsabilidade Civil do Estado', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'As pessoas jurídicas de direito público e as de direito privado prestadoras de serviços públicos responderão pelos danos que seus agentes, nessa qualidade, causarem a terceiros, assegurado o direito de regresso contra o responsável nos casos de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Culpa exclusiva da vítima.', 1),
  ('b', 'B', 'Dolo ou culpa.', 2),
  ('c', 'C', 'Caso fortuito ou força maior.', 3),
  ('d', 'D', 'Imperícia técnica comprovada apenas.', 4),
  ('e', 'E', 'Responsabilidade objetiva do agente.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000312';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000312' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Responsabilidade do Estado (Art. 37).', 'O Estado responde OBJETIVAMENTE (independente de dolo/culpa). O agente responde SUBJETIVAMENTE (regresso).', 'Dica: Regresso exige que o Estado tenha sido condenado primeiro.' from public.questions q where q.public_code = 'PPCE-DC-000312';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Culpa da vítima exclui a responsabilidade do Estado, não gera regresso.'),
  ('c', 'Incorreta. São excludentes de responsabilidade civil.'),
  ('d', 'Incorreta. Culpa abrange imperícia, mas também negligência e imprudência.'),
  ('e', 'Incorreta. O agente NUNCA responde objetivamente perante o Estado.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000312';

-- -----------------------------------------------------------------------------
-- QUESTÃO 313: ADMINISTRAÇÃO PÚBLICA (ESTABILIDADE - ART. 41)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000313', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Servidores Públicos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São estáveis após três anos de efetivo exercício os servidores nomeados para cargo de provimento efetivo em virtude de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Livre nomeação e exoneração.', 1),
  ('b', 'B', 'Concurso público.', 2),
  ('c', 'C', 'Indicação política superior.', 3),
  ('d', 'D', 'Contratação temporária emergencial.', 4),
  ('e', 'E', 'Processo seletivo simplificado.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000313';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000313' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Estabilidade (Art. 41).', 'A estabilidade é o direito de permanência no serviço público, condicionado ao concurso e ao prazo de 3 anos.', 'Dica: Exige também avaliação especial de desempenho.' from public.questions q where q.public_code = 'PPCE-DC-000313';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Cargos em comissão não geram estabilidade.'),
  ('c', 'Incorreta. Nomeações políticas são precárias por natureza.'),
  ('d', 'Incorreta. Temporários não são detentores de cargo efetivo.'),
  ('e', 'Incorreta. Processo seletivo (para empregos ou temporários) não gera estabilidade estatutária.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000313';

-- -----------------------------------------------------------------------------
-- QUESTÃO 314: ADMINISTRAÇÃO PÚBLICA (PERDA DO CARGO - ART. 41, § 1º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000314', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Servidores Públicos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O servidor público estável só perderá o cargo em virtude de, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sentença judicial transitada em julgado.', 1),
  ('b', 'B', 'Processo administrativo em que lhe seja assegurada ampla defesa.', 2),
  ('c', 'C', 'Procedimento de avaliação periódica de desempenho, na forma de lei complementar.', 3),
  ('d', 'D', 'Decisão discricionária do chefe do Poder Executivo.', 4),
  ('e', 'E', 'Excesso de gastos com pessoal (nos limites da Lei de Responsabilidade Fiscal).', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000314';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000314' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Perda do Cargo (Art. 41).', 'Não existe perda de cargo estável por "decisão discricionária". Deve haver motivação legal específica.', 'Dica: A avaliação de desempenho exige Lei Complementar.' from public.questions q where q.public_code = 'PPCE-DC-000314';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. É hipótese constitucional de perda (Art. 41, §1º, I).'),
  ('b', 'Incorreta. É hipótese constitucional de perda (Art. 41, §1º, II).'),
  ('c', 'Incorreta. É hipótese constitucional de perda (Art. 41, §1º, III).'),
  ('e', 'Incorreta. Hipótese prevista no Art. 169, §4º da CF.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000314';

-- -----------------------------------------------------------------------------
-- QUESTÃO 315: ADMINISTRAÇÃO PÚBLICA (REINTEGRAÇÃO - ART. 41, § 2º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000315', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Servidores Públicos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Invalidada por sentença judicial a demissão do servidor estável, ocorrerá a sua:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Readmissão, sem ressarcimento de vantagens.', 1),
  ('b', 'B', 'Reintegração, com ressarcimento de todas as vantagens.', 2),
  ('c', 'C', 'Reaproveitamento em cargo equivalente.', 3),
  ('d', 'D', 'Reversão por interesse da administração.', 4),
  ('e', 'E', 'Ascensão funcional imediata.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000315';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000315' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Reintegração (Art. 41).', 'A reintegração é o retorno do estável após anulação da demissão, com direito aos atrasados.', 'Dica: Se o cargo foi extinto, o servidor fica em disponibilidade.' from public.questions q where q.public_code = 'PPCE-DC-000315';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Readmissão não é o termo técnico e o ressarcimento é obrigatório.'),
  ('c', 'Incorreta. Reaproveitamento ocorre quando o servidor está em disponibilidade.'),
  ('d', 'Incorreta. Reversão é o retorno do aposentado.'),
  ('e', 'Incorreta. Ascensão funcional foi declarada inconstitucional pelo STF.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000315';

-- -----------------------------------------------------------------------------
-- QUESTÃO 316: SEGURANÇA PÚBLICA (ROL TAXATIVO - ART. 144)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000316', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A segurança pública, dever do Estado, direito e responsabilidade de todos, é exercida para a preservação da ordem pública e da incolumidade das pessoas e do patrimônio, através dos seguintes órgãos, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Polícia Federal.', 1),
  ('b', 'B', 'Polícia Rodoviária Federal.', 2),
  ('c', 'C', 'Forças Armadas.', 3),
  ('d', 'D', 'Polícias Penais federal, estaduais e distrital.', 4),
  ('e', 'E', 'Polícias Civis.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000316';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000316' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Órgãos de Segurança Pública (Art. 144).', 'As Forças Armadas não constam no rol do Art. 144 (elas estão no Art. 142).', 'Dica: O rol do Art. 144 é considerado taxativo pelo STF.' from public.questions q where q.public_code = 'PPCE-DC-000316';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. É órgão de segurança pública (inciso I).'),
  ('b', 'Incorreta. É órgão de segurança pública (inciso II).'),
  ('d', 'Incorreta. É órgão de segurança pública (incluído pela EC 104/2019).'),
  ('e', 'Incorreta. É órgão de segurança pública (inciso IV).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000316';

-- -----------------------------------------------------------------------------
-- QUESTÃO 317: SEGURANÇA PÚBLICA (POLÍCIA FEDERAL - ART. 144, § 1º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000317', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Compete à Polícia Federal, instituída por lei como órgão permanente, organizado e mantido pela União e estruturado em carreira, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Apurar infrações penais contra a ordem política e social.', 1),
  ('b', 'B', 'Prevenir e reprimir o tráfico ilícito de entorpecentes e drogas afins.', 2),
  ('c', 'C', 'Exercer as funções de polícia marítima, aeroportuária e de fronteiras.', 3),
  ('d', 'D', 'Exercer, com exclusividade, as funções de polícia judiciária da União.', 4),
  ('e', 'E', 'Realizar o policiamento ostensivo das rodovias estaduais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000317';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000317' and qo.question_id = q.id and qo.option_key = 'e';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Competência da PF (Art. 144).', 'A PF não atua em rodovias estaduais (policiamento ostensivo em rodovias federais é da PRF).', 'Dica: A PF é a única polícia judiciária da União.' from public.questions q where q.public_code = 'PPCE-DC-000317';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. É competência expressa da PF (§1º, I).'),
  ('b', 'Incorreta. É competência expressa da PF (§1º, II).'),
  ('c', 'Incorreta. É competência expressa da PF (§1º, III).'),
  ('d', 'Incorreta. É competência exclusiva da PF (§1º, IV).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000317';

-- -----------------------------------------------------------------------------
-- QUESTÃO 318: SEGURANÇA PÚBLICA (POLÍCIA CIVIL - ART. 144, § 4º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000318', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Às polícias civis, dirigidas por delegados de polícia de carreira, incumbem, ressalvada a competência da União:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'As funções de polícia judiciária e a apuração de infrações penais, exceto as militares.', 1),
  ('b', 'B', 'O policiamento ostensivo e a preservação da ordem pública.', 2),
  ('c', 'C', 'A guarda de presídios e a escolta de presos.', 3),
  ('d', 'D', 'A fiscalização de trânsito em rodovias federais.', 4),
  ('e', 'E', 'A segurança pessoal do Governador do Estado.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000318';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000318' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Polícia Civil (Art. 144).', 'A PC é polícia judiciária e investigativa dos Estados, excluindo crimes militares.', 'Dica: Deve ser obrigatoriamente dirigida por delegado de carreira.' from public.questions q where q.public_code = 'PPCE-DC-000318';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Atribuição da Polícia Militar (§5º).'),
  ('c', 'Incorreta. Atribuição da Polícia Penal (§5º-A).'),
  ('d', 'Incorreta. Atribuição da Polícia Rodoviária Federal (§2º).'),
  ('e', 'Incorreta. Atribuição geralmente dividida entre PM e Casa Militar.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000318';

-- -----------------------------------------------------------------------------
-- QUESTÃO 319: SEGURANÇA PÚBLICA (POLÍCIA PENAL - ART. 144, § 5º-A)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000319', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Às polícias penais, vinculadas ao órgão administrador do sistema penal da unidade federativa a que pertencem, incumbe a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ronda externa das unidades socioeducativas.', 1),
  ('b', 'B', 'Segurança dos estabelecimentos penais.', 2),
  ('c', 'C', 'Investigação de crimes cometidos por detentos fora do presídio.', 3),
  ('d', 'D', 'Policiamento preventivo comunitário.', 4),
  ('e', 'E', 'Custódia de presos provisórios em delegacias.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000319';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000319' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Polícia Penal (Art. 144).', 'A Polícia Penal (antigos agentes penitenciários) cuida da segurança dos estabelecimentos penais.', 'Dica: Criada pela EC 104/2019.' from public.questions q where q.public_code = 'PPCE-DC-000319';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Socioeducativo não integra o sistema penal para fins da PP.'),
  ('c', 'Incorreta. Investigação é função da Polícia Civil ou Federal.'),
  ('d', 'Incorreta. Função da Polícia Militar ou Guardas Municipais.'),
  ('e', 'Incorreta. Delegacias são de responsabilidade da Polícia Civil.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000319';

-- -----------------------------------------------------------------------------
-- QUESTÃO 320: SEGURANÇA PÚBLICA (GUARDAS MUNICIPAIS - ART. 144, § 8º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000320', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Os Municípios poderão constituir guardas municipais destinadas à proteção de seus:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Munícipes e visitantes.', 1),
  ('b', 'B', 'Bens, serviços e instalações.', 2),
  ('c', 'C', 'Vias urbanas e rurais exclusivamente.', 3),
  ('d', 'D', 'Autoridades municipais apenas.', 4),
  ('e', 'E', 'Comércios e indústrias locais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000320';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000320' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Guardas Municipais (Art. 144).', 'A competência constitucional das GMs é a proteção de bens, serviços e instalações municipais.', 'Dica: Embora o STF reconheça que integram o sistema de segurança, a redação do §8º é essa.' from public.questions q where q.public_code = 'PPCE-DC-000320';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Embora protejam pessoas indiretamente, o texto constitucional foca nos bens/serviços.'),
  ('c', 'Incorreta. Restringe demais a atuação da GM.'),
  ('d', 'Incorreta. Autoridades são protegidas por força da proteção dos serviços/instalações.'),
  ('e', 'Incorreta. Bens privados não são a finalidade precípua das GMs.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000320';

-- -----------------------------------------------------------------------------
-- QUESTÃO 321: PODER LEGISLATIVO (ESTRUTURA - ART. 44)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000321', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O Poder Legislativo é exercido pelo Congresso Nacional, que se compõe da:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Câmara dos Deputados e do Senado Federal.', 1),
  ('b', 'B', 'Câmara dos Deputados e das Assembleias Legislativas.', 2),
  ('c', 'C', 'Senado Federal e do Tribunal de Contas da União.', 3),
  ('d', 'D', 'Câmara Federal e do Conselho da República.', 4),
  ('e', 'E', 'Câmara Única de Representantes do Povo.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000321';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000321' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Estrutura do Legislativo (Art. 44).', 'O Brasil adota o bicameralismo federal (Câmara + Senado).', 'Dica: Nos Estados e Municípios o sistema é unicameral.' from public.questions q where q.public_code = 'PPCE-DC-000321';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Assembleias são órgãos estaduais.'),
  ('c', 'Incorreta. TCU é órgão auxiliar, não integra o Congresso.'),
  ('d', 'Incorreta. Conselho da República é órgão de consulta do Presidente.'),
  ('e', 'Incorreta. O sistema brasileiro não é unicameral no nível federal.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000321';

-- -----------------------------------------------------------------------------
-- QUESTÃO 322: PODER LEGISLATIVO (CÂMARA DOS DEPUTADOS - ART. 45)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000322', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A Câmara dos Deputados compõe-se de representantes do povo, eleitos, pelo sistema proporcional, em cada Estado, em cada Território e no Distrito Federal. O mandato dos deputados federais é de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Quatro anos.', 1),
  ('b', 'B', 'Cinco anos.', 2),
  ('c', 'C', 'Oito anos.', 3),
  ('d', 'D', 'Dois anos.', 4),
  ('e', 'E', 'Seis anos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000322';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000322' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Mandato de Deputado (Art. 44).', 'Cada legislatura dura 4 anos, coincidindo com o mandato dos Deputados.', 'Dica: O número de deputados é proporcional à população de cada Estado.' from public.questions q where q.public_code = 'PPCE-DC-000322';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Não existe mandato de 5 anos no Legislativo federal.'),
  ('c', 'Incorreta. 8 anos é o mandato do Senador.'),
  ('d', 'Incorreta. Período muito curto para a legislatura.'),
  ('e', 'Incorreta. Mandato de prefeitos em alguns países, mas não no Brasil.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000322';

-- -----------------------------------------------------------------------------
-- QUESTÃO 323: PODER LEGISLATIVO (SENADO FEDERAL - ART. 46)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000323', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Senado Federal compõe-se de representantes dos Estados e do Distrito Federal, eleitos segundo o princípio majoritário. Cada Estado e o Distrito Federal elegerão:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Três senadores, com mandato de oito anos.', 1),
  ('b', 'B', 'Três senadores, com mandato de quatro anos.', 2),
  ('c', 'C', 'Dois senadores, com mandato de oito anos.', 3),
  ('d', 'D', 'Dois senadores, com mandato de quatro anos.', 4),
  ('e', 'E', 'Um senador para cada cinco milhões de habitantes.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000323';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000323' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Composição do Senado (Art. 46).', 'Cada ente federado (Estados e DF) tem paridade no Senado, com 3 representantes cada.', 'Dica: A renovação ocorre de 4 em 4 anos, por 1/3 e 2/3 alternadamente.' from public.questions q where q.public_code = 'PPCE-DC-000323';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O mandato é de 8 anos (duas legislaturas).'),
  ('c', 'Incorreta. O número é 3, não 2.'),
  ('d', 'Incorreta. O mandato é de 8 anos.'),
  ('e', 'Incorreta. O Senado não segue o princípio da proporcionalidade populacional.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000323';

-- -----------------------------------------------------------------------------
-- QUESTÃO 324: PODER LEGISLATIVO (CONVOCAÇÃO EXTRAORDINÁRIA - ART. 57, § 6º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000324', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A convocação extraordinária do Congresso Nacional far-se-á, em caso de urgência ou interesse público relevante, por:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Presidente da República exclusivamente.', 1),
  ('b', 'B', 'Presidente do Senado Federal, em caso de decretação de estado de sítio.', 2),
  ('c', 'C', 'Presidente da Câmara dos Deputados exclusivamente.', 3),
  ('d', 'D', 'Maioria absoluta de ambas as Casas, sem necessidade de provocação externa.', 4),
  ('e', 'E', 'Qualquer cidadão, mediante petição fundamentada ao STF.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000324';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000324' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Convocação Extraordinária (Art. 57).', 'O Presidente do Senado convoca em casos de intervenção, estado de defesa ou sítio.', 'Dica: O Presidente da República também pode solicitar a convocação.' from public.questions q where q.public_code = 'PPCE-DC-000324';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Ele pode solicitar, mas não é exclusivo.'),
  ('c', 'Incorreta. O Presidente da Câmara não convoca o Congresso isoladamente nesta hipótese.'),
  ('d', 'Incorreta. Exige requerimento da maioria absoluta, mas a convocação em si segue rito próprio.'),
  ('e', 'Incorreta. Cidadãos não têm legitimidade para convocar o Congresso.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000324';

-- -----------------------------------------------------------------------------
-- QUESTÃO 325: PODER LEGISLATIVO (IMUNIDADE MATERIAL - ART. 53)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000325', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Os Deputados e Senadores são invioláveis, civil e penalmente, por quaisquer de suas:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Opiniões, palavras e votos.', 1),
  ('b', 'B', 'Atividades privadas e comerciais.', 2),
  ('c', 'C', 'Relações familiares e sociais.', 3),
  ('d', 'D', 'Dívidas civis e obrigações tributárias.', 4),
  ('e', 'E', 'Viagens oficiais e de lazer.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000325';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000325' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Imunidade Material (Art. 53).', 'A inviolabilidade protege a liberdade de expressão parlamentar no exercício do mandato.', 'Dica: Essa proteção se estende para fora do Congresso se houver relação com o cargo.' from public.questions q where q.public_code = 'PPCE-DC-000325';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Atividades privadas não são protegidas pela imunidade parlamentar.'),
  ('c', 'Incorreta. A vida privada não é abrangida pela inviolabilidade funcional.'),
  ('d', 'Incorreta. Parlamentares pagam impostos e dívidas como qualquer cidadão.'),
  ('e', 'Incorreta. Apenas opiniões, palavras e votos são protegidos materialmente.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000325';

-- -----------------------------------------------------------------------------
-- QUESTÃO 326: PODER LEGISLATIVO (FORO POR PRERROGATIVA - ART. 53, § 1º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000326', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Os Deputados e Senadores, desde a expedição do diploma, serão submetidos a julgamento perante o:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Superior Tribunal de Justiça (STJ).', 1),
  ('b', 'B', 'Supremo Tribunal Federal (STF).', 2),
  ('c', 'C', 'Tribunal Regional Federal da respectiva jurisdição.', 3),
  ('d', 'D', 'Conselho de Ética da respectiva Casa.', 4),
  ('e', 'E', 'Juiz de Primeira Instância da Capital Federal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000326';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000326' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Foro Prerrogativa (Art. 53).', 'O STF é o órgão competente para julgar parlamentares federais em crimes comuns.', 'Dica: Segundo o STF, o foro só vale para crimes cometidos NO EXERCÍCIO e EM RAZÃO do cargo.' from public.questions q where q.public_code = 'PPCE-DC-000326';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. STJ julga Governadores e Desembargadores.'),
  ('c', 'Incorreta. TRF julga juízes federais e procuradores.'),
  ('d', 'Incorreta. Conselho de Ética julga quebra de decoro (administrativo), não crimes.'),
  ('e', 'Incorreta. O foro é perante a cúpula do Judiciário.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000326';

-- -----------------------------------------------------------------------------
-- QUESTÃO 327: PODER LEGISLATIVO (TESTEMUNHO PARLAMENTAR - ART. 53, § 6º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000327', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Os Deputados e Senadores não serão obrigados a testemunhar sobre informações recebidas ou prestadas em razão do exercício do mandato. Esta prerrogativa refere-se ao:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sigilo da fonte e de informações do mandato.', 1),
  ('b', 'B', 'Direito ao silêncio para evitar autoincriminação.', 2),
  ('c', 'C', 'Imunidade jurisdicional absoluta.', 3),
  ('d', 'D', 'Dever de publicidade dos atos parlamentares.', 4),
  ('e', 'E', 'Princípio da eficiência legislativa.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000327';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000327' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Sigilo de Fonte (Art. 53).', 'Parlamentares podem guardar sigilo sobre quem lhes confiou informações do mandato.', 'Dica: É uma garantia para a atividade de fiscalização.' from public.questions q where q.public_code = 'PPCE-DC-000327';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O foco aqui é a proteção da informação recebida, não do réu.'),
  ('c', 'Incorreta. A imunidade não é absoluta (há limites no STF).'),
  ('d', 'Incorreta. O sigilo é a exceção à publicidade.'),
  ('e', 'Incorreta. Termo não relacionado à prerrogativa de testemunho.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000327';

-- -----------------------------------------------------------------------------
-- QUESTÃO 328: PODER LEGISLATIVO (MILITARES E MANDATO - ART. 53, § 7º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000328', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A incorporação às Forças Armadas de Deputados e Senadores, embora militares e ainda que em tempo de guerra, dependerá de licença prévia da:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Presidência da República.', 1),
  ('b', 'B', 'Respectiva Casa (Câmara ou Senado).', 2),
  ('c', 'C', 'Supremo Tribunal Federal.', 3),
  ('d', 'D', 'Mesa do Congresso Nacional.', 4),
  ('e', 'E', 'Justiça Militar da União.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000328';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000328' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Parlamentares Militares (Art. 53).', 'A Casa legislativa deve autorizar que seu membro seja incorporado militarmente.', 'Dica: Visa manter a integridade da composição do Legislativo.' from public.questions q where q.public_code = 'PPCE-DC-000328';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O Executivo não pode decidir sobre a presença do parlamentar na Casa.'),
  ('c', 'Incorreta. É ato político da respectiva Casa legislativa.'),
  ('d', 'Incorreta. Não é ato conjunto, mas da Casa a que o parlamentar pertence.'),
  ('e', 'Incorreta. A Justiça Militar não tem competência para este ato político.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000328';

-- -----------------------------------------------------------------------------
-- QUESTÃO 329: PODER LEGISLATIVO (PERDA DO MANDATO - ART. 55)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000329', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Perderá o mandato o Deputado ou Senador que deixar de comparecer, em cada sessão legislativa, à terça parte das sessões ordinárias da Casa a que pertencer, salvo:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Licença ou missão por esta autorizada.', 1),
  ('b', 'B', 'Viagem de interesse pessoal comprovada.', 2),
  ('c', 'C', 'Atendimento a compromissos eleitorais na base.', 3),
  ('d', 'D', 'Participação em programas de rádio e TV.', 4),
  ('e', 'E', 'Comparecimento a reuniões de diretórios partidários.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000329';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000329' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Perda de Mandato por Ausência (Art. 55).', 'A falta não justificada a 1/3 das sessões ordinárias gera perda automática do mandato.', 'Dica: A perda é declarada pela Mesa, de ofício ou mediante provocação.' from public.questions q where q.public_code = 'PPCE-DC-000329';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Interesse pessoal não justifica ausência às sessões.'),
  ('c', 'Incorreta. Base eleitoral deve ser visitada fora dos horários de sessão.'),
  ('d', 'Incorreta. Atividade mediática não é motivo de escusa legal.'),
  ('e', 'Incorreta. Atividade partidária deve conciliar-se com a legislativa.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000329';

-- -----------------------------------------------------------------------------
-- QUESTÃO 330: PODER LEGISLATIVO (TRIBUNAL DE CONTAS - ART. 71)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000330', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Tribunal de Contas da União é composto por:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Onze Ministros.', 1),
  ('b', 'B', 'Nove Ministros.', 2),
  ('c', 'C', 'Sete Ministros.', 3),
  ('d', 'D', 'Cinco Ministros.', 4),
  ('e', 'E', 'Quinze Ministros.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000330';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000330' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Composição do TCU (Art. 73).', 'O TCU tem 9 ministros (1/3 escolhido pelo Presidente e 2/3 pelo Congresso).', 'Dica: Devem ter mais de 35 e menos de 70 anos.' from public.questions q where q.public_code = 'PPCE-DC-000330';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. 11 é o número de ministros do STF.'),
  ('c', 'Incorreta. 7 é o número de ministros do TSE.'),
  ('d', 'Incorreta. Número não compatível com o TCU.'),
  ('e', 'Incorreta. Número excessivo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000330';

-- -----------------------------------------------------------------------------
-- QUESTÃO 331: PODER LEGISLATIVO (MEDIDAS PROVISÓRIAS - ART. 62)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000331', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'As medidas provisórias perderão a eficácia, desde a edição, se não forem convertidas em lei no prazo de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Trinta dias, prorrogável por mais trinta.', 1),
  ('b', 'B', 'Sessenta dias, prorrogável uma vez por igual período.', 2),
  ('c', 'C', 'Quarenta e cinco dias improrrogáveis.', 3),
  ('d', 'D', 'Noventa dias úteis.', 4),
  ('e', 'E', 'Cento e vinte dias ininterruptos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000331';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000331' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Prazo de MP (Art. 62).', 'O prazo total pode chegar a 120 dias (60 + 60).', 'Dica: A contagem suspende-se nos períodos de recesso do Congresso.' from public.questions q where q.public_code = 'PPCE-DC-000331';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O prazo original é 60 dias.'),
  ('c', 'Incorreta. 45 dias é o prazo para a MP entrar em regime de urgência.'),
  ('d', 'Incorreta. O prazo é em dias corridos e totaliza 60+60.'),
  ('e', 'Incorreta. Embora o total possa ser 120, a regra fala em 60 prorrogáveis.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000331';

-- -----------------------------------------------------------------------------
-- QUESTÃO 332: PODER LEGISLATIVO (EMENDA À CF - ART. 60)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000332', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A proposta de emenda à Constituição será discutida e votada em cada Casa do Congresso Nacional, em dois turnos, considerando-se aprovada se obtiver, em ambos,:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Maioria absoluta dos votos dos respectivos membros.', 1),
  ('b', 'B', 'Três quintos dos votos dos respectivos membros.', 2),
  ('c', 'C', 'Dois terços dos votos dos respectivos membros.', 3),
  ('d', 'D', 'Maioria simples dos membros presentes.', 4),
  ('e', 'E', 'Unanimidade dos votos válidos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000332';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000332' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Quórum de Emenda (Art. 60).', 'Rito: 2-2-3/5 (2 Casas, 2 Turnos, 3/5 dos votos).', 'Dica: É um processo legislativo rígido.' from public.questions q where q.public_code = 'PPCE-DC-000332';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Maioria absoluta é para Leis Complementares.'),
  ('c', 'Incorreta. 2/3 é para admissibilidade de impeachment.'),
  ('d', 'Incorreta. Maioria simples é para Leis Ordinárias.'),
  ('e', 'Incorreta. Não existe quórum de unanimidade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000332';

-- -----------------------------------------------------------------------------
-- QUESTÃO 333: PODER LEGISLATIVO (PROMULGAÇÃO DA EMENDA - ART. 60, § 3º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000333', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A emenda à Constituição será promulgada pelas:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Presidência da República.', 1),
  ('b', 'B', 'Mesas da Câmara dos Deputados e do Senado Federal.', 2),
  ('c', 'C', 'Presidência do Supremo Tribunal Federal.', 3),
  ('d', 'D', 'Comissões de Constituição e Justiça das duas Casas.', 4),
  ('e', 'E', 'Assembleias Legislativas da maioria dos Estados.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000333';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000333' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Promulgação de Emenda (Art. 60).', 'Diferente das leis, a emenda NÃO vai para sanção/promulgação do Presidente.', 'Dica: Ela recebe um número sequencial e é publicada pelas Mesas.' from public.questions q where q.public_code = 'PPCE-DC-000333';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O Presidente não sanciona nem promulga emendas à CF.'),
  ('c', 'Incorreta. O Judiciário não promulga atos legislativos.'),
  ('d', 'Incorreta. CCJ atua na fase de admissibilidade/mérito, não na promulgação.'),
  ('e', 'Incorreta. Assembleias podem propor, mas não promulgam a emenda federal.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000333';

-- -----------------------------------------------------------------------------
-- QUESTÃO 334: PODER LEGISLATIVO (CLÁUSULAS PÉTREAS - ART. 60, § 4º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000334', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Não será objeto de deliberação a proposta de emenda tendente a abolir a separação dos Poderes. Esta vedação é classificada como:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Limitação circunstancial.', 1),
  ('b', 'B', 'Limitação material (cláusula pétrea).', 2),
  ('c', 'C', 'Limitação formal subjetiva.', 3),
  ('d', 'D', 'Limitação temporal absoluta.', 4),
  ('e', 'E', 'Norma de eficácia contida.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000334';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000334' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Limitações ao Poder Constituinte.', 'A separação dos poderes é o núcleo imutável da CF/88.', 'Dica: Cláusulas pétreas podem ser ampliadas, nunca suprimidas ou reduzidas.' from public.questions q where q.public_code = 'PPCE-DC-000334';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Circunstanciais referem-se a crises (Estado de Sítio, etc).'),
  ('c', 'Incorreta. Formais referem-se ao rito e legitimidade de proposta.'),
  ('d', 'Incorreta. Temporais proibiriam emendas por certo tempo (não há na CF/88).'),
  ('e', 'Incorreta. Classificação de aplicabilidade de normas, não de limitações de reforma.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000334';

-- -----------------------------------------------------------------------------
-- QUESTÃO 335: PODER LEGISLATIVO (LEI COMPLEMENTAR - ART. 69)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000335', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'As leis complementares serão aprovadas por maioria absoluta. Este quórum diferencia-se da maioria simples pois exige o voto favorável de mais da metade:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Dos membros presentes na sessão.', 1),
  ('b', 'B', 'Dos membros que compõem a Casa legislativa.', 2),
  ('c', 'C', 'Dos líderes partidários com assento na Casa.', 3),
  ('d', 'D', 'Dos deputados e senadores em sessão conjunta.', 4),
  ('e', 'E', 'Dos eleitores que participaram do plebiscito prévio.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000335';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000335' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Maioria Absoluta vs Simples.', 'Maioria absoluta baseia-se no TOTAL de membros da Casa (fixo).', 'Dica: Maioria simples baseia-se nos PRESENTES (variável).' from public.questions q where q.public_code = 'PPCE-DC-000335';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Definição de maioria simples.'),
  ('c', 'Incorreta. Lideranças não computam quórum de aprovação de lei.'),
  ('d', 'Incorreta. Leis complementares são votadas separadamente em cada Casa.'),
  ('e', 'Incorreta. Não há plebiscito para aprovação de leis complementares.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000335';

-- -----------------------------------------------------------------------------
-- QUESTÃO 336: PODER EXECUTIVO (CONDIÇÕES DE ELEGIBILIDADE - ART. 76)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000336', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Executivo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O Poder Executivo é exercido pelo Presidente da República, auxiliado pelos Ministros de Estado. Para ser Presidente da República, exige-se a idade mínima de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Vinte e um anos.', 1),
  ('b', 'B', 'Trinta anos.', 2),
  ('c', 'C', 'Trinta e cinco anos.', 3),
  ('d', 'D', 'Quarenta anos.', 4),
  ('e', 'E', 'Dezoito anos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000336';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000336' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Elegibilidade Executivo (Art. 14).', 'A CF exige 35 anos para Presidente, Vice e Senador.', 'Dica: Deve ser também brasileiro nato.' from public.questions q where q.public_code = 'PPCE-DC-000336';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Idade para Deputados, Prefeitos e Juízes de Paz.'),
  ('b', 'Incorreta. Idade para Governador de Estado.'),
  ('d', 'Incorreta. Não existe exigência de 40 anos na CF/88.'),
  ('e', 'Incorreta. Idade para Vereador.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000336';

-- -----------------------------------------------------------------------------
-- QUESTÃO 337: PODER EXECUTIVO (SUBSTITUIÇÃO E SUCESSÃO - ART. 79/80)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000337', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Executivo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Em caso de impedimento do Presidente e do Vice-Presidente, ou vacância dos respectivos cargos, serão sucessivamente chamados ao exercício da Presidência:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O Presidente da Câmara dos Deputados, o do Senado Federal e o do Supremo Tribunal Federal.', 1),
  ('b', 'B', 'O Ministro da Justiça, o Presidente do Senado e o do STF.', 2),
  ('c', 'C', 'O Presidente do Senado Federal, o da Câmara e o do TCU.', 3),
  ('d', 'D', 'O Procurador-Geral da República e o Advogado-Geral da União.', 4),
  ('e', 'E', 'O Ministro da Defesa e os Comandantes das Forças Armadas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000337';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000337' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Linha de Sucessão (Art. 80).', 'Rito: Câmara -> Senado -> STF.', 'Dica: O Vice-Presidente sucede. Os demais apenas substituem temporariamente até nova eleição.' from public.questions q where q.public_code = 'PPCE-DC-000337';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Ministros de Estado não figuram na linha de sucessão direta constitucional.'),
  ('c', 'Incorreta. A Câmara precede o Senado na ordem sucessória.'),
  ('d', 'Incorreta. Órgãos de função essencial não sucedem o Presidente.'),
  ('e', 'Incorreta. Militares são proibidos de exercer a Chefia do Executivo nesta ordem.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000337';

-- -----------------------------------------------------------------------------
-- QUESTÃO 338: PODER EXECUTIVO (VACÂNCIA - ART. 81)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000338', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Executivo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Vagando os cargos de Presidente e Vice-Presidente da República nos últimos dois anos do período presidencial, a eleição será feita:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Pelo Congresso Nacional, em trinta dias, na forma da lei.', 1),
  ('b', 'B', 'Pelo povo, em eleição direta convocada em sessenta dias.', 2),
  ('c', 'C', 'Pelo Supremo Tribunal Federal, em quarenta e oito horas.', 3),
  ('d', 'D', 'Pelo Colégio Eleitoral composto por Governadores.', 4),
  ('e', 'E', 'Não haverá nova eleição; o Presidente do Senado assume o mandato.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000338';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000338' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Eleição Indireta (Art. 81).', 'A vacância nos últimos 2 anos gera eleição indireta pelo Congresso.', 'Dica: Regra para evitar gastos e instabilidade ao fim do mandato.' from public.questions q where q.public_code = 'PPCE-DC-000338';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Eleição direta só nos primeiros 2 anos.'),
  ('c', 'Incorreta. Judiciário não elege o Executivo.'),
  ('d', 'Incorreta. Órgão inexistente para este fim na CF/88.'),
  ('e', 'Incorreta. Deve haver eleição para completar o mandato.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000338';

-- -----------------------------------------------------------------------------
-- QUESTÃO 339: PODER EXECUTIVO (ATRIBUIÇÕES - ART. 84, VI)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000339', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Executivo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Compete privativamente ao Presidente da República, mediante decreto, dispor sobre a organização e o funcionamento da administração federal, quando isso não implicar:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Criação de novos órgãos públicos.', 1),
  ('b', 'B', 'Aumento de despesa nem criação ou extinção de órgãos públicos.', 2),
  ('c', 'C', 'Extinção de funções ou cargos públicos vagos.', 3),
  ('d', 'D', 'Alteração na nomenclatura das carreiras.', 4),
  ('e', 'E', 'Mudança na sede dos ministérios.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000339';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000339' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Decreto Autônomo (Art. 84).', 'O Presidente pode organizar a administração por decreto se não houver custos ou novos órgãos.', 'Dica: É uma das poucas hipóteses de decreto autônomo no Brasil.' from public.questions q where q.public_code = 'PPCE-DC-000339';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Criação de órgãos exige LEI.'),
  ('c', 'Incorreta. Extinção de cargos VAGOS pode ser por decreto, mas a questão pede o que NÃO pode implicar.'),
  ('d', 'Incorreta. Alteração de carreiras costuma exigir lei se afetar regime jurídico.'),
  ('e', 'Incorreta. Sede é detalhe organizacional permitido.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000339';

-- -----------------------------------------------------------------------------
-- QUESTÃO 340: PODER EXECUTIVO (RESPONSABILIDADE - ART. 86)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000340', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Executivo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O Presidente da República ficará suspenso de suas funções:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Nas infrações penais comuns, se recebida a denúncia ou queixa-crime pelo Supremo Tribunal Federal.', 1),
  ('b', 'B', 'Nos crimes de responsabilidade, após a instauração do processo pela Câmara dos Deputados.', 2),
  ('c', 'C', 'Sempre que se ausentar do país por mais de dez dias.', 3),
  ('d', 'D', 'Se for indiciado em inquérito policial pela Polícia Federal.', 4),
  ('e', 'E', 'Imediatamente após a aprovação de uma CPI contra seus atos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000340';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000340' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Suspensão do Presidente (Art. 86).', 'A suspensão ocorre no momento do recebimento da denúncia pelo STF (crimes comuns) ou instauração pelo Senado (responsabilidade).', 'Dica: O prazo máximo de suspensão é de 180 dias.' from public.questions q where q.public_code = 'PPCE-DC-000340';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A Câmara apenas autoriza; a suspensão no crime de responsabilidade ocorre com a instauração no SENADO.'),
  ('c', 'Incorreta. Ausência sem licença gera perda de mandato (se > 15 dias), não suspensão automática neste rito.'),
  ('d', 'Incorreta. Indiciamento não gera suspensão, apenas o recebimento da denúncia judicial.'),
  ('e', 'Incorreta. CPI não tem poder de suspender o Chefe do Executivo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000340';

-- -----------------------------------------------------------------------------
-- QUESTÃO 341: PODER JUDICIÁRIO (ESTRUTURA - ART. 92)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000341', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Judiciário', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São órgãos do Poder Judiciário, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O Supremo Tribunal Federal.', 1),
  ('b', 'B', 'O Conselho Nacional de Justiça.', 2),
  ('c', 'C', 'O Tribunal de Contas da União.', 3),
  ('d', 'D', 'O Superior Tribunal de Justiça.', 4),
  ('e', 'E', 'Os Tribunais e Juízes do Trabalho.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000341';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000341' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Órgãos do Judiciário (Art. 92).', 'O TCU auxilia o Legislativo; não integra o Poder Judiciário.', 'Dica: O CNJ faz parte do Judiciário, embora não tenha função jurisdicional.' from public.questions q where q.public_code = 'PPCE-DC-000341';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. É o órgão de cúpula (Art. 92, I).'),
  ('b', 'Incorreta. Órgão de controle administrativo/financeiro (Art. 92, I-A).'),
  ('d', 'Incorreta. É órgão de convergência do direito infraconstitucional (Art. 92, II).'),
  ('e', 'Incorreta. Integram a Justiça Especializada (Art. 92, IV).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000341';

-- -----------------------------------------------------------------------------
-- QUESTÃO 342: PODER JUDICIÁRIO (GARANTIAS - ART. 95)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000342', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Judiciário', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Os juízes gozam das seguintes garantias, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Vitaliciedade, adquirida após dois anos de exercício.', 1),
  ('b', 'B', 'Inamovibilidade, salvo por motivo de interesse público.', 2),
  ('c', 'C', 'Irredutibilidade de subsídio.', 3),
  ('d', 'D', 'Imunidade contra prisão em flagrante de qualquer crime.', 4),
  ('e', 'E', 'Vitaliciamento em primeiro grau após dois anos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000342';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000342' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Garantias da Magistratura (Art. 95).', 'Juízes podem ser presos em flagrante de crime INAFIANÇÁVEL.', 'Dica: Garantias servem à imparcialidade, não ao privilégio pessoal.' from public.questions q where q.public_code = 'PPCE-DC-000342';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. É a primeira garantia (inciso I).'),
  ('b', 'Incorreta. É a segunda garantia (inciso II).'),
  ('c', 'Incorreta. É a terceira garantia (inciso III).'),
  ('e', 'Incorreta. Reforça o prazo da vitaliciedade em primeiro grau.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000342';

-- -----------------------------------------------------------------------------
-- QUESTÃO 343: PODER JUDICIÁRIO (VEDAÇÕES - ART. 95, PARÁGRAFO ÚNICO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000343', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Judiciário', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Aos juízes é VEDADO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Exercer o magistério, ainda que haja compatibilidade de horários.', 1),
  ('b', 'B', 'Exercer, ainda que em disponibilidade, outro cargo ou função, salvo uma de magistério.', 2),
  ('c', 'C', 'Participar de associações de classe.', 3),
  ('d', 'D', 'Manifestar-se em processos sob sua jurisdição.', 4),
  ('e', 'E', 'Residir fora da comarca, em qualquer hipótese.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000343';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000343' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Vedações à Magistratura (Art. 95).', 'A única exceção à exclusividade do cargo de juiz é o magistério (professor).', 'Dica: É proibida também a atividade político-partidária.' from public.questions q where q.public_code = 'PPCE-DC-000343';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O magistério é PERMITIDO (única exceção).'),
  ('c', 'Incorreta. Participar de associações (como a AMB) é permitido.'),
  ('d', 'Incorreta. Manifestação nos autos é o dever do juiz.'),
  ('e', 'Incorreta. Pode residir fora com autorização do Tribunal.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000343';

-- -----------------------------------------------------------------------------
-- QUESTÃO 344: PODER JUDICIÁRIO (QUINTOS CONSTITUCIONAL - ART. 94)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000344', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Judiciário', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Um quinto dos lugares dos Tribunais Regionais Federais, dos Tribunais dos Estados, e do Distrito Federal e Territórios será composto de membros do:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ministério Público e Advogados, com mais de dez anos de carreira/atividade.', 1),
  ('b', 'B', 'Poder Legislativo e Executivo, alternadamente.', 2),
  ('c', 'C', 'Magistério jurídico e das Polícias Judiciárias.', 3),
  ('d', 'D', 'Tribunal de Contas e das Defensorias Públicas.', 4),
  ('e', 'E', 'Justiça Militar e da Justiça Eleitoral.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000344';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000344' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Quinto Constitucional (Art. 94).', 'A composição heterogênea dos tribunais visa oxigenar o Judiciário com outras visões jurídicas.', 'Dica: Exige reputação ilibada e notável saber jurídico.' from public.questions q where q.public_code = 'PPCE-DC-000344';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Políticos não têm vaga reservada nos tribunais ordinários por cota.'),
  ('c', 'Incorreta. Policiais não integram o quinto constitucional.'),
  ('d', 'Incorreta. A Defensoria não integra o Quinto (embora haja debates sobre isso).'),
  ('e', 'Incorreta. São justiças especializadas, não órgãos de composição de outros tribunais.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000344';

-- -----------------------------------------------------------------------------
-- QUESTÃO 345: PODER JUDICIÁRIO (STF - ART. 101)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000345', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Judiciário', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O Supremo Tribunal Federal compõe-se de onze Ministros, escolhidos entre cidadãos com mais de trinta e cinco e menos de setenta anos de idade. A nomeação é feita pelo:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Presidente da República, após aprovação pela maioria absoluta do Senado Federal.', 1),
  ('b', 'B', 'Presidente da República, livremente, sem necessidade de aprovação legislativa.', 2),
  ('c', 'C', 'Congresso Nacional, mediante concurso público de provas e títulos.', 3),
  ('d', 'D', 'Superior Tribunal de Justiça, dentre seus próprios membros.', 4),
  ('e', 'E', 'Conselho Nacional de Justiça, por merecimento.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000345';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000345' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Escolha dos Ministros STF (Art. 101).', 'Mnemônico: "Somos Time de Futebol" (11 jogadores/ministros). Exige aval do Senado.', 'Dica: O quórum no Senado é de maioria ABSOLUTA.' from public.questions q where q.public_code = 'PPCE-DC-000345';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O Senado deve aprovar (sistema de freios e contrapesos).'),
  ('c', 'Incorreta. Ministros de tribunais superiores não ingressam por concurso.'),
  ('d', 'Incorreta. O STJ não nomeia ministros do STF.'),
  ('e', 'Incorreta. O CNJ não tem função de nomear magistrados de cúpula.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000345';

-- -----------------------------------------------------------------------------
-- QUESTÃO 346: PODER JUDICIÁRIO (CNJ - ART. 103-B)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000346', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Judiciário', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Conselho Nacional de Justiça (CNJ) é presidido pelo:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ministro mais antigo do Superior Tribunal de Justiça.', 1),
  ('b', 'B', 'Presidente do Supremo Tribunal Federal.', 2),
  ('c', 'C', 'Procurador-Geral da República.', 3),
  ('d', 'D', 'Ministro da Justiça e Segurança Pública.', 4),
  ('e', 'E', 'Presidente da Ordem dos Advogados do Brasil.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000346';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000346' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Presidência do CNJ (Art. 103-B).', 'O Presidente do STF é, nato, o Presidente do CNJ.', 'Dica: O CNJ controla a atuação administrativa e financeira do Judiciário.' from public.questions q where q.public_code = 'PPCE-DC-000346';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O STJ indica membros, mas não preside o CNJ.'),
  ('c', 'Incorreta. O PGR é membro do CNJ, mas não o preside.'),
  ('d', 'Incorreta. O Ministro da Justiça (Executivo) não integra o CNJ.'),
  ('e', 'Incorreta. A OAB indica dois membros, mas não preside.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000346';

-- -----------------------------------------------------------------------------
-- QUESTÃO 347: PODER JUDICIÁRIO (STJ - ART. 104)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000347', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Judiciário', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Superior Tribunal de Justiça (STJ) compõe-se de, no mínimo, trinta e três Ministros. A regra de composição é:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '1/3 de juízes federais, 1/3 de desembargadores estaduais e 1/3 alternadamente entre MP e Advogados.', 1),
  ('b', 'B', '1/2 de juízes federais e 1/2 de membros do MP.', 2),
  ('c', 'C', 'Composição livre por indicação do Presidente da República.', 3),
  ('d', 'D', 'Membros exclusivos da carreira da magistratura federal.', 4),
  ('e', 'E', 'Nenhuma das alternativas anteriores está correta.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000347';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000347' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Composição do STJ (Art. 104).', 'Mnemônico: "Somos Todos de Jesus" (33 - idade de Cristo). Regra dos Terços.', 'Dica: O STJ é o "Tribunal da Cidadania".' from public.questions q where q.public_code = 'PPCE-DC-000347';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A regra divide em terços, não metades.'),
  ('c', 'Incorreta. Existem listas e critérios rígidos para a indicação.'),
  ('d', 'Incorreta. Inclui também desembargadores estaduais, MP e Advogados.'),
  ('e', 'Incorreta. A alternativa A reflete o texto constitucional.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000347';

-- -----------------------------------------------------------------------------
-- QUESTÃO 348: PODER JUDICIÁRIO (SÚMULA VINCULANTE - ART. 103-A)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000348', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Judiciário', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O Supremo Tribunal Federal poderá, mediante decisão de dois terços dos seus membros, aprovar súmula que terá efeito vinculante em relação:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Aos demais órgãos do Poder Judiciário e à administração pública direta e indireta.', 1),
  ('b', 'B', 'Ao Poder Legislativo em sua função típica de criar leis.', 2),
  ('c', 'C', 'Apenas aos tribunais de segunda instância.', 3),
  ('d', 'D', 'Aos cidadãos individualmente em suas relações privadas.', 4),
  ('e', 'E', 'Aos tratados internacionais assinados pelo Brasil.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000348';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000348' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Súmula Vinculante (Art. 103-A).', 'A SV vincula o Judiciário e a Adm. Pública, mas NÃO o Legislativo na criação de leis.', 'Dica: Quórum de 2/3 (8 ministros) é necessário.' from public.questions q where q.public_code = 'PPCE-DC-000348';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O Legislativo não é vinculado em sua função típica.'),
  ('c', 'Incorreta. Vincula TODAS as instâncias inferiores.'),
  ('d', 'Incorreta. Vincula órgãos públicos.'),
  ('e', 'Incorreta. Súmulas interpretam a Constituição interna.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000348';

-- -----------------------------------------------------------------------------
-- QUESTÃO 349: FUNÇÕES ESSENCIAIS À JUSTIÇA (MINISTÉRIO PÚBLICO - ART. 127)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000349', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Funções Essenciais à Justiça', 'Ministério Público', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Ministério Público é instituição permanente, essencial à função jurisdicional do Estado, incumbindo-lhe a defesa da:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ordem jurídica, do regime democrático e dos interesses sociais e individuais indisponíveis.', 1),
  ('b', 'B', 'Presidência da República em processos judiciais.', 2),
  ('c', 'C', 'Administração pública contra abusos dos cidadãos.', 3),
  ('d', 'D', 'Liberdade de mercado e da livre iniciativa econômica.', 4),
  ('e', 'E', 'Justiça em detrimento da segurança pública.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000349';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000349' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Missão do Ministério Público (Art. 127).', 'O MP é o "fiscal da lei" (Custos Legis) e defensor do regime democrático.', 'Dica: Possui autonomia funcional, administrativa e financeira.' from public.questions q where q.public_code = 'PPCE-DC-000349';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A defesa do Presidente é feita pela Advocacia-Geral da União.'),
  ('c', 'Incorreta. O MP defende a sociedade.'),
  ('d', 'Incorreta. Embora tutele o patrimônio público, não é sua missão precípua constitucional.'),
  ('e', 'Incorreta. Justiça e segurança devem coexistir sob o império da lei.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000349';

-- -----------------------------------------------------------------------------
-- QUESTÃO 350: FUNÇÕES ESSENCIAIS À JUSTIÇA (MP - GARANTIAS - ART. 128)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000350', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Funções Essenciais à Justiça', 'Ministério Público', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Os membros do Ministério Público gozam das seguintes garantias, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Vitaliciedade, após dois anos de exercício.', 1),
  ('b', 'B', 'Inamovibilidade, salvo por motivo de interesse público.', 2),
  ('c', 'C', 'Irredutibilidade de subsídio.', 3),
  ('d', 'D', 'Prisão especial em qualquer circunstância penal.', 4),
  ('e', 'E', 'Vitaliciamento mediante avaliação de desempenho.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000350';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000350' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Garantias do MP (Art. 128).', 'As garantias (Vitaliciedade, Inamovibilidade e Irredutibilidade) são idênticas às da magistratura.', 'Dica: Vitaliciedade no MP também exige 2 anos.' from public.questions q where q.public_code = 'PPCE-DC-000350';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. É a primeira garantia (Art. 128, §5º, I, a).'),
  ('b', 'Incorreta. É a segunda garantia (Art. 128, §5º, I, b).'),
  ('c', 'Incorreta. É a terceira garantia (Art. 128, §5º, I, c).'),
  ('e', 'Incorreta. O vitaliciamento é o processo de aquisição da vitaliciedade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000350';

-- -----------------------------------------------------------------------------
-- QUESTÃO 351: SEGURANÇA PÚBLICA (POLÍCIA PENAL - VINCULAÇÃO - ART. 144, § 5º-A)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000351', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A Polícia Penal, órgão de segurança pública, é vinculada ao órgão administrador do sistema penal da unidade federativa a que pertence. Sua criação decorre da:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Emenda Constitucional nº 104/2019.', 1),
  ('b', 'B', 'Constituição Federal original de 1988.', 2),
  ('c', 'C', 'Lei de Execução Penal (LEP).', 3),
  ('d', 'D', 'Lei de Responsabilidade Fiscal.', 4),
  ('e', 'E', 'Reforma Administrativa de 1998.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000351';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000351' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Criação da Polícia Penal (Art. 144).', 'A Polícia Penal foi inserida na CF pela EC 104/2019, transformando os agentes penitenciários em policiais.', 'Dica: É a polícia mais recente no rol do Art. 144.' from public.questions q where q.public_code = 'PPCE-DC-000351';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Em 1988 não existia a figura da Polícia Penal na CF.'),
  ('c', 'Incorreta. A LEP é uma lei ordinária; a polícia penal é órgão constitucional.'),
  ('d', 'Incorreta. A LRF trata de gastos, não de órgãos de segurança.'),
  ('e', 'Incorreta. A EC 19/98 não tratou da Polícia Penal.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000351';

-- -----------------------------------------------------------------------------
-- QUESTÃO 352: SEGURANÇA PÚBLICA (POLÍCIA MILITAR - ART. 144, § 5º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000352', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Às polícias militares cabem a polícia ostensiva e a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Preservação da ordem pública.', 1),
  ('b', 'B', 'Investigação de crimes hediondos.', 2),
  ('c', 'C', 'Função de polícia judiciária estadual.', 3),
  ('d', 'D', 'Guarda externa das fronteiras nacionais.', 4),
  ('e', 'E', 'Apurar infrações penais contra a ordem política.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000352';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000352' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Missão da PM (Art. 144).', 'A PM atua na prevenção (ostensividade) e manutenção da ordem.', 'Dica: PM é força auxiliar e reserva do Exército.' from public.questions q where q.public_code = 'PPCE-DC-000352';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Investigação penal comum é da Polícia Civil.'),
  ('c', 'Incorreta. Polícia Judiciária é da Polícia Civil ou Federal.'),
  ('d', 'Incorreta. Função das Forças Armadas e Polícia Federal.'),
  ('e', 'Incorreta. Atribuição da Polícia Federal.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000352';

-- -----------------------------------------------------------------------------
-- QUESTÃO 353: SEGURANÇA PÚBLICA (BOMBEIROS MILITARES - ART. 144, § 5º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000353', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Aos corpos de bombeiros militares, além das atribuições definidas em lei, incumbe a execução de atividades de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Defesa civil.', 1),
  ('b', 'B', 'Segurança de dignitários.', 2),
  ('c', 'C', 'Controle de distúrbios civis.', 3),
  ('d', 'D', 'Policiamento de trânsito urbano.', 4),
  ('e', 'E', 'Fiscalização de caça e pesca.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000353';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000353' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Bombeiros Militares (Art. 144).', 'A CF vincula expressamente os Bombeiros à atividade de Defesa Civil.', 'Dica: Assim como a PM, são força auxiliar e reserva do Exército.' from public.questions q where q.public_code = 'PPCE-DC-000353';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Atribuição de órgãos de segurança aproximada (como Casa Militar).'),
  ('c', 'Incorreta. Atribuição da Polícia Militar (Choque).'),
  ('d', 'Incorreta. Atribuição da PM ou órgãos de trânsito municipais.'),
  ('e', 'Incorreta. Atribuição de polícia ambiental (geralmente batalhão da PM).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000353';

-- -----------------------------------------------------------------------------
-- QUESTÃO 354: SEGURANÇA PÚBLICA (FORÇAS AUXILIARES - ART. 144, § 6º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000354', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'As polícias militares e os corpos de bombeiros militares, forças auxiliares e reserva do Exército subordinam-se, juntamente com as polícias civis e as polícias penais estaduais e distrital, aos:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ministros da Defesa e da Justiça.', 1),
  ('b', 'B', 'Governadores dos Estados, do Distrito Federal e dos Territórios.', 2),
  ('c', 'C', 'Prefeitos das capitais estaduais.', 3),
  ('d', 'D', 'Tribunais de Justiça dos respectivos Estados.', 4),
  ('e', 'E', 'Comandantes militares de área do Exército Brasileiro.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000354';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000354' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Subordinação Policial (Art. 144).', 'As polícias estaduais (PM, BM, PC, PP) subordinam-se ao Governador.', 'Dica: No DF, a subordinação é ao Governador, mas a manutenção é da União.' from public.questions q where q.public_code = 'PPCE-DC-000354';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Estes ministros comandam órgãos federais (PF, PRF, PFF).'),
  ('c', 'Incorreta. Prefeitos não comandam polícias estaduais (apenas Guardas Municipais).'),
  ('d', 'Incorreta. O Judiciário não exerce comando hierárquico sobre as polícias.'),
  ('e', 'Incorreta. Embora sejam reserva do Exército, a subordinação administrativa é ao Governador.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000354';

-- -----------------------------------------------------------------------------
-- QUESTÃO 355: SEGURANÇA PÚBLICA (MANDATO E REMUNERAÇÃO - ART. 144, § 9º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000355', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A remuneração dos servidores policiais integrantes dos órgãos de segurança pública será fixada na forma de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Subsídio, em parcela única.', 1),
  ('b', 'B', 'Vencimento base acrescido de gratificações de risco.', 2),
  ('c', 'C', 'Salário mínimo acrescido de adicionais por tempo de serviço.', 3),
  ('d', 'D', 'Proventos definidos por convenção coletiva anual.', 4),
  ('e', 'E', 'Comissões baseadas na produtividade operacional.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000355';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000355' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Remuneração Policial (Art. 144).', 'A CF exige o regime de SUBSÍDIO para as carreiras policiais (Art. 144, §9º c/c Art. 39, §4º).', 'Dica: Subsídio proíbe o acréscimo de gratificações, prêmios ou verbas de representação comuns.' from public.questions q where q.public_code = 'PPCE-DC-000355';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Este é o regime de vencimentos (vencimento + vantagens), vedado pela regra do subsídio.'),
  ('c', 'Incorreta. Servidores públicos não recebem salário mínimo; recebem remuneração/subsídio.'),
  ('d', 'Incorreta. Não existe convenção coletiva para policiais (proibição de sindicalização militar/restrições civis).'),
  ('e', 'Incorreta. A segurança pública é atividade de Estado, incompatível com comissões de produtividade variada.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000355';

-- -----------------------------------------------------------------------------
-- QUESTÃO 356: SEGURANÇA PÚBLICA (SEGURANÇA VIÁRIA - ART. 144, § 10)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000356', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A segurança viária, exercida para a preservação da ordem pública e da incolumidade das pessoas e de seu patrimônio nas vias públicas, compreende:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A educação, engenharia e fiscalização de trânsito.', 1),
  ('b', 'B', 'O policiamento ostensivo e repressivo contra crimes violentos.', 2),
  ('c', 'C', 'A guarda de bens privados em estacionamentos públicos.', 3),
  ('d', 'D', 'A manutenção asfáltica e iluminação das rodovias.', 4),
  ('e', 'E', 'A escolta de autoridades em deslocamento urbano.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000356';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000356' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Segurança Viária (Art. 144).', 'A segurança viária foca no trânsito (Educação, Engenharia e Fiscalização).', 'Dica: Compete aos Estados, DF e Municípios.' from public.questions q where q.public_code = 'PPCE-DC-000356';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Isso é competência geral das polícias, não o foco da segurança viária constitucional.'),
  ('c', 'Incorreta. Bens privados não são a finalidade da segurança viária.'),
  ('d', 'Incorreta. Manutenção é atividade de infraestrutura, não de segurança viária.'),
  ('e', 'Incorreta. Escolta é atividade de segurança de dignitários.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000356';

-- -----------------------------------------------------------------------------
-- QUESTÃO 357: SEGURANÇA PÚBLICA (POLÍCIA PENAL - ATRIBUIÇÕES - ART. 144, § 5º-A)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000357', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Preencher a lacuna: Às polícias penais, vinculadas ao órgão administrador do sistema penal da unidade federativa a que pertencem, incumbe a segurança dos __________________.', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Presídios estaduais apenas.', 1),
  ('b', 'B', 'Estabelecimentos penais.', 2),
  ('c', 'C', 'Detentos em regime aberto.', 3),
  ('d', 'D', 'Tribunais de Justiça.', 4),
  ('e', 'E', 'Fóruns e delegacias.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000357';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000357' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Atribuição da Polícia Penal.', 'O texto constitucional utiliza o termo abrangente "estabelecimentos penais".', 'Dica: Inclui colônias agrícolas, casas de albergado, etc.' from public.questions q where q.public_code = 'PPCE-DC-000357';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Presídios são apenas uma espécie de estabelecimento penal.'),
  ('c', 'Incorreta. O foco é o estabelecimento físico e a segurança interna.'),
  ('d', 'Incorreta. Segurança de tribunais é feita por polícia judicial ou privada/terceirizada.'),
  ('e', 'Incorreta. Delegacias são da Polícia Civil.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000357';

-- -----------------------------------------------------------------------------
-- QUESTÃO 358: SEGURANÇA PÚBLICA (POLÍCIA FERROVIÁRIA FEDERAL - ART. 144, § 3º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000358', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A Polícia Ferroviária Federal, órgão permanente, organizado e mantido pela União, destina-se, na forma da lei, ao:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Patrulhamento ostensivo das ferrovias federais.', 1),
  ('b', 'B', 'Investigação de crimes cometidos em trens de carga.', 2),
  ('c', 'C', 'Fiscalização de contratos de concessão ferroviária.', 3),
  ('d', 'D', 'Policiamento das estações de metrô municipais.', 4),
  ('e', 'E', 'Segurança do transporte de minérios entre Estados.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000358';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000358' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Polícia Ferroviária Federal.', 'A atribuição é o patrulhamento ostensivo das ferrovias federais.', 'Dica: Embora prevista na CF, a PFF possui pouquíssimo efetivo e está em processo de extinção/absorção na prática.' from public.questions q where q.public_code = 'PPCE-DC-000358';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Investigação é da Polícia Federal.'),
  ('c', 'Incorreta. Atribuição da ANTT.'),
  ('d', 'Incorreta. Metrô não é ferrovia federal para fins de PFF.'),
  ('e', 'Incorreta. Segurança de carga privada não é atribuição policial direta.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000358';

-- -----------------------------------------------------------------------------
-- QUESTÃO 359: SEGURANÇA PÚBLICA (PRINCÍPIOS DA ATUAÇÃO - ART. 144)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000359', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A segurança pública é dever do Estado, direito e responsabilidade de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Todos.', 1),
  ('b', 'B', 'Dos policiais exclusivamente.', 2),
  ('c', 'C', 'Dos cidadãos brasileiros apenas.', 3),
  ('d', 'D', 'Do Poder Judiciário.', 4),
  ('e', 'E', 'Das Forças Armadas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000359';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000359' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Conceito de Segurança Pública.', 'O caput do Art. 144 traz a corresponsabilidade social pela segurança.', 'Dica: É o fundamento do policiamento comunitário.' from public.questions q where q.public_code = 'PPCE-DC-000359';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Policiais exercem a função, mas a responsabilidade é de todos.'),
  ('c', 'Incorreta. Inclui estrangeiros residentes no país.'),
  ('d', 'Incorreta. O Judiciário julga, mas não é o único responsável pela segurança.'),
  ('e', 'Incorreta. Forças Armadas têm missão de defesa da pátria.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000359';

-- -----------------------------------------------------------------------------
-- QUESTÃO 360: SEGURANÇA PÚBLICA (ROL DE ÓRGÃOS - ART. 144)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000360', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Conforme o Art. 144 da CF, a segurança pública é exercida através dos seguintes órgãos, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Polícia Rodoviária Federal.', 1),
  ('b', 'B', 'Polícia Civil.', 2),
  ('c', 'C', 'Polícia Científica.', 3),
  ('d', 'D', 'Polícia Penal.', 4),
  ('e', 'E', 'Polícia Militar.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000360';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000360' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Rol Taxativo do Art. 144.', 'A Polícia Científica NÃO consta no rol taxativo federal do Art. 144.', 'Dica: Nos Estados, ela costuma ser vinculada à Polícia Civil ou ser órgão autônomo na Constituição Estadual, mas não na Federal.' from public.questions q where q.public_code = 'PPCE-DC-000360';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Consta no inciso II.'),
  ('b', 'Incorreta. Consta no inciso IV.'),
  ('d', 'Incorreta. Consta no inciso VI (incluído pela EC 104/2019).'),
  ('e', 'Incorreta. Consta no inciso V.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000360';

-- -----------------------------------------------------------------------------
-- QUESTÃO 361: DIREITOS INDIVIDUAIS (DOMICÍLIO - ART. 5º, XI)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000361', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos e Deveres Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A casa é asilo inviolável do indivíduo, ninguém nela podendo penetrar sem consentimento do morador, salvo em caso de flagrante delito ou desastre, ou para prestar socorro, ou, durante o dia, por:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Determinação judicial.', 1),
  ('b', 'B', 'Ordem do delegado de polícia.', 2),
  ('c', 'C', 'Solicitação da vizinhança.', 3),
  ('d', 'D', 'Suspeita de crime oculto.', 4),
  ('e', 'E', 'Conveniência da investigação.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000361';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000361' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Inviolabilidade Domiciliar.', 'Ordem judicial para entrar em casa só pode ser cumprida DURANTE O DIA.', 'Dica: Flagrante, desastre e socorro podem ocorrer a qualquer hora.' from public.questions q where q.public_code = 'PPCE-DC-000361';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Delegado não tem poder de violar domicílio sem ordem judicial (salvo flagrante).'),
  ('c', 'Incorreta. Vizinhos não autorizam entrada forçada.'),
  ('d', 'Incorreta. Suspeita exige mandado ou flagrante evidente.'),
  ('e', 'Incorreta. Investigação deve respeitar as garantias constitucionais.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000361';

-- -----------------------------------------------------------------------------
-- QUESTÃO 362: DIREITOS INDIVIDUAIS (REUNIÃO - ART. 5º, XVI)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000362', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos e Deveres Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Todos podem reunir-se pacificamente, sem armas, em locais abertos ao público, independentemente de autorização, desde que não frustrem outra reunião anteriormente convocada para o mesmo local, sendo apenas exigido:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Prévio aviso à autoridade competente.', 1),
  ('b', 'B', 'Pagamento de taxa de ocupação.', 2),
  ('c', 'C', 'Cadastro de todos os participantes.', 3),
  ('d', 'D', 'Presença de policiamento preventivo.', 4),
  ('e', 'E', 'Autorização expressa da prefeitura.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000362';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000362' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direito de Reunião.', 'Não precisa de autorização, apenas de PRÉVIO AVISO.', 'Dica: O STF decidiu que o aviso pode ser por redes sociais ou outros meios eficazes.' from public.questions q where q.public_code = 'PPCE-DC-000362';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O direito é gratuito em sua essência constitucional.'),
  ('c', 'Incorreta. Reuniões são anônimas ou coletivas sem exigência de lista nominal prévia.'),
  ('d', 'Incorreta. Policiamento é dever do estado, não condição para a reunião.'),
  ('e', 'Incorreta. A CF diz "independentemente de autorização".')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000362';

-- -----------------------------------------------------------------------------
-- QUESTÃO 363: DIREITOS INDIVIDUAIS (ASSOCIAÇÃO - ART. 5º, XIX)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000363', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos e Deveres Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'As associações só poderão ser compulsoriamente dissolvidas por decisão judicial:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Transitada em julgado.', 1),
  ('b', 'B', 'De primeira instância.', 2),
  ('c', 'C', 'Do Ministério Público.', 3),
  ('d', 'D', 'Do Governador do Estado.', 4),
  ('e', 'E', 'De um conselho de ética.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000363';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000363' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Dissolução de Associação.', 'Para dissolver (extinguir), exige-se trânsito em julgado. Para suspender, basta decisão judicial simples.', 'Dica: É proteção contra o arbítrio estatal.' from public.questions q where q.public_code = 'PPCE-DC-000363';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Decisão sem trânsito em julgado só pode suspender as atividades.'),
  ('c', 'Incorreta. MP não dissolve associações, ele requer ao juiz.'),
  ('d', 'Incorreta. O Executivo não tem poder sobre a existência de associações civis.'),
  ('e', 'Incorreta. Apenas o Judiciário tem este poder.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000363';

-- -----------------------------------------------------------------------------
-- QUESTÃO 364: DIREITOS INDIVIDUAIS (CERTIDÕES - ART. 5º, XXXIV)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000364', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos e Deveres Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São a todos assegurados, independentemente do pagamento de taxas, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O direito de petição aos Poderes Públicos.', 1),
  ('b', 'B', 'A obtenção de certidões para defesa de direitos e esclarecimento de situações de interesse pessoal.', 2),
  ('c', 'C', 'A autenticação de cópias de documentos privados.', 3),
  ('d', 'D', 'O registro civil de nascimento para os reconhecidamente pobres.', 4),
  ('e', 'E', 'O assento de óbito para os reconhecidamente pobres.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000364';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000364' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Gratuidades Constitucionais.', 'Autenticação de documentos privados em cartórios é serviço pago (emolumentos).', 'Dica: Petição e certidões são gratuitas para TODOS.' from public.questions q where q.public_code = 'PPCE-DC-000364';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. É gratuito para todos (Art. 5º, XXXIV, a).'),
  ('b', 'Incorreta. É gratuito para todos (Art. 5º, XXXIV, b).'),
  ('d', 'Incorreta. É gratuito para os pobres (Art. 5º, LXXVI, a).'),
  ('e', 'Incorreta. É gratuito para os pobres (Art. 5º, LXXVI, b).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000364';

-- -----------------------------------------------------------------------------
-- QUESTÃO 365: DIREITOS INDIVIDUAIS (TRIBUNAL DO JÚRI - ART. 5º, XXXVIII)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000365', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos e Deveres Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'É reconhecida a instituição do júri, com a organização que lhe der a lei, assegurados os seguintes princípios, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A plenitude de defesa.', 1),
  ('b', 'B', 'O sigilo das votações.', 2),
  ('c', 'C', 'A soberania dos veredictos.', 3),
  ('d', 'D', 'A competência para o julgamento dos crimes contra a fé pública.', 4),
  ('e', 'E', 'A competência para o julgamento dos crimes dolosos contra a vida.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000365';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000365' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Tribunal do Júri.', 'O Júri julga CRIMES DOLOSOS CONTRA A VIDA (homicídio, infanticídio, etc).', 'Dica: Fé pública não entra na competência constitucional mínima do Júri.' from public.questions q where q.public_code = 'PPCE-DC-000365';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. É princípio expresso (alínea a).'),
  ('b', 'Incorreta. É princípio expresso (alínea b).'),
  ('c', 'Incorreta. É princípio expresso (alínea c).'),
  ('e', 'Incorreta. É a competência mínima constitucional (alínea d).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000365';

-- -----------------------------------------------------------------------------
-- QUESTÃO 366: DIREITOS INDIVIDUAIS (LEI PENAL NO TEMPO - ART. 5º, XL)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000366', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos e Deveres Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A lei penal não retroagirá, salvo para:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Beneficiar o réu.', 1),
  ('b', 'B', 'Punir crimes hediondos.', 2),
  ('c', 'C', 'Alcançar crimes de corrupção.', 3),
  ('d', 'D', 'Atender ao interesse da acusação.', 4),
  ('e', 'E', 'Aumentar a pena de crimes violentos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000366';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000366' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Retroatividade Penal In Mellius.', 'A regra é a irretroatividade da lei penal maléfica. A exceção é a retroatividade benéfica.', 'Dica: Aplica-se inclusive a fatos definitivamente julgados.' from public.questions q where q.public_code = 'PPCE-DC-000366';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Mesmo em crimes graves, a lei nova maléfica não retroage.'),
  ('c', 'Incorreta. A gravidade do crime não altera a regra da irretroatividade.'),
  ('d', 'Incorreta. A lei penal foca na proteção do indivíduo contra o arbítrio punitivo.'),
  ('e', 'Incorreta. Aumento de pena é lei maléfica (Lex Gravior).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000366';

-- -----------------------------------------------------------------------------
-- QUESTÃO 367: DIREITOS INDIVIDUAIS (CRIMES INAFIANÇÁVEIS - ART. 5º, XLII/XLIV)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000367', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos e Deveres Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A prática do racismo constitui crime:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Inafiançável e imprescritível, sujeito à pena de reclusão.', 1),
  ('b', 'B', 'Inafiançável e prescritível em cinco anos.', 2),
  ('c', 'C', 'Afiançável mediante pagamento de dez salários mínimos.', 3),
  ('d', 'D', 'Sujeito apenas à pena de detenção e multa.', 4),
  ('e', 'E', 'Que admite liberdade provisória com fiança se o réu for primário.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000367';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000367' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Crime de Racismo.', 'Racismo é o crime mais severamente tratado na CF (Inafiançável + Imprescritível + Reclusão).', 'Dica: O STF equiparou a injúria racial ao crime de racismo.' from public.questions q where q.public_code = 'PPCE-DC-000367';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É imprescritível (não prescreve nunca).'),
  ('c', 'Incorreta. A CF proíbe fiança para racismo.'),
  ('d', 'Incorreta. A CF exige pena de reclusão.'),
  ('e', 'Incorreta. A proibição de fiança é absoluta na Constituição.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000367';

-- -----------------------------------------------------------------------------
-- QUESTÃO 368: DIREITOS INDIVIDUAIS (CRIMES EQUIPARADOS - ART. 5º, XLIII)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000368', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos e Deveres Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A lei considerará crimes inafiançáveis e insuscetíveis de graça ou anistia a prática da tortura, o tráfico ilícito de entorpecentes e drogas afins, o terrorismo e os definidos como crimes hediondos. Sobre esses crimes, é correto afirmar que são:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Prescritíveis.', 1),
  ('b', 'B', 'Imprescritíveis.', 2),
  ('c', 'C', 'Suscetíveis de fiança se houver bons antecedentes.', 3),
  ('d', 'D', 'Suscetíveis de indulto natalino.', 4),
  ('e', 'E', 'Punidos apenas com penas restritivas de direitos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000368';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000368' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Crimes Hediondos e Equiparados.', 'Mnemônico TTT+H: Tortura, Tráfico, Terrorismo e Hediondos são inafiançáveis e sem graça/anistia, mas SÃO PRESCRITÍVEIS.', 'Dica: Apenas Racismo e Grupos Armados são imprescritíveis.' from public.questions q where q.public_code = 'PPCE-DC-000368';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Muita gente confunde, mas eles prescrevem segundo a lei penal.'),
  ('c', 'Incorreta. A CF veda fiança expressamente.'),
  ('d', 'Incorreta. "Graça" engloba o indulto (perdão total/parcial da pena).'),
  ('e', 'Incorreta. São crimes de extrema gravidade, geralmente punidos com reclusão.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000368';

-- -----------------------------------------------------------------------------
-- QUESTÃO 369: DIREITOS INDIVIDUAIS (INTRANSFERIBILIDADE DA PENA - ART. 5º, XLV)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000369', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos e Deveres Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Nenhuma pena passará da pessoa do condenado, podendo a obrigação de reparar o dano e a decretação do perdimento de bens ser, nos termos da lei, estendidas aos sucessores e contra eles executadas, até o limite do:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Valor do patrimônio transferido.', 1),
  ('b', 'B', 'Total da herança recebida mais o patrimônio pessoal do herdeiro.', 2),
  ('c', 'C', 'Dobro do dano causado à vítima.', 3),
  ('d', 'D', 'Montante definido pelo Ministério Público.', 4),
  ('e', 'E', 'Limite de 100 salários mínimos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000369';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000369' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Princípio da Intransmissibilidade.', 'A pena (prisão, multa) não passa do condenado. O dano (civil) passa até o limite do que foi herdado.', 'Dica: Evita que o herdeiro pague com seu próprio dinheiro o erro do antepassado.' from public.questions q where q.public_code = 'PPCE-DC-000369';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O patrimônio pessoal do herdeiro é intocável neste caso.'),
  ('c', 'Incorreta. Não existe essa regra de "dobro" na responsabilidade sucessória constitucional.'),
  ('d', 'Incorreta. Quem define limites é a lei e o valor da herança.'),
  ('e', 'Incorreta. O limite é variável (valor da herança).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000369';

-- -----------------------------------------------------------------------------
-- QUESTÃO 370: DIREITOS INDIVIDUAIS (PENAS PROIBIDAS - ART. 5º, XLVII)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000370', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos e Deveres Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Não haverá penas de morte, SALVO em caso de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Guerra declarada, nos termos do art. 84, XIX.', 1),
  ('b', 'B', 'Crimes hediondos com resultado morte.', 2),
  ('c', 'C', 'Tráfico internacional de entorpecentes.', 3),
  ('d', 'D', 'Terrorismo que cause pânico social.', 4),
  ('e', 'E', 'Corrupção passiva de altos funcionários.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000370';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000370' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Pena de Morte na CF.', 'A única exceção à proibição da pena de morte é a guerra externa declarada.', 'Dica: O método previsto no Código de Processo Penal Militar é o fuzilamento.' from public.questions q where q.public_code = 'PPCE-DC-000370';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Em tempos de paz, a pena máxima é a privação de liberdade.'),
  ('c', 'Incorreta. Tráfico não admite pena de morte no Brasil.'),
  ('d', 'Incorreta. Terrorismo é grave, mas não permite pena capital na paz.'),
  ('e', 'Incorreta. Crimes contra a administração não admitem pena de morte.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000370';

-- -----------------------------------------------------------------------------
-- QUESTÃO 371: DIREITOS INDIVIDUAIS (RECOLHIMENTO À PRISÃO - ART. 5º, LXI)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000371', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos e Deveres Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Ninguém será preso senão em flagrante delito ou por ordem escrita e fundamentada de autoridade judiciária competente, salvo nos casos de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Transgressão militar ou crime propriamente militar, definidos em lei.', 1),
  ('b', 'B', 'Dívidas civis superiores a cem salários mínimos.', 2),
  ('c', 'C', 'Desobediência a ordens do Ministério Público.', 3),
  ('d', 'D', 'Suspeita de fuga do país.', 4),
  ('e', 'E', 'Averiguação de identidade em blitz policial.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000371';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000371' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Prisão sem Ordem Judicial.', 'Militares podem ser presos por transgressão disciplinar sem ordem de juiz.', 'Dica: É a única exceção além do flagrante.' from public.questions q where q.public_code = 'PPCE-DC-000371';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Prisão civil por dívida é proibida (salvo alimentos).'),
  ('c', 'Incorreta. MP não tem poder de prender sem ordem judicial.'),
  ('d', 'Incorreta. Fuga exige pedido de prisão cautelar ao juiz.'),
  ('e', 'Incorreta. Prisão para averiguação é inconstitucional.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000371';

-- -----------------------------------------------------------------------------
-- QUESTÃO 372: DIREITOS INDIVIDUAIS (COMUNICAÇÃO DA PRISÃO - ART. 5º, LXII)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000372', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos e Deveres Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A prisão de qualquer pessoa e o local onde se encontre serão comunicados imediatamente ao juiz competente e à:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Família do preso ou à pessoa por ele indicada.', 1),
  ('b', 'B', 'Ordem dos Advogados do Brasil.', 2),
  ('c', 'C', 'Delegacia de Proteção ao Menor.', 3),
  ('d', 'D', 'Imprensa local para fins de transparência.', 4),
  ('e', 'E', 'Polícia Federal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000372';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000372' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Comunicação da Prisão.', 'O preso tem o direito fundamental de que sua família saiba de seu paradeiro imediatamente.', 'Dica: A falta de comunicação gera ilegalidade da prisão.' from public.questions q where q.public_code = 'PPCE-DC-000372';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. OAB é comunicada se o preso for advogado ou se não houver defensor.'),
  ('c', 'Incorreta. Só se for menor de idade (adolescente em conflito com a lei).'),
  ('d', 'Incorreta. A publicidade excessiva (exposição do preso) pode gerar abuso de autoridade.'),
  ('e', 'Incorreta. Apenas se o crime for federal.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000372';

-- -----------------------------------------------------------------------------
-- QUESTÃO 373: DIREITOS INDIVIDUAIS (RELAXAMENTO DA PRISÃO - ART. 5º, LXV)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000373', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos e Deveres Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A prisão ilegal será imediatamente relaxada pela:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Autoridade judiciária.', 1),
  ('b', 'B', 'Autoridade policial.', 2),
  ('c', 'C', 'Promotoria de Justiça.', 3),
  ('d', 'D', 'Defensoria Pública.', 4),
  ('e', 'E', 'Vítima ou seus familiares.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000373';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000373' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Relaxamento de Prisão.', 'Relaxamento é o termo para anular prisão ILEGAL. Só o Juiz relaxa.', 'Dica: Se a prisão for legal, mas desnecessária, cabe liberdade provisória.' from public.questions q where q.public_code = 'PPCE-DC-000373';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Delegado não relaxa prisão após lavrado o flagrante.'),
  ('c', 'Incorreta. Promotor pede o relaxamento, não o executa.'),
  ('d', 'Incorreta. Defensor impetra Habeas Corpus ou pede relaxamento.'),
  ('e', 'Incorreta. Particulares não têm poder de decisão jurisdicional.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000373';

-- -----------------------------------------------------------------------------
-- QUESTÃO 374: DIREITOS INDIVIDUAIS (HABEAS CORPUS - ART. 5º, LXVIII)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000374', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos e Deveres Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Conceder-se-á habeas corpus sempre que alguém sofrer ou se achar ameaçado de sofrer violência ou coação em sua liberdade de locomoção, por ilegalidade ou abuso de poder. O habeas corpus é:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Gratuito e não exige advogado.', 1),
  ('b', 'B', 'Pago e exige obrigatoriamente a presença de advogado.', 2),
  ('c', 'C', 'Gratuito para os pobres e pago para os demais.', 3),
  ('d', 'D', 'Aplicável apenas contra atos do Poder Executivo.', 4),
  ('e', 'E', 'Inadmissível contra atos de particulares.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000374';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000374' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Habeas Corpus (HC).', 'HC é uma ação constitucional gratuita para todos e pode ser impetrada por qualquer pessoa.', 'Dica: É o único remédio que não exige capacidade postulatória (advogado).' from public.questions q where q.public_code = 'PPCE-DC-000374';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É gratuito (Art. 5º, LXXVII).'),
  ('c', 'Incorreta. A gratuidade é universal.'),
  ('d', 'Incorreta. Cabe contra atos judiciais também.'),
  ('e', 'Incorreta. Cabe HC contra particular (ex: diretor de hospital que retém paciente).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000374';

-- -----------------------------------------------------------------------------
-- QUESTÃO 375: DIREITOS INDIVIDUAIS (MANDADO DE SEGURANÇA - ART. 5º, LXIX)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000375', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos e Deveres Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O mandado de segurança é cabível para proteger direito líquido e certo, não amparado por:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Habeas corpus ou habeas data.', 1),
  ('b', 'B', 'Mandado de injunção.', 2),
  ('c', 'C', 'Ação popular ou ação civil pública.', 3),
  ('d', 'D', 'Recurso administrativo com efeito suspensivo.', 4),
  ('e', 'E', 'Petição inicial em processo comum.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000375';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000375' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Mandato de Segurança (MS).', 'O MS é um remédio residual: protege o que o HC e o HD não protegem.', 'Dica: Exige prova pré-constituída (não há dilação probatória).' from public.questions q where q.public_code = 'PPCE-DC-000375';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Mandado de Injunção foca na falta de norma.'),
  ('c', 'Incorreta. São ações de tutela coletiva específicas.'),
  ('d', 'Incorreta. Se houver recurso administrativo com efeito suspensivo, o MS é incabível (segundo a lei do MS).'),
  ('e', 'Incorreta. Alternativa sem relação com a subsidiariedade constitucional.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000375';

-- -----------------------------------------------------------------------------
-- QUESTÃO 376: DIREITOS INDIVIDUAIS (HABEAS DATA - ART. 5º, LXXII)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000376', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos e Deveres Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Conceder-se-á habeas data para assegurar o conhecimento de informações relativas à pessoa do impetrante, constantes de registros ou bancos de dados de entidades governamentais ou de caráter público. O habeas data é:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Gratuito e exige advogado.', 1),
  ('b', 'B', 'Pago e não exige advogado.', 2),
  ('c', 'C', 'Gratuito e não exige advogado.', 3),
  ('d', 'D', 'Aplicável para obter dados de terceiros.', 4),
  ('e', 'E', 'Destinado exclusivamente à retificação de dados bancários privados.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000376';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000376' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Habeas Data (HD).', 'O HD é gratuito (Art. 5º, LXXVII), mas EXIGE advogado.', 'Dica: É uma ação personalíssima (apenas para dados próprios).' from public.questions q where q.public_code = 'PPCE-DC-000376';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É gratuito.'),
  ('c', 'Incorreta. HC é o único que não exige advogado. HD exige.'),
  ('d', 'Incorreta. É para dados do impetrante (personalíssimo).'),
  ('e', 'Incorreta. Foca em dados de caráter público ou governamental.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000376';

-- -----------------------------------------------------------------------------
-- QUESTÃO 377: DIREITOS INDIVIDUAIS (MANDADO DE INJUNÇÃO - ART. 5º, LXXI)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000377', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos e Deveres Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Conceder-se-á mandado de injunção sempre que a falta de norma regulamentadora torne inviável o exercício dos direitos e liberdades constitucionais e das prerrogativas inerentes à:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Nacionalidade, soberania e cidadania.', 1),
  ('b', 'B', 'Livre iniciativa e propriedade privada.', 2),
  ('c', 'C', 'Segurança pública e defesa nacional.', 3),
  ('d', 'D', 'Liberdade de expressão e de imprensa.', 4),
  ('e', 'E', 'Autonomia universitária.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000377';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000377' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Mandato de Injunção (MI).', 'O MI combate a omissão legislativa que impede o exercício de direitos fundamentais específicos.', 'Dica: É o remédio contra a "síndrome da inefetividade" das normas constitucionais.' from public.questions q where q.public_code = 'PPCE-DC-000377';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Embora possa haver MI para outros direitos, a tríade clássica do Art. 5º, LXXI é NSC (Nacionalidade, Soberania, Cidadania).'),
  ('c', 'Incorreta. Estes temas costumam ter normas regulamentadoras densas ou ser atos de governo.'),
  ('d', 'Incorreta. São direitos de eficácia plena em sua maioria.'),
  ('e', 'Incorreta. Termo não presente na definição do remédio injuncional.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000377';

-- -----------------------------------------------------------------------------
-- QUESTÃO 378: DIREITOS INDIVIDUAIS (AÇÃO POPULAR - ART. 5º, LXXIII)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000378', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos e Deveres Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Qualquer cidadão é parte legítima para propor ação popular que vise a anular ato lesivo ao patrimônio público ou de entidade de que o Estado participe, à moralidade administrativa, ao meio ambiente e ao patrimônio histórico e cultural. O autor da ação popular:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ficará isento de custas judiciais e do ônus da sucumbência, salvo comprovada má-fé.', 1),
  ('b', 'B', 'Deve pagar custas se perder a ação, mesmo agindo de boa-fé.', 2),
  ('c', 'C', 'Deve ser obrigatoriamente um partido político.', 3),
  ('d', 'D', 'Pode ser estrangeiro residente no Brasil há mais de cinco anos.', 4),
  ('e', 'E', 'Deve prestar caução no valor da causa.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000378';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000378' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Ação Popular.', 'O cidadão (eleitor) é incentivado a fiscalizar a administração. A isenção de custas é a regra.', 'Dica: Apenas o cidadão (quem vota) pode propor.' from public.questions q where q.public_code = 'PPCE-DC-000378';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A boa-fé garante a isenção.'),
  ('c', 'Incorreta. Partidos propõem Mandado de Segurança Coletivo ou ADI.'),
  ('d', 'Incorreta. Estrangeiro não é cidadão (não vota no Brasil).'),
  ('e', 'Incorreta. Não existe exigência de caução.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000378';

-- -----------------------------------------------------------------------------
-- QUESTÃO 379: NACIONALIDADE (BRASILEIROS NATOS - ART. 12, I)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000379', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Nacionalidade', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São brasileiros natos os nascidos na República Federativa do Brasil, ainda que de pais estrangeiros, desde que estes:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Não estejam a serviço de seu país.', 1),
  ('b', 'B', 'Residam no Brasil há mais de um ano.', 2),
  ('c', 'C', 'Tenham visto de permanência definitivo.', 3),
  ('d', 'D', 'Sejam descendentes de latinos.', 4),
  ('e', 'E', 'Saibam falar a língua portuguesa.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000379';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000379' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Ius Soli (Critério do Solo).', 'Quem nasce no Brasil é nato, a menos que os pais estrangeiros estejam a serviço do país DELES.', 'Dica: Se estiverem a serviço de outro país (que não o deles) ou de empresa privada, o filho é nato.' from public.questions q where q.public_code = 'PPCE-DC-000379';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O tempo de residência não importa para o ius soli.'),
  ('c', 'Incorreta. O tipo de visto não é critério para o ius soli.'),
  ('d', 'Incorreta. Critério étnico não existe para nacionalidade nata no solo.'),
  ('e', 'Incorreta. Idioma não é requisito para nato no solo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000379';

-- -----------------------------------------------------------------------------
-- QUESTÃO 380: NACIONALIDADE (CARGOS PRIVATIVOS - ART. 12, § 3º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000380', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Nacionalidade', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São cargos privativos de brasileiro nato, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ministro do Superior Tribunal de Justiça.', 1),
  ('b', 'B', 'Presidente da Câmara dos Deputados.', 2),
  ('c', 'C', 'Ministro do Supremo Tribunal Federal.', 3),
  ('d', 'D', 'Carreira diplomática.', 4),
  ('e', 'E', 'Oficial das Forças Armadas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000380';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000380' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Cargos de Nato (MP3.COM).', 'Mnemônico: Ministro do STF, Presidente (República/Câmara/Senado), Carreira diplomática, Oficial (FFAA), Ministro (Defesa).', 'Dica: Ministro do STJ pode ser naturalizado.' from public.questions q where q.public_code = 'PPCE-DC-000380';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É privativo de nato (está na linha de sucessão presidencial).'),
  ('c', 'Incorreta. É privativo de nato (Art. 12, §3º, IV).'),
  ('d', 'Incorreta. É privativo de nato (Art. 12, §3º, V).'),
  ('e', 'Incorreta. É privativo de nato (Art. 12, §3º, VI).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000380';

-- -----------------------------------------------------------------------------
-- QUESTÃO 381: DIREITOS POLÍTICOS (CAPACIDADE ELEITORAL ATIVA - ART. 14)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000381', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Políticos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O alistamento eleitoral e o voto são facultativos para:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Os analfabetos, os maiores de setenta anos e os maiores de dezesseis e menores de dezoito anos.', 1),
  ('b', 'B', 'Os estrangeiros e os conscritos durante o serviço militar.', 2),
  ('c', 'C', 'Os presos provisórios aguardando julgamento.', 3),
  ('d', 'D', 'Os policiais em serviço no dia da eleição.', 4),
  ('e', 'E', 'Os brasileiros residentes no exterior.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000381';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000381' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Voto Facultativo.', 'Analfabetos, Idosos (>70) e Jovens (16-18) votam se quiserem.', 'Dica: Estrangeiros e Conscritos são INALISTÁVEIS (não votam nem se quiserem).' from public.questions q where q.public_code = 'PPCE-DC-000381';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Estes são inalistáveis (proibidos de votar).'),
  ('c', 'Incorreta. Presos provisórios têm direito ao voto (não tiveram direitos suspensos).'),
  ('d', 'Incorreta. Policiais votam obrigatoriamente (salvo se caírem nas faixas de idade).'),
  ('e', 'Incorreta. Brasileiros no exterior votam obrigatoriamente para Presidente.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000381';

-- -----------------------------------------------------------------------------
-- QUESTÃO 382: DIREITOS POLÍTICOS (INELEGIBILIDADE REFLEXA - ART. 14, § 7º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000382', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Políticos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'São inelegíveis, no território de jurisdição do titular, o cônjuge e os parentes consanguíneos ou afins, até o segundo grau ou por adoção, do Presidente da República, de Governador de Estado, do Distrito Federal, de Prefeito ou de quem os haja substituído dentro dos seis meses anteriores ao pleito, SALVO se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Já titular de mandato eletivo e candidato à reeleição.', 1),
  ('b', 'B', 'O titular renunciar ao cargo um ano antes da eleição.', 2),
  ('c', 'C', 'Houver autorização expressa da Justiça Eleitoral.', 3),
  ('d', 'D', 'O parente for de um partido de oposição ao titular.', 4),
  ('e', 'E', 'O casamento for desfeito por morte durante o mandato.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000382';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000382' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Inelegibilidade Reflexa.', 'A regra impede clãs familiares no poder, mas permite a reeleição de quem já está lá.', 'Dica: Súmula Vinculante 18: A dissolução do vínculo conjugal no curso do mandato não afasta a inelegibilidade.' from public.questions q where q.public_code = 'PPCE-DC-000382';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A desincompatibilização do titular para favorecer parente não é prevista desta forma.'),
  ('c', 'Incorreta. A Justiça Eleitoral não tem poder discricionário sobre isso.'),
  ('d', 'Incorreta. A ideologia partidária é irrelevante para a proibição familiar.'),
  ('e', 'Incorreta. Embora a morte mude a situação fática, a regra da reeleição (A) é a exceção literal da CF.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000382';

-- -----------------------------------------------------------------------------
-- QUESTÃO 383: PARTIDOS POLÍTICOS (ART. 17)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000383', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Partidos Políticos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'É livre a criação, fusão, incorporação e extinção de partidos políticos, resguardados a soberania nacional, o regime democrático, o pluripartidarismo, os direitos fundamentais da pessoa humana e observados os seguintes preceitos, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Subordinação a entidades ou governos estrangeiros.', 1),
  ('b', 'B', 'Caráter nacional.', 2),
  ('c', 'C', 'Prestação de contas à Justiça Eleitoral.', 3),
  ('d', 'D', 'Funcionamento parlamentar de acordo com a lei.', 4),
  ('e', 'E', 'Proibição de recebimento de recursos financeiros de entidades estrangeiras.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000383';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000383' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Preceitos dos Partidos.', 'É PROIBIDA a subordinação a governos estrangeiros.', 'Dica: Partidos são pessoas jurídicas de direito privado.' from public.questions q where q.public_code = 'PPCE-DC-000383';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É um preceito obrigatório (Art. 17, I).'),
  ('c', 'Incorreta. É um preceito obrigatório (Art. 17, III).'),
  ('d', 'Incorreta. É um preceito obrigatório (Art. 17, IV).'),
  ('e', 'Incorreta. É uma proibição constitucional (Art. 17, II).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000383';

-- -----------------------------------------------------------------------------
-- QUESTÃO 384: ORGANIZAÇÃO DO ESTADO (INTERVENÇÃO FEDERAL - ART. 34)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000384', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização do Estado', 'Intervenção', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A União não intervirá nos Estados nem no Distrito Federal, exceto para:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Manter a integridade nacional.', 1),
  ('b', 'B', 'Equilibrar as contas bancárias dos municípios.', 2),
  ('c', 'C', 'Impor a vontade do partido majoritário federal.', 3),
  ('d', 'D', 'Alterar os símbolos estaduais.', 4),
  ('e', 'E', 'Nomear secretários de segurança pública estaduais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000384';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000384' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Hipóteses de Intervenção.', 'A manutenção da integridade nacional é a primeira hipótese do Art. 34.', 'Dica: A intervenção é medida excepcional que suspende a autonomia temporariamente.' from public.questions q where q.public_code = 'PPCE-DC-000384';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A União intervém nos Estados, não diretamente nos municípios (salvo em territórios).'),
  ('c', 'Incorreta. Intervenção política partidária é inconstitucional.'),
  ('d', 'Incorreta. Símbolos são protegidos pela autonomia estadual.'),
  ('e', 'Incorreta. A nomeação é do Governador, salvo se houver intervenção na área de segurança específica (como no RJ em 2018).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000384';

-- -----------------------------------------------------------------------------
-- QUESTÃO 385: ORGANIZAÇÃO DO ESTADO (BENS DA UNIÃO - ART. 20)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000385', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização do Estado', 'Administração Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Pertencem à União:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'As terras tradicionalmente ocupadas pelos índios.', 1),
  ('b', 'B', 'As ilhas oceânicas e costeiras, em qualquer hipótese.', 2),
  ('c', 'C', 'As águas superficiais ou subterrâneas que banham apenas um município.', 3),
  ('d', 'D', 'Os sítios arqueológicos de propriedade privada.', 4),
  ('e', 'E', 'As jazidas de minérios pertencentes ao dono do solo.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000385';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000385' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Bens da União.', 'Terras indígenas são bens da União (Art. 20, XI).', 'Dica: O minério também é da União, separado da propriedade do solo.' from public.questions q where q.public_code = 'PPCE-DC-000385';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Excetuam-se as que contenham sedes de Municípios.'),
  ('c', 'Incorreta. Águas estritamente locais costumam ser do Estado ou Município.'),
  ('d', 'Incorreta. Sítios arqueológicos são sempre da União, independentemente do dono da terra.'),
  ('e', 'Incorreta. Solo e subsolo (minérios) são propriedades distintas na CF.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000385';

-- -----------------------------------------------------------------------------
-- QUESTÃO 386: ORGANIZAÇÃO DO ESTADO (COMPETÊNCIA PRIVATIVA DA UNIÃO - ART. 22)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000386', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização do Estado', 'Repartição de Competências', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Compete privativamente à União legislar sobre:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Direito civil, comercial, penal, processual, eleitoral, agrário, marítimo, aeronáutico, espacial e do trabalho.', 1),
  ('b', 'B', 'Educação, cultura, ensino, desporto, ciência, tecnologia, pesquisa, desenvolvimento e inovação.', 2),
  ('c', 'C', 'Proteção e integração social das pessoas com deficiência.', 3),
  ('d', 'D', 'Previdência social, proteção e defesa da saúde.', 4),
  ('e', 'E', 'Custas dos serviços forenses.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000386';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000386' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Competência Legislativa Privativa.', 'Mnemônico: CAPACETE de PM (Civil, Aeronáutico, Penal, Agrário, Comercial, Eleitoral, Trabalho, Espacial, Processual, Marítimo).', 'Dica: Estados só legislam sobre isso se houver Lei Complementar autorizativa.' from public.questions q where q.public_code = 'PPCE-DC-000386';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Competência CONCORRENTE (Art. 24).'),
  ('c', 'Incorreta. Competência COMUM (Art. 23).'),
  ('d', 'Incorreta. Competência CONCORRENTE (Art. 24).'),
  ('e', 'Incorreta. Competência CONCORRENTE (Art. 24).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000386';

-- -----------------------------------------------------------------------------
-- QUESTÃO 387: ADMINISTRAÇÃO PÚBLICA (PRINCÍPIOS - ART. 37)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000387', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Disposições Gerais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A administração pública direta e indireta de qualquer dos Poderes da União, dos Estados, do Distrito Federal e dos Municípios obedecerá aos princípios de legalidade, impessoalidade, moralidade, publicidade e:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Eficiência.', 1),
  ('b', 'B', 'Supremacia.', 2),
  ('c', 'C', 'Hierarquia.', 3),
  ('d', 'D', 'Economicidade.', 4),
  ('e', 'E', 'Razoabilidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000387';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000387' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Princípios da ADM (LIMPE).', 'Mnemônico: LIMPE (Legalidade, Impessoalidade, Moralidade, Publicidade, Eficiência).', 'Dica: Eficiência foi incluída pela EC 19/98.' from public.questions q where q.public_code = 'PPCE-DC-000387';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É um princípio do Direito Administrativo, mas não consta no rol expresso do Art. 37 caput.'),
  ('c', 'Incorreta. É uma característica da organização administrativa, não um princípio expresso do Art. 37.'),
  ('d', 'Incorreta. É critério do controle externo (TCU), mas não está no LIMPE.'),
  ('e', 'Incorreta. Princípio implícito/geral do Direito, não presente no Art. 37 caput.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000387';

-- -----------------------------------------------------------------------------
-- QUESTÃO 388: ADMINISTRAÇÃO PÚBLICA (CONCURSO PÚBLICO - ART. 37, III)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000388', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Disposições Gerais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O prazo de validade do concurso público será de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Até dois anos, prorrogável uma vez, por igual período.', 1),
  ('b', 'B', 'Dois anos, obrigatoriamente.', 2),
  ('c', 'C', 'Cinco anos, sem prorrogação.', 3),
  ('d', 'D', 'Indeterminado até o preenchimento das vagas.', 4),
  ('e', 'E', 'Um ano, prorrogável por mais dois.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000388';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000388' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Validade do Concurso.', 'O prazo é de ATÉ 2 anos. Pode ser menor (ex: 6 meses).', 'Dica: A prorrogação é faculdade da administração, mas se ocorrer, deve ser pelo mesmo tempo inicial.' from public.questions q where q.public_code = 'PPCE-DC-000388';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. "Até" 2 anos permite prazos menores.'),
  ('c', 'Incorreta. Limite máximo é 2 anos (+2 de prorrogação).'),
  ('d', 'Incorreta. Prazo indeterminado fere a impessoalidade.'),
  ('e', 'Incorreta. A prorrogação deve ser por "igual período".')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000388';

-- -----------------------------------------------------------------------------
-- QUESTÃO 389: ADMINISTRAÇÃO PÚBLICA (CARGOS EM COMISSÃO - ART. 37, V)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000389', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Disposições Gerais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'As funções de confiança, exercidas exclusivamente por servidores ocupantes de cargo efetivo, e os cargos em comissão, a serem preenchidos por servidores de carreira nos casos, condições e percentuais mínimos previstos em lei, destinam-se apenas às atribuições de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Direção, chefia e assessoramento.', 1),
  ('b', 'B', 'Execução operacional e fiscalização.', 2),
  ('c', 'C', 'Atendimento ao público e triagem.', 4),
  ('d', 'D', 'Suporte técnico e manutenção.', 5),
  ('e', 'E', 'Segurança ostensiva e custódia.', 6)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000389';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000389' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Cargos de Confiança.', 'Mnemônico: DCA (Direção, Chefia, Assessoramento).', 'Dica: Função de confiança é SÓ para quem é concursado. Cargo em comissão pode ter gente de fora.' from public.questions q where q.public_code = 'PPCE-DC-000389';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Execução exige concurso público para cargo efetivo.'),
  ('c', 'Incorreta. Atividades meramente burocráticas ou de atendimento não admitem cargos em comissão.'),
  ('d', 'Incorreta. Suporte técnico é atividade de cargo efetivo.'),
  ('e', 'Incorreta. Segurança e custódia são funções típicas de Estado, exclusivas de carreiras policiais concursadas.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000389';

-- -----------------------------------------------------------------------------
-- QUESTÃO 390: ADMINISTRAÇÃO PÚBLICA (SINDICALIZAÇÃO E GREVE - ART. 37, VI/VII)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000390', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Servidores Públicos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Ao servidor público civil é assegurado o direito à livre associação sindical. Já o direito de greve será exercido nos termos e nos limites definidos em:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Lei específica.', 1),
  ('b', 'B', 'Decreto do Chefe do Executivo.', 2),
  ('c', 'C', 'Regimento interno de cada órgão.', 3),
  ('d', 'D', 'Lei complementar federal.', 4),
  ('e', 'E', 'Acordo coletivo de trabalho.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000390';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000390' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direito de Greve do Servidor.', 'A CF exige lei específica (ordinária). Como ela nunca foi feita, o STF mandou aplicar a lei da greve privada (Lei 7.783/89).', 'Dica: Policiais NÃO podem fazer greve (decisão do STF).' from public.questions q where q.public_code = 'PPCE-DC-000390';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Exige-se lei, não ato administrativo.'),
  ('c', 'Incorreta. Regimento não regula direitos fundamentais coletivos.'),
  ('d', 'Incorreta. A CF pede lei "específica", interpretada como lei ordinária.'),
  ('e', 'Incorreta. O regime estatutário não se baseia em acordos coletivos (salvo em empresas públicas/sociedades de economia mista).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000390';

-- -----------------------------------------------------------------------------
-- QUESTÃO 391: ADMINISTRAÇÃO PÚBLICA (ESTABILIDADE - ART. 41)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000391', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Servidores Públicos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São estáveis após três anos de efetivo exercício os servidores nomeados para cargo de provimento efetivo em virtude de concurso público. A estabilidade exige, como condição obrigatória:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Avaliação especial de desempenho por comissão instituída para essa finalidade.', 1),
  ('b', 'B', 'Conclusão de curso de pós-graduação na área.', 2),
  ('c', 'C', 'Tempo de contribuição previdenciária de cinco anos.', 3),
  ('d', 'D', 'Ausência de faltas durante o estágio probatório.', 4),
  ('e', 'E', 'Aprovação em novo concurso interno.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000391';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000391' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Estabilidade (Art. 41).', 'Além dos 3 anos, a avaliação especial de desempenho é REQUISITO constitucional.', 'Dica: Estabilidade é para o SERVIÇO PÚBLICO (o cargo pode mudar via readaptação, etc).' from public.questions q where q.public_code = 'PPCE-DC-000391';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Educação continuada é desejável, mas não requisito para estabilidade.'),
  ('c', 'Incorreta. Tempo de contribuição é para aposentadoria.'),
  ('d', 'Incorreta. Faltas podem gerar punição, mas o requisito é a avaliação positiva.'),
  ('e', 'Incorreta. Concurso interno para ascensão é inconstitucional (Súmula Vinculante 43).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000391';

-- -----------------------------------------------------------------------------
-- QUESTÃO 392: ADMINISTRAÇÃO PÚBLICA (PERDA DO CARGO - ART. 41, § 1º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000392', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Servidores Públicos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O servidor público estável só perderá o cargo em virtude de, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Decisão unilateral do seu superior hierárquico imediato.', 1),
  ('b', 'B', 'Sentença judicial transitada em julgado.', 2),
  ('c', 'C', 'Processo administrativo em que lhe seja assegurada ampla defesa.', 3),
  ('d', 'D', 'Procedimento de avaliação periódica de desempenho, na forma de lei complementar.', 4),
  ('e', 'E', 'Excesso de despesas com pessoal (Art. 169).', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000392';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000392' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Perda de Cargo do Estável.', 'Superior não demite estável por vontade própria. Exige-se processo formal.', 'Dica: A alternativa E (Art. 169) é a hipótese mais rara e traumática.' from public.questions q where q.public_code = 'PPCE-DC-000392';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É hipótese constitucional (Art. 41, §1º, I).'),
  ('c', 'Incorreta. É hipótese constitucional (Art. 41, §1º, II).'),
  ('d', 'Incorreta. É hipótese constitucional (Art. 41, §1º, III).'),
  ('e', 'Incorreta. Hipótese de corte de gastos (Art. 169, §4º).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000392';

-- -----------------------------------------------------------------------------
-- QUESTÃO 393: ADMINISTRAÇÃO PÚBLICA (REINTEGRAÇÃO - ART. 41, § 2º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000393', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Servidores Públicos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Invalidada por sentença judicial a demissão do servidor estável, será ele reintegrado, e o eventual ocupante da vaga, se estável, será:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Reconduzido ao cargo de origem, sem direito a indenização, aproveitado em outro cargo ou posto em disponibilidade.', 1),
  ('b', 'B', 'Demitido imediatamente para dar lugar ao antigo titular.', 2),
  ('c', 'C', 'Indenizado com seis meses de subsídio.', 3),
  ('d', 'D', 'Promovido por merecimento como compensação.', 4),
  ('e', 'E', 'Aposentado compulsoriamente.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000393';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000393' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Reintegração e Recondução.', 'O reintegrado volta com tudo. O que estava lá (se estável) é reconduzido sem choro (sem indenização).', 'Dica: Se o ocupante não fosse estável, seria simplesmente exonerado.' from public.questions q where q.public_code = 'PPCE-DC-000393';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A estabilidade protege contra demissão arbitrária; ele será reconduzido.'),
  ('c', 'Incorreta. A CF veda expressamente indenização neste caso.'),
  ('d', 'Incorreta. Promoção exige critérios de antiguidade ou merecimento em lista.'),
  ('e', 'Incorreta. Aposentadoria compulsória é por idade (75 anos).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000393';

-- -----------------------------------------------------------------------------
-- QUESTÃO 394: ADMINISTRAÇÃO PÚBLICA (RESPONSABILIDADE CIVIL - ART. 37, § 6º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000394', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Disposições Gerais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'As pessoas jurídicas de direito público e as de direito privado prestadoras de serviços públicos responderão pelos danos que seus agentes, nessa qualidade, causarem a terceiros, assegurado o direito de regresso contra o agente nos casos de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Dolo ou culpa.', 1),
  ('b', 'B', 'Imprudência leve apenas.', 2),
  ('c', 'C', 'Erro administrativo escusável.', 3),
  ('d', 'D', 'Qualquer hipótese de dano causado.', 4),
  ('e', 'E', 'Culpa exclusiva da vítima.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000394';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000394' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Responsabilidade Civil do Estado.', 'O Estado responde OBJETIVAMENTE (sem culpa). O agente responde SUBJETIVAMENTE (com dolo ou culpa) em ação de regresso.', 'Dica: Regresso = o Estado paga a vítima e depois cobra do servidor.' from public.questions q where q.public_code = 'PPCE-DC-000394';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Culpa engloba negligência, imprudência e imperícia em qualquer grau.'),
  ('c', 'Incorreta. Se houve erro escusável sem culpa, não há regresso.'),
  ('d', 'Incorreta. A responsabilidade do servidor não é objetiva.'),
  ('e', 'Incorreta. Culpa exclusiva da vítima exclui a responsabilidade do Estado (nexo causal rompido).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000394';

-- -----------------------------------------------------------------------------
-- QUESTÃO 395: DEFESA DO ESTADO (ESTADO DE SÍTIO - ART. 137)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000395', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Estado de Defesa e Estado de Sítio', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O Presidente da República pode, ouvidos o Conselho da República e o Conselho de Defesa Nacional, solicitar ao Congresso Nacional autorização para decretar o estado de sítio nos casos de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Comoção grave de repercussão nacional ou declaração de estado de guerra.', 1),
  ('b', 'B', 'Greve geral de servidores da saúde.', 2),
  ('c', 'C', 'Calamidade pública de grandes proporções decorrente da natureza.', 3),
  ('d', 'D', 'Crise econômica aguda com hiperinflação.', 4),
  ('e', 'E', 'Necessidade de intervenção em município rebelde.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000395';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000395' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Estado de Sítio.', 'É a medida mais drástica da CF. Exige autorização PRÉVIA do Congresso.', 'Dica: Calamidade natural é hipótese de Estado de DEFESA.' from public.questions q where q.public_code = 'PPCE-DC-000395';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Greve não fundamenta sítio.'),
  ('c', 'Incorreta. Hipótese de Estado de Defesa (Art. 136).'),
  ('d', 'Incorreta. Questões financeiras não autorizam medidas de exceção armada.'),
  ('e', 'Incorreta. União não intervém diretamente em municípios.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000395';

-- -----------------------------------------------------------------------------
-- QUESTÃO 396: ORDEM SOCIAL (SAÚDE - ART. 196)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000396', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Saúde', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A saúde é direito de todos e dever do Estado, garantido mediante políticas sociais e econômicas que visem à redução do risco de doença e de outros agravos e ao acesso:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Universal e igualitário às ações e serviços para sua promoção, proteção e recuperação.', 1),
  ('b', 'B', 'Restrito aos contribuintes da previdência social.', 2),
  ('c', 'C', 'Prioritário apenas para crianças e idosos.', 3),
  ('d', 'D', 'Mediante pagamento de taxas moderadoras nos hospitais públicos.', 4),
  ('e', 'E', 'Exclusivo para cidadãos brasileiros natos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000396';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000396' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direito à Saúde.', 'A saúde no Brasil é UNIVERSAL (para todos, mesmo quem não paga).', 'Dica: É o fundamento do SUS.' from public.questions q where q.public_code = 'PPCE-DC-000396';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A assistência social e saúde são universais; previdência é contributiva.'),
  ('c', 'Incorreta. Embora tenham prioridade de atendimento, o acesso é universal.'),
  ('d', 'Incorreta. O SUS é gratuito no ponto de serviço.'),
  ('e', 'Incorreta. Estrangeiros no Brasil também têm direito ao atendimento de saúde.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000396';

-- -----------------------------------------------------------------------------
-- QUESTÃO 397: ORDEM SOCIAL (EDUCAÇÃO - ART. 205)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000397', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Educação', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A educação, direito de todos e dever do Estado e da família, será promovida e incentivada com a colaboração da sociedade, visando ao:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Pleno desenvolvimento da pessoa, seu preparo para o exercício da cidadania e sua qualificação para o trabalho.', 1),
  ('b', 'B', 'Ensino obrigatório de doutrinas religiosas oficiais.', 2),
  ('c', 'C', 'Aperfeiçoamento exclusivo de habilidades técnicas e manuais.', 3),
  ('d', 'D', 'Combate à livre expressão do pensamento e da pesquisa.', 4),
  ('e', 'E', 'Lucro das instituições privadas de ensino.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000397';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000397' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Objetivos da Educação.', 'Tríade: Pessoa, Cidadão e Trabalhador.', 'Dica: Educação é dever do Estado E da Família.' from public.questions q where q.public_code = 'PPCE-DC-000397';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O ensino religioso é facultativo e o Estado é laico.'),
  ('c', 'Incorreta. A educação visa o desenvolvimento PLENO da pessoa.'),
  ('d', 'Incorreta. O pluralismo de ideias é princípio do ensino.'),
  ('e', 'Incorreta. O lucro não é o objective constitucional da educação.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000397';

-- -----------------------------------------------------------------------------
-- QUESTÃO 398: ORDEM SOCIAL (MEIO AMBIENTE - ART. 225)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000398', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Meio Ambiente', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Todos têm direito ao meio ambiente ecologicamente equilibrado, bem de uso comum do povo e essencial à sadia qualidade de vida, impondo-se ao Poder Público e à coletividade o dever de defendê-lo e preservá-lo para as:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Presentes e futuras gerações.', 1),
  ('b', 'B', 'Pessoas com alto poder aquisitivo apenas.', 2),
  ('c', 'C', 'Empresas poluidoras compensarem seus danos.', 3),
  ('d', 'D', 'Autoridades governamentais exclusivamente.', 4),
  ('e', 'E', 'Populações urbanas em detrimento das rurais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000398';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000398' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direito Ambiental.', 'É um direito de Terceira Geração (Fraternidade/Solidariedade).', 'Dica: O dever de proteção é do Estado E da Sociedade.' from public.questions q where q.public_code = 'PPCE-DC-000398';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O meio ambiente é bem de uso comum do POVO.'),
  ('c', 'Incorreta. Poluidor-pagador é um princípio, mas a finalidade é a preservação para as gerações.'),
  ('d', 'Incorreta. A coletividade também tem o dever de preservar.'),
  ('e', 'Incorreta. Não existe essa distinção constitucional.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000398';

-- -----------------------------------------------------------------------------
-- QUESTÃO 399: ORDEM SOCIAL (FAMÍLIA, CRIANÇA E IDOSO - ART. 226)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000399', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Família, Criança, Adolescente, Jovem e Idoso', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A família, base da sociedade, tem especial proteção do Estado. Para efeito da proteção do Estado, é reconhecida a união estável entre o homem e a mulher como entidade familiar, devendo a lei facilitar sua conversão em:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Casamento.', 1),
  ('b', 'B', 'Contrato de aluguel.', 2),
  ('c', 'C', 'Sociedade empresária limitada.', 3),
  ('d', 'D', 'Parceria público-privada.', 4),
  ('e', 'E', 'Adoção compulsória.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000399';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000399' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Entidade Familiar.', 'A CF incentiva a conversão da união estável em casamento.', 'Dica: O STF estendeu o conceito de entidade familiar às uniões homoafetivas.' from public.questions q where q.public_code = 'PPCE-DC-000399';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. União estável é relação de afeto, não imobiliária.'),
  ('c', 'Incorreta. Família não é empresa para fins constitucionais.'),
  ('d', 'Incorreta. PPP é contrato administrativo.'),
  ('e', 'Incorreta. Adoção é ato voluntário e solene.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000399';

-- -----------------------------------------------------------------------------
-- QUESTÃO 400: REVISÃO FINAL - HIERARQUIA DAS NORMAS (ART. 5º, § 3º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000400', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos e Deveres Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Os tratados e convenções internacionais sobre direitos humanos que forem aprovados, em cada Casa do Congresso Nacional, em dois turnos, por três quintos dos votos dos respectivos membros, serão equivalentes às:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Emendas constitucionais.', 1),
  ('b', 'B', 'Leis complementares federais.', 2),
  ('c', 'C', 'Leis ordinárias estaduais.', 3),
  ('d', 'D', 'Medidas provisórias.', 4),
  ('e', 'E', 'Súmulas vinculantes.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000400';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000400' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Tratados de Direitos Humanos.', 'Rito do 2-2-3/5: Dois turnos, Duas casas, Três quintos = Emenda Constitucional.', 'Dica: Se não seguir esse rito, o tratado de direitos humanos terá status SUPRALEGAL (acima da lei, abaixo da CF).' from public.questions q where q.public_code = 'PPCE-DC-000400';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Lei complementar exige maioria absoluta, não 3/5.'),
  ('c', 'Incorreta. Tratados são federais/internacionais.'),
  ('d', 'Incorreta. MPs são atos do Presidente, não rito de aprovação parlamentar qualificada.'),
  ('e', 'Incorreta. Súmulas são do Judiciário.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000400';
