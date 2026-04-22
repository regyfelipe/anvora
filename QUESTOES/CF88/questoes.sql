-- =============================================================================
-- BLOCO DE QUESTÕES COMPLETO: PPCE - DIREITO CONSTITUCIONAL
-- TOTAL: 60 QUESTÕES COM EXPLICAÇÕES DETALHADAS ITEM POR ITEM
-- =============================================================================

-- LIMPEZA INICIAL
delete from public.questions where public_code in (
  'PPCE-DC-000001', 'PPCE-DC-000002', 'PPCE-DC-000003', 'PPCE-DC-000004', 'PPCE-DC-000005',
  'PPCE-DC-000006', 'PPCE-DC-000007', 'PPCE-DC-000008', 'PPCE-DC-000009', 'PPCE-DC-000010',
  'PPCE-DC-000011', 'PPCE-DC-000012', 'PPCE-DC-000013', 'PPCE-DC-000014', 'PPCE-DC-000015',
  'PPCE-DC-000016', 'PPCE-DC-000017', 'PPCE-DC-000018', 'PPCE-DC-000019', 'PPCE-DC-000020',
  'PPCE-DC-000021', 'PPCE-DC-000022', 'PPCE-DC-000023', 'PPCE-DC-000024', 'PPCE-DC-000025',
  'PPCE-DC-000026', 'PPCE-DC-000027', 'PPCE-DC-000028', 'PPCE-DC-000029', 'PPCE-DC-000030',
  'PPCE-DC-000031', 'PPCE-DC-000032', 'PPCE-DC-000033', 'PPCE-DC-000034', 'PPCE-DC-000035',
  'PPCE-DC-000036', 'PPCE-DC-000037', 'PPCE-DC-000038', 'PPCE-DC-000039', 'PPCE-DC-000040',
  'PPCE-DC-000041', 'PPCE-DC-000042', 'PPCE-DC-000043', 'PPCE-DC-000044', 'PPCE-DC-000045',
  'PPCE-DC-000046', 'PPCE-DC-000047', 'PPCE-DC-000048', 'PPCE-DC-000049', 'PPCE-DC-000050',
  'PPCE-DC-000051', 'PPCE-DC-000052', 'PPCE-DC-000053', 'PPCE-DC-000054', 'PPCE-DC-000055',
  'PPCE-DC-000056', 'PPCE-DC-000057', 'PPCE-DC-000058', 'PPCE-DC-000059', 'PPCE-DC-000060'
);

-- -----------------------------------------------------------------------------
-- QUESTÃO 01: Sentido Jurídico (Kelsen)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000001', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Estado e Constituição', 'Conceito e Sentidos de Constituição', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'No estudo do Direito Constitucional, a Constituição pode ser compreendida em diferentes sentidos. Assinale a alternativa correta acerca do conceito de Constituição em seu sentido jurídico.', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Constituição é o conjunto de fatores reais de poder que regem uma sociedade.', 1),
  ('b', 'B', 'Constituição é a norma fundamental do Estado, dotada de supremacia, que organiza os poderes e assegura direitos.', 2),
  ('c', 'C', 'Constituição é a decisão política fundamental tomada pelo titular do poder constituinte.', 3),
  ('d', 'D', 'Constituição é um fato cultural, síntese de valores sociais e históricos.', 4),
  ('e', 'E', 'Constituição é apenas o documento que regula a sucessão monárquica.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000001';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000001' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Sentido Jurídico (Hans Kelsen).', 'A alternativa B está correta pois define a Constituição sob a ótica estritamente jurídica: uma norma superior que fundamenta todo o ordenamento.', 'Lembre-se da Pirâmide de Kelsen!' from public.questions q where q.public_code = 'PPCE-DC-000001';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Este é o sentido SOCIOLÓGICO de Ferdinand Lassalle.'),
  ('c', 'Incorreta. Este é o sentido POLÍTICO de Carl Schmitt.'),
  ('d', 'Incorreta. Este é o sentido CULTURALISTA de Meirelles Teixeira.'),
  ('e', 'Incorreta. Definição muito restritiva e historicamente superada pelo constitucionalismo moderno.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000001';

-- -----------------------------------------------------------------------------
-- QUESTÃO 02: Sentido Sociológico (Lassalle)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000002', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Estado e Constituição', 'Conceito e Sentidos de Constituição', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Segundo Ferdinand Lassalle, em sua obra "A Essência da Constituição", uma Constituição escrita que não reflete a realidade das forças políticas e sociais de um país é denominada:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Constituição Rígida.', 1),
  ('b', 'B', 'Decisão Política Fundamental.', 2),
  ('c', 'C', 'Mera folha de papel.', 3),
  ('d', 'D', 'Norma Fundamental Hipotética.', 4),
  ('e', 'E', 'Constituição Material.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000002';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000002' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Sentido Sociológico.', 'Lassalle defende que a verdadeira Constituição são os "fatores reais de poder". A folha de papel é apenas o registro que pode ser ignorado se não houver base social.', 'Importante para entender o confronto entre realidade e norma.' from public.questions q where q.public_code = 'PPCE-DC-000002';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Rigidez é uma classificação quanto à alterabilidade, não tem relação com Lassalle.'),
  ('b', 'Incorreta. Termo usado por Carl Schmitt no sentido político.'),
  ('d', 'Incorreta. Conceito de Hans Kelsen no sentido jurídico.'),
  ('e', 'Incorreta. Constituição material refere-se ao conteúdo das normas, não à crítica de Lassalle.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000002';

-- -----------------------------------------------------------------------------
-- QUESTÃO 03: Classificação quanto à Origem (Outorgada)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000003', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Estado e Constituição', 'Classificação das Constituições', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A Constituição que é imposta unilateralmente pelo detentor do poder, sem a participação popular, é classificada como:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Promulgada.', 1),
  ('b', 'B', 'Pactuada.', 2),
  ('c', 'C', 'Outorgada.', 3),
  ('d', 'D', 'Cesarista.', 4),
  ('e', 'E', 'Dualista.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000003';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000003' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Classificação por Origem.', 'A outorga é o ato unilateral do governante. No Brasil, tivemos as de 1824, 1937, 1967 e 1969.', 'Memorize as datas das outorgadas no Brasil.' from public.questions q where q.public_code = 'PPCE-DC-000003';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Promulgada é a democrática, com participação popular.'),
  ('b', 'Incorreta. Pactuada é fruto de um acordo entre soberano e parlamento.'),
  ('d', 'Incorreta. Cesarista é outorgada, mas com ratificação popular posterior (plebiscito).'),
  ('e', 'Incorreta. Termo usado em outras classificações de direito internacional/constitucional.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000003';

-- -----------------------------------------------------------------------------
-- QUESTÃO 04: Estabilidade (Rígida)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000004', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Estado e Constituição', 'Classificação das Constituições', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A Constituição Federal de 1988 exige um processo de alteração mais dificultoso do que o processo de criação de leis ordinárias. Por essa razão, ela é classificada como:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Flexível.', 1),
  ('b', 'B', 'Semirrígida.', 2),
  ('c', 'C', 'Rígida.', 3),
  ('d', 'D', 'Imutável.', 4),
  ('e', 'E', 'Plástica.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000004';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000004' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Classificação por Estabilidade.', 'Rigidez significa que a mudança exige quórum e rito especiais (Art. 60 da CF).', 'Cuidado: Alguns autores chamam de Super-rígida pelas cláusulas pétreas.' from public.questions q where q.public_code = 'PPCE-DC-000004';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Flexível pode ser alterada como uma lei comum.'),
  ('b', 'Incorreta. Semirrígida tem uma parte rígida e outra flexível.'),
  ('d', 'Incorreta. Imutável não admite alteração (não é o caso da CF/88).'),
  ('e', 'Incorreta. Termo não usual para esta classificação.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000004';

-- -----------------------------------------------------------------------------
-- QUESTÃO 05: Sentido Político (Schmitt)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000005', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Estado e Constituição', 'Conceito e Sentidos de Constituição', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Carl Schmitt defende que a Constituição é o resultado de uma "decisão política fundamental". Nessa teoria, as normas que não tratam da estrutura do Estado ou direitos fundamentais são chamadas de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Normas Programáticas.', 1),
  ('b', 'B', 'Leis Constitucionais.', 2),
  ('c', 'C', 'Bloco de Constitucionalidade.', 3),
  ('d', 'D', 'Normas de Eficácia Contida.', 4),
  ('e', 'E', 'Preâmbulo Constitucional.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000005';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000005' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Sentido Político.', 'Schmitt diferencia a Constituição (decisão política) das leis constitucionais (normas apenas formalmente inseridas no texto).', 'Pense em Carl Schmitt = Decisão Política.' from public.questions q where q.public_code = 'PPCE-DC-000005';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Normas programáticas são as que definem objetivos ao Estado.'),
  ('c', 'Incorreta. Conceito moderno sobre normas que expandem o texto escrito.'),
  ('d', 'Incorreta. Classificação de José Afonso da Silva sobre aplicabilidade.'),
  ('e', 'Incorreta. O preâmbulo não é norma jurídica propriamente dita segundo o STF.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000005';

-- -----------------------------------------------------------------------------
-- QUESTÃO 06: Elementos Orgânicos
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000006', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Estado e Constituição', 'Elementos da Constituição', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'As normas que regulam a organização do Estado, o sistema de governo e a repartição de competências entre os entes federados pertencem a qual grupo de elementos da Constituição?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Elementos Limitativos.', 1),
  ('b', 'B', 'Elementos Orgânicos.', 2),
  ('c', 'C', 'Elementos Socioideológicos.', 3),
  ('d', 'D', 'Elementos de Estabilização.', 4),
  ('e', 'E', 'Elementos Formais de Aplicabilidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000006';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000006' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Elementos Orgânicos.', 'São as normas de estrutura. Organizam o corpo (órgãos) do Estado.', 'Dica: Orgânico vem de Órgão/Estrutura.' from public.questions q where q.public_code = 'PPCE-DC-000006';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Estes limitam o poder (Direitos Fundamentais).'),
  ('c', 'Incorreta. Revelam a ideologia do Estado (Ordem Social/Econômica).'),
  ('d', 'Incorreta. Visam proteger a Constituição (ADIN, Estado de Sítio).'),
  ('e', 'Incorreta. Regras de transição (ADCT).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000006';

-- -----------------------------------------------------------------------------
-- QUESTÃO 07: Poder Constituinte Originário
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000007', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Estado e Constituição', 'Poder Constituinte', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Dentre as características do Poder Constituinte Originário, destaca-se o fato de ele não estar sujeito a qualquer condição ou rito preestabelecido. Esta característica é denominada:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ilimitado juridicamente.', 1),
  ('b', 'B', 'Incondicionado.', 2),
  ('c', 'C', 'Permanente.', 3),
  ('d', 'D', 'Autônomo.', 4),
  ('e', 'E', 'Inicial.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000007';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000007' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Poder Incondicionado.', 'Significa que ele não segue regras de forma ou procedimento fixadas por ordens anteriores.', 'Diferente do Poder Derivado Reformador.' from public.questions q where q.public_code = 'PPCE-DC-000007';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Refere-se à ausência de limites de conteúdo/direito.'),
  ('c', 'Incorreta. Ele não se esgota com a criação da Constituição.'),
  ('d', 'Incorreta. Pode definir sua própria estrutura sem influências externas.'),
  ('e', 'Incorreta. É o poder que inicia uma nova ordem jurídica.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000007';

-- -----------------------------------------------------------------------------
-- QUESTÃO 08: Classificação quanto à Extensão (Analítica)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000008', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Estado e Constituição', 'Classificação das Constituições', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A Constituição Brasileira de 1988 é classificada como analítica (ou prolixa) por qual dos seguintes motivos?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Por conter apenas princípios e normas gerais.', 1),
  ('b', 'B', 'Por ser fruto de um longo período de elaboração histórica.', 2),
  ('c', 'C', 'Por tratar detalhadamente de diversos temas além da estrutura do Estado.', 3),
  ('d', 'D', 'Por ser imutável em seus pontos fundamentais.', 4),
  ('e', 'E', 'Por ter sido outorgada por uma junta militar.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000008';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000008' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Constituição Analítica.', 'A CF/88 é extensa (prolixa) pois detalha temas como saúde, educação, índios, etc.', 'Oposto de Sintética (ex: EUA).' from public.questions q where q.public_code = 'PPCE-DC-000008';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Esta seria a descrição de uma constituição SINTÉTICA.'),
  ('b', 'Incorreta. Classificação quanto ao modo de elaboração (Histórica).'),
  ('d', 'Incorreta. Refere-se à estabilidade imutável.'),
  ('e', 'Incorreta. Refere-se à origem (a CF/88 foi promulgada).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000008';

-- -----------------------------------------------------------------------------
-- QUESTÃO 09: Sentido Culturalista
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000009', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Estado e Constituição', 'Conceito e Sentidos de Constituição', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A concepção que entende a Constituição como um "objeto da cultura", influenciada por fatores sociológicos, políticos e jurídicos simultaneamente, é o:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sentido Jurídico de Kelsen.', 1),
  ('b', 'B', 'Sentido Culturalista de Meirelles Teixeira.', 2),
  ('c', 'C', 'Sentido Sociológico de Lassalle.', 3),
  ('d', 'D', 'Sentido Político de Carl Schmitt.', 4),
  ('e', 'E', 'Sentido Econômico de Marx.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000009';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000009' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Sentido Culturalista.', 'A Constituição é vista como um fato da cultura, uma síntese totalizadora.', 'Meirelles Teixeira é o principal nome.' from public.questions q where q.public_code = 'PPCE-DC-000009';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Foca apenas na norma (Dever-ser).'),
  ('c', 'Incorreta. Foca apenas nos fatores reais de poder.'),
  ('d', 'Incorreta. Foca apenas na decisão política.'),
  ('e', 'Incorreta. Visão baseada na infraestrutura econômica.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000009';

-- -----------------------------------------------------------------------------
-- QUESTÃO 10: Supremacia Formal
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000010', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Estado e Constituição', 'Supremacia da Constituição', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A supremacia formal da Constituição, típica de constituições rígidas, implica que:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Apenas as normas de conteúdo materialmente constitucional são supremas.', 1),
  ('b', 'B', 'Todas as normas presentes no texto constitucional são supremas devido à forma de sua elaboração.', 2),
  ('c', 'C', 'A Constituição pode ser alterada livremente por lei ordinária.', 3),
  ('d', 'D', 'O Judiciário não pode realizar o controle de constitucionalidade.', 4),
  ('e', 'E', 'As leis internacionais possuem hierarquia superior à Constituição.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000010';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000010' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Supremacia Formal.', 'A supremacia formal decorre da rigidez constitucional, onde todas as normas do texto são supremas pelo rito de criação.', 'Diferente da supremacia material (apenas conteúdo constitucional).' from public.questions q where q.public_code = 'PPCE-DC-000010';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)

select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Supremacia formal não exige que a norma seja materialmente constitucional.'),
  ('c', 'Incorreta. Se pudesse ser alterada por lei ordinária, a constituição seria flexível.'),
  ('d', 'Incorreta. A supremacia exige justamente um mecanismo de controle (Judiciário).'),
  ('e', 'Incorreta. No Brasil, o Bloco de Constitucionalidade não coloca normas internacionais acima da CF.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000010';

-- -----------------------------------------------------------------------------
-- QUESTÃO 11: Poder Constituinte Derivado Decorrente
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000011', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Estado e Constituição', 'Poder Constituinte', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A capacidade que os Estados-membros possuem de elaborar suas próprias Constituições, observando os princípios estabelecidos na Constituição Federal, é decorrente de qual poder?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Poder Constituinte Originário.', 1),
  ('b', 'B', 'Poder Constituinte Derivado Reformador.', 2),
  ('c', 'C', 'Poder Constituinte Derivado Decorrente.', 3),
  ('d', 'D', 'Poder Constituinte Derivado Revisor.', 4),
  ('e', 'E', 'Poder Constituinte Difuso.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000011';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000011' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Poder Decorrente.', 'O Poder Constituinte Decorrente é aquele que confere aos Estados a capacidade de se auto-organizar via Constituição Estadual.', 'Lembre-se: Estados possuem Poder Constituinte Decorrente.' from public.questions q where q.public_code = 'PPCE-DC-000011';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Este é o poder de criar a Constituição Federal.'),
  ('b', 'Incorreta. Serve para emendar a Constituição Federal (PEC).'),
  ('d', 'Incorreta. Serve para revisar a Constituição (já exaurido).'),
  ('e', 'Incorreta. É a mutação informal da Constituição.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000011';

-- -----------------------------------------------------------------------------
-- QUESTÃO 12: Classificação quanto à Alterabilidade (Rígida)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000012', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Estado e Constituição', 'Classificação das Constituições', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Quanto à alterabilidade, a Constituição Federal de 1988 é classificada como:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Imutável.', 1),
  ('b', 'B', 'Flexível.', 2),
  ('c', 'C', 'Semirrígida.', 3),
  ('d', 'D', 'Rígida.', 4),
  ('e', 'E', 'Super-rígida.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000012';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000012' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Classificação Rígida.', 'A Constituição é Rígida porque o processo de reforma é mais difícil do que o de alteração de leis comuns.', 'Apesar do termo "Super-rígida" usado por alguns, a classificação doutrinária majoritária para provas é Rígida.' from public.questions q where q.public_code = 'PPCE-DC-000012';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. A CF admite emendas.'),
  ('b', 'Incorreta. Flexível é alterada como lei comum.'),
  ('c', 'Incorreta. Semirrígida tem uma parte rígida e outra flexível (não é o nosso caso).'),
  ('e', 'Incorreta. Termo doutrinário de Alexandre de Moraes, mas a base é Rígida.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000012';

-- -----------------------------------------------------------------------------
-- QUESTÃO 13: Eficácia das Normas (Contida)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000013', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Estado e Constituição', 'Aplicabilidade das Normas Constitucionais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A norma constitucional que possui aplicabilidade imediata e integral, mas que pode ter seu alcance reduzido por legislação infraconstitucional, é classificada como de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Eficácia Plena.', 1),
  ('b', 'B', 'Eficácia Contida.', 2),
  ('c', 'C', 'Eficácia Limitada.', 3),
  ('d', 'D', 'Eficácia Exaurida.', 4),
  ('e', 'E', 'Eficácia Programática.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000013';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000013' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Eficácia Contida.', 'Ela nasce grande, mas pode ser "contida" por lei posterior.', 'Exemplo clássico: Livre exercício de qualquer trabalho, ofício ou profissão (Art. 5º, XIII).' from public.questions q where q.public_code = 'PPCE-DC-000013';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Plena produz todos os efeitos e não pode ser restringida.'),
  ('c', 'Incorreta. Limitada precisa de lei para produzir efeitos.'),
  ('d', 'Incorreta. Não é classificação clássica de José Afonso da Silva.'),
  ('e', 'Incorreta. É subespécie de eficácia limitada.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000013';

-- -----------------------------------------------------------------------------
-- QUESTÃO 14: Poder Constituinte Reformador
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000014', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Estado e Constituição', 'Poder Constituinte', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Poder Constituinte Derivado Reformador possui limites. Qual dos seguintes NÃO é um limite imposto ao poder de reforma?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Limites circunstanciais (ex: estado de sítio).', 1),
  ('b', 'B', 'Limites materiais (cláusulas pétreas).', 2),
  ('c', 'C', 'Limites formais (rito do art. 60).', 3),
  ('d', 'D', 'Limites temporais (prazo para revisão).', 4),
  ('e', 'E', 'Limites autodeterminados pelo constituinte originário.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000014';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000014' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Limites ao Poder Reformador.', 'A CF/88 não possui limites temporais para o poder reformador (podemos emendar a qualquer tempo).', 'Atenção: A revisão do art. 3º do ADCT tinha limite temporal, mas o poder reformador não.' from public.questions q where q.public_code = 'PPCE-DC-000014';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. É um limite real (art. 60, § 1º).'),
  ('b', 'Incorreta. É um limite real (art. 60, § 4º).'),
  ('c', 'Incorreta. É um limite real (art. 60, § 2º).'),
  ('e', 'Incorreta. O constituinte originário definiu todos os limites.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000014';

-- -----------------------------------------------------------------------------
-- QUESTÃO 15: Sentido Sociológico (Lassalle)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000015', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Estado e Constituição', 'Conceito e Sentidos de Constituição', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Para Ferdinand Lassalle, a verdadeira Constituição de um país reside nos fatores reais de poder. A constituição escrita, que não reflete essa realidade, é chamada por ele de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Folha de papel.', 1),
  ('b', 'B', 'Constituição material.', 2),
  ('c', 'C', 'Decisão política.', 3),
  ('d', 'D', 'Norma hipotética fundamental.', 4),
  ('e', 'E', 'Constituição em sentido jurídico.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000015';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000015' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Sentido Sociológico.', 'Lassalle afirmava que se a constituição não representasse os fatores reais de poder, não passava de uma "folha de papel".', 'Fatores reais de poder = Lassalle.' from public.questions q where q.public_code = 'PPCE-DC-000015';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Definição do sentido jurídico/formal.'),
  ('c', 'Incorreta. Definição do sentido político de Schmitt.'),
  ('d', 'Incorreta. Não é a definição de Lassalle.'),
  ('e', 'Incorreta. Conceito de Kelsen (normativismo).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000015';

-- -----------------------------------------------------------------------------
-- QUESTÃO 16: Direito à Vida e Inviolabilidade do Domicílio
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000016', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Segundo a Constituição Federal de 1988, a casa é asilo inviolável do indivíduo, ninguém nela podendo penetrar sem consentimento do morador, salvo:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A qualquer hora, por determinação judicial.', 1),
  ('b', 'B', 'Apenas durante a noite, em caso de flagrante delito.', 2),
  ('c', 'C', 'Em caso de desastre, ou para prestar socorro, ou, durante o dia, por determinação judicial.', 3),
  ('d', 'D', 'Durante o dia, em caso de emergência administrativa.', 4),
  ('e', 'E', 'A qualquer hora, para cumprimento de mandado de prisão.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000016';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000016' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Inviolabilidade do Domicílio.', 'A CF permite a entrada sem consentimento em 4 casos: flagrante, desastre, socorro (a qualquer hora) e determinação judicial (APENAS DURANTE O DIA).', 'Lembre-se: Ordem judicial = Dia.' from public.questions q where q.public_code = 'PPCE-DC-000016';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Ordem judicial exige que seja durante o dia.'),
  ('b', 'Incorreta. Flagrante pode ser a qualquer hora.'),
  ('d', 'Incorreta. "Emergência administrativa" não é termo constitucional para esta exceção.'),
  ('e', 'Incorreta. Mandado (ordem judicial) exige que seja durante o dia.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000016';

-- -----------------------------------------------------------------------------
-- QUESTÃO 17: Liberdade de Expressão
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000017', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'É livre a manifestação do pensamento, sendo:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Permitido o anonimato em casos de crítica política.', 1),
  ('b', 'B', 'Vedado o anonimato.', 2),
  ('c', 'C', 'Livre o anonimato para proteção da fonte.', 3),
  ('d', 'D', 'Obrigatória a identificação apenas em processos judiciais.', 4),
  ('e', 'E', 'Vedada a manifestação sobre temas religiosos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000017';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000017' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Liberdade de Expressão.', 'O Art. 5º, IV garante a livre manifestação, mas proíbe o anonimato para permitir o direito de resposta e indenização.', 'Regra de ouro: Pensamento livre, cara limpa.' from public.questions q where q.public_code = 'PPCE-DC-000017';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O anonimato é vedado de forma absoluta na manifestação do pensamento.'),
  ('c', 'Incorreta. O sigilo da fonte é outra garantia (V), mas não autoriza o anonimato na manifestação do pensamento.'),
  ('d', 'Incorreta. A vedação ao anonimato é geral.'),
  ('e', 'Incorreta. A liberdade religiosa também é garantida.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000017';

-- -----------------------------------------------------------------------------
-- QUESTÃO 18: Direito de Reunião
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000018', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Todos podem reunir-se pacificamente, sem armas, em locais abertos ao público, independentemente de autorização, desde que não frustrem outra reunião anteriormente convocada para o mesmo local, sendo apenas exigido:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Prévio aviso à autoridade competente.', 1),
  ('b', 'B', 'Pagamento de taxa de ocupação.', 2),
  ('c', 'C', 'Autorização judicial prévia.', 3),
  ('d', 'D', 'Presença de força policial para garantir a ordem.', 4),
  ('e', 'E', 'Cadastro de todos os participantes.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000018';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000018' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direito de Reunião.', 'A CF exige apenas o PRÉVIO AVISO (não autorização). O STF entende que esse aviso pode ser suprido por outros meios de publicidade.', 'Cuidado: Reunião = Aviso. Associação = Independe de tudo.' from public.questions q where q.public_code = 'PPCE-DC-000018';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Não há previsão de taxa constitucional para o exercício deste direito.'),
  ('c', 'Incorreta. Independe de qualquer autorização (judicial ou administrativa).'),
  ('d', 'Incorreta. Embora o Estado deva garantir a segurança, a presença policial não é requisito de validade da reunião.'),
  ('e', 'Incorreta. Exigência descabida que feriria a liberdade de reunião.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000018';

-- -----------------------------------------------------------------------------
-- QUESTÃO 19: Direito de Associação
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000019', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Sobre a liberdade de associação, assinale a alternativa correta:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'As associações só podem ser compulsoriamente dissolvidas por decisão administrativa.', 1),
  ('b', 'B', 'A criação de associações depende de autorização do Estado.', 2),
  ('c', 'C', 'Ninguém poderá ser compelido a associar-se ou a permanecer associado.', 3),
  ('d', 'D', 'É permitida a criação de associações de caráter paramilitar.', 4),
  ('e', 'E', 'As associações podem ter suas atividades suspensas por decisão do Ministério Público.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000019';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000019' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direito de Associação.', 'A liberdade de associação inclui o direito de não se associar (liberdade negativa).', 'Para dissolver = Trânsito em julgado. Para suspender = Decisão judicial.' from public.questions q where q.public_code = 'PPCE-DC-000019';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Dissolução compulsória exige decisão judicial com trânsito em julgado.'),
  ('b', 'Incorreta. A criação independe de autorização.'),
  ('d', 'Incorreta. É vedada a associação de caráter paramilitar.'),
  ('e', 'Incorreta. Suspensão exige decisão judicial.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000019';

-- -----------------------------------------------------------------------------
-- QUESTÃO 20: Princípios do Direito Penal (Legalidade)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000020', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Não há crime sem lei anterior que o defina, nem pena sem prévia cominação legal. Este enunciado refere-se ao princípio da:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Individualização da pena.', 1),
  ('b', 'B', 'Irretroatividade da lei penal.', 2),
  ('c', 'C', 'Legalidade e anterioridade.', 3),
  ('d', 'D', 'Intransmissibilidade da pena.', 4),
  ('e', 'E', 'Proporcionalidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000020';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000020' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Princípio da Legalidade.', 'O Art. 5º, XXXIX traz a reserva legal e a anterioridade: a lei deve ser anterior ao fato.', 'Base do Direito Penal Garantista.' from public.questions q where q.public_code = 'PPCE-DC-000020';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Refere-se à adaptação da pena ao caso concreto.'),
  ('b', 'Incorreta. A irretroatividade é consequência, mas o enunciado define a legalidade.'),
  ('d', 'Incorreta. Refere-se ao fato de a pena não passar da pessoa do condenado.'),
  ('e', 'Incorreta. Princípio geral que orienta a medida da pena.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000020';

-- -----------------------------------------------------------------------------
-- QUESTÃO 21: Retroatividade da Lei Penal
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000021', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A lei penal não retroagirá, salvo:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Para punir crimes hediondos.', 1),
  ('b', 'B', 'Em casos de clamor público.', 2),
  ('c', 'C', 'Para beneficiar o réu.', 3),
  ('d', 'D', 'Por determinação expressa do Presidente da República.', 4),
  ('e', 'E', 'Em períodos de estado de sítio.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000021';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000021' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Retroatividade In Mellius.', 'A regra é a irretroatividade. A única exceção constitucional é para beneficiar o réu (Art. 5º, XL).', 'Regra absoluta: SÓ PARA BENEFICIAR.' from public.questions q where q.public_code = 'PPCE-DC-000021';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Crimes hediondos seguem a mesma regra geral.'),
  ('b', 'Incorreta. Clamor público não autoriza retroatividade maléfica.'),
  ('d', 'Incorreta. O Executivo não tem poder sobre a retroatividade penal.'),
  ('e', 'Incorreta. Mesmo em regimes de exceção, a garantia do réu permanece.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000021';

-- -----------------------------------------------------------------------------
-- QUESTÃO 22: Racismo e Crimes Inafiançáveis
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000022', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A prática do racismo constitui crime:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Inafiançável e prescritível.', 1),
  ('b', 'B', 'Inafiançável e imprescritível, sujeito à pena de reclusão.', 2),
  ('c', 'C', 'Afiançável, mediante pagamento de fiança elevada.', 3),
  ('d', 'D', 'Sujeito apenas a penas restritivas de direitos.', 4),
  ('e', 'E', 'Inafiançável e insuscetível de graça ou anistia.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000022';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000022' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Racismo (Art. 5º, XLII).', 'O racismo é INAFIANÇÁVEL e IMPRESCRITÍVEL. Sujeito a RECLUSÃO.', 'Cuidado para não confundir com o grupo TTT+H (Tortura, Tráfico, Terrorismo e Hediondos).' from public.questions q where q.public_code = 'PPCE-DC-000022';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Ele é imprescritível (pode ser punido a qualquer tempo).'),
  ('c', 'Incorreta. Nenhuma fiança é permitida.'),
  ('d', 'Incorreta. A CF exige reclusão.'),
  ('e', 'Incorreta. Esta é a característica dos crimes hediondos e equiparados (embora o racismo também seja inafiançável).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000022';

-- -----------------------------------------------------------------------------
-- QUESTÃO 23: Crimes Insuscetíveis de Graça ou Anistia
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000023', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A lei considerará crimes inafiançáveis e insuscetíveis de graça ou anistia a prática da tortura, o tráfico ilícito de entorpecentes e drogas afins, o terrorismo e os definidos como crimes hediondos, por eles respondendo:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Apenas os executores.', 1),
  ('b', 'B', 'Os mandantes e os executores, mas não os que se omitirem.', 2),
  ('c', 'C', 'Os mandantes, os executores e os que, podendo evitá-los, se omitirem.', 3),
  ('d', 'D', 'Somente os agentes públicos envolvidos.', 4),
  ('e', 'E', 'Apenas em caso de reincidência.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000023';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000023' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Crimes Equiparados a Hediondos.', 'A responsabilidade abrange mandantes, executores e os OMISSOS que podiam evitar (Art. 5º, XLIII).', 'Dica: Mandantes + Executores + Omissos.' from public.questions q where q.public_code = 'PPCE-DC-000023';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Mandantes e omissos também respondem.'),
  ('b', 'Incorreta. Os omissos respondem conforme o texto constitucional.'),
  ('d', 'Incorreta. Particulares também podem cometer esses crimes.'),
  ('e', 'Incorreta. A regra vale desde a primeira infração.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000023';

-- -----------------------------------------------------------------------------
-- QUESTÃO 24: Intransmissibilidade da Pena
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000024', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Nenhuma pena passará da pessoa do condenado, podendo a obrigação de reparar o dano e a decretação do perdimento de bens ser, nos termos da lei, estendidas aos sucessores e contra eles executadas, até:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O limite do valor do patrimônio transferido.', 1),
  ('b', 'B', 'O total da dívida, independentemente da herança.', 2),
  ('c', 'C', 'O dobro do valor do dano causado.', 3),
  ('d', 'D', 'O falecimento dos sucessores.', 4),
  ('e', 'E', 'O montante de 50 salários mínimos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000024';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000024' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Personalidade da Pena.', 'A pena não passa do condenado. Multas e reparações podem passar, mas limitadas ao valor da herança (Art. 5º, XLV).', 'Herdeiro não paga com dinheiro próprio a dívida do morto além do que recebeu.' from public.questions q where q.public_code = 'PPCE-DC-000024';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Seria injusto e inconstitucional (confisco).'),
  ('c', 'Incorreta. Não há previsão de dobra neste caso.'),
  ('d', 'Incorreta. A obrigação é patrimonial e limitada à herança.'),
  ('e', 'Incorreta. Não há limite fixo em salários mínimos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000024';

-- -----------------------------------------------------------------------------
-- QUESTÃO 25: Penas Proibidas
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000025', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Não haverá penas de morte, salvo em caso de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Crimes hediondos de extrema gravidade.', 1),
  ('b', 'B', 'Guerra declarada, nos termos do art. 84, XIX.', 2),
  ('c', 'C', 'Terrorismo que cause múltiplas vítimas.', 3),
  ('d', 'D', 'Genocídio comprovado.', 4),
  ('e', 'E', 'Traição à pátria em tempo de paz.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000025';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000025' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Penas Proibidas (Art. 5º, XLVII).', 'O Brasil proíbe a pena de morte como regra, abrindo exceção apenas para GUERRA DECLARADA.', 'Outras penas proibidas: caráter perpétuo, trabalhos forçados, banimento e cruéis.' from public.questions q where q.public_code = 'PPCE-DC-000025';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Hediondos não permitem pena de morte.'),
  ('c', 'Incorreta. Terrorismo não permite pena de morte.'),
  ('d', 'Incorreta. Genocídio não permite pena de morte no Brasil.'),
  ('e', 'Incorreta. Só em tempo de GUERRA.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000025';

-- -----------------------------------------------------------------------------
-- QUESTÃO 26: Habeas Corpus
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000026', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Remédios Constitucionais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Conceder-se-á habeas corpus sempre que alguém sofrer ou se achar ameaçado de sofrer violência ou coação em sua liberdade de locomoção, por:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Falta de norma regulamentadora.', 1),
  ('b', 'B', 'Ilegalidade ou abuso de poder.', 2),
  ('c', 'C', 'Erro administrativo no cálculo da pena.', 3),
  ('d', 'D', 'Necessidade de conhecer informações pessoais.', 4),
  ('e', 'E', 'Dano moral sofrido em ambiente de trabalho.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000026';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000026' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Habeas Corpus (Art. 5º, LXVIII).', 'Protege a LIBERDADE DE LOCOMOÇÃO contra ilegalidade ou abuso de poder.', 'É gratuito e não exige advogado (em regra).' from public.questions q where q.public_code = 'PPCE-DC-000026';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Este é o caso de Mandado de Injunção.'),
  ('c', 'Incorreta. Erro de cálculo pode ser corrigido por HC se afetar a liberdade, mas a base constitucional é ilegalidade/abuso.'),
  ('d', 'Incorreta. Este é o caso de Habeas Data.'),
  ('e', 'Incorreta. HC não serve para questões meramente patrimoniais ou morais.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000026';

-- -----------------------------------------------------------------------------
-- QUESTÃO 27: Mandado de Segurança
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000027', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Remédios Constitucionais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O mandado de segurança será concedido para proteger:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Direito à liberdade de locomoção.', 1),
  ('b', 'B', 'Direito ao acesso a dados pessoais.', 2),
  ('c', 'C', 'Direito líquido e certo, não amparado por habeas corpus ou habeas data.', 3),
  ('d', 'D', 'Interesses difusos de toda a coletividade.', 4),
  ('e', 'E', 'A soberania nacional em caso de guerra.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000027';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000027' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Mandado de Segurança (Art. 5º, LXIX).', 'Protege direito LÍQUIDO E CERTO (com prova pré-constituída) quando não couber HC ou HD.', 'É remédio residual (subsidiário).' from public.questions q where q.public_code = 'PPCE-DC-000027';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Amparado por Habeas Corpus.'),
  ('b', 'Incorreta. Amparado por Habeas Data.'),
  ('d', 'Incorreta. Típico de Ação Civil Pública ou Ação Popular.'),
  ('e', 'Incorreta. MS não tem essa finalidade específica.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000027';

-- -----------------------------------------------------------------------------
-- QUESTÃO 28: Habeas Data
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000028', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Remédios Constitucionais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Conceder-se-á habeas data para:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Assegurar o conhecimento de informações relativas à pessoa do impetrante.', 1),
  ('b', 'B', 'Obter certidões em repartições públicas para defesa de direitos.', 2),
  ('c', 'C', 'Anular ato lesivo ao patrimônio público.', 3),
  ('d', 'D', 'Suprir a falta de norma regulamentadora que torne inviável o exercício de direitos.', 4),
  ('e', 'E', 'Conhecer dados sigilosos de terceiros em investigação policial.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000028';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000028' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Habeas Data (Art. 5º, LXXII).', 'Serve para CONHECER ou RETIFICAR dados da própria pessoa (caráter personalíssimo).', 'Exige prova da recusa administrativa.' from public.questions q where q.public_code = 'PPCE-DC-000028';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O direito a certidões é garantido, mas não por HD (cabe MS se houver recusa).'),
  ('c', 'Incorreta. Este é o caso de Ação Popular.'),
  ('d', 'Incorreta. Este é o caso de Mandado de Injunção.'),
  ('e', 'Incorreta. HD é personalíssimo (só para os próprios dados).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000028';

-- -----------------------------------------------------------------------------
-- QUESTÃO 29: Mandado de Injunção
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000029', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Remédios Constitucionais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O mandado de injunção será concedido sempre que a falta de norma regulamentadora torne inviável o exercício dos direitos e liberdades constitucionais e das prerrogativas inerentes a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Soberania, cidadania e dignidade humana.', 1),
  ('b', 'B', 'Nacionalidade, soberania e cidadania.', 2),
  ('c', 'C', 'Livre iniciativa e valores sociais do trabalho.', 3),
  ('d', 'D', 'Saúde, educação e segurança pública.', 4),
  ('e', 'E', 'Moralidade administrativa e eficiência.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000029';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000029' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Mandado de Injunção (Art. 5º, LXXI).', 'Combate a omissão legislativa quanto a direitos de NACIONALIDADE, SOBERANIA e CIDADANIA.', 'Palavra-chave: Omissão Legislativa.' from public.questions q where q.public_code = 'PPCE-DC-000029';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Dignidade humana é fundamento, mas o texto do MI foca em nacionalidade/soberania/cidadania.'),
  ('c', 'Incorreta. São fundamentos do art. 1º.'),
  ('d', 'Incorreta. São direitos sociais.'),
  ('e', 'Incorreta. São princípios da Administração Pública.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000029';

-- -----------------------------------------------------------------------------
-- QUESTÃO 30: Ação Popular
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000030', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Remédios Constitucionais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Qualquer cidadão é parte legítima para propor ação popular que vise a anular ato lesivo ao:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Direito de propriedade privada.', 1),
  ('b', 'B', 'Interesse de empresas multinacionais.', 2),
  ('c', 'C', 'Patrimônio público ou de entidade de que o Estado participe.', 3),
  ('d', 'D', 'Sigilo bancário de autoridades.', 4),
  ('e', 'E', 'Direito de greve dos servidores públicos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000030';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000030' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Ação Popular (Art. 5º, LXXIII).', 'Visa anular ato lesivo ao patrimônio público, moralidade, meio ambiente e patrimônio histórico/cultural.', 'Apenas o CIDADÃO (eleitor) pode propor.' from public.questions q where q.public_code = 'PPCE-DC-000030';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. AP foca no patrimônio coletivo/público.'),
  ('b', 'Incorreta. Foge da finalidade de proteção do bem público.'),
  ('d', 'Incorreta. Não é objeto de Ação Popular.'),
  ('e', 'Incorreta. Proteção de direitos trabalhistas/sindicais tem ritos próprios.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000030';

-- NOVAS QUESTOES AQUI EM BAIXO 

-- -----------------------------------------------------------------------------
-- QUESTÃO 31: Direitos Sociais (Art. 6º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000031', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Sociais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São direitos sociais previstos no Art. 6º da Constituição Federal, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Educação e saúde.', 1),
  ('b', 'B', 'Trabalho e moradia.', 2),
  ('c', 'C', 'Lazer e segurança.', 3),
  ('d', 'D', 'Propriedade privada.', 4),
  ('e', 'E', 'Proteção à maternidade e à infância.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000031';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000031' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direitos Sociais (Art. 6º).', 'A propriedade privada é um direito INDIVIDUAL (Art. 5º, XXII), não um direito SOCIAL.', 'Dica: Edu mora lá, saú trabalha ali, asis pro pama seg pré.' from public.questions q where q.public_code = 'PPCE-DC-000031';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Educação e saúde são direitos sociais.'),
  ('b', 'Incorreta. Trabalho e moradia são direitos sociais.'),
  ('c', 'Incorreta. Lazer e segurança são direitos sociais.'),
  ('e', 'Incorreta. Proteção à maternidade e à infância são direitos sociais.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000031';

-- -----------------------------------------------------------------------------
-- QUESTÃO 32: Direitos dos Trabalhadores (FGTS e Seguro-Desemprego)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000032', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Sociais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São direitos dos trabalhadores urbanos e rurais, além de outros que visem à melhoria de sua condição social:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Seguro-desemprego, apenas em caso de pedido de demissão.', 1),
  ('b', 'B', 'Fundo de garantia do tempo de serviço (FGTS).', 2),
  ('c', 'C', 'Salário mínimo fixado por cada Estado-membro.', 3),
  ('d', 'D', 'Jornada de trabalho de 48 horas semanais.', 4),
  ('e', 'E', 'Licença à gestante, sem prejuízo do emprego, com a duração de 90 dias.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000032';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000032' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direitos dos Trabalhadores (Art. 7º).', 'O FGTS é um direito constitucional garantido a todos os trabalhadores urbanos e rurais (Art. 7º, III).', 'Memorize os incisos do Art. 7º, são muito cobrados.' from public.questions q where q.public_code = 'PPCE-DC-000032';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Seguro-desemprego é em caso de desemprego involuntário.'),
  ('c', 'Incorreta. Salário mínimo é nacionalmente unificado.'),
  ('d', 'Incorreta. A jornada padrão é de 44 horas semanais.'),
  ('e', 'Incorreta. A licença gestante é de 120 dias.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000032';

-- -----------------------------------------------------------------------------
-- QUESTÃO 33: Nacionalidade (Brasileiro Nato)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000033', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Nacionalidade', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São brasileiros natos os nascidos no estrangeiro, de pai brasileiro ou mãe brasileira, desde que:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sejam registrados em repartição brasileira competente.', 1),
  ('b', 'B', 'Venham a residir no Brasil antes dos 18 anos.', 2),
  ('c', 'C', 'Optem pela nacionalidade brasileira a qualquer tempo, após a maioridade, perante o consulado.', 3),
  ('d', 'D', 'Fale o idioma português fluentemente.', 4),
  ('e', 'E', 'Seus pais estejam a serviço de empresa privada estrangeira.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000033';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000033' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Brasileiro Nato (Art. 12, I, c).', 'O registro em repartição competente é uma das formas de garantir a nacionalidade nata para filhos de brasileiros nascidos no exterior.', 'Também podem vir residir no Brasil e optar pela nacionalidade após a maioridade.' from public.questions q where q.public_code = 'PPCE-DC-000033';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Não há limite de 18 anos para residir, mas a opção exige a maioridade.'),
  ('c', 'Incorreta. A opção deve ser feita perante a JUSTIÇA FEDERAL no Brasil, não no consulado (após a maioridade).'),
  ('d', 'Incorreta. Idioma não é critério para nacionalidade nata.'),
  ('e', 'Incorreta. Se estivessem a serviço da REPÚBLICA FEDERATIVA DO BRASIL, seriam natos pelo critério jus sanguinis direto.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000033';

-- -----------------------------------------------------------------------------
-- QUESTÃO 34: Cargos Privativos de Brasileiro Nato
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000034', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Nacionalidade', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São cargos privativos de brasileiro nato, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Presidente e Vice-Presidente da República.', 1),
  ('b', 'B', 'Presidente da Câmara dos Deputados.', 2),
  ('c', 'C', 'Presidente do Senado Federal.', 3),
  ('d', 'D', 'Ministro da Justiça.', 4),
  ('e', 'E', 'Ministro do Supremo Tribunal Federal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000034';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000034' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Cargos de Nato (Art. 12, § 3º).', 'O Ministro da Defesa é que deve ser nato, não o da Justiça. (MP3.COM: Ministros do STF, Presidente/Vice da Rep., Presidente da Câmara, Presidente do Senado, Carreira Diplomática, Oficial das Forças Armadas e Ministro da Defesa).', 'Dica: MP3.COM.' from public.questions q where q.public_code = 'PPCE-DC-000034';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Cargo privativo de nato.'),
  ('b', 'Incorreta. Cargo privativo de nato (sucessão presidencial).'),
  ('c', 'Incorreta. Cargo privativo de nato (sucessão presidencial).'),
  ('e', 'Incorreta. Cargo privativo de nato.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000034';

-- -----------------------------------------------------------------------------
-- QUESTÃO 35: Direitos Políticos (Capacidade Eleitoral)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000035', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Políticos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O alistamento eleitoral e o voto são facultativos para:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Os maiores de dezoito anos.', 1),
  ('b', 'B', 'Os analfabetos.', 2),
  ('c', 'C', 'Os estrangeiros durante o período de naturalização.', 3),
  ('d', 'D', 'Os conscritos durante o serviço militar obrigatório.', 4),
  ('e', 'E', 'Os militares da ativa.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000035';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000035' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Voto Facultativo (Art. 14, § 1º).', 'O voto é facultativo para analfabetos, maiores de 70 anos e jovens entre 16 e 18 anos.', 'Cuidado: Estrangeiros e conscritos são INELEGÍVEIS e não podem se alistar (Inalistáveis).' from public.questions q where q.public_code = 'PPCE-DC-000035';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Para maiores de 18 anos o voto é obrigatório.'),
  ('c', 'Incorreta. Estrangeiros não podem votar.'),
  ('d', 'Incorreta. Conscritos são inalistáveis.'),
  ('e', 'Incorreta. Militares da ativa podem votar, sendo obrigatório para os que possuem essa obrigação por idade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000035';

-- -----------------------------------------------------------------------------
-- QUESTÃO 36: Idade Mínima para Cargos Eletivos
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000036', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Políticos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A idade mínima de trinta e cinco anos é condição de elegibilidade para o cargo de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Governador de Estado.', 1),
  ('b', 'B', 'Senador.', 2),
  ('c', 'C', 'Deputado Federal.', 3),
  ('d', 'D', 'Prefeito.', 4),
  ('e', 'E', 'Juiz de Paz.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000036';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000036' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Condições de Elegibilidade (Art. 14, § 3º).', 'A idade de 35 anos é exigida para Presidente/Vice e Senador.', 'Dica: 35 (Senado/Presidente), 30 (Governador), 21 (Deputado/Prefeito/Juiz de Paz), 18 (Vereador).' from public.questions q where q.public_code = 'PPCE-DC-000036';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Idade mínima de 30 anos.'),
  ('c', 'Incorreta. Idade mínima de 21 anos.'),
  ('d', 'Incorreta. Idade mínima de 21 anos.'),
  ('e', 'Incorreta. Idade mínima de 21 anos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000036';

-- -----------------------------------------------------------------------------
-- QUESTÃO 37: Inelegibilidade Reflexa
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000037', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Políticos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'São inelegíveis, no território de jurisdição do titular, o cônjuge e os parentes consanguíneos ou afins, até o segundo grau ou por adoção, do Presidente da República, de Governador de Estado, de Prefeito ou de quem os haja substituído dentro dos seis meses anteriores ao pleito, salvo se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Já titular de mandato eletivo e candidato à reeleição.', 1),
  ('b', 'B', 'Renunciar ao parentesco por ato público.', 2),
  ('c', 'C', 'O titular do cargo falecer antes da eleição.', 3),
  ('d', 'D', 'Houver autorização do Tribunal Superior Eleitoral.', 4),
  ('e', 'E', 'Forem candidatos a cargos de diferentes esferas da federação.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000037';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000037' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Inelegibilidade Reflexa (Art. 14, § 7º).', 'A exceção ocorre quando o parente já possui mandato e concorre à reeleição.', 'Súmula Vinculante 18: A dissolução do vínculo conjugal no curso do mandato não afasta a inelegibilidade.' from public.questions q where q.public_code = 'PPCE-DC-000037';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Parentesco é fato jurídico inalterável para este fim.'),
  ('c', 'Incorreta. O falecimento não é a hipótese de exceção do texto.'),
  ('d', 'Incorreta. Não cabe ao TSE autorizar exceções ao texto constitucional.'),
  ('e', 'Incorreta. A regra foca no "território de jurisdição".')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000037';

-- -----------------------------------------------------------------------------
-- QUESTÃO 38: Perda e Suspensão de Direitos Políticos
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000038', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Políticos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'É vedada a cassação de direitos políticos, cuja perda ou suspensão só se dará nos casos de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Inadimplência tributária recorrente.', 1),
  ('b', 'B', 'Condenação criminal transitada em julgado, enquanto durarem seus efeitos.', 2),
  ('c', 'C', 'Oposição política ao governo eleito.', 3),
  ('d', 'D', 'Divórcio com cônjuge que ocupa cargo eletivo.', 4),
  ('e', 'E', 'Falta de pagamento de pensão alimentícia.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000038';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000038' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Suspensão de Direitos Políticos (Art. 15).', 'A condenação criminal transitada em julgado suspende os direitos políticos durante a execução da pena.', 'Também ocorre por improbidade administrativa e incapacidade civil absoluta.' from public.questions q where q.public_code = 'PPCE-DC-000038';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Não gera suspensão de direitos políticos.'),
  ('c', 'Incorreta. Seria perseguição política, vedada pela CF.'),
  ('d', 'Incorreta. Não afeta a capacidade eleitoral ativa ou passiva.'),
  ('e', 'Incorreta. Embora gere prisão civil, não suspende direitos políticos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000038';

-- -----------------------------------------------------------------------------
-- QUESTÃO 39: Partidos Políticos
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000039', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Partidos Políticos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'É livre a criação, fusão, incorporação e extinção de partidos políticos, resguardados a soberania nacional, o regime democrático, o pluripartidarismo, os direitos fundamentais da pessoa humana e observados os seguintes preceitos, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Caráter nacional.', 1),
  ('b', 'B', 'Proibição de recebimento de recursos financeiros de entidade ou governo estrangeiros.', 2),
  ('c', 'C', 'Prestação de contas à Justiça Eleitoral.', 3),
  ('d', 'D', 'Subordinação a entidades religiosas internacionais.', 4),
  ('e', 'E', 'Funcionamento parlamentar de acordo com a lei.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000039';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000039' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Partidos Políticos (Art. 17).', 'Os partidos não podem ser subordinados a entidades ou governos estrangeiros.', 'Lembre-se: Caráter Nacional, Sem grana gringa, Contas pro TSE.' from public.questions q where q.public_code = 'PPCE-DC-000039';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. É um preceito obrigatório.'),
  ('b', 'Incorreta. É um preceito obrigatório.'),
  ('c', 'Incorreta. É um preceito obrigatório.'),
  ('e', 'Incorreta. É um preceito obrigatório.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000039';

-- -----------------------------------------------------------------------------
-- QUESTÃO 40: Gratuidade de Atos (Registro Civil e Certidão de Óbito)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000040', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São gratuitos para os reconhecidamente pobres, na forma da lei:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O registro civil de nascimento e a certidão de óbito.', 1),
  ('b', 'B', 'O casamento civil e a averbação de divórcio.', 2),
  ('c', 'C', 'A escritura de compra e venda de imóvel.', 3),
  ('d', 'D', 'O passaporte e o visto de entrada.', 4),
  ('e', 'E', 'A carteira nacional de habilitação.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000040';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000040' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Gratuidade de Atos (Art. 5º, LXXVI).', 'A CF garante a gratuidade do registro de nascimento e certidão de óbito para os pobres.', 'HC e HD são gratuitos para TODOS. Estes são só para os POBRES.' from public.questions q where q.public_code = 'PPCE-DC-000040';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O casamento é gratuito em lei infraconstitucional, mas a CF foca no nascimento/óbito.'),
  ('c', 'Incorreta. Atos notariais de imóveis são pagos.'),
  ('d', 'Incorreta. Taxas de passaporte são devidas.'),
  ('e', 'Incorreta. Taxas do DETRAN são devidas.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000040';

-- -----------------------------------------------------------------------------
-- QUESTÃO 41: Organização Político-Administrativa
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000041', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização do Estado', 'Entes Federativos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A organização político-administrativa da República Federativa do Brasil compreende a União, os Estados, o Distrito Federal e os Municípios, todos:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Soberanos, nos termos desta Constituição.', 1),
  ('b', 'B', 'Autônomos, nos termos desta Constituição.', 2),
  ('c', 'C', 'Subordinados hierarquicamente à União.', 3),
  ('d', 'D', 'Independentes entre si, mas subordinados ao Distrito Federal.', 4),
  ('e', 'E', 'Dotados de soberania popular absoluta.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000041';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000041' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Organização do Estado (Art. 18).', 'No federalismo brasileiro, os entes são AUTÔNOMOS. A SOBERANIA pertence apenas à República Federativa do Brasil (o todo).', 'Autonomia = capacidade de auto-organização, autogoverno e autoadministração.' from public.questions q where q.public_code = 'PPCE-DC-000041';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Soberania é da RFB. Entes têm autonomia.'),
  ('c', 'Incorreta. Não há hierarquia entre os entes federados.'),
  ('d', 'Incorreta. O DF é um ente autônomo como os demais.'),
  ('e', 'Incorreta. Soberania é atributo do Estado unitário ou da federação como um todo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000041';

-- -----------------------------------------------------------------------------
-- QUESTÃO 42: Competência Privativa da União (Art. 22)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000042', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização do Estado', 'Competências', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Compete privativamente à União legislar sobre:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Direito civil, comercial, penal e processual.', 1),
  ('b', 'B', 'Educação, cultura, ensino e desporto.', 2),
  ('c', 'C', 'Proteção e integração social das pessoas portadoras de deficiência.', 3),
  ('d', 'D', 'Previdência social, proteção e defesa da saúde.', 4),
  ('e', 'E', 'Direito tributário, financeiro, penitenciário e urbanístico.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000042';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000042' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Competência Legislativa (Art. 22).', 'A União tem competência privativa para legislar sobre os ramos principais do direito (Capacetes: Civil, Agrário, Penal, Aeronáutico, Comercial, Eleitoral, Trabalho, Espacial, Sneck - Seguridade e Processual).', 'Dica: CAPACETE de PM (Processual e Marítimo).' from public.questions q where q.public_code = 'PPCE-DC-000042';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Competência CONCORRENTE (Art. 24).'),
  ('c', 'Incorreta. Competência CONCORRENTE (Art. 24).'),
  ('d', 'Incorreta. Competência CONCORRENTE (Art. 24).'),
  ('e', 'Incorreta. Competência CONCORRENTE (Art. 24) - PUFET (Penitenciário, Urbanístico, Financeiro, Econômico e Tributário).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000042';

-- -----------------------------------------------------------------------------
-- QUESTÃO 43: Bens da União (Art. 20)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000043', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização do Estado', 'Bens Públicos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São bens da União:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'As terras devolutas necessárias à defesa das fronteiras.', 1),
  ('b', 'B', 'Os rios que banham apenas um Município.', 2),
  ('c', 'C', 'As ilhas oceânicas que sejam sede de Municípios.', 3),
  ('d', 'D', 'As áreas urbanas desocupadas.', 4),
  ('e', 'E', 'Todos os minerais do subsolo pertencentes a particulares.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000043';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000043' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Bens da União (Art. 20).', 'Terras devolutas indispensáveis à defesa das fronteiras, fortificações, vias federais de comunicação e preservação ambiental são da União.', 'Rios que banham mais de um estado também são da União.' from public.questions q where q.public_code = 'PPCE-DC-000043';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Rios estritamente locais costumam ser do Estado ou Município conforme a situação.'),
  ('c', 'Incorreta. Ilhas sede de Municípios são excluídas dos bens da União (Art. 20, IV).'),
  ('d', 'Incorreta. Pertencem aos Municípios ou Estados.'),
  ('e', 'Incorreta. Minerais são da União, mas não "pertencentes a particulares".')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000043';

-- -----------------------------------------------------------------------------
-- QUESTÃO 44: Criação de Municípios (Art. 18, § 4º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000044', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização do Estado', 'Municípios', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A criação, a incorporação, a fusão e o desmembramento de Municípios far-se-ão por:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Decreto do Presidente da República.', 1),
  ('b', 'B', 'Lei Complementar Federal, independentemente de consulta.', 2),
  ('c', 'C', 'Lei Estadual, dentro do período determinado por Lei Complementar Federal.', 3),
  ('d', 'D', 'Resolução da Assembleia Legislativa aprovada por 2/3 dos membros.', 4),
  ('e', 'E', 'Plebiscito nacional obrigatório.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000044';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000044' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Criação de Municípios.', 'Exige: Lei Complementar Federal (período), Estudo de Viabilidade Municipal, Plebiscito (população envolvida) e Lei Estadual.', 'Rito complexo para evitar a fragmentação excessiva.' from public.questions q where q.public_code = 'PPCE-DC-000044';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Exige lei estadual e participação popular.'),
  ('b', 'Incorreta. A consulta popular (plebiscito) é indispensável.'),
  ('d', 'Incorreta. Deve ser por lei, não resolução.'),
  ('e', 'Incorreta. O plebiscito é apenas com as populações dos Municípios envolvidos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000044';

-- -----------------------------------------------------------------------------
-- QUESTÃO 45: Princípios da Administração Pública (LIMPE)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000045', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Princípios', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A administração pública direta e indireta de qualquer dos Poderes da União, dos Estados, do Distrito Federal e dos Municípios obedecerá aos princípios de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Legalidade, impessoalidade, moralidade, publicidade e eficiência.', 1),
  ('b', 'B', 'Legalidade, informalidade, moralidade, publicidade e eficácia.', 2),
  ('c', 'C', 'Legalidade, pessoalidade, imoralidade, sigilo e economia.', 3),
  ('d', 'D', 'Supremacia, autotutela, motivação, razoabilidade e proporção.', 4),
  ('e', 'E', 'Hierarquia, disciplina, lealdade, honestidade e fé pública.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000045';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000045' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Princípios da Administração (Art. 37, caput).', 'O mnemônico clássico é LIMPE: Legalidade, Impessoalidade, Moralidade, Publicidade e Eficiência.', 'Eficiência foi incluída pela EC 19/98.' from public.questions q where q.public_code = 'PPCE-DC-000045';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Informalidade e eficácia não constam no Art. 37.'),
  ('c', 'Incorreta. São antônimos dos princípios reais.'),
  ('d', 'Incorreta. São princípios administrativos, mas não os listados expressamente no caput do Art. 37.'),
  ('e', 'Incorreta. São deveres/valores, não o rol do LIMPE.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000045';

-- -----------------------------------------------------------------------------
-- QUESTÃO 46: Acesso a Cargos Públicos (Concurso)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000046', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Agentes Públicos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A investidura em cargo ou emprego público depende de aprovação prévia em concurso público de provas ou de provas e títulos, de acordo com a natureza e a complexidade do cargo ou emprego, na forma prevista em lei, ressalvadas:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'As nomeações para cargos em comissão declarados em lei de livre nomeação e exoneração.', 1),
  ('b', 'B', 'As contratações temporárias em ano eleitoral.', 2),
  ('c', 'C', 'As promoções por merecimento sem prova.', 3),
  ('d', 'D', 'As transferências entre órgãos da mesma esfera.', 4),
  ('e', 'E', 'As indicações políticas para cargos técnicos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000046';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000046' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Acesso a Cargos (Art. 37, II).', 'Cargos em comissão (ad nutum) não exigem concurso público.', 'Atenção: Destinam-se apenas às atribuições de direção, chefia e assessoramento.' from public.questions q where q.public_code = 'PPCE-DC-000046';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Contratação temporária exige lei específica e processo seletivo simplificado (Art. 37, IX).'),
  ('c', 'Incorreta. Promoção é forma de provimento derivado, não exceção ao concurso.'),
  ('d', 'Incorreta. Forma de provimento que não elide a necessidade de concurso para entrada na carreira.'),
  ('e', 'Incorreta. Indicações devem respeitar a lei e a finalidade do cargo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000046';

-- -----------------------------------------------------------------------------
-- QUESTÃO 47: Acumulação de Cargos (Art. 37, XVI)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000047', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Agentes Públicos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Ressalvada a compatibilidade de horários, a Constituição Federal permite a acumulação remunerada de dois cargos públicos de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Administrador público.', 1),
  ('b', 'B', 'Professor.', 2),
  ('c', 'C', 'Policial penal.', 3),
  ('d', 'D', 'Auxiliar administrativo.', 4),
  ('e', 'E', 'Motorista oficial.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000047';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000047' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Acumulação de Cargos.', 'É permitida a acumulação de: 2 de professor; 1 de professor com outro técnico ou científico; 2 de profissionais de saúde (regulamentados).', 'A regra é a NÃO acumulação.' from public.questions q where q.public_code = 'PPCE-DC-000047';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Não está no rol das exceções.'),
  ('c', 'Incorreta. Policiais, em regra, não podem acumular (exceto se o cargo for de natureza técnica/científica e compatível com docência).'),
  ('d', 'Incorreta. Cargos de nível médio sem natureza técnica não permitem acumulação.'),
  ('e', 'Incorreta. Não permite acumulação.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000047';

-- -----------------------------------------------------------------------------
-- QUESTÃO 48: Estabilidade do Servidor (Art. 41)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000048', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Agentes Públicos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São estáveis após três anos de efetivo exercício os servidores nomeados para cargo de provimento efetivo em virtude de concurso público. O servidor público estável só perderá o cargo:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Em virtude de sentença judicial, mesmo sem trânsito em julgado.', 1),
  ('b', 'B', 'Mediante processo administrativo em que lhe seja assegurada ampla defesa.', 2),
  ('c', 'C', 'Por decisão do chefe imediato motivada por insubordinação.', 3),
  ('d', 'D', 'Sempre que houver troca de gestão política.', 4),
  ('e', 'E', 'Caso não atinja as metas de produtividade da repartição no primeiro ano.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000048';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000048' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Estabilidade (Art. 41).', 'Perda do cargo: Sentença Judicial Transitada em Julgado; Processo Administrativo (PAD) com ampla defesa; Avaliação periódica de desempenho.', 'Lembre-se: Sentença exige trânsito em julgado.' from public.questions q where q.public_code = 'PPCE-DC-000048';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Exige o trânsito em julgado.'),
  ('c', 'Incorreta. Decisão isolada do chefe não demite estável sem PAD.'),
  ('d', 'Incorreta. Estabilidade serve justamente para proteger o Estado da política partidária.'),
  ('e', 'Incorreta. Avaliação de desempenho exige lei complementar e rito próprio.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000048';

-- -----------------------------------------------------------------------------
-- QUESTÃO 49: Responsabilidade Civil do Estado (Art. 37, § 6º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000049', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Disposições Gerais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'As pessoas jurídicas de direito público e as de direito privado prestadoras de serviços públicos responderão pelos danos que seus agentes, nessa qualidade, causarem a terceiros, assegurado o direito de regresso contra o responsável nos casos de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Culpa ou dolo.', 1),
  ('b', 'B', 'Imperícia apenas.', 2),
  ('c', 'C', 'Negligência comprovada por testemunhas.', 3),
  ('d', 'D', 'Qualquer tipo de dano, independente de intenção.', 4),
  ('e', 'E', 'Dolo apenas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000049';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000049' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Responsabilidade Civil.', 'O Estado responde OBJETIVAMENTE (sem culpa do agente). Mas tem direito de REGRESSO contra o agente se este agiu com DOLO ou CULPA.', 'Agente responde subjetivamente perante o Estado.' from public.questions q where q.public_code = 'PPCE-DC-000049';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Culpa abrange imperícia, mas o texto constitucional usa o gênero (culpa).'),
  ('c', 'Incorreta. Termo incompleto.'),
  ('d', 'Incorreta. O direito de regresso exige prova de elemento subjetivo do agente.'),
  ('e', 'Incorreta. Culpa também gera regresso.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000049';

-- -----------------------------------------------------------------------------
-- QUESTÃO 50: Segurança Pública (Órgãos)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000050', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Segurança Pública', 'Órgãos de Segurança', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Segundo o Art. 144 da CF/88, a segurança pública, dever do Estado, direito e responsabilidade de todos, é exercida para a preservação da ordem pública e da incolumidade das pessoas e do patrimônio, através dos seguintes órgãos, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Polícia federal.', 1),
  ('b', 'B', 'Polícia rodoviária federal.', 2),
  ('c', 'C', 'Polícias militares e corpos de bombeiros militares.', 3),
  ('d', 'D', 'Guardas municipais.', 4),
  ('e', 'E', 'Polícias penais federal, estaduais e distrital.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000050';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000050' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Órgãos de Segurança (Art. 144).', 'As Guardas Municipais NÃO são listadas nos incisos do Art. 144 (que traz o rol dos órgãos de segurança), embora estejam previstas no § 8º do mesmo artigo.', 'Atenção: O STF reconhece as Guardas como integrantes do sistema, mas na letra da CF elas não estão no rol dos incisos.' from public.questions q where q.public_code = 'PPCE-DC-000050';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Órgão federal (inciso I).'),
  ('b', 'Incorreta. Órgão federal (inciso II).'),
  ('c', 'Incorreta. Órgãos estaduais (inciso V).'),
  ('e', 'Incorreta. Incluídas pela EC 104/2019 (inciso VI).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000050';

-- -----------------------------------------------------------------------------
-- QUESTÃO 51: Nepotismo (Súmula Vinculante 13)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000051', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Princípios', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A nomeação de cônjuge, companheiro ou parente em linha reta, colateral ou por afinidade, até o terceiro grau, inclusive, da autoridade nomeante ou de servidor da mesma pessoa jurídica investido em cargo de direção, chefia ou assessoramento, para o exercício de cargo em comissão ou de confiança, viola a Constituição Federal. Esta proibição refere-se ao:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Princípio da eficiência apenas.', 1),
  ('b', 'B', 'Nepotismo, violando os princípios da moralidade e impessoalidade.', 2),
  ('c', 'C', 'Direito de livre nomeação do gestor.', 3),
  ('d', 'D', 'Princípio da publicidade dos atos administrativos.', 4),
  ('e', 'E', 'Poder hierárquico da administração.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000051';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000051' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Nepotismo.', 'A SV 13 proíbe o nepotismo com base nos princípios do Art. 37, especialmente moralidade e impessoalidade.', 'Cuidado: Cargos POLÍTICOS (Secretários, Ministros) em regra não entram na proibição, salvo prova de fraude.' from public.questions q where q.public_code = 'PPCE-DC-000051';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Viola outros princípios também.'),
  ('c', 'Incorreta. O direito de nomeação não é absoluto e deve respeitar a moralidade.'),
  ('d', 'Incorreta. Publicidade não é o foco principal desta vedação.'),
  ('e', 'Incorreta. Poder hierárquico não justifica a nomeação de parentes.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000051';

-- -----------------------------------------------------------------------------
-- QUESTÃO 52: Improbidade Administrativa (Art. 37, § 4º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000052', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Improbidade Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Os atos de improbidade administrativa importarão as seguintes sanções, na forma e gradação previstas em lei, sem prejuízo da ação penal cabível:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Prisão em regime fechado e perda dos direitos políticos.', 1),
  ('b', 'B', 'Suspensão dos direitos políticos, a perda da função pública, a indisponibilidade dos bens e o ressarcimento ao erário.', 2),
  ('c', 'C', 'Multa civil e banimento do território nacional.', 3),
  ('d', 'D', 'Cassação de aposentadoria e perda da nacionalidade.', 4),
  ('e', 'E', 'Prestação de serviços à comunidade e indenização por danos morais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000052';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000052' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Improbidade (Art. 37, § 4º).', 'As sanções constitucionais são: Suspensão dos direitos políticos, Perda da função, Indisponibilidade de bens e Ressarcimento ao erário.', 'Dica: S.P.I.R. (Suspensão, Perda, Indisponibilidade, Ressarcimento).' from public.questions q where q.public_code = 'PPCE-DC-000052';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Improbidade não gera prisão criminal direta (é sanção civil/administrativa).'),
  ('c', 'Incorreta. Banimento é pena proibida no Brasil.'),
  ('d', 'Incorreta. Perda de nacionalidade não é sanção para improbidade.'),
  ('e', 'Incorreta. Sanções da lei de improbidade (LIA) não são estas citadas no texto constitucional.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000052';

-- -----------------------------------------------------------------------------
-- QUESTÃO 53: Defesa do Estado (Estado de Sítio)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000053', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições', 'Estado de Defesa e de Sítio', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Presidente da República pode, ouvidos o Conselho da República e o Conselho de Defesa Nacional, solicitar ao Congresso Nacional autorização para decretar o estado de sítio nos casos de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Instabilidade financeira grave do Tesouro Nacional.', 1),
  ('b', 'B', 'Comoção grave de repercussão nacional ou ocorrência de fatos que comprovem a ineficácia de medida tomada durante o estado de defesa.', 2),
  ('c', 'C', 'Calamidades públicas de grandes proporções da natureza.', 3),
  ('d', 'D', 'Greve geral de servidores da segurança pública.', 4),
  ('e', 'E', 'Epidemias que exijam isolamento social obrigatório.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000053';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000053' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Estado de Sítio (Art. 137).', 'O estado de sítio é mais grave que o de defesa. Exige autorização PRÉVIA do Congresso.', 'Pode ocorrer também em caso de declaração de estado de guerra.' from public.questions q where q.public_code = 'PPCE-DC-000053';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Crise financeira não autoriza estado de exceção.'),
  ('c', 'Incorreta. Hipótese de Estado de Defesa (Art. 136).'),
  ('d', 'Incorreta. Não é causa direta de estado de sítio.'),
  ('e', 'Incorreta. Medidas sanitárias seguem leis específicas.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000053';

-- -----------------------------------------------------------------------------
-- QUESTÃO 54: Forças Armadas (Art. 142)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000054', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições', 'Forças Armadas', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'As Forças Armadas, constituídas pela Marinha, pelo Exército e pela Aeronáutica, são instituições nacionais permanentes e regulares, organizadas com base na hierarquia e na disciplina, sob a autoridade suprema do:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ministro da Defesa.', 1),
  ('b', 'B', 'Comandante Geral das Forças Armadas.', 2),
  ('c', 'C', 'Presidente da República.', 3),
  ('d', 'D', 'Presidente do Senado Federal.', 4),
  ('e', 'E', 'Supremo Tribunal Federal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000054';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000054' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Comando das Forças Armadas.', 'O Presidente da República é o Comandante Supremo das Forças Armadas.', 'Elas destinam-se à defesa da Pátria, garantia dos poderes e da lei e da ordem.' from public.questions q where q.public_code = 'PPCE-DC-000054';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Exerce a direção superior, mas a autoridade suprema é o Presidente.'),
  ('b', 'Incorreta. Este cargo não detém a autoridade suprema constitucional.'),
  ('d', 'Incorreta. O Legislativo não comanda as Forças Armadas.'),
  ('e', 'Incorreta. O Judiciário não comanda as Forças Armadas.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000054';

-- -----------------------------------------------------------------------------
-- QUESTÃO 55: Polícia Federal (Atribuições)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000055', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Segurança Pública', 'Órgãos de Segurança', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A polícia federal, instituída por lei como órgão permanente, mantido pela União, destina-se a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Exercer a polícia ostensiva e a preservação da ordem pública.', 1),
  ('b', 'B', 'Exercer, com exclusividade, as funções de polícia judiciária da União.', 2),
  ('c', 'C', 'Realizar o policiamento ostensivo das rodovias federais.', 3),
  ('d', 'D', 'Apurar infrações penais contra a ordem social de Municípios.', 4),
  ('e', 'E', 'Guarnecer as fronteiras e portos em substituição ao Exército.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000055';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000055' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Atribuições da PF (Art. 144, § 1º).', 'A PF exerce, com exclusividade, a polícia judiciária da União.', 'Também apura infrações contra a ordem política e social ou em detrimento de bens, serviços e interesses da União.' from public.questions q where q.public_code = 'PPCE-DC-000055';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Atribuição das Polícias Militares.'),
  ('c', 'Incorreta. Atribuição da Polícia Rodoviária Federal.'),
  ('d', 'Incorreta. A PF foca nos interesses da União.'),
  ('e', 'Incorreta. O patrulhamento de fronteiras é atribuição, mas não em substituição ao Exército.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000055';

-- -----------------------------------------------------------------------------
-- QUESTÃO 56: Polícia Civil (Atribuições)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000056', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Segurança Pública', 'Órgãos de Segurança', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Às polícias civis, dirigidas por delegados de polícia de carreira, incumbem, ressalvada a competência da União:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O policiamento ostensivo e a preservação da ordem pública.', 1),
  ('b', 'B', 'As funções de polícia judiciária e a apuração de infrações penais, exceto as militares.', 2),
  ('c', 'C', 'A segurança dos estabelecimentos penais do Estado.', 3),
  ('d', 'D', 'O patrulhamento das rodovias estaduais.', 4),
  ('e', 'E', 'A defesa civil em casos de desastre.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000056';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000056' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Polícia Civil (Art. 144, § 4º).', 'Incumbe às polícias civis a função de polícia judiciária e apuração de infrações penais (investigação), EXCETO as militares.', 'Pense: PC = Investigação (Judiciária).' from public.questions q where q.public_code = 'PPCE-DC-000056';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Atribuição da PM.'),
  ('c', 'Incorreta. Atribuição da Polícia Penal.'),
  ('d', 'Incorreta. Atribuição de órgãos específicos de trânsito ou PM Rodoviária.'),
  ('e', 'Incorreta. Atribuição dos Corpos de Bombeiros Militares.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000056';

-- -----------------------------------------------------------------------------
-- QUESTÃO 57: Polícia Militar e Bombeiros (Art. 144, § 5º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000057', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Segurança Pública', 'Órgãos de Segurança', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Às polícias militares cabem a polícia ostensiva e a preservação da ordem pública; aos corpos de bombeiros militares, além das atribuições definidas em lei, incumbe a execução de atividades de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Polícia judiciária militar.', 1),
  ('b', 'B', 'Defesa civil.', 2),
  ('c', 'C', 'Guarda de presídios.', 3),
  ('d', 'D', 'Fiscalização de fronteiras.', 4),
  ('e', 'E', 'Segurança de dignitários estrangeiros.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000057';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000057' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Bombeiros Militares.', 'Aos Corpos de Bombeiros Militares incumbe a execução de atividades de DEFESA CIVIL.', 'Dica: Bombeiro = Defesa Civil.' from public.questions q where q.public_code = 'PPCE-DC-000057';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Atribuição das próprias corporações militares em crimes militares.'),
  ('c', 'Incorreta. Atribuição da Polícia Penal.'),
  ('d', 'Incorreta. Atribuição da PF e PRF.'),
  ('e', 'Incorreta. Atribuição da PF.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000057';

-- -----------------------------------------------------------------------------
-- QUESTÃO 58: Polícia Penal (Art. 144, § 5º-A)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000058', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Segurança Pública', 'Órgãos de Segurança', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Às polícias penais, vinculadas ao órgão administrador do sistema penal da unidade federativa a que pertencem, incumbe a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Investigação de crimes cometidos por detentos.', 1),
  ('b', 'B', 'Segurança dos estabelecimentos penais.', 2),
  ('c', 'C', 'Reintegração social de ex-detentos em liberdade condicional.', 3),
  ('d', 'D', 'Escolta de presos em rodovias federais.', 4),
  ('e', 'E', 'Vigilância externa de prédios públicos administrativos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000058';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000058' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Polícia Penal (Art. 144, § 5º-A).', 'Incumbe às polícias penais a segurança dos estabelecimentos penais.', 'Incluída pela EC 104/2019.' from public.questions q where q.public_code = 'PPCE-DC-000058';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Investigação criminal é da PC ou PF.'),
  ('c', 'Incorreta. Atribuição administrativa de outros órgãos, embora a polícia penal colabore no sistema.'),
  ('d', 'Incorreta. Escolta é feita pela polícia penal, mas a PRF cuida das rodovias. O foco constitucional é a segurança do estabelecimento.'),
  ('e', 'Incorreta. Não é a finalidade precípua da Polícia Penal.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000058';

-- -----------------------------------------------------------------------------
-- QUESTÃO 59: Subordinação das Forças Policiais (Art. 144, § 6º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000059', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Segurança Pública', 'Disposições Gerais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'As polícias militares e os corpos de bombeiros militares, forças auxiliares e reserva do Exército, subordinam-se, juntamente com as polícias civis e as polícias penais estaduais e distrital, aos:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ministros militares.', 1),
  ('b', 'B', 'Governadores dos Estados, do Distrito Federal e dos Territórios.', 2),
  ('c', 'C', 'Prefeitos das capitais.', 3),
  ('d', 'D', 'Presidente da República.', 4),
  ('e', 'E', 'Comandante da Guarnição Federal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000059';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000059' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Subordinação Policial.', 'As forças policiais estaduais subordinam-se aos Governadores (Art. 144, § 6º).', 'Isso inclui PM, BM, PC e PP estadual.' from public.questions q where q.public_code = 'PPCE-DC-000059';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Ministros não detêm subordinação direta constitucional.'),
  ('c', 'Incorreta. Prefeitos comandam apenas Guardas Municipais (administrativamente).'),
  ('d', 'Incorreta. O Presidente comanda PF, PRF, PFF e PP Federal.'),
  ('e', 'Incorreta. Não há essa previsão na CF.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000059';

-- -----------------------------------------------------------------------------
-- QUESTÃO 60: Segurança Viária (Art. 144, § 10)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000060', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Segurança Pública', 'Segurança Viária', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A segurança viária, exercida para a preservação da ordem pública e da incolumidade das pessoas e do seu patrimônio nas vias públicas, compreende:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A educação, engenharia e fiscalização de trânsito.', 1),
  ('b', 'B', 'Apenas a aplicação de multas por infrações leves.', 2),
  ('c', 'C', 'O combate ao crime organizado em rodovias.', 3),
  ('d', 'D', 'A escolta de presos de alta periculosidade.', 4),
  ('e', 'E', 'O patrulhamento aéreo de grandes metrópoles.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000060';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000060' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Segurança Viária (Art. 144, § 10).', 'Compreende a educação, engenharia e fiscalização de trânsito, visando assegurar ao cidadão o direito à mobilidade urbana eficiente.', 'Compete aos Estados, DF e Municípios.' from public.questions q where q.public_code = 'PPCE-DC-000060';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Abrange muito mais que apenas multas.'),
  ('c', 'Incorreta. Atribuição de órgãos policiais como a PRF.'),
  ('d', 'Incorreta. Atribuição da Polícia Penal.'),
  ('e', 'Incorreta. Não é o foco da segurança viária constitucional.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000060';
