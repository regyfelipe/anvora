-- =============================================================================
-- BLOCO DE QUESTÕES: 151 A 200 (PPCE - DIREITO CONSTITUCIONAL)
-- =============================================================================

-- LIMPEZA INICIAL
delete from public.questions where public_code in (
  'PPCE-DC-000151', 'PPCE-DC-000152', 'PPCE-DC-000153', 'PPCE-DC-000154', 'PPCE-DC-000155',
  'PPCE-DC-000156', 'PPCE-DC-000157', 'PPCE-DC-000158', 'PPCE-DC-000159', 'PPCE-DC-000160',
  'PPCE-DC-000161', 'PPCE-DC-000162', 'PPCE-DC-000163', 'PPCE-DC-000164', 'PPCE-DC-000165',
  'PPCE-DC-000166', 'PPCE-DC-000167', 'PPCE-DC-000168', 'PPCE-DC-000169', 'PPCE-DC-000170',
  'PPCE-DC-000171', 'PPCE-DC-000172', 'PPCE-DC-000173', 'PPCE-DC-000174', 'PPCE-DC-000175',
  'PPCE-DC-000176', 'PPCE-DC-000177', 'PPCE-DC-000178', 'PPCE-DC-000179', 'PPCE-DC-000180',
  'PPCE-DC-000181', 'PPCE-DC-000182', 'PPCE-DC-000183', 'PPCE-DC-000184', 'PPCE-DC-000185',
  'PPCE-DC-000186', 'PPCE-DC-000187', 'PPCE-DC-000188', 'PPCE-DC-000189', 'PPCE-DC-000190',
  'PPCE-DC-000191', 'PPCE-DC-000192', 'PPCE-DC-000193', 'PPCE-DC-000194', 'PPCE-DC-000195',
  'PPCE-DC-000196', 'PPCE-DC-000197', 'PPCE-DC-000198', 'PPCE-DC-000199', 'PPCE-DC-000200'
);

-- -----------------------------------------------------------------------------
-- QUESTÃO 151: Seguridade Social (Conceito - Art. 194)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000151', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Seguridade Social', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A seguridade social compreende um conjunto integrado de ações de iniciativa dos Poderes Públicos e da sociedade, destinadas a assegurar os direitos relativos à:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Educação, saúde e trabalho.', 1),
  ('b', 'B', 'Saúde, previdência e assistência social.', 2),
  ('c', 'C', 'Habitação, saneamento e transporte.', 3),
  ('d', 'D', 'Segurança, justiça e direitos humanos.', 4),
  ('e', 'E', 'Cultura, lazer e esporte.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000151';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000151' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Tríade da Seguridade Social.', 'A seguridade social é composta pelo tripé: Saúde, Previdência e Assistência Social (Art. 194).', 'Dica: PAS (Previdência, Assistência, Saúde).' from public.questions q where q.public_code = 'PPCE-DC-000151';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Educação e trabalho são direitos sociais, mas não compõem a seguridade stricto sensu.'),
  ('c', 'Incorreta. São áreas da ordem social, mas não da seguridade.'),
  ('d', 'Incorreta. Temas gerais do Estado.'),
  ('e', 'Incorreta. Áreas da ordem social fora da seguridade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000151';

-- -----------------------------------------------------------------------------
-- QUESTÃO 152: Princípios da Seguridade (Art. 194, parágrafo único)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000152', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Seguridade Social', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Compete ao Poder Público, nos termos da lei, organizar a seguridade social, com base em objetivos como a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Seletividade e distributividade na prestação dos benefícios e serviços.', 1),
  ('b', 'B', 'Diferenciação do valor nominal dos benefícios conforme a região.', 2),
  ('c', 'C', 'Exclusividade estatal no financiamento das ações.', 3),
  ('d', 'D', 'Centralização administrativa das ações em nível federal.', 4),
  ('e', 'E', 'Redutibilidade do valor dos benefícios para ajuste fiscal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000152';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000152' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Objetivos da Seguridade.', 'A seletividade e distributividade visam focar os recursos em quem mais precisa e distribuir a proteção social (Art. 194, parágrafo único, III).', 'Outros objetivos: Universalidade, Irredutibilidade do valor real, Equidade no custeio.' from public.questions q where q.public_code = 'PPCE-DC-000152';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O objetivo é a UNIFORMIDADE e equivalência (Art. 194, II).'),
  ('c', 'Incorreta. O financiamento é de toda a sociedade (Art. 195).'),
  ('d', 'Incorreta. O caráter é descentralizado e democrático (Art. 194, VII).'),
  ('e', 'Incorreta. O objetivo é a IRREDUTIBILIDADE do valor real (Art. 194, IV).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000152';

-- -----------------------------------------------------------------------------
-- QUESTÃO 153: Financiamento da Seguridade (Art. 195)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000153', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Seguridade Social', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A seguridade social será financiada por toda a sociedade, de forma direta e indireta, mediante recursos provenientes dos orçamentos da União, dos Estados, do Distrito Federal e dos Municípios, e de contribuições sociais, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Do empregador, incidentes sobre a folha de salários.', 1),
  ('b', 'B', 'Do trabalhador e dos demais segurados da previdência social.', 2),
  ('c', 'C', 'Sobre a receita de concursos de prognósticos.', 3),
  ('d', 'D', 'Do importador de bens ou serviços do exterior.', 4),
  ('e', 'E', 'Das igrejas e templos de qualquer culto sobre seus dízimos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000153';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000153' and qo.question_id = q.id and qo.option_key = 'e';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Fontes de Custeio (Art. 195).', 'Dízimos religiosos não são base de incidência de contribuição para seguridade social na CF.', 'As fontes são: Empregador (Folha, Receita/Faturamento, Lucro), Trabalhador, Concursos de Prognósticos e Importador.' from public.questions q where q.public_code = 'PPCE-DC-000153';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Fonte prevista no Art. 195, I, a.'),
  ('b', 'Incorreta. Fonte prevista no Art. 195, II.'),
  ('c', 'Incorreta. Fonte prevista no Art. 195, III (ex: Loterias).'),
  ('d', 'Incorreta. Fonte prevista no Art. 195, IV.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000153';

-- -----------------------------------------------------------------------------
-- QUESTÃO 154: Princípio da Anterioridade Mitigada (Art. 195, § 6º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000154', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Seguridade Social', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'As contribuições sociais de que trata o Art. 195 da Constituição Federal só poderão ser exigidas após decorridos quantos dias da data da publicação da lei que as houver instituído ou modificado?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '30 dias.', 1),
  ('b', 'B', '45 dias.', 2),
  ('c', 'C', '60 dias.', 3),
  ('d', 'D', '90 dias.', 4),
  ('e', 'E', 'No primeiro dia do exercício financeiro seguinte.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000154';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000154' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Anterioridade Nonagesimal.', 'Contribuições para a seguridade social seguem a anterioridade especial de 90 dias (noventena), não se aplicando a anterioridade anual.', 'Dica: Regra dos 90 dias (Art. 195, § 6º).' from public.questions q where q.public_code = 'PPCE-DC-000154';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Prazo insuficiente.'),
  ('b', 'Incorreta. Prazo da vacatio legis comum, mas não para tributos de seguridade.'),
  ('c', 'Incorreta. Prazo insuficiente.'),
  ('e', 'Incorreta. Esta é a anterioridade anual (regra geral de outros impostos).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000154';

-- -----------------------------------------------------------------------------
-- QUESTÃO 155: Direito à Saúde (Art. 196)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000155', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Saúde', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A saúde é direito de todos e dever do Estado, garantido mediante políticas sociais e econômicas que visem à redução do risco de doença e de outros agravos e ao acesso universal e igualitário às ações e serviços para sua promoção, proteção e recuperação. Sobre a saúde, é correto afirmar:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'As instituições privadas não podem participar do Sistema Único de Saúde.', 1),
  ('b', 'B', 'As ações e serviços públicos de saúde integram uma rede regionalizada e hierarquizada e constituem um sistema único.', 2),
  ('c', 'C', 'O financiamento da saúde é exclusivo do governo federal.', 3),
  ('d', 'D', 'O atendimento deve priorizar as ações curativas em detrimento das preventivas.', 4),
  ('e', 'E', 'É permitida a destinação de recursos públicos para auxílios ou subvenções a instituições privadas com fins lucrativos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000155';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000155' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Diretrizes do SUS (Art. 198).', 'O SUS é descentralizado, com atendimento integral (prioridade para PREVENTIVAS) e participação da comunidade.', 'Art. 198: Regionalizada, hierarquizada e sistema único.' from public.questions q where q.public_code = 'PPCE-DC-000155';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Podem participar de forma complementar (Art. 199, § 1º).'),
  ('c', 'Incorreta. É financiado por todos os entes federativos.'),
  ('d', 'Incorreta. Prioridade para atividades PREVENTIVAS (Art. 198, II).'),
  ('e', 'Incorreta. É VEDADA tal destinação (Art. 199, § 2º).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000155';

-- -----------------------------------------------------------------------------
-- QUESTÃO 156: Previdência Social (Regime Geral - Art. 201)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000156', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Previdência Social', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A previdência social será organizada sob a forma de regime geral, de caráter contributivo e de filiação obrigatória, observados critérios que preservem o equilíbrio financeiro e atuarial, e atenderá, nos termos da lei, a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Apenas aos casos de aposentadoria por idade.', 1),
  ('b', 'B', 'Cobertura dos eventos de doença, invalidez, morte e idade avançada.', 2),
  ('c', 'C', 'Proteção apenas aos trabalhadores urbanos.', 3),
  ('d', 'D', 'Assistência financeira a todos os desempregados, independentemente de contribuição.', 4),
  ('e', 'E', 'Pagamento de auxílio-reclusão para todos os dependentes de qualquer preso.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000156';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000156' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Cobertura Previdenciária (Art. 201).', 'O RGPS cobre riscos sociais como doença, invalidez, morte e idade avançada.', 'Dica: Previdência exige contribuição (diferente da Saúde e Assistência).' from public.questions q where q.public_code = 'PPCE-DC-000156';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. A cobertura é ampla, não restrita à idade.'),
  ('c', 'Incorreta. Urbano e rural são cobertos igualmente.'),
  ('d', 'Incorreta. Previdência é CONTRIBUTIVA.'),
  ('e', 'Incorreta. Auxílio-reclusão é para dependentes de segurado de BAIXA RENDA (Art. 201, IV).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000156';

-- -----------------------------------------------------------------------------
-- QUESTÃO 157: Assistência Social (Art. 203)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000157', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Assistência Social', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A assistência social será prestada a quem dela necessitar, independentemente de contribuição à seguridade social, e tem por objetivos, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A proteção à família, à maternidade, à infância, à adolescência e à velhice.', 1),
  ('b', 'B', 'O amparo às crianças e adolescentes carentes.', 2),
  ('c', 'C', 'A promoção da integração ao mercado de trabalho.', 3),
  ('d', 'D', 'A garantia de um salário mínimo de benefício mensal à pessoa portadora de deficiência e ao idoso que comprovem não possuir meios de prover à própria manutenção.', 4),
  ('e', 'E', 'O pagamento de aposentadoria por tempo de contribuição.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000157';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000157' and qo.question_id = q.id and qo.option_key = 'e';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Objetivos da Assistência (Art. 203).', 'Aposentadoria por tempo de contribuição é benefício da PREVIDÊNCIA, não da assistência.', 'Dica: Assistência = Não contributiva.' from public.questions q where q.public_code = 'PPCE-DC-000157';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Objetivo previsto no Art. 203, I.'),
  ('b', 'Incorreta. Objetivo previsto no Art. 203, II.'),
  ('c', 'Incorreta. Objetivo previsto no Art. 203, III.'),
  ('d', 'Incorreta. Este é o BPC/LOAS (Art. 203, V).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000157';

-- -----------------------------------------------------------------------------
-- QUESTÃO 158: Educação (Dever do Estado - Art. 208)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000158', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Educação', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O dever do Estado com a educação será efetivado mediante a garantia de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Educação básica obrigatória e gratuita dos 4 aos 17 anos de idade.', 1),
  ('b', 'B', 'Ensino superior gratuito para todos os cidadãos, independentemente de processo seletivo.', 2),
  ('c', 'C', 'Educação infantil em creche e pré-escola até os 7 anos de idade.', 3),
  ('d', 'D', 'Ensino religioso obrigatório em todas as escolas públicas.', 4),
  ('e', 'E', 'Progressiva extinção do ensino noturno regular.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000158';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000158' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Garantias da Educação (Art. 208).', 'A educação básica obrigatória vai dos 4 aos 17 anos.', 'Art. 208, I: Educação básica obrigatória e gratuita.' from public.questions q where q.public_code = 'PPCE-DC-000158';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A gratuidade no ensino superior é garantida nos estabelecimentos oficiais, mas não há fim de processo seletivo na CF.'),
  ('c', 'Incorreta. Educação infantil é até os 5 anos (Art. 208, IV).'),
  ('d', 'Incorreta. O ensino religioso é de matrícula FACULTATIVA (Art. 210, § 1º).'),
  ('e', 'Incorreta. O dever é garantir a oferta de ensino noturno adequado (Art. 208, VI).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000158';

-- -----------------------------------------------------------------------------
-- QUESTÃO 159: Princípios do Ensino (Art. 206)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000159', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Educação', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O ensino será ministrado com base em princípios como, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Igualdade de condições para o acesso e permanência na escola.', 1),
  ('b', 'B', 'Liberdade de aprender, ensinar, pesquisar e divulgar o pensamento, a arte e o saber.', 2),
  ('c', 'C', 'Pluralismo de ideias e de concepções pedagógicas.', 3),
  ('d', 'D', 'Gratuidade do ensino público em estabelecimentos oficiais.', 4),
  ('e', 'E', 'Gestão autocrática do ensino público para garantir a ordem.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000159';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000159' and qo.question_id = q.id and qo.option_key = 'e';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Princípios do Ensino (Art. 206).', 'O princípio é a GESTÃO DEMOCRÁTICA do ensino público (Art. 206, VI).', 'Dica: Escola = Democracia.' from public.questions q where q.public_code = 'PPCE-DC-000159';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Princípio previsto no Art. 206, I.'),
  ('b', 'Incorreta. Princípio previsto no Art. 206, II.'),
  ('c', 'Incorreta. Princípio previsto no Art. 206, III.'),
  ('d', 'Incorreta. Princípio previsto no Art. 206, IV.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000159';

-- -----------------------------------------------------------------------------
-- QUESTÃO 160: Cultura e Patrimônio (Art. 215/216)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000160', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Cultura', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Constituem patrimônio cultural brasileiro os bens de natureza material e imaterial, portadores de referência à identidade, à ação, à memória dos diferentes grupos formadores da sociedade brasileira, nos quais se incluem, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'As formas de expressão.', 1),
  ('b', 'B', 'Os modos de criar, fazer e viver.', 2),
  ('c', 'C', 'As criações científicas, artísticas e tecnológicas.', 3),
  ('d', 'D', 'As propriedades privadas sem valor histórico ou artístico comprovado.', 4),
  ('e', 'E', 'Os conjuntos urbanos e sítios de valor histórico, paisagístico, artístico, arqueológico, paleontológico, ecológico e científico.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000160';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000160' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Patrimônio Cultural (Art. 216).', 'Propriedades privadas sem valor cultural não integram o patrimônio cultural brasileiro.', 'O patrimônio cultural pode ser material ou imaterial.' from public.questions q where q.public_code = 'PPCE-DC-000160';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Previsto no Art. 216, I.'),
  ('b', 'Incorreta. Previsto no Art. 216, II.'),
  ('c', 'Incorreta. Previsto no Art. 216, III.'),
  ('e', 'Incorreta. Previsto no Art. 216, V.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000160';

-- -----------------------------------------------------------------------------
-- QUESTÃO 161: Desporto (Art. 217)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000161', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Desporto', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'É dever do Estado fomentar práticas desportivas formais e não formais, como direito de cada um, observados:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A autonomia das entidades desportivas dirigentes e associações quanto a sua organização e funcionamento.', 1),
  ('b', 'B', 'A obrigatoriedade de financiamento estatal exclusivo para clubes profissionais.', 2),
  ('c', 'C', 'A subordinação total das federações desportivas ao Ministério do Esporte.', 3),
  ('d', 'D', 'A prioridade para o desporto de alto rendimento sobre o desporto educacional.', 4),
  ('e', 'E', 'A proibição de participação de empresas privadas no patrocínio desportivo.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000161';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000161' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direito ao Desporto.', 'As entidades desportivas têm autonomia organizacional garantida pela CF (Art. 217, I).', 'Dica: Prioridade para o DESPORTO EDUCACIONAL.' from public.questions q where q.public_code = 'PPCE-DC-000161';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Não há tal obrigatoriedade; o foco deve ser o amadorismo e educação.'),
  ('c', 'Incorreta. Elas são autônomas.'),
  ('d', 'Incorreta. O dever do Estado é priorizar o desporto EDUCACIONAL (Art. 217, II).'),
  ('e', 'Incorreta. O setor privado é livre para atuar.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000161';

-- -----------------------------------------------------------------------------
-- QUESTÃO 162: Justiça Desportiva (Art. 217, § 1º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000162', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Desporto', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O Poder Judiciário só admitirá ações relativas à disciplina e às competições desportivas após:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Autorização do Ministro do Esporte.', 1),
  ('b', 'B', 'Esgotarem-se as instâncias da justiça desportiva.', 2),
  ('c', 'C', 'O transcurso de 1 ano do fato gerador.', 3),
  ('d', 'D', 'O pagamento de taxas judiciárias específicas.', 4),
  ('e', 'E', 'Acordo extrajudicial entre as partes.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000162';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000162' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Justiça Desportiva.', 'A CF exige o exaurimento da Justiça Desportiva antes do acesso ao Judiciário em temas disciplinares e de competição.', 'O prazo máximo para decisão na Justiça Desportiva é de 60 dias.' from public.questions q where q.public_code = 'PPCE-DC-000162';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Não depende do Executivo.'),
  ('c', 'Incorreta. O prazo para a justiça desportiva decidir é 60 dias.'),
  ('d', 'Incorreta. Não há esta barreira financeira como requisito constitucional.'),
  ('e', 'Incorreta. Embora desejável, não é requisito de admissibilidade judicial neste caso.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000162';

-- -----------------------------------------------------------------------------
-- QUESTÃO 163: Ciência e Tecnologia (Art. 218)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000163', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Ciência e Tecnologia', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Estado promoverá e incentivará o desenvolvimento científico, a pesquisa, a capacitação científica e tecnológica e a inovação. Sobre o tema, é INCORRETO afirmar:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A pesquisa científica básica e tecnológica receberá tratamento prioritário do Estado.', 1),
  ('b', 'B', 'A pesquisa tecnológica voltar-se-á preponderantemente para a solução dos problemas brasileiros.', 2),
  ('c', 'C', 'O Estado apoiará a formação de recursos humanos nas áreas de ciência e tecnologia.', 3),
  ('d', 'D', 'É vedado aos Estados vincularem parcela de sua receita orçamentária a entidades públicas de fomento ao ensino e à pesquisa científica.', 4),
  ('e', 'E', 'O Estado estimulará a formação e o fortalecimento de núcleos de inovação nas empresas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000163';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000163' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Incentivo à Ciência.', 'Os Estados PODEM vincular parcela da receita a entidades de fomento à pesquisa (Art. 218, § 5º).', 'Dica: A CF incentiva o desenvolvimento regional por meio da ciência.' from public.questions q where q.public_code = 'PPCE-DC-000163';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. É afirmação verdadeira (Art. 218, § 1º).'),
  ('b', 'Incorreta. É afirmação verdadeira (Art. 218, § 2º).'),
  ('c', 'Incorreta. É afirmação verdadeira (Art. 218, § 3º).'),
  ('e', 'Incorreta. É afirmação verdadeira (Art. 219-A).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000163';

-- -----------------------------------------------------------------------------
-- QUESTÃO 164: Meio Ambiente (Art. 225)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000164', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Meio Ambiente', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Todos têm direito ao meio ambiente ecologicamente equilibrado, bem de uso comum do povo e essencial à sadia qualidade de vida, impondo-se o dever de defendê-lo e preservá-lo para as presentes e futuras gerações ao:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Poder Público apenas.', 1),
  ('b', 'B', 'Poder Público e à coletividade.', 2),
  ('c', 'C', 'Proprietários de terras rurais apenas.', 3),
  ('d', 'D', 'Poder Legislativo apenas.', 4),
  ('e', 'E', 'Organismos internacionais de proteção ambiental.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000164';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000164' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direito e Dever Ambiental.', 'O dever de preservação é SOLIDÁRIO entre Poder Público e Coletividade (Art. 225, caput).', 'Princípio da solidariedade intergeracional.' from public.questions q where q.public_code = 'PPCE-DC-000164';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. A coletividade também tem o dever.'),
  ('c', 'Incorreta. Dever genérico de todos.'),
  ('d', 'Incorreta. Todos os entes públicos e a sociedade participam.'),
  ('e', 'Incorreta. Referência extra-constitucional.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000164';

-- -----------------------------------------------------------------------------
-- QUESTÃO 165: Estudo de Impacto Ambiental (Art. 225, § 1º, IV)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000165', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Meio Ambiente', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Para assegurar a efetividade do direito ao meio ambiente, incumbe ao Poder Público exigir, na forma da lei, para instalação de obra ou atividade potencialmente causadora de significativa degradação do meio ambiente:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Apenas o pagamento de multa ambiental prévia.', 1),
  ('b', 'B', 'Estudo prévio de impacto ambiental, a que se dará publicidade.', 2),
  ('c', 'C', 'Relatório reservado de viabilidade econômica.', 3),
  ('d', 'D', 'Depósito de caução em favor da União.', 4),
  ('e', 'E', 'Autorização assinada por 2/3 do Congresso Nacional.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000165';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000165' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'EIA/RIMA.', 'O Estudo Prévio de Impacto Ambiental (EIA) é exigido para atividades com significativa degradação (Art. 225, § 1º, IV).', 'Dica: O estudo deve ser PÚBLICO.' from public.questions q where q.public_code = 'PPCE-DC-000165';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Multas são sanções posteriores ou taxas, não estudo prévio.'),
  ('c', 'Incorreta. O estudo foca no impacto ambiental e deve ser público.'),
  ('d', 'Incorreta. Não é requisito constitucional.'),
  ('e', 'Incorreta. Competência do órgão ambiental administrativo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000165';

-- -----------------------------------------------------------------------------
-- QUESTÃO 166: Patrimônio Nacional (Art. 225, § 4º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000166', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Meio Ambiente', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A Floresta Amazônica brasileira, a Mata Atlântica, a Serra do Mar, o Pantanal Mato-Grossense e a Zona Costeira são patrimônio nacional, e sua utilização far-se-á, na forma da lei, dentro de condições que assegurem a preservação do meio ambiente, inclusive quanto ao uso dos recursos naturais. Sobre esse rol, é correto afirmar:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O Cerrado e a Caatinga também integram o rol de patrimônio nacional expresso na CF.', 1),
  ('b', 'B', 'Somente a Floresta Amazônica é considerada patrimônio nacional.', 2),
  ('c', 'C', 'O Cerrado e a Caatinga NÃO constam expressamente como patrimônio nacional no texto da CF.', 3),
  ('d', 'D', 'O rol do Art. 225, § 4º é exemplificativo, incluindo todas as biomas brasileiros.', 4),
  ('e', 'E', 'A exploração de recursos nestas áreas é proibida em qualquer hipótese.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000166';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000166' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Patrimônio Nacional.', 'O rol do Art. 225, § 4º é taxativo: Amazônia, Mata Atlântica, Serra do Mar, Pantanal e Zona Costeira. O Cerrado e a Caatinga ficaram de fora (pegadinha clássica).', 'Dica: A-M-S-P-Z.' from public.questions q where q.public_code = 'PPCE-DC-000166';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Eles não estão no rol constitucional.'),
  ('b', 'Incorreta. Os outros 4 biomas também estão.'),
  ('d', 'Incorreta. O rol é taxativo para fins deste parágrafo.'),
  ('e', 'Incorreta. É permitida "na forma da lei, dentro de condições que assegurem a preservação".')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000166';

-- -----------------------------------------------------------------------------
-- QUESTÃO 167: Responsabilidade por Dano Ambiental (Art. 225, § 3º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000167', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Meio Ambiente', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'As condutas e atividades consideradas lesivas ao meio ambiente sujeitarão os infratores, pessoas físicas ou jurídicas, a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sanções penais apenas.', 1),
  ('b', 'B', 'Sanções administrativas apenas.', 2),
  ('c', 'C', 'Sanções penais e administrativas, independentemente da obrigação de reparar os danos causados.', 3),
  ('d', 'D', 'Sanções penais se houver dolo, e administrativas se houver culpa.', 4),
  ('e', 'E', 'Apenas multas cíveis.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000167';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000167' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Tríplice Responsabilidade Ambiental.', 'Danos ambientais geram responsabilidade PENAL, ADMINISTRATIVA e CÍVEL (reparação do dano) de forma cumulativa.', 'Art. 225, § 3º: Sanções penais e administrativas + obrigação de reparar.' from public.questions q where q.public_code = 'PPCE-DC-000167';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Administrativa e Cível também se aplicam.'),
  ('b', 'Incorreta. Penal e Cível também se aplicam.'),
  ('d', 'Incorreta. As sanções se acumulam independentemente da distinção teórica entre dolo/culpa para aplicação simultânea.'),
  ('e', 'Incorreta. Penal e Administrativa são fundamentais.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000167';

-- -----------------------------------------------------------------------------
-- QUESTÃO 168: Família (Art. 226)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000168', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Família, Criança e Idoso', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A família, base da sociedade, tem especial proteção do Estado. Sobre a união estável, a Constituição Federal estabelece que:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'É reconhecida a união estável entre o homem e a mulher como entidade familiar, devendo a lei facilitar sua conversão em casamento.', 1),
  ('b', 'B', 'A união estável tem os mesmos efeitos do casamento religioso.', 2),
  ('c', 'C', 'O Estado não reconhece a união estável como entidade familiar.', 3),
  ('d', 'D', 'A união estável só é reconhecida após 5 anos de convivência.', 4),
  ('e', 'E', 'A união estável impede o posterior casamento civil entre as partes.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000168';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000168' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'União Estável (Art. 226, § 3º).', 'A CF reconhece a união estável e determina que a lei facilite a conversão em casamento.', 'O STF equiparou as uniões homoafetivas às heteroafetivas para fins de proteção familiar.' from public.questions q where q.public_code = 'PPCE-DC-000168';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Casamento religioso tem efeito civil se atendidos requisitos legais (Art. 226, § 2º).'),
  ('c', 'Incorreta. O reconhecimento é expresso no Art. 226, § 3º.'),
  ('d', 'Incorreta. A CF não estabelece prazo mínimo; a lei ordinária disciplina.'),
  ('e', 'Incorreta. Pelo contrário, a lei deve FACILITAR a conversão.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000168';

-- -----------------------------------------------------------------------------
-- QUESTÃO 169: Criança e Adolescente (Prioridade Absoluta - Art. 227)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000169', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Família, Criança e Idoso', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'É dever da família, da sociedade e do Estado assegurar à criança, ao adolescente e ao jovem, com absoluta prioridade, o direito à vida, à saúde, à alimentação, à educação, ao lazer, à profissionalização, à cultura, à dignidade, ao respeito, à liberdade e à convivência familiar e comunitária, além de colocá-los a salvo de toda forma de negligência, discriminação, exploração, violência, crueldade e opressão. Sobre os filhos, a CF estabelece:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Filhos havidos fora do casamento não têm direito à herança.', 1),
  ('b', 'B', 'Os filhos havidos ou não da relação do casamento, ou por adoção, terão os mesmos direitos e qualificações, proibidas quaisquer designações discriminatórias relativas à filiação.', 2),
  ('c', 'C', 'Filhos adotivos possuem direitos inferiores aos filhos biológicos.', 3),
  ('d', 'D', 'O Estado pode discriminar filhos nascidos de uniões estáveis.', 4),
  ('e', 'E', 'Apenas os filhos legítimos gozam de proteção estatal integral.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000169';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000169' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Igualdade entre Filhos (Art. 227, § 6º).', 'A CF veda qualquer discriminação entre filhos, sejam biológicos (dentro ou fora do casamento) ou adotivos.', 'Princípio da igualdade filiar.' from public.questions q where q.public_code = 'PPCE-DC-000169';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Têm todos os direitos, inclusive sucessórios.'),
  ('c', 'Incorreta. Direitos são rigorosamente iguais.'),
  ('d', 'Incorreta. Vedada qualquer discriminação.'),
  ('e', 'Incorreta. Não existe mais a figura do "filho legítimo" como categoria superior.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000169';

-- -----------------------------------------------------------------------------
-- QUESTÃO 170: Idoso (Art. 229/230)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000170', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Família, Criança e Idoso', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Aos maiores de sessenta e cinco anos é garantida a gratuidade dos transportes coletivos:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Aéreos internacionais.', 1),
  ('b', 'B', 'Urbanos.', 2),
  ('c', 'C', 'Interestaduais de luxo.', 3),
  ('d', 'D', 'Indivíduais (táxis e aplicativos).', 4),
  ('e', 'E', 'Marítimos transatlânticos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000170';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000170' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direito do Idoso (Art. 230, § 2º).', 'A gratuidade garantida pela CF aos maiores de 65 anos refere-se aos transportes coletivos URBANOS.', 'Dica: 65 anos = Passe livre urbano.' from public.questions q where q.public_code = 'PPCE-DC-000170';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Não há tal previsão constitucional.'),
  ('c', 'Incorreta. Em interestaduais há regras de reserva de vagas (estatuto do idoso), mas a gratuidade direta constitucional é urbana.'),
  ('d', 'Incorreta. Refere-se a transporte coletivo.'),
  ('e', 'Incorreta. Não há tal previsão.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000170';

-- -----------------------------------------------------------------------------
-- QUESTÃO 171: Índios (Terras Tradicionalmente Ocupadas - Art. 231)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000171', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Índios', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'São reconhecidos aos índios sua organização social, costumes, línguas, crenças e tradições, e os direitos originários sobre as terras que tradicionalmente ocupam, competindo à União:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Demarcá-las, proteger e fazer respeitar todos os seus bens.', 1),
  ('b', 'B', 'Vendê-las para exploração mineral privada.', 2),
  ('c', 'C', 'Arrendá-las para fins de reforma agrária.', 3),
  ('d', 'D', 'Transferir as comunidades indígenas para centros urbanos.', 4),
  ('e', 'E', 'Cobrar impostos sobre a produção de subsistência indígena.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000171';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000171' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direitos Indígenas (Art. 231).', 'Compete à União demarcar e proteger as terras indígenas (Art. 231, caput).', 'As terras indígenas são bens da União (Art. 20, XI).' from public.questions q where q.public_code = 'PPCE-DC-000171';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. As terras são inalienáveis e indisponíveis (Art. 231, § 4º).'),
  ('c', 'Incorreta. Os direitos sobre as terras são imprescritíveis.'),
  ('d', 'Incorreta. O Estado deve respeitar suas tradições e habitat.'),
  ('e', 'Incorreta. A posse permanente é dos índios e o usufruto é exclusivo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000171';

-- -----------------------------------------------------------------------------
-- QUESTÃO 172: Índios (Usufruto Exclusivo - Art. 231, § 2º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000172', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Índios', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'As terras tradicionalmente ocupadas pelos índios destinam-se a sua posse permanente, cabendo-lhes o usufruto exclusivo das riquezas do solo, dos rios e dos lagos nelas existentes. Sobre o tema, é correto afirmar:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O aproveitamento dos recursos hídricos e a pesquisa de minerais em terras indígenas dependem de autorização do Congresso Nacional.', 1),
  ('b', 'B', 'Os índios podem vender as terras para terceiros após 10 anos de posse.', 2),
  ('c', 'C', 'A União pode remover comunidades indígenas de suas terras de forma definitiva sem consulta prévia.', 3),
  ('d', 'D', 'O usufruto das riquezas do solo é compartilhado com os municípios lindeiros.', 4),
  ('e', 'E', 'A exploração mineral em terras indígenas não exige participação dos índios nos resultados.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000172';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000172' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Exploração em Terras Indígenas (Art. 231, § 3º).', 'Recursos hídricos e minerais exigem autorização do Congresso e oitiva das comunidades.', 'Dica: Congresso autoriza + participação nos resultados.' from public.questions q where q.public_code = 'PPCE-DC-000172';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Terras são inalienáveis.'),
  ('c', 'Incorreta. É vedada a remoção, salvo casos excepcionais (desastre/epidemia) com retorno imediato (Art. 231, § 5º).'),
  ('d', 'Incorreta. O usufruto é EXCLUSIVO dos índios.'),
  ('e', 'Incorreta. É assegurada participação nos resultados da lavra (Art. 231, § 3º).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000172';

-- -----------------------------------------------------------------------------
-- QUESTÃO 173: REVISÃO - Princípios Fundamentais (Art. 1º ao 4º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000173', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Princípios Fundamentais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A República Federativa do Brasil, formada pela união indissolúvel dos Estados e Municípios e do Distrito Federal, constitui-se em Estado Democrático de Direito e tem como fundamentos, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A soberania.', 1),
  ('b', 'B', 'A cidadania.', 2),
  ('c', 'C', 'A dignidade da pessoa humana.', 3),
  ('d', 'D', 'Os valores sociais do trabalho e da livre iniciativa.', 4),
  ('e', 'E', 'A erradicação da pobreza e da marginalização.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000173';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000173' and qo.question_id = q.id and qo.option_key = 'e';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Fundamentos vs Objetivos.', 'A erradicação da pobreza é um OBJETIVO (Art. 3º), não um FUNDAMENTO (Art. 1º).', 'Dica: Fundamentos = SO-CI-DI-VA-PLU.' from public.questions q where q.public_code = 'PPCE-DC-000173';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. É fundamento (Art. 1º, I).'),
  ('b', 'Incorreta. É fundamento (Art. 1º, II).'),
  ('c', 'Incorreta. É fundamento (Art. 1º, III).'),
  ('d', 'Incorreta. É fundamento (Art. 1º, IV).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000173';

-- -----------------------------------------------------------------------------
-- QUESTÃO 174: REVISÃO - Remédios Constitucionais (Habeas Data)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000174', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Remédios Constitucionais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Conceder-se-á "habeas data":', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Para assegurar o conhecimento de informações relativas à pessoa do impetrante, constantes de registros ou bancos de dados de entidades governamentais ou de caráter público.', 1),
  ('b', 'B', 'Sempre que alguém sofrer ou se achar ameaçado de sofrer violência ou coação em sua liberdade de locomoção.', 2),
  ('c', 'C', 'Para proteger direito líquido e certo, não amparado por "habeas corpus" ou "habeas data".', 3),
  ('d', 'D', 'Sempre que a falta de norma regulamentadora torne inviável o exercício dos direitos e liberdades constitucionais.', 4),
  ('e', 'E', 'Para anular ato lesivo ao patrimônio público ou de entidade de que o Estado participe.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000174';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000174' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Habeas Data (Art. 5º, LXXII).', 'O Habeas Data serve para acesso ou retificação de dados personalíssimos.', 'Lembre-se: Exige prova da recusa administrativa (Súmula 2 STJ).' from public.questions q where q.public_code = 'PPCE-DC-000174';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Definição de Habeas Corpus.'),
  ('c', 'Incorreta. Definição de Mandado de Segurança.'),
  ('d', 'Incorreta. Definição de Mandado de Injunção.'),
  ('e', 'Incorreta. Definição de Ação Popular.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000174';

-- -----------------------------------------------------------------------------
-- QUESTÃO 175: REVISÃO - Direitos Políticos (Inelegibilidade - Art. 14)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000175', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Direitos Políticos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'São inelegíveis, no território de jurisdição do titular, o cônjuge e os parentes consanguíneos ou afins, até o segundo grau ou por adoção, do Presidente da República, de Governador de Estado ou Território, do Distrito Federal, de Prefeito ou de quem os haja substituído dentro dos seis meses anteriores ao pleito, SALVO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Se o parente for militar da ativa com mais de 10 anos de serviço.', 1),
  ('b', 'B', 'Se já for titular de mandato eletivo e candidato à reeleição.', 2),
  ('c', 'C', 'Se o titular do cargo renunciar 1 ano antes das eleições.', 3),
  ('d', 'D', 'Se houver autorização expressa da Justiça Eleitoral.', 4),
  ('e', 'E', 'Não há exceção prevista na Constituição.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000175';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000175' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Inelegibilidade Reflexa (Art. 14, § 7º).', 'A única exceção à inelegibilidade reflexa é se o parente já for titular de mandato e estiver concorrendo à reeleição.', 'Pense: Quem já está no cargo não é impedido pelo parentesco surgido depois.' from public.questions q where q.public_code = 'PPCE-DC-000175';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Regra para o próprio militar ser candidato, não exceção à reflexa.'),
  ('c', 'Incorreta. A renúncia do titular não afasta a inelegibilidade reflexa se ocorrida nos 6 meses (Súmula Vinculante 18 STF).'),
  ('d', 'Incorreta. A lei não prevê tal autorização discricionária.'),
  ('e', 'Incorreta. Existe a exceção da reeleição.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000175';

-- -----------------------------------------------------------------------------
-- QUESTÃO 176: REVISÃO - Organização do Estado (Intervenção Federal)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000176', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Organização do Estado', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A União não intervirá nos Estados nem no Distrito Federal, exceto para:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Aumentar a carga tributária estadual.', 1),
  ('b', 'B', 'Manter a integridade nacional.', 2),
  ('c', 'C', 'Substituir o Governador por incapacidade política.', 3),
  ('d', 'D', 'Alterar as fronteiras entre Municípios vizinhos.', 4),
  ('e', 'E', 'Garantir o pagamento de dívidas particulares de servidores estaduais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000176';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000176' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Intervenção Federal (Art. 34).', 'A manutenção da integridade nacional é a primeira hipótese de intervenção federal (Art. 34, I).', 'Intervenção é medida EXCEPCIONAL.' from public.questions q where q.public_code = 'PPCE-DC-000176';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Estados têm autonomia tributária.'),
  ('c', 'Incorreta. Não existe previsão de intervenção por "incapacidade política".'),
  ('d', 'Incorreta. Assunto de lei estadual.'),
  ('e', 'Incorreta. A intervenção foca em dívida fundada (suspensão do pagamento por mais de 2 anos).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000176';

-- -----------------------------------------------------------------------------
-- QUESTÃO 177: REVISÃO - Administração Pública (Concursos - Art. 37)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000177', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Administração Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O prazo de validade do concurso público será de até:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Um ano, sem prorrogação.', 1),
  ('b', 'B', 'Dois anos, prorrogável uma vez, por igual período.', 2),
  ('c', 'C', 'Quatro anos, improrrogáveis.', 3),
  ('d', 'D', 'Cinco anos, prorrogável quantas vezes necessário.', 4),
  ('e', 'E', 'Indeterminado.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000177';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000177' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Validade do Concurso (Art. 37, III).', 'Até 2 anos, prorrogável UMA VEZ por IGUAL PERÍODO.', 'Dica: Máximo de 4 anos no total.' from public.questions q where q.public_code = 'PPCE-DC-000177';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O prazo máximo é 2 anos.'),
  ('c', 'Incorreta. O prazo inicial é de no máximo 2 anos.'),
  ('d', 'Incorreta. Só admite uma prorrogação.'),
  ('e', 'Incorreta. Deve ter prazo determinado.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000177';

-- -----------------------------------------------------------------------------
-- QUESTÃO 178: REVISÃO - Poder Legislativo (Processo Legislativo - Art. 61)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000178', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Poder Legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'São de iniciativa privativa do Presidente da República as leis que disponham sobre:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Criação de cargos, funções ou empregos públicos na administração direta e autárquica ou aumento de sua remuneração.', 1),
  ('b', 'B', 'Normas gerais de licitação e contratação administrativa.', 2),
  ('c', 'C', 'Crimes de responsabilidade do Presidente.', 3),
  ('d', 'D', 'Direitos e garantias fundamentais.', 4),
  ('e', 'E', 'Organização do Ministério Público dos Estados.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000178';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000178' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Iniciativa Reservada (Art. 61, § 1º, II, a).', 'Criação de cargos e aumento de remuneração no Executivo é iniciativa privativa do Presidente.', 'Dica: Assuntos de pessoal e estrutura do Executivo.' from public.questions q where q.public_code = 'PPCE-DC-000178';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Iniciativa comum/concorrente.'),
  ('c', 'Incorreta. Definido pela CF e lei especial (1.079/50).'),
  ('d', 'Incorreta. Iniciativa comum (com restrições de emenda).'),
  ('e', 'Incorreta. Iniciativa do próprio Procurador-Geral de Justiça do Estado.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000178';

-- -----------------------------------------------------------------------------
-- QUESTÃO 179: REVISÃO - Poder Judiciário (Súmula Vinculante)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000179', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Poder Judiciário', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Supremo Tribunal Federal poderá, de ofício ou por provocação, mediante decisão de dois terços dos seus membros, após reiteradas decisões sobre matéria constitucional, aprovar súmula que terá efeito vinculante em relação:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Aos demais órgãos do Poder Judiciário e à administração pública direta e indireta.', 1),
  ('b', 'B', 'Apenas aos Tribunais de Justiça estaduais.', 2),
  ('c', 'C', 'Ao Poder Legislativo em sua função legiferante.', 3),
  ('d', 'D', 'Exclusivamente aos juízes federais.', 4),
  ('e', 'E', 'Aos cidadãos em suas relações privadas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000179';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000179' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Súmula Vinculante (Art. 103-A).', 'A Súmula Vinculante obriga o Judiciário e a Administração Pública.', 'Atenção: NÃO vincula o Legislativo em sua função de criar leis.' from public.questions q where q.public_code = 'PPCE-DC-000179';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Vincula todo o Judiciário e Administração.'),
  ('c', 'Incorreta. O Legislativo (na função de legislar) não é vinculado.'),
  ('d', 'Incorreta. Vincula todos os órgãos judiciais inferiores.'),
  ('e', 'Incorreta. Vincula órgãos públicos, embora afete o direito dos cidadãos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000179';

-- -----------------------------------------------------------------------------
-- QUESTÃO 180: REVISÃO - Segurança Pública (GCM - Art. 144, § 8º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000180', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Os Municípios poderão constituir guardas municipais destinadas à:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Investigação de crimes comuns e hediondos.', 1),
  ('b', 'B', 'Preservação da ordem pública estadual.', 2),
  ('c', 'C', 'Proteção de seus bens, serviços e instalações, conforme dispuser a lei.', 3),
  ('d', 'D', 'Execução de policiamento ostensivo e preventivo de trânsito em rodovias federais.', 4),
  ('e', 'E', 'Vigilância de presídios federais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000180';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000180' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Guardas Municipais (Art. 144, § 8º).', 'A missão constitucional da GCM é a proteção de bens, serviços e instalações municipais.', 'Dica: Bens, Serviços e Instalações.' from public.questions q where q.public_code = 'PPCE-DC-000180';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Atribuição da Polícia Civil/Federal.'),
  ('b', 'Incorreta. Atribuição da Polícia Militar.'),
  ('d', 'Incorreta. Atribuição da PRF.'),
  ('e', 'Incorreta. Atribuição da Polícia Penal Federal.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000180';

-- -----------------------------------------------------------------------------
-- QUESTÃO 181: REVISÃO - Direitos Individuais (Tribunal do Júri)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000181', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Direitos Individuais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'É reconhecida a instituição do júri, com a organização que lhe der a lei, assegurados, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A plenitude de defesa.', 1),
  ('b', 'B', 'O sigilo das votações.', 2),
  ('c', 'C', 'A soberania dos veredictos.', 3),
  ('d', 'D', 'A competência para o julgamento dos crimes dolosos contra a vida.', 4),
  ('e', 'E', 'A competência para o julgamento dos crimes contra o patrimônio público.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000181';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000181' and qo.question_id = q.id and qo.option_key = 'e';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Tribunal do Júri (Art. 5º, XXXVIII).', 'O Júri julga apenas crimes DOLOSOS CONTRA A VIDA.', 'Dica: Plenitude, Sigilo, Soberania e Crimes Dolosos contra a Vida.' from public.questions q where q.public_code = 'PPCE-DC-000181';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Garantia prevista na alínea a.'),
  ('b', 'Incorreta. Garantia prevista na alínea b.'),
  ('c', 'Incorreta. Garantia prevista na alínea c.'),
  ('d', 'Incorreta. Garantia prevista na alínea d.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000181';

-- -----------------------------------------------------------------------------
-- QUESTÃO 182: REVISÃO - Nacionalidade (NATO vs NATURALIZADO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000182', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Nacionalidade', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A lei não poderá estabelecer distinção entre brasileiros natos e naturalizados, salvo nos casos previstos na Constituição. São cargos privativos de brasileiro nato, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Presidente e Vice-Presidente da República.', 1),
  ('b', 'B', 'Presidente da Câmara dos Deputados.', 2),
  ('c', 'C', 'Ministro do Supremo Tribunal Federal.', 3),
  ('d', 'D', 'Oficial das Forças Armadas.', 4),
  ('e', 'E', 'Diretor-Geral da Polícia Federal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000182';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000182' and qo.question_id = q.id and qo.option_key = 'e';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Cargos de Brasileiro Nato (Art. 12, § 3º).', 'O cargo de Diretor-Geral da PF não é privativo de brasileiro nato na CF (embora exija ser delegado de carreira).', 'Dica: MP3.COM (Ministro do STF, Presidente da Câmara, Presidente do Senado, Presidente/Vice, Carreira Diplomática, Oficial das F.A., Ministro da Defesa).' from public.questions q where q.public_code = 'PPCE-DC-000182';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Privativo (Art. 12, § 3º, I).'),
  ('b', 'Incorreta. Privativo (Art. 12, § 3º, II).'),
  ('c', 'Incorreta. Privativo (Art. 12, § 3º, IV).'),
  ('d', 'Incorreta. Privativo (Art. 12, § 3º, VI).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000182';

-- -----------------------------------------------------------------------------
-- QUESTÃO 183: REVISÃO - Direitos Sociais (Férias)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000183', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Direitos Sociais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São direitos dos trabalhadores urbanos e rurais, além de outros que visem à melhoria de sua condição social, o gozo de férias anuais remuneradas com, pelo menos:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Um terço a mais do que o salário normal.', 1),
  ('b', 'B', 'Cinquenta por cento a mais do que o salário normal.', 2),
  ('c', 'C', 'Dobro do salário normal.', 3),
  ('d', 'D', 'Mesmo valor do salário normal.', 4),
  ('e', 'E', 'Dez por cento de bônus sobre o salário normal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000183';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000183' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Férias (Art. 7º, XVII).', 'O adicional de férias é de 1/3 (um terço) sobre o salário normal.', 'Regra constitucional básica do direito do trabalho.' from public.questions q where q.public_code = 'PPCE-DC-000183';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Este é o adicional de HORAS EXTRAS (Art. 7º, XVI).'),
  ('c', 'Incorreta. Valor não previsto.'),
  ('d', 'Incorreta. Deve haver o adicional de 1/3.'),
  ('e', 'Incorreta. Valor incorreto.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000183';

-- -----------------------------------------------------------------------------
-- QUESTÃO 184: REVISÃO - Organização Política (Vedação aos Entes)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000184', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Organização do Estado', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Ao estabelecer as vedações federativas, a Constituição Federal determina que é VEDADO à União, aos Estados, ao Distrito Federal e aos Municípios:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Criar distinções entre brasileiros ou preferências entre si.', 1),
  ('b', 'B', 'Instituir impostos sobre a renda.', 2),
  ('c', 'C', 'Realizar despesas com publicidade institucional.', 3),
  ('d', 'D', 'Contratar servidores sem concurso público para cargos de confiança.', 4),
  ('e', 'E', 'Legislar sobre direito civil e penal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000184';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000184' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Vedações Federativas (Art. 19).', 'É vedado criar distinções entre brasileiros (Art. 19, III).', 'Outras vedações: Estabelecer cultos religiosos, Recusar fé aos documentos públicos.' from public.questions q where q.public_code = 'PPCE-DC-000184';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A União pode instituir imposto de renda.'),
  ('c', 'Incorreta. Publicidade institucional é permitida para fins informativos/educativos (Art. 37, § 1º).'),
  ('d', 'Incorreta. Cargos de confiança dispensam concurso.'),
  ('e', 'Incorreta. A União pode legislar sobre estes temas.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000184';

-- -----------------------------------------------------------------------------
-- QUESTÃO 185: REVISÃO - Bens da União (Terras Devolutas)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000185', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Organização do Estado', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Incluem-se entre os bens da União as terras devolutas:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Indispensáveis à defesa das fronteiras, das fortificações e construções militares, das vias federais de comunicação e à preservação ambiental, definidas em lei.', 1),
  ('b', 'B', 'Todas as existentes no território nacional.', 2),
  ('c', 'C', 'Apenas as situadas no interior dos Estados.', 3),
  ('d', 'D', 'Aquelas que não possuam registro imobiliário em nome de particulares.', 4),
  ('e', 'E', 'Destinadas à reforma agrária estadual.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000185';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000185' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Bens da União (Art. 20, II).', 'Nem toda terra devoluta é da União; apenas as indispensáveis à defesa e vias federais.', 'As demais terras devolutas pertencem aos Estados (Art. 26, IV).' from public.questions q where q.public_code = 'PPCE-DC-000185';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Regra geral é que são bens dos Estados.'),
  ('c', 'Incorreta. Critério geográfico não define a propriedade da União.'),
  ('d', 'Incorreta. Definição genérica de terra devoluta, mas não de bem da União.'),
  ('e', 'Incorreta. Reforma agrária é competência da União, mas a terra devoluta em si segue o critério do Art. 20.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000185';

-- -----------------------------------------------------------------------------
-- QUESTÃO 186: REVISÃO - Competência Legislativa (Art. 22 vs 24)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000186', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Organização do Estado', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Compete PRIVATIVAMENTE à União legislar sobre:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Direito penal, civil e comercial.', 1),
  ('b', 'B', 'Educação, cultura e ensino.', 2),
  ('c', 'C', 'Proteção e integração social das pessoas com deficiência.', 3),
  ('d', 'D', 'Previdência social, proteção e defesa da saúde.', 4),
  ('e', 'E', 'Direito tributário, financeiro e penitenciário.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000186';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000186' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Competência Privativa (Art. 22).', 'Direito Penal, Civil, Comercial, Trabalho, etc., são de competência PRIVATIVA da União (Art. 22, I).', 'Dica: CAPACETE DE PM (Civil, Agrário, Penal, Aeronáutico, Comercial, Eleitoral, Trabalho, Espacial, Desapropriação, Processual, Marítimo).' from public.questions q where q.public_code = 'PPCE-DC-000186';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Competência CONCORRENTE (Art. 24, IX).'),
  ('c', 'Incorreta. Competência CONCORRENTE (Art. 24, XIV).'),
  ('d', 'Incorreta. Competência CONCORRENTE (Art. 24, XII).'),
  ('e', 'Incorreta. Competência CONCORRENTE (Art. 24, I).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000186';

-- -----------------------------------------------------------------------------
-- QUESTÃO 187: REVISÃO - Servidores Públicos (Teto - Art. 37, XI)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000187', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Administração Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O teto remuneratório geral da administração pública brasileira, que serve como limite para a remuneração e o subsídio dos ocupantes de cargos, funções e empregos públicos, é o subsídio mensal, em espécie, dos:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ministros do Supremo Tribunal Federal.', 1),
  ('b', 'B', 'Presidente da República.', 2),
  ('c', 'C', 'Senadores e Deputados Federais.', 3),
  ('d', 'D', 'Ministros de Estado.', 4),
  ('e', 'E', 'Governadores de Estado.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000187';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000187' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Teto Remuneratório (Art. 37, XI).', 'O teto máximo é o subsídio dos Ministros do STF.', 'Dica: STF é o topo da pirâmide remuneratória.' from public.questions q where q.public_code = 'PPCE-DC-000187';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O Presidente tem subsídio alto, mas o teto constitucional é o do STF.'),
  ('c', 'Incorreta. Seguem outros critérios.'),
  ('d', 'Incorreta. Limite inferior ao do STF.'),
  ('e', 'Incorreta. Este é o teto no âmbito do Poder Executivo estadual.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000187';

-- -----------------------------------------------------------------------------
-- QUESTÃO 188: REVISÃO - Poder Judiciário (Quinto Constitucional)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000188', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Poder Judiciário', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O "Quinto Constitucional" é a regra que reserva um quinto das vagas de determinados tribunais para membros do Ministério Público e advogados. Esse mecanismo aplica-se ao:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Supremo Tribunal Federal.', 1),
  ('b', 'B', 'Superior Tribunal de Justiça.', 2),
  ('c', 'C', 'Tribunais Regionais Federais e Tribunais de Justiça.', 3),
  ('d', 'D', 'Conselho Nacional de Justiça.', 4),
  ('e', 'E', 'Tribunais Superiores apenas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000188';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000188' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Quinto Constitucional (Art. 94).', 'O Quinto aplica-se aos TRFs, TJs e TST. No STJ a regra é o "Terço" (Art. 104, parágrafo único).', 'STF não tem quinto nem terço (escolha política do Presidente).' from public.questions q where q.public_code = 'PPCE-DC-000188';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. No STF não se aplica a regra do quinto.'),
  ('b', 'Incorreta. No STJ a regra é de 1/3 (Terço Constitucional).'),
  ('d', 'Incorreta. Órgão de controle administrativo, não tribunal de julgamento jurisdicional.'),
  ('e', 'Incorreta. Aplica-se a tribunais de 2ª instância (TJs e TRFs) e ao TST.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000188';

-- -----------------------------------------------------------------------------
-- QUESTÃO 189: REVISÃO - Funções Essenciais (Defensoria Pública)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000189', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Funções Essenciais à Justiça', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'À Defensoria Pública, instituição permanente, essencial à função jurisdicional do Estado, incumbe, como expressão e instrumento do regime democrático, fundamentalmente:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A orientação jurídica, a promoção dos direitos humanos e a defesa, em todos os graus, judicial e extrajudicial, dos direitos individuais e coletivos, de forma integral e gratuita, aos necessitados.', 1),
  ('b', 'B', 'A defesa dos interesses da União no Supremo Tribunal Federal.', 2),
  ('c', 'C', 'A presidência do inquérito policial em crimes de menor potencial ofensivo.', 3),
  ('d', 'D', 'A fiscalização da lei e a promoção da ação penal pública.', 4),
  ('e', 'E', 'O julgamento de recursos administrativos disciplinares.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000189';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000189' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Missão da Defensoria (Art. 134).', 'A Defensoria atua na defesa dos necessitados (Art. 5º, LXXIV).', 'Dica: Defensoria = Pobres/Necessitados.' from public.questions q where q.public_code = 'PPCE-DC-000189';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Atribuição da AGU.'),
  ('c', 'Incorreta. Atribuição da autoridade policial (Delegado).'),
  ('d', 'Incorreta. Atribuição do Ministério Público.'),
  ('e', 'Incorreta. Atribuição de órgãos correcionais.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000189';

-- -----------------------------------------------------------------------------
-- QUESTÃO 190: REVISÃO - Forças Armadas (Art. 142)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000190', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Defesa do Estado', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'As Forças Armadas, constituídas pela Marinha, pelo Exército e pela Aeronáutica, são instituições nacionais permanentes e regulares, organizadas com base na hierarquia e na disciplina, sob a autoridade suprema do:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ministro da Defesa.', 1),
  ('b', 'B', 'Comandante mais antigo da ativa.', 2),
  ('c', 'C', 'Presidente da República.', 3),
  ('d', 'D', 'Presidente do Senado Federal.', 4),
  ('e', 'E', 'Congresso Nacional.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000190';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000190' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Autoridade sobre F.A. (Art. 142).', 'O Comandante Supremo das Forças Armadas é o Presidente da República.', 'Dica: Civil acima dos militares no Estado de Direito.' from public.questions q where q.public_code = 'PPCE-DC-000190';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O Ministro auxilia, mas a autoridade suprema é o Presidente.'),
  ('b', 'Incorreta. Autoridade militar não é suprema na CF.'),
  ('d', 'Incorreta. Chefia o Legislativo.'),
  ('e', 'Incorreta. Exerce controle, mas não autoridade de comando direto.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000190';

-- -----------------------------------------------------------------------------
-- QUESTÃO 191: REVISÃO - Direitos Individuais (Inviolabilidade Domiciliar)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000191', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Direitos Individuais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A casa é asilo inviolável do indivíduo, ninguém nela podendo penetrar sem consentimento do morador, salvo em caso de flagrante delito ou desastre, ou para prestar socorro, ou, durante o dia, por:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Determinação administrativa do Delegado.', 1),
  ('b', 'B', 'Requisição do Ministério Público.', 2),
  ('c', 'C', 'Determinação judicial.', 3),
  ('d', 'D', 'Autorização do Secretário de Segurança Pública.', 4),
  ('e', 'E', 'Livre arbítrio da autoridade policial.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000191';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000191' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Inviolabilidade Domiciliar (Art. 5º, XI).', 'A entrada forçada por determinação judicial só pode ocorrer DURANTE O DIA.', 'Dica: Flagrante, Socorro e Desastre (Dia ou Noite). Judicial (Somente Dia).' from public.questions q where q.public_code = 'PPCE-DC-000191';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Exige-se ordem judicial.'),
  ('b', 'Incorreta. Exige-se ordem judicial.'),
  ('d', 'Incorreta. Exige-se ordem judicial.'),
  ('e', 'Incorreta. Viola a garantia constitucional.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000191';

-- -----------------------------------------------------------------------------
-- QUESTÃO 192: REVISÃO - Segurança Pública (Órgãos - Art. 144)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000192', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Segundo o Art. 144 da Constituição Federal, a segurança pública é dever do Estado, direito e responsabilidade de todos. São órgãos da segurança pública, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Polícia Federal.', 1),
  ('b', 'B', 'Polícia Civil.', 2),
  ('c', 'C', 'Polícias Penais federal, estaduais e distrital.', 3),
  ('d', 'D', 'Forças Armadas (Exército, Marinha e Aeronáutica).', 4),
  ('e', 'E', 'Polícias Militares e Corpos de Bombeiros Militares.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000192';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000192' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Órgãos da Segurança Pública (Art. 144).', 'As Forças Armadas não integram o rol de órgãos de segurança pública do Art. 144 (elas pertencem ao Art. 142).', 'Dica: O rol do Art. 144 é taxativo.' from public.questions q where q.public_code = 'PPCE-DC-000192';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Órgão previsto no inciso I.'),
  ('b', 'Incorreta. Órgão previsto no inciso IV.'),
  ('c', 'Incorreta. Órgão previsto no inciso VI (incluído pela EC 104/2019).'),
  ('e', 'Incorreta. Órgãos previstos no inciso V.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000192';

-- -----------------------------------------------------------------------------
-- QUESTÃO 193: REVISÃO - Direitos Coletivos (Mandado de Segurança Coletivo)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000193', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Direitos Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O mandado de segurança coletivo pode ser impetrado por:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Qualquer cidadão em pleno gozo de seus direitos políticos.', 1),
  ('b', 'B', 'Partido político com representação no Congresso Nacional.', 2),
  ('c', 'C', 'Associação em funcionamento há pelo menos seis meses.', 3),
  ('d', 'D', 'Ministério Público Federal apenas.', 4),
  ('e', 'E', 'OAB apenas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000193';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000193' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Legitimidade no MS Coletivo (Art. 5º, LXX).', 'O Partido Político precisa ter representação no Congresso (ao menos 1 parlamentar).', 'Dica: Partidos (c/ representação) ou Organizações Sindicais/Entidades de Classe/Associações (c/ 1 ano de funcionamento).' from public.questions q where q.public_code = 'PPCE-DC-000193';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Legitimidade para Ação Popular.'),
  ('c', 'Incorreta. Exige-se funcionamento há pelo menos UM ANO (Art. 5º, LXX, b).'),
  ('d', 'Incorreta. Não é o legitimado principal mencionado na CF para o MS coletivo.'),
  ('e', 'Incorreta. A OAB tem outras legitimidades, mas o rol do MS coletivo é específico.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000193';

-- -----------------------------------------------------------------------------
-- QUESTÃO 194: REVISÃO - Poder Legislativo (Tribunal de Contas)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000194', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Poder Legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A fiscalização contábil, financeira, orçamentária, operacional e patrimonial da União e das entidades da administração direta e indireta será exercida pelo Congresso Nacional, mediante controle externo, e pelo sistema de controle interno de cada Poder. O controle externo será exercido com o auxílio do:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ministério Público.', 1),
  ('b', 'B', 'Tribunal de Contas da União.', 2),
  ('c', 'C', 'Conselho Nacional de Justiça.', 3),
  ('d', 'D', 'Supremo Tribunal Federal.', 4),
  ('e', 'E', 'Controladoria-Geral da União.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000194';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000194' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Controle Externo (Art. 71).', 'O TCU é o órgão técnico que auxilia o Congresso no controle externo.', 'O TCU não é parte do Judiciário, mas um órgão de auxílio ao Legislativo.' from public.questions q where q.public_code = 'PPCE-DC-000194';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Instituição de funções essenciais.'),
  ('c', 'Incorreta. Órgão de controle do Judiciário.'),
  ('d', 'Incorreta. Órgão de cúpula do Judiciário.'),
  ('e', 'Incorreta. Órgão de controle INTERNO do Executivo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000194';

-- -----------------------------------------------------------------------------
-- QUESTÃO 195: REVISÃO - Poder Executivo (Substituição - Art. 80)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000195', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Poder Executivo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Em caso de impedimento do Presidente e do Vice-Presidente, ou vacância dos respectivos cargos, serão sucessivamente chamados ao exercício da Presidência:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O Presidente da Câmara dos Deputados, o do Senado Federal e o do Supremo Tribunal Federal.', 1),
  ('b', 'B', 'O Ministro da Justiça, o das Relações Exteriores e o da Defesa.', 2),
  ('c', 'C', 'O Presidente do Senado Federal, o da Câmara dos Deputados e o do STJ.', 3),
  ('d', 'D', 'O Procurador-Geral da República e o Advogado-Geral da União.', 4),
  ('e', 'E', 'Ninguém; devem ser convocadas eleições imediatas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000195';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000195' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Linha Sucessória (Art. 80).', 'A ordem é: Câmara, Senado e STF.', 'Dica: C-S-S.' from public.questions q where q.public_code = 'PPCE-DC-000195';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Ministros não integram a linha sucessória constitucional.'),
  ('c', 'Incorreta. A Câmara vem antes do Senado na sucessão.'),
  ('d', 'Incorreta. Não integram a linha sucessória.'),
  ('e', 'Incorreta. As eleições ocorrem depois de assumir o substituto, se a vacância for total.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000195';

-- -----------------------------------------------------------------------------
-- QUESTÃO 196: REVISÃO - Poder Judiciário (Composição do STJ)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000196', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Poder Judiciário', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O Superior Tribunal de Justiça compõe-se de, no mínimo:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Onze Ministros.', 1),
  ('b', 'B', 'Trinta e três Ministros.', 2),
  ('c', 'C', 'Dezessete Ministros.', 3),
  ('d', 'D', 'Vinte e um Ministros.', 4),
  ('e', 'E', 'Sete Ministros.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000196';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000196' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Composição do STJ (Art. 104).', 'O STJ tem 33 ministros.', 'Dica: STJ = "Somos Todos Jesus" (33 anos).' from public.questions q where q.public_code = 'PPCE-DC-000196';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Composição do STF.'),
  ('c', 'Incorreta. Composição do TST.'),
  ('d', 'Incorreta. Composição do STM (são 15).'),
  ('e', 'Incorreta. Composição do TSE.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000196';

-- -----------------------------------------------------------------------------
-- QUESTÃO 197: REVISÃO - Estado de Defesa (Art. 136)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000197', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Defesa do Estado', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O tempo de duração do estado de defesa não será superior a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '30 dias, podendo ser prorrogado uma vez, por igual período.', 1),
  ('b', 'B', '60 dias, sem prorrogação.', 2),
  ('c', 'C', '90 dias, podendo ser renovado sucessivamente.', 3),
  ('d', 'D', '15 dias, prorrogável por mais 15.', 4),
  ('e', 'E', 'Tempo indeterminado enquanto durar a crise.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000197';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000197' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Duração do Estado de Defesa (Art. 136, § 2º).', 'O prazo é de 30 dias + 30 dias (uma prorrogação).', 'Dica: Defesa = 30 + 30.' from public.questions q where q.public_code = 'PPCE-DC-000197';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Admite uma prorrogação.'),
  ('c', 'Incorreta. Prazo excessivo e renovação ilimitada não permitida.'),
  ('d', 'Incorreta. Prazo insuficiente.'),
  ('e', 'Incorreta. Deve ter prazo determinado.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000197';

-- -----------------------------------------------------------------------------
-- QUESTÃO 198: REVISÃO - Direitos Sociais (Idade Mínima para Trabalho)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000198', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Direitos Sociais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A Constituição Federal proíbe o trabalho noturno, perigoso ou insalubre a menores de dezoito e de qualquer trabalho a menores de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Dezesseis anos, salvo na condição de aprendiz, a partir de quatorze anos.', 1),
  ('b', 'B', 'Quatorze anos, sem exceções.', 2),
  ('c', 'C', 'Doze anos.', 3),
  ('d', 'D', 'Dezoito anos.', 4),
  ('e', 'E', 'Dez anos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000198';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000198' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Trabalho do Menor (Art. 7º, XXXIII).', 'A regra é: Proibido trabalhar antes dos 16 anos, salvo aprendiz aos 14.', 'Trabalho perigoso/noturno/insalubre: Somente a partir dos 18.' from public.questions q where q.public_code = 'PPCE-DC-000198';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Existe a exceção do aprendiz aos 14.'),
  ('c', 'Incorreta. Idade mínima é 14 (aprendiz) ou 16.'),
  ('d', 'Incorreta. Pode trabalhar com 16 (comum) ou 14 (aprendiz).'),
  ('e', 'Incorreta. Idade muito baixa.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000198';

-- -----------------------------------------------------------------------------
-- QUESTÃO 199: REVISÃO - Ordem Social (Saúde)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000199', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Saúde', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'As instituições privadas poderão participar do sistema único de saúde (SUS) de forma:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Exclusiva, substituindo o Estado.', 1),
  ('b', 'B', 'Complementar, mediante contrato de direito público ou convênio.', 2),
  ('c', 'C', 'Obrigatória e sem remuneração.', 3),
  ('d', 'D', 'Livre, sem qualquer fiscalização estatal.', 4),
  ('e', 'E', 'Vedada em qualquer hipótese.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000199';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000199' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Saúde Privada no SUS (Art. 199, § 1º).', 'A participação é COMPLEMENTAR, com preferência para entidades filantrópicas.', 'A saúde é livre à iniciativa privada (caput), mas no SUS é complementar.' from public.questions q where q.public_code = 'PPCE-DC-000199';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O Estado é o provedor principal.'),
  ('c', 'Incorreta. É facultativa e remunerada pelo SUS.'),
  ('d', 'Incorreta. O SUS deve fiscalizar e controlar.'),
  ('e', 'Incorreta. É permitida pela CF.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000199';

-- -----------------------------------------------------------------------------
-- QUESTÃO 200: REVISÃO FINAL - Segurança Pública (Atribuições da PF)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000200', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Revisão Final', 'Polícia Federal', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A Polícia Federal, instituída por lei como órgão permanente, organizado e mantido pela União e estruturado em carreira, destina-se a, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Apurar infrações penais contra a ordem política e social.', 1),
  ('b', 'B', 'Prevenir e reprimir o tráfico ilícito de entorpecentes e drogas afins.', 2),
  ('c', 'C', 'Exercer as funções de polícia marítima, aeroportuária e de fronteiras.', 3),
  ('d', 'D', 'Exercer, com exclusividade, as funções de polícia judiciária da União.', 4),
  ('e', 'E', 'Exercer o policiamento ostensivo e a preservação da ordem pública nos Estados.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000200';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000200' and qo.question_id = q.id and qo.option_key = 'e';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Atribuições da PF (Art. 144, § 1º).', 'O policiamento ostensivo e a preservação da ordem pública nos Estados é atribuição da POLÍCIA MILITAR (Art. 144, § 5º).', 'A PF exerce polícia JUDICIÁRIA da União com exclusividade.' from public.questions q where q.public_code = 'PPCE-DC-000200';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Atribuição prevista no Art. 144, § 1º, I.'),
  ('b', 'Incorreta. Atribuição prevista no Art. 144, § 1º, II.'),
  ('c', 'Incorreta. Atribuição prevista no Art. 144, § 1º, III.'),
  ('d', 'Incorreta. Atribuição prevista no Art. 144, § 1º, IV.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000200';
