-- =============================================================================
-- BLOCO DE QUESTÕES: 101 A 150 (PPCE - DIREITO CONSTITUCIONAL)
-- =============================================================================

-- LIMPEZA INICIAL
delete from public.questions where public_code in (
  'PPCE-DC-000101', 'PPCE-DC-000102', 'PPCE-DC-000103', 'PPCE-DC-000104', 'PPCE-DC-000105',
  'PPCE-DC-000106', 'PPCE-DC-000107', 'PPCE-DC-000108', 'PPCE-DC-000109', 'PPCE-DC-000110',
  'PPCE-DC-000111', 'PPCE-DC-000112', 'PPCE-DC-000113', 'PPCE-DC-000114', 'PPCE-DC-000115',
  'PPCE-DC-000116', 'PPCE-DC-000117', 'PPCE-DC-000118', 'PPCE-DC-000119', 'PPCE-DC-000120',
  'PPCE-DC-000121', 'PPCE-DC-000122', 'PPCE-DC-000123', 'PPCE-DC-000124', 'PPCE-DC-000125',
  'PPCE-DC-000126', 'PPCE-DC-000127', 'PPCE-DC-000128', 'PPCE-DC-000129', 'PPCE-DC-000130',
  'PPCE-DC-000131', 'PPCE-DC-000132', 'PPCE-DC-000133', 'PPCE-DC-000134', 'PPCE-DC-000135',
  'PPCE-DC-000136', 'PPCE-DC-000137', 'PPCE-DC-000138', 'PPCE-DC-000139', 'PPCE-DC-000140',
  'PPCE-DC-000141', 'PPCE-DC-000142', 'PPCE-DC-000143', 'PPCE-DC-000144', 'PPCE-DC-000145',
  'PPCE-DC-000146', 'PPCE-DC-000147', 'PPCE-DC-000148', 'PPCE-DC-000149', 'PPCE-DC-000150'
);

-- -----------------------------------------------------------------------------
-- QUESTÃO 101: Composição do Congresso Nacional (Art. 44)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000101', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Legislativo', 'Disposições Gerais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O Poder Legislativo é exercido pelo Congresso Nacional, que se compõe da:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Câmara dos Deputados e Assembleias Legislativas.', 1),
  ('b', 'B', 'Câmara dos Deputados e Senado Federal.', 2),
  ('c', 'C', 'Senado Federal e Tribunal de Contas da União.', 3),
  ('d', 'D', 'Câmara dos Deputados, Senado Federal e Poder Executivo.', 4),
  ('e', 'E', 'Câmara Federal, apenas, sendo o Senado um órgão consultivo.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000101';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000101' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Bicameralismo Federativo.', 'O sistema brasileiro é bicameral, composto pela Câmara (representantes do povo) e Senado (representantes dos Estados e DF).', 'Dica: Bicameralismo só existe na União.' from public.questions q where q.public_code = 'PPCE-DC-000101';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Assembleias são do âmbito estadual (unicameral).'),
  ('c', 'Incorreta. O TCU auxilia o Congresso, mas não o compõe.'),
  ('d', 'Incorreta. O Executivo é outro Poder independente.'),
  ('e', 'Incorreta. O Senado tem funções legislativas e de controle fundamentais.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000101';

-- -----------------------------------------------------------------------------
-- QUESTÃO 102: Representação na Câmara e no Senado (Art. 45 e 46)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000102', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Legislativo', 'Câmara e Senado', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Sobre a composição das casas legislativas federais, é correto afirmar que:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Os Deputados Federais representam os Estados e o Senado representa o povo.', 1),
  ('b', 'B', 'Cada Estado e o Distrito Federal elegerão três Senadores, com mandato de oito anos.', 2),
  ('c', 'C', 'O mandato dos Deputados Federais é de oito anos, renovado de quatro em quatro.', 3),
  ('d', 'D', 'O número de Deputados por Estado é fixo em 8, independentemente da população.', 4),
  ('e', 'E', 'Os Senadores são eleitos pelo sistema proporcional.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000102';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000102' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Representação Política.', 'Senadores: 3 por Estado/DF, mandato de 8 anos, sistema majoritário. Deputados: Proporcional à população, mandato de 4 anos.', 'Memorize: Senador = 8 anos. Deputado = 4 anos.' from public.questions q where q.public_code = 'PPCE-DC-000102';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. É o oposto: Deputados representam o povo.'),
  ('c', 'Incorreta. Mandato de Deputado é de 4 anos.'),
  ('d', 'Incorreta. O número varia entre 8 e 70 conforme a população.'),
  ('e', 'Incorreta. Senadores são eleitos pelo sistema majoritário.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000102';

-- -----------------------------------------------------------------------------
-- QUESTÃO 103: Competência Exclusiva do Congresso (Art. 49)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000103', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Legislativo', 'Competências', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'É da competência exclusiva do Congresso Nacional:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Dispor sobre planos nacionais, regionais e setoriais de desenvolvimento.', 1),
  ('b', 'B', 'Resolver definitivamente sobre tratados, acordos ou atos internacionais que acarretem encargos ou compromissos gravosos ao patrimônio nacional.', 2),
  ('c', 'C', 'Conceder anistia.', 3),
  ('d', 'D', 'Fixar o subsídio dos Ministros do Supremo Tribunal Federal.', 4),
  ('e', 'E', 'Decretar o estado de sítio.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000103';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000103' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Competência Exclusiva (Art. 49).', 'Resolver sobre tratados internacionais é competência exclusiva do Congresso (Art. 49, I) e não depende de sanção presidencial.', 'Competência EXCLUSIVA = Sem sanção do Presidente.' from public.questions q where q.public_code = 'PPCE-DC-000103';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Competência com sanção do Presidente (Art. 48).'),
  ('c', 'Incorreta. Depende de sanção presidencial (Art. 48, VIII).'),
  ('d', 'Incorreta. Iniciativa de lei conjunta, depende de sanção.'),
  ('e', 'Incorreta. Autorizar ou referendar é exclusivo, mas decretar é do Presidente (o Congresso autoriza).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000103';

-- -----------------------------------------------------------------------------
-- QUESTÃO 104: Competência Privativa da Câmara (Art. 51)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000104', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Legislativo', 'Câmara dos Deputados', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Compete privativamente à Câmara dos Deputados:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Processar e julgar o Presidente e o Vice-Presidente da República nos crimes de responsabilidade.', 1),
  ('b', 'B', 'Autorizar, por dois terços de seus membros, a instauração de processo contra o Presidente e o Vice-Presidente da República.', 2),
  ('c', 'C', 'Aprovar previamente a escolha de magistrados, nos casos estabelecidos nesta Constituição.', 3),
  ('d', 'D', 'Zelar pela preservação de sua competência legislativa em face da atribuição normativa dos outros Poderes.', 4),
  ('e', 'E', 'Fixar o subsídio do Presidente e do Vice-Presidente da República.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000104';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000104' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Juízo de Admissibilidade (Art. 51, I).', 'A Câmara faz o juízo de admissibilidade (autorização por 2/3) nos processos contra Presidente e Vice.', 'Câmara AUTORIZA. Senado JULGA.' from public.questions q where q.public_code = 'PPCE-DC-000104';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Esta é a competência do Senado (Art. 52, I).'),
  ('c', 'Incorreta. Competência do Senado (Art. 52, III).'),
  ('d', 'Incorreta. Competência exclusiva do CONGRESSO (Art. 49, XI).'),
  ('e', 'Incorreta. Competência exclusiva do CONGRESSO (Art. 49, VIII).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000104';

-- -----------------------------------------------------------------------------
-- QUESTÃO 105: Competência Privativa do Senado (Art. 52)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000105', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Legislativo', 'Senado Federal', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Compete privativamente ao Senado Federal processar e julgar os Ministros do Supremo Tribunal Federal nos crimes de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Homicídio doloso.', 1),
  ('b', 'B', 'Responsabilidade.', 2),
  ('c', 'C', 'Tráfico ilícito de entorpecentes.', 3),
  ('d', 'D', 'Racismo e tortura.', 4),
  ('e', 'E', 'Crimes contra o sistema financeiro nacional.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000105';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000105' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Julgamento de Ministros do STF.', 'O Senado julga Ministros do STF nos crimes de RESPONSABILIDADE (Art. 52, II).', 'Nos crimes COMUNS, o STF julga seus próprios ministros.' from public.questions q where q.public_code = 'PPCE-DC-000105';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Crime comum, julgado pelo próprio STF.'),
  ('c', 'Incorreta. Crime comum, julgado pelo próprio STF.'),
  ('d', 'Incorreta. Crimes comuns, julgados pelo próprio STF.'),
  ('e', 'Incorreta. Crime comum, julgado pelo próprio STF.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000105';

-- -----------------------------------------------------------------------------
-- QUESTÃO 106: Imunidade Parlamentar Material (Art. 53)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000106', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Legislativo', 'Estatuto dos Parlamentares', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Os Deputados e Senadores são invioláveis, civil e penalmente, por quaisquer de suas:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ações praticadas fora do território nacional.', 1),
  ('b', 'B', 'Opiniões, palavras e votos.', 2),
  ('c', 'C', 'Contratações de pessoal para seus gabinetes.', 3),
  ('d', 'D', 'Viagens oficiais custeadas pelo erário.', 4),
  ('e', 'E', 'Dívidas particulares contraídas durante o mandato.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000106';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000106' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Imunidade Material.', 'A imunidade material protege o parlamentar por suas opiniões, palavras e votos no exercício da função (Art. 53).', 'A proteção é absoluta se houver nexo com a função.' from public.questions q where q.public_code = 'PPCE-DC-000106';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. A inviolabilidade foca na manifestação do pensamento legislativo.'),
  ('c', 'Incorreta. Atos administrativos são sujeitos a controle comum.'),
  ('d', 'Incorreta. Atos de gestão financeira são fiscalizados pelo TCU.'),
  ('e', 'Incorreta. Não há imunidade para atos da vida privada sem relação com o mandato.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000106';

-- -----------------------------------------------------------------------------
-- QUESTÃO 107: Foro por Prerrogativa de Função (Art. 53, § 1º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000107', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Legislativo', 'Estatuto dos Parlamentares', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Desde a expedição do diploma, os membros do Congresso Nacional serão submetidos a julgamento perante o:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Superior Tribunal de Justiça.', 1),
  ('b', 'B', 'Supremo Tribunal Federal.', 2),
  ('c', 'C', 'Tribunal de Justiça do Estado de origem.', 3),
  ('d', 'D', 'Juiz Federal da seção judiciária do DF.', 4),
  ('e', 'E', 'Conselho de Ética de sua respectiva Casa.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000107';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000107' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Foro Privilegiado (Art. 53, § 1º).', 'Deputados Federais e Senadores possuem foro por prerrogativa de função no STF desde a diplomação.', 'Atenção: O STF restringiu o foro a crimes cometidos NO EXERCÍCIO e EM RAZÃO da função.' from public.questions q where q.public_code = 'PPCE-DC-000107';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. STJ julga Governadores e desembargadores.'),
  ('c', 'Incorreta. TJ julga prefeitos e deputados estaduais.'),
  ('d', 'Incorreta. Juízes de 1ª instância não têm competência sobre congressistas (regra geral do foro).'),
  ('e', 'Incorreta. O Conselho de Ética faz o julgamento político-administrativo (perda de mandato), não penal.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000107';

-- -----------------------------------------------------------------------------
-- QUESTÃO 108: Prisão de Parlamentares (Art. 53, § 2º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000108', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Legislativo', 'Estatuto dos Parlamentares', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Desde a expedição do diploma, os membros do Congresso Nacional não poderão ser presos, salvo:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Em virtude de sentença judicial transitada em julgado.', 1),
  ('b', 'B', 'Em flagrante de crime inafiançável.', 2),
  ('c', 'C', 'Por ordem fundamentada de juiz de primeira instância em crimes hediondos.', 3),
  ('d', 'D', 'Se houver autorização prévia da respectiva Casa Legislativa.', 4),
  ('e', 'E', 'Em casos de crimes contra a segurança nacional.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000108';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000108' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Imunidade Formal (Art. 53, § 2º).', 'Congressistas só podem ser presos em FLAGRANTE de CRIME INAFIANÇÁVEL.', 'A Casa respectiva decide sobre a manutenção da prisão em 24h.' from public.questions q where q.public_code = 'PPCE-DC-000108';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. A CF é específica sobre o flagrante inafiançável após a diplomação (prisão cautelar).'),
  ('c', 'Incorreta. Juiz de 1ª instância não ordena prisão de congressista.'),
  ('d', 'Incorreta. A autorização é POSTERIOR para manter ou não a prisão, não prévia para o ato do flagrante.'),
  ('e', 'Incorreta. Não é hipótese genérica sem os requisitos de flagrante e inafiançabilidade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000108';

-- -----------------------------------------------------------------------------
-- QUESTÃO 109: Processo Legislativo (Quorum de Emenda - Art. 60)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000109', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Legislativo', 'Processo Legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A Constituição poderá ser emendada mediante proposta aprovada em cada Casa do Congresso Nacional, em dois turnos, por:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Maioria simples dos votos dos respectivos membros.', 1),
  ('b', 'B', 'Maioria absoluta dos votos dos respectivos membros.', 2),
  ('c', 'C', 'Três quintos dos votos dos respectivos membros.', 3),
  ('d', 'D', 'Dois terços dos votos dos respectivos membros.', 4),
  ('e', 'E', 'Unanimidade dos votos presentes.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000109';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000109' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Rito das Emendas (Art. 60, § 2º).', 'O quorum de aprovação de PEC é de 3/5 em dois turnos em cada casa.', 'Dica: Regra do 2-2-3-5.' from public.questions q where q.public_code = 'PPCE-DC-000109';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Maioria simples é para leis ordinárias.'),
  ('b', 'Incorreta. Maioria absoluta é para leis complementares.'),
  ('d', 'Incorreta. 2/3 é o quorum para impeachment ou perda de mandato, não para PEC.'),
  ('e', 'Incorreta. Não existe quorum de unanimidade na CF.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000109';

-- -----------------------------------------------------------------------------
-- QUESTÃO 110: Cláusulas Pétreas (Art. 60, § 4º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000110', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Legislativo', 'Processo Legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Não será objeto de deliberação a proposta de emenda tendente a abolir, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A forma federativa de Estado.', 1),
  ('b', 'B', 'O voto direto, secreto, universal e periódico.', 2),
  ('c', 'C', 'A separação dos Poderes.', 3),
  ('d', 'D', 'Os direitos e garantias individuais.', 4),
  ('e', 'E', 'A forma republicana de governo.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000110';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000110' and qo.question_id = q.id and qo.option_key = 'e';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Cláusulas Pétreas (Art. 60, § 4º).', 'A forma republicana de governo NÃO é cláusula pétrea EXPLÍCITA (embora seja princípio constitucional sensível). As 4 explícitas são: Federação, Voto (DSUP), Separação de Poderes e Direitos Individuais.', 'Dica: FE-VO-SE-DI.' from public.questions q where q.public_code = 'PPCE-DC-000110';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. É cláusula pétrea (Art. 60, § 4º, I).'),
  ('b', 'Incorreta. É cláusula pétrea (Art. 60, § 4º, II).'),
  ('c', 'Incorreta. É cláusula pétrea (Art. 60, § 4º, III).'),
  ('d', 'Incorreta. É cláusula pétrea (Art. 60, § 4º, IV).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000110';

-- -----------------------------------------------------------------------------
-- QUESTÃO 111: Poder Executivo (Requisitos de Elegibilidade - Art. 77)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000111', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Executivo', 'Eleição e Requisitos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Para ser eleito Presidente da República, o cidadão deve possuir a idade mínima de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '18 anos.', 1),
  ('b', 'B', '21 anos.', 2),
  ('c', 'C', '30 anos.', 3),
  ('d', 'D', '35 anos.', 4),
  ('e', 'E', '40 anos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000111';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000111' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Idade Mínima (Art. 14, § 3º, VI, a).', 'A idade mínima para Presidente e Vice é de 35 anos.', 'Dica: Telefone da CF (3530-2118).' from public.questions q where q.public_code = 'PPCE-DC-000111';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. 18 anos é para Vereador.'),
  ('b', 'Incorreta. 21 anos é para Deputado, Juiz de Paz e Prefeito.'),
  ('c', 'Incorreta. 30 anos é para Governador.'),
  ('e', 'Incorreta. Não existe previsão de 40 anos na CF.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000111';

-- -----------------------------------------------------------------------------
-- QUESTÃO 112: Substituição do Presidente (Art. 80)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000112', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Executivo', 'Sucessão e Substituição', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Em caso de impedimento do Presidente e do Vice-Presidente, ou vacância dos respectivos cargos, serão sucessivamente chamados ao exercício da Presidência:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O Presidente do Senado, o da Câmara e o do STF.', 1),
  ('b', 'B', 'O Presidente da Câmara, o do Senado e o do STF.', 2),
  ('c', 'C', 'O Presidente do STF, o da Câmara e o do Senado.', 3),
  ('d', 'D', 'O Ministro da Justiça e o da Defesa.', 4),
  ('e', 'E', 'O Procurador-Geral da República e o Presidente do Congresso.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000112';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000112' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Linha de Substituição (Art. 80).', 'A ordem é: Presidente da Câmara -> Presidente do Senado -> Presidente do STF.', 'Dica: Ca-Se-S (Câmara, Senado, STF).' from public.questions q where q.public_code = 'PPCE-DC-000112';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. A Câmara vem antes do Senado na linha de substituição.'),
  ('c', 'Incorreta. O STF é o último da linha.'),
  ('d', 'Incorreta. Ministros não compõem a linha de sucessão presidencial.'),
  ('e', 'Incorreta. PGR não faz parte da linha de substituição.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000112';

-- -----------------------------------------------------------------------------
-- QUESTÃO 113: Atribuições do Presidente (Art. 84)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000113', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Executivo', 'Atribuições', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Compete privativamente ao Presidente da República:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sustar os atos normativos do Poder Executivo que exorbitem do poder regulamentar.', 1),
  ('b', 'B', 'Expedir decretos e regulamentos para a fiel execução das leis.', 2),
  ('c', 'C', 'Julgar as contas anuais dos administradores públicos.', 3),
  ('d', 'D', 'Autorizar o estado de sítio e o estado de defesa.', 4),
  ('e', 'E', 'Escolher os membros do Tribunal de Contas da União sem participação do Senado.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000113';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000113' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Poder Regulamentar (Art. 84, IV).', 'Expedir decretos e regulamentos é atribuição privativa do Presidente para dar fiel execução às leis.', 'Cuidado: O Congresso susta atos que exorbitem (Art. 49).' from public.questions q where q.public_code = 'PPCE-DC-000113';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Competência do Congresso Nacional (Art. 49, V).'),
  ('c', 'Incorreta. Competência do Tribunal de Contas (auxílio ao Legislativo).'),
  ('d', 'Incorreta. O Presidente decreta, mas o Congresso autoriza/referenda.'),
  ('e', 'Incorreta. O Presidente escolhe apenas 1/3 dos membros do TCU.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000113';

-- -----------------------------------------------------------------------------
-- QUESTÃO 114: Delegação de Atribuições (Art. 84, parágrafo único)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000114', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Executivo', 'Atribuições', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O Presidente da República poderá delegar as atribuições de prover e extinguir cargos públicos federais, na forma da lei, aos seguintes órgãos, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ministros de Estado.', 1),
  ('b', 'B', 'Procurador-Geral da República.', 2),
  ('c', 'C', 'Advogado-Geral da União.', 3),
  ('d', 'D', 'Presidente do Supremo Tribunal Federal.', 4),
  ('e', 'E', 'Nenhuma das anteriores (todas podem receber delegação).', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000114';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000114' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Delegação de Atribuições.', 'O parágrafo único do Art. 84 permite delegar apenas aos Ministros, PGR e AGU. O Presidente do STF não recebe delegação do Executivo.', 'Dica: M-P-A (Ministros, PGR, AGU).' from public.questions q where q.public_code = 'PPCE-DC-000114';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Ministros podem receber delegação.'),
  ('b', 'Incorreta. O PGR pode receber delegação.'),
  ('c', 'Incorreta. O AGU pode receber delegação.'),
  ('e', 'Incorreta. Existe sim uma exceção (Presidente do STF).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000114';

-- -----------------------------------------------------------------------------
-- QUESTÃO 115: Crime de Responsabilidade (Art. 85)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000115', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Executivo', 'Responsabilidade', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'São crimes de responsabilidade os atos do Presidente da República que atentem contra a Constituição Federal e, especialmente, contra:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A existência da União.', 1),
  ('b', 'B', 'O livre exercício do Poder Legislativo, do Poder Judiciário, do Ministério Público e dos Poderes constitucionais das unidades da Federação.', 2),
  ('c', 'C', 'A probidade na administração.', 3),
  ('d', 'D', 'A lei orçamentária.', 4),
  ('e', 'E', 'Todas as alternativas anteriores estão corretas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000115';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000115' and qo.question_id = q.id and qo.option_key = 'e';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Crimes de Responsabilidade.', 'O rol do Art. 85 inclui a existência da União, o livre exercício dos poderes, probidade, orçamento e cumprimento das leis/decisões.', 'O rol é exemplificativo, definido pela Lei 1.079/50.' from public.questions q where q.public_code = 'PPCE-DC-000115';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Embora verdadeira, não é a única.'),
  ('b', 'Incorreta. Embora verdadeira, não é a única.'),
  ('c', 'Incorreta. Embora verdadeira, não é a única.'),
  ('d', 'Incorreta. Embora verdadeira, não é a única.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000115';

-- -----------------------------------------------------------------------------
-- QUESTÃO 116: Julgamento do Presidente (Art. 86)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000116', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Executivo', 'Responsabilidade', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Presidente da República, na vigência de seu mandato, por crimes estranhos ao exercício de suas funções:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Poderá ser preso preventivamente a qualquer tempo.', 1),
  ('b', 'B', 'Não poderá ser responsabilizado.', 2),
  ('c', 'C', 'Será julgado imediatamente pelo STF.', 3),
  ('d', 'D', 'Terá seu foro deslocado para a justiça de primeira instância.', 4),
  ('e', 'E', 'Será processado apenas após autorização do Senado.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000116';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000116' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Irresponsabilidade Penal Relativa (Art. 86, § 4º).', 'O Presidente não pode ser responsabilizado por crimes estranhos ao mandato ENQUANTO este durar.', 'Dica: Proteção temporal (cláusula de exclusão de responsabilidade).' from public.questions q where q.public_code = 'PPCE-DC-000116';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O Presidente não pode ser preso (salvo sentença condenatória) enquanto no cargo.'),
  ('c', 'Incorreta. O processo fica suspenso até o fim do mandato.'),
  ('d', 'Incorreta. O foro permanece no STF se for crime comum, mas a denúncia só prossegue após o mandato.'),
  ('e', 'Incorreta. Autorização é da Câmara (2/3), mas aqui o foco é a estranheza ao cargo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000116';

-- -----------------------------------------------------------------------------
-- QUESTÃO 117: Prazo para Julgamento (Art. 86, § 1º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000117', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Executivo', 'Responsabilidade', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Se, decorrido o prazo de 180 dias, o julgamento do Presidente da República não estiver concluído:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O processo será arquivado definitivamente.', 1),
  ('b', 'B', 'Cessará o seu afastamento, sem prejuízo do regular prosseguimento do processo.', 2),
  ('c', 'C', 'O Vice-Presidente assumirá em definitivo.', 3),
  ('d', 'D', 'Haverá novas eleições imediatamente.', 4),
  ('e', 'E', 'O STF assumirá o governo interinamente.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000117';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000117' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Prazo de Afastamento (Art. 86, § 2º).', 'Se o julgamento não findar em 180 dias, o Presidente retorna ao cargo, mas o processo continua.', 'Prazo fatal de 180 dias para o afastamento cautelar.' from public.questions q where q.public_code = 'PPCE-DC-000117';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O processo não é arquivado.'),
  ('c', 'Incorreta. O retorno do Presidente é a regra se o prazo expirar.'),
  ('d', 'Incorreta. Eleições só ocorrem em vacância definitiva.'),
  ('e', 'Incorreta. O STF não governa.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000117';

-- -----------------------------------------------------------------------------
-- QUESTÃO 118: Ministros de Estado (Escolha - Art. 87)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000118', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Executivo', 'Ministros de Estado', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Os Ministros de Estado serão escolhidos dentre brasileiros maiores de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '18 anos.', 1),
  ('b', 'B', '21 anos.', 2),
  ('c', 'C', '30 anos.', 3),
  ('d', 'D', '35 anos.', 4),
  ('e', 'E', 'Não há idade mínima prevista na CF.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000118';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000118' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Requisitos para Ministro (Art. 87).', 'Ministros devem ser brasileiros (nato ou naturalizado, salvo Defesa que é só nato) e maiores de 21 anos.', 'Dica: Mesma idade para Deputado Federal.' from public.questions q where q.public_code = 'PPCE-DC-000118';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Idade muito baixa.'),
  ('c', 'Incorreta. 30 anos é para Governador.'),
  ('d', 'Incorreta. 35 anos é para Presidente/Senador.'),
  ('e', 'Incorreta. Existe sim o requisito de 21 anos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000118';

-- -----------------------------------------------------------------------------
-- QUESTÃO 119: Conselho da República (Art. 89)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000119', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Executivo', 'Órgãos de Consulta', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Conselho da República é órgão superior de consulta do Presidente da República, e dele participam, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O Vice-Presidente da República.', 1),
  ('b', 'B', 'O Presidente da Câmara dos Deputados e o do Senado Federal.', 2),
  ('c', 'C', 'O Ministro da Justiça.', 3),
  ('d', 'D', 'Seis cidadãos brasileiros natos.', 4),
  ('e', 'E', 'O Ministro da Defesa.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000119';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000119' and qo.question_id = q.id and qo.option_key = 'e';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Conselho da República (Art. 89).', 'O Ministro da Defesa NÃO faz parte do Conselho da República (ele faz parte do Conselho de DEFESA Nacional).', 'Cuidado: Não confunda os dois conselhos.' from public.questions q where q.public_code = 'PPCE-DC-000119';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O Vice participa.'),
  ('b', 'Incorreta. Os presidentes das Casas participam.'),
  ('c', 'Incorreta. O Ministro da Justiça participa.'),
  ('d', 'Incorreta. 6 cidadãos natos participam (nomeados pelo Pres., Câm. e Sen.).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000119';

-- -----------------------------------------------------------------------------
-- QUESTÃO 120: Conselho de Defesa Nacional (Art. 91)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000120', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Executivo', 'Órgãos de Consulta', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Conselho de Defesa Nacional é o órgão de consulta do Presidente da República nos assuntos relacionados com a soberania nacional e a defesa do Estado democrático, e dele participam como membros natos, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O Vice-Presidente da República.', 1),
  ('b', 'B', 'O Ministro da Defesa e os Comandantes da Marinha, do Exército e da Aeronáutica.', 2),
  ('c', 'C', 'O Ministro das Relações Exteriores e o do Planejamento.', 3),
  ('d', 'D', 'Líderes da maioria e da minoria na Câmara e no Senado.', 4),
  ('e', 'E', 'O Procurador-Geral da República.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000120';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000120' and qo.question_id = q.id and qo.option_key = 'e';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Conselho de Defesa Nacional.', 'O PGR não é membro nato do Conselho de Defesa Nacional.', 'Dica: O CDN foca em Defesa, Relações Exteriores e Planejamento Econômico (Guerra).' from public.questions q where q.public_code = 'PPCE-DC-000120';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O Vice participa.'),
  ('b', 'Incorreta. Participam os militares e o Min. Defesa.'),
  ('c', 'Incorreta. Participam o Min. Rel. Exteriores e Planejamento.'),
  ('d', 'Incorreta. Os líderes participam sim.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000120';

-- -----------------------------------------------------------------------------
-- QUESTÃO 121: Poder Judiciário (Órgãos - Art. 92)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000121', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'Órgãos do Judiciário', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São órgãos do Poder Judiciário brasileiro, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O Supremo Tribunal Federal e o Conselho Nacional de Justiça.', 1),
  ('b', 'B', 'O Superior Tribunal de Justiça e o Tribunal Superior do Trabalho.', 2),
  ('c', 'C', 'Os Tribunais e Juízes Eleitorais e Militares.', 3),
  ('d', 'D', 'O Ministério Público e a Defensoria Pública.', 4),
  ('e', 'E', 'Os Tribunais e Juízes dos Estados e do Distrito Federal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000121';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000121' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Órgãos do Judiciário (Art. 92).', 'O Ministério Público e a Defensoria Pública são Funções Essenciais à Justiça, mas NÃO integram o Poder Judiciário.', 'Dica: O Judiciário julga. O MP acusa/fiscaliza. A DP defende.' from public.questions q where q.public_code = 'PPCE-DC-000121';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. São órgãos do Art. 92, I e I-A.'),
  ('b', 'Incorreta. São órgãos do Art. 92, II e IV.'),
  ('c', 'Incorreta. São órgãos do Art. 92, V e VI.'),
  ('e', 'Incorreta. São órgãos do Art. 92, VII.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000121';

-- -----------------------------------------------------------------------------
-- QUESTÃO 122: Garantias da Magistratura (Art. 95)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000122', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'Estatuto da Magistratura', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Os juízes gozam das seguintes garantias, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Vitaliciedade, que, no primeiro grau, só será adquirida após dois anos de exercício.', 1),
  ('b', 'B', 'Inamovibilidade, salvo por motivo de interesse público.', 2),
  ('c', 'C', 'Irredutibilidade de subsídio.', 3),
  ('d', 'D', 'Imunidade parlamentar para opiniões e votos.', 4),
  ('e', 'E', 'Nenhuma das anteriores (todas são garantias de juízes).', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000122';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000122' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Garantias dos Juízes (Art. 95).', 'Imunidade parlamentar é exclusiva de membros do Legislativo. Juízes têm Vitaliciedade, Inamovibilidade e Irredutibilidade.', 'Dica: V-I-I (Vitaliciedade, Inamovibilidade, Irredutibilidade).' from public.questions q where q.public_code = 'PPCE-DC-000122';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. É garantia expressa (Art. 95, I).'),
  ('b', 'Incorreta. É garantia expressa (Art. 95, II).'),
  ('c', 'Incorreta. É garantia expressa (Art. 95, III).'),
  ('e', 'Incorreta. Existe uma exceção (a imunidade parlamentar).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000122';

-- -----------------------------------------------------------------------------
-- QUESTÃO 123: Quinto Constitucional (Art. 94)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000123', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'Composição dos Tribunais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Quinto Constitucional estabelece que um quinto dos lugares dos Tribunais Regionais Federais, dos Tribunais dos Estados, e do Distrito Federal e Territórios será composto de membros do:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ministério Público e da Defensoria Pública.', 1),
  ('b', 'B', 'Ministério Público e da Advocacia.', 2),
  ('c', 'C', 'Poder Legislativo e do Executivo.', 3),
  ('d', 'D', 'Tribunal de Contas e do Conselho Nacional de Justiça.', 4),
  ('e', 'E', 'Apenas do Ministério Público Federal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000123';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000123' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Quinto Constitucional (Art. 94).', 'O Quinto é composto por membros do Ministério Público (mais de 10 anos de carreira) e Advogados (mais de 10 anos de atividade, notável saber e reputação).', 'Dica: MP + OAB.' from public.questions q where q.public_code = 'PPCE-DC-000123';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Defensoria não participa do quinto constitucional (regra geral).'),
  ('c', 'Incorreta. Políticos não entram pelo rito do quinto.'),
  ('d', 'Incorreta. Órgãos de controle não compõem tribunais desta forma.'),
  ('e', 'Incorreta. Advogados também participam.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000123';

-- -----------------------------------------------------------------------------
-- QUESTÃO 124: Composição do STF (Art. 101)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000124', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'Supremo Tribunal Federal', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O Supremo Tribunal Federal compõe-se de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Nove ministros.', 1),
  ('b', 'B', 'Onze ministros.', 2),
  ('c', 'C', 'Treze ministros.', 3),
  ('d', 'D', 'Quinze ministros.', 4),
  ('e', 'E', 'Trinta e três ministros.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000124';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000124' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Composição do STF.', 'O STF tem 11 ministros, nomeados pelo Presidente após aprovação pelo Senado.', 'Dica: "Somos um Time de Futebol" (11 jogadores).' from public.questions q where q.public_code = 'PPCE-DC-000124';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Número do antigo Tribunal Federal de Recursos.'),
  ('c', 'Incorreta. Número não usual em cortes superiores brasileiras.'),
  ('d', 'Incorreta. É o número de membros do CNJ e do TST.'),
  ('e', 'Incorreta. É o número de ministros do STJ ("Somos Todos de Jesus" - 33).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000124';

-- -----------------------------------------------------------------------------
-- QUESTÃO 125: Competência do STF (Art. 102)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000125', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'Supremo Tribunal Federal', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Compete ao Supremo Tribunal Federal, precipuamente, a guarda da Constituição, cabendo-lhe processar e julgar, originariamente:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A ação direta de inconstitucionalidade de lei ou ato normativo federal ou estadual.', 1),
  ('b', 'B', 'Os mandados de segurança contra atos de prefeitos.', 2),
  ('c', 'C', 'Os crimes comuns cometidos por vereadores.', 3),
  ('d', 'D', 'As causas em que o Estado estrangeiro e organismo internacional sejam partes de um lado, e do outro Município ou pessoa residente no País.', 4),
  ('e', 'E', 'O conflito de atribuições entre autoridades administrativas estaduais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000125';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000125' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Controle Concentrado (Art. 102, I, a).', 'A ADI de lei federal ou estadual é competência originária do STF.', 'Cuidado: ADI de lei MUNICIPAL não vai ao STF (vai ao TJ por norma estadual).' from public.questions q where q.public_code = 'PPCE-DC-000125';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Julgados pela justiça estadual de 1ª instância.'),
  ('c', 'Incorreta. Julgados pela justiça estadual.'),
  ('d', 'Incorreta. Competência do JUIZ FEDERAL (Art. 109, II). Se houver recurso, vai ao STJ.'),
  ('e', 'Incorreta. Conflitos administrativos não são tipicamente decididos pelo STF nestes termos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000125';

-- -----------------------------------------------------------------------------
-- QUESTÃO 126: Composição do STJ (Art. 104)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000126', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'Superior Tribunal de Justiça', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O Superior Tribunal de Justiça (STJ) compõe-se de, no mínimo:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '11 ministros.', 1),
  ('b', 'B', '15 ministros.', 2),
  ('c', 'C', '27 ministros.', 3),
  ('d', 'D', '33 ministros.', 4),
  ('e', 'E', '45 ministros.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000126';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000126' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Composição do STJ.', 'O STJ tem no mínimo 33 ministros.', 'Dica: "Somos Todos de Jesus" (33 anos).' from public.questions q where q.public_code = 'PPCE-DC-000126';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Número de ministros do STF.'),
  ('b', 'Incorreta. Número de membros do CNJ.'),
  ('c', 'Incorreta. Número de membros do TST.'),
  ('e', 'Incorreta. Número muito elevado, sem correspondência em cortes superiores.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000126';

-- -----------------------------------------------------------------------------
-- QUESTÃO 127: Competência do STJ (Habeas Corpus - Art. 105)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000127', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'Superior Tribunal de Justiça', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Compete ao Superior Tribunal de Justiça processar e julgar, originariamente, os Habeas Corpus quando o coator for:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O Presidente da República.', 1),
  ('b', 'B', 'Tribunal Regional Federal ou Tribunal de Justiça.', 2),
  ('c', 'C', 'Delegado de Polícia Civil.', 3),
  ('d', 'D', 'Juiz de Direito Estadual.', 4),
  ('e', 'E', 'O próprio Superior Tribunal de Justiça.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000127';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000127' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Competência Originária do STJ (Art. 105, I, c).', 'O STJ julga HC quando a autoridade coatora for TRF, TJ ou Ministro de Estado.', 'Se a coatora for juiz de 1ª instância, o HC vai ao TJ ou TRF.' from public.questions q where q.public_code = 'PPCE-DC-000127';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. HC contra o Presidente vai ao STF.'),
  ('c', 'Incorreta. HC contra delegado vai ao juiz de 1ª instância.'),
  ('d', 'Incorreta. HC contra juiz de 1ª instância vai ao tribunal ao qual ele se subordina (TJ/TRF).'),
  ('e', 'Incorreta. HC contra o próprio STJ vai ao STF.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000127';

-- -----------------------------------------------------------------------------
-- QUESTÃO 128: Justiça Federal (Competência - Art. 109)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000128', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'Justiça Federal', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Aos juízes federais compete processar e julgar as infrações penais praticadas em detrimento de bens, serviços ou interesse da:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'União, suas entidades autárquicas ou empresas públicas.', 1),
  ('b', 'B', 'União, Estados e Municípios indistintamente.', 2),
  ('c', 'C', 'Sociedades de economia mista federais.', 3),
  ('d', 'D', 'Instituições financeiras privadas.', 4),
  ('e', 'E', 'Administração pública direta estadual.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000128';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000128' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Competência da Justiça Federal (Art. 109, IV).', 'A Justiça Federal julga crimes contra bens/serviços da União, Autarquias Federais e Empresas Públicas Federais.', 'Cuidado: Sociedade de Economia Mista Federal (ex: Banco do Brasil) vai para a JUSTIÇA ESTADUAL (Súmula 42 STJ).' from public.questions q where q.public_code = 'PPCE-DC-000128';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Estados e Municípios vão para a Justiça Estadual.'),
  ('c', 'Incorreta. Súmula 42 do STJ exclui SEM da justiça federal.'),
  ('d', 'Incorreta. Justiça Estadual (salvo se houver interesse da União/BC).'),
  ('e', 'Incorreta. Justiça Estadual.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000128';

-- -----------------------------------------------------------------------------
-- QUESTÃO 129: Tribunal Superior Eleitoral (Composição - Art. 118)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000129', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'Justiça Eleitoral', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Tribunal Superior Eleitoral compor-se-á de, no mínimo, sete membros, escolhidos mediante eleição, sendo:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '3 ministros do STF, 2 do STJ e 2 advogados nomeados pelo Presidente.', 1),
  ('b', 'B', '4 ministros do STF e 3 do STJ.', 2),
  ('c', 'C', '5 juízes federais e 2 cidadãos de notável saber.', 3),
  ('d', 'D', '7 ministros vitalícios escolhidos pelo Senado.', 4),
  ('e', 'E', 'Todos os ministros do STF e mais 2 do STJ.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000129';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000129' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Composição do TSE (Art. 119).', '3 do STF (eleição interna), 2 do STJ (eleição interna) e 2 advogados (nomeados pelo Presidente de lista sêxtupla do STF).', 'Dica: Regra do 3-2-2.' from public.questions q where q.public_code = 'PPCE-DC-000129';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Faltam os advogados.'),
  ('c', 'Incorreta. Não há essa previsão de juízes federais no TSE.'),
  ('d', 'Incorreta. Membros do TSE têm mandato de 2 anos, não são vitalícios no órgão.'),
  ('e', 'Incorreta. O STF não compõe o TSE em sua totalidade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000129';

-- -----------------------------------------------------------------------------
-- QUESTÃO 130: CNJ (Competência de Controle - Art. 103-B)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000130', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'Conselho Nacional de Justiça', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Compete ao Conselho Nacional de Justiça (CNJ) o controle da atuação administrativa e financeira do Poder Judiciário e do cumprimento dos deveres funcionais dos juízes, cabendo-lhe, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Zelar pela autonomia do Poder Judiciário.', 1),
  ('b', 'B', 'Apreciar a legalidade dos atos administrativos praticados por tribunais.', 2),
  ('c', 'C', 'Processar e julgar, originariamente, os crimes comuns cometidos por Ministros de Estado.', 3),
  ('d', 'D', 'Receber e examinar reclamações contra membros ou órgãos do Poder Judiciário.', 4),
  ('e', 'E', 'Zelar pelo cumprimento do Art. 37 (legalidade, impessoalidade, etc.) no Judiciário.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000130';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000130' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Limites do CNJ.', 'O CNJ NÃO tem competência jurisdicional (não julga crimes). Ele faz controle administrativo e disciplinar.', 'O CNJ é um órgão administrativo do Judiciário.' from public.questions q where q.public_code = 'PPCE-DC-000130';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. É competência do CNJ (Art. 103-B, § 4º, I).'),
  ('b', 'Incorreta. É competência do CNJ (Art. 103-B, § 4º, II).'),
  ('d', 'Incorreta. É competência do CNJ (Art. 103-B, § 4º, III).'),
  ('e', 'Incorreta. É competência do CNJ (Art. 103-B, § 4º, II).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000130';

-- -----------------------------------------------------------------------------
-- QUESTÃO 131: Ministério Público (Princípios - Art. 127)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000131', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Funções Essenciais à Justiça', 'Ministério Público', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São princípios institucionais do Ministério Público:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Unicidade, indivisibilidade e autonomia funcional.', 1),
  ('b', 'B', 'Unidade, indivisibilidade e independência funcional.', 2),
  ('c', 'C', 'Hierarquia, disciplina e unidade de ação.', 3),
  ('d', 'D', 'Oralidade, celeridade e economia processual.', 4),
  ('e', 'E', 'Publicidade, impessoalidade e moralidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000131';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000131' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Princípios do MP (Art. 127, § 1º).', 'Os princípios são: Unidade, Indivisibilidade e Independência Funcional.', 'Dica: U-I-I (Unidade, Indivisibilidade, Independência).' from public.questions q where q.public_code = 'PPCE-DC-000131';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Autonomia funcional é uma característica da instituição, mas o princípio é a independência funcional do membro.'),
  ('c', 'Incorreta. MP não tem hierarquia funcional entre seus membros.'),
  ('d', 'Incorreta. Princípios de juizados especiais/processuais.'),
  ('e', 'Incorreta. Princípios da Administração Pública (Art. 37).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000131';

-- -----------------------------------------------------------------------------
-- QUESTÃO 132: MP (Funções Institucionais - Art. 129)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000132', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Funções Essenciais à Justiça', 'Ministério Público', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'É função institucional do Ministério Público, nos termos da Constituição Federal:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Exercer a representação judicial e a consultoria jurídica de entidades públicas.', 1),
  ('b', 'B', 'Promover, privativamente, a ação penal pública, na forma da lei.', 2),
  ('c', 'C', 'Prestar assistência jurídica integral e gratuita aos necessitados.', 3),
  ('d', 'D', 'Exercer o controle externo da atividade jurisdicional.', 4),
  ('e', 'E', 'Decretar a prisão temporária de investigados em inquéritos policiais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000132';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000132' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Funções do MP (Art. 129, I).', 'A promoção privativa da ação penal pública é a função mais clássica do MP.', 'O MP é o "dominus litis" da ação penal pública.' from public.questions q where q.public_code = 'PPCE-DC-000132';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Função da Advocacia Pública (AGU/Procuradorias).'),
  ('c', 'Incorreta. Função da Defensoria Pública.'),
  ('d', 'Incorreta. O MP exerce o controle externo da atividade POLICIAL, não jurisdicional.'),
  ('e', 'Incorreta. Prisão depende de ordem judicial (cláusula de reserva de jurisdição).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000132';

-- -----------------------------------------------------------------------------
-- QUESTÃO 133: Escolha do PGR (Art. 128, § 1º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000133', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Funções Essenciais à Justiça', 'Ministério Público', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Ministério Público da União tem por chefe o Procurador-Geral da República, nomeado pelo Presidente da República dentre integrantes da carreira, maiores de trinta e cinco anos, após a aprovação de seu nome por:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Maioria simples do Senado Federal.', 1),
  ('b', 'B', 'Maioria absoluta do Senado Federal.', 2),
  ('c', 'C', 'Dois terços da Câmara dos Deputados.', 3),
  ('d', 'D', 'Maioria absoluta do Congresso Nacional em sessão conjunta.', 4),
  ('e', 'E', 'Unanimidade do Conselho Superior do Ministério Público.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000133';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000133' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Nomeação do PGR.', 'O PGR é aprovado pela maioria ABSOLUTA do Senado Federal.', 'Dica: Quorum de maioria absoluta (41 senadores).' from public.questions q where q.public_code = 'PPCE-DC-000133';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Maioria absoluta é necessária.'),
  ('c', 'Incorreta. A Câmara não participa da aprovação do PGR.'),
  ('d', 'Incorreta. É competência apenas do Senado.'),
  ('e', 'Incorreta. Órgão interno do MP não aprova a nomeação política feita pelo Presidente.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000133';

-- -----------------------------------------------------------------------------
-- QUESTÃO 134: Vedação aos Membros do MP (Art. 128, § 5º, II)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000134', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Funções Essenciais à Justiça', 'Ministério Público', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Aos membros do Ministério Público é vedado:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Exercer, ainda que em disponibilidade, qualquer outra função pública, salvo uma de magistério.', 1),
  ('b', 'B', 'Exercer a advocacia no próprio órgão de atuação após 1 ano da aposentadoria.', 2),
  ('c', 'C', 'Participar de conselhos de administração de empresas públicas sem remuneração.', 3),
  ('d', 'D', 'Manifestar-se politicamente em redes sociais sobre temas jurídicos.', 4),
  ('e', 'E', 'Residir fora da comarca de atuação, independentemente de autorização.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000134';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000134' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Vedações do MP (Art. 128, § 5º, II, d).', 'É vedado exercer outra função pública, SALVO uma de magistério.', 'Mesma vedação aplicada aos magistrados.' from public.questions q where q.public_code = 'PPCE-DC-000134';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A quarentena de saída é de 3 anos (Art. 128, § 6º).'),
  ('c', 'Incorreta. É vedada a participação em sociedade comercial (Art. 128, § 5º, II, c).'),
  ('d', 'Incorreta. É vedado o exercício de atividade político-partidária (Art. 128, § 5º, II, e).'),
  ('e', 'Incorreta. Devem residir na comarca, salvo autorização (Art. 129, § 2º).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000134';

-- -----------------------------------------------------------------------------
-- QUESTÃO 135: Advocacia Pública (Art. 131)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000135', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Funções Essenciais à Justiça', 'Advocacia Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A Advocacia-Geral da União é a instituição que, diretamente ou através de órgão vinculado, representa a União, judicial e extrajudicialmente, cabendo-lhe, nos termos da lei complementar que dispuser sobre sua organização e funcionamento, as atividades de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Consultoria e assessoramento jurídico do Poder Executivo.', 1),
  ('b', 'B', 'Investigação criminal de infrações contra a ordem tributária.', 2),
  ('c', 'C', 'Defesa dos interesses individuais homogêneos de consumidores.', 3),
  ('d', 'D', 'Fiscalização da lei e da ordem jurídica.', 4),
  ('e', 'E', 'Julgamento de recursos administrativos de servidores federais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000135';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000135' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Advocacia Pública (Art. 131).', 'A AGU faz a representação judicial e a consultoria/assessoramento jurídico do Executivo.', 'Pense na AGU como o "advogado" do Estado (União).' from public.questions q where q.public_code = 'PPCE-DC-000135';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Função da Polícia e do MP.'),
  ('c', 'Incorreta. Função da Defensoria ou do MP.'),
  ('d', 'Incorreta. Função precípua do MP (fiscal da lei).'),
  ('e', 'Incorreta. Função de órgãos correcionais ou conselhos administrativos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000135';

-- -----------------------------------------------------------------------------
-- QUESTÃO 136: Defensoria Pública (Art. 134)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000136', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Funções Essenciais à Justiça', 'Defensoria Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A Defensoria Pública é instituição permanente, essencial à função jurisdicional do Estado, incumbindo-lhe, como expressão e instrumento do regime democrático, fundamentalmente:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A orientação jurídica, a promoção dos direitos humanos e a defesa, em todos os graus, judicial e extrajudicial, dos direitos individuais e coletivos, de forma integral e gratuita, aos necessitados.', 1),
  ('b', 'B', 'A consultoria jurídica exclusiva de órgãos estaduais e municipais.', 2),
  ('c', 'C', 'A apuração de infrações penais militares.', 3),
  ('d', 'D', 'O controle interno da Polícia Militar.', 4),
  ('e', 'E', 'A representação judicial de partidos políticos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000136';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000136' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Defensoria Pública (Art. 134).', 'A DP atua na orientação jurídica e defesa dos necessitados.', 'A Defensoria é o "advogado" dos hipossuficientes.' from public.questions q where q.public_code = 'PPCE-DC-000136';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Consultoria de órgãos é da Advocacia Pública.'),
  ('c', 'Incorreta. Função da Polícia Militar ou MP.'),
  ('d', 'Incorreta. Função de Corregedorias ou do MP.'),
  ('e', 'Incorreta. Partidos têm advogados próprios.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000136';

-- -----------------------------------------------------------------------------
-- QUESTÃO 137: Autonomia da Defensoria Pública (Art. 134, § 2º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000137', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Funções Essenciais à Justiça', 'Defensoria Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Às Defensorias Públicas Estaduais são asseguradas autonomia funcional e administrativa e a iniciativa de sua proposta orçamentária dentro dos limites estabelecidos na:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Lei de Diretrizes Orçamentárias.', 1),
  ('b', 'B', 'Constituição Federal apenas.', 2),
  ('c', 'C', 'Lei Orgânica da Magistratura.', 3),
  ('d', 'D', 'Lei de Responsabilidade Fiscal.', 4),
  ('e', 'E', 'Vontade discricionária do Governador.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000137';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000137' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Autonomia da DP.', 'A autonomia e iniciativa orçamentária são limitadas pela LDO.', 'A autonomia da DP foi expandida por emendas constitucionais (EC 45, 74 e 80).' from public.questions q where q.public_code = 'PPCE-DC-000137';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A LDO é o instrumento infraconstitucional de limite.'),
  ('c', 'Incorreta. Aplica-se aos juízes.'),
  ('d', 'Incorreta. A LRF traz limites de gastos, mas a iniciativa orçamentária foca na LDO.'),
  ('e', 'Incorreta. A autonomia visa justamente reduzir a dependência do Executivo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000137';

-- -----------------------------------------------------------------------------
-- QUESTÃO 138: Advocacia (Indispensabilidade - Art. 133)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000138', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Funções Essenciais à Justiça', 'Advocacia', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O advogado é indispensável à administração da justiça, sendo inviolável por seus atos e manifestações no exercício da profissão, nos limites da:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sua própria consciência.', 1),
  ('b', 'B', 'Lei.', 2),
  ('c', 'C', 'Vontade do magistrado.', 3),
  ('d', 'D', 'Autorização da OAB.', 4),
  ('e', 'E', 'Conveniência política.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000138';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000138' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Indispensabilidade do Advogado (Art. 133).', 'A inviolabilidade do advogado é garantida "nos limites da lei".', 'A lei referida é o Estatuto da OAB (Lei 8.906/94).' from public.questions q where q.public_code = 'PPCE-DC-000138';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Critério subjetivo não jurídico.'),
  ('c', 'Incorreta. O advogado não se subordina ao juiz.'),
  ('d', 'Incorreta. A OAB fiscaliza, mas a lei dá a base da inviolabilidade.'),
  ('e', 'Incorreta. Critério extrajurídico.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000138';

-- -----------------------------------------------------------------------------
-- QUESTÃO 139: CNMP (Composição - Art. 130-A)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000139', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Funções Essenciais à Justiça', 'Conselho Nacional do Ministério Público', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Conselho Nacional do Ministério Público compõe-se de 14 membros nomeados pelo Presidente da República, depois de aprovada a escolha pela maioria absoluta do Senado Federal, para um mandato de dois anos, admitida uma recondução. O CNMP é presidido pelo:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ministro da Justiça.', 1),
  ('b', 'B', 'Procurador-Geral da República.', 2),
  ('c', 'C', 'Presidente do Supremo Tribunal Federal.', 3),
  ('d', 'D', 'Presidente da OAB.', 4),
  ('e', 'E', 'Membro mais antigo do conselho.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000139';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000139' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Presidência do CNMP.', 'O PGR é o presidente nato do CNMP.', 'Dica: PGR preside o CNMP. Presidente do STF preside o CNJ.' from public.questions q where q.public_code = 'PPCE-DC-000139';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Órgão do Executivo.'),
  ('c', 'Incorreta. Preside o CNJ.'),
  ('d', 'Incorreta. A OAB indica membros, mas não preside.'),
  ('e', 'Incorreta. Regra de antiguidade não se aplica à presidência nata.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000139';

-- -----------------------------------------------------------------------------
-- QUESTÃO 140: Garantias dos Membros do MP (Art. 128, § 5º, I)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000140', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Funções Essenciais à Justiça', 'Ministério Público', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Os membros do Ministério Público gozam das mesmas garantias dos magistrados, sendo elas:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Vitaliciedade, inamovibilidade e irredutibilidade de subsídio.', 1),
  ('b', 'B', 'Estabilidade, integralidade e paridade.', 2),
  ('c', 'C', 'Vitaliciamento após 3 anos de exercício.', 3),
  ('d', 'D', 'Inamovibilidade absoluta, sem exceção por interesse público.', 4),
  ('e', 'E', 'Aposentadoria compulsória aos 60 anos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000140';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000140' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Garantias do MP.', 'As garantias são V-I-I (Vitaliciedade, Inamovibilidade e Irredutibilidade).', 'A vitaliciedade no MP também é adquirida após 2 anos (Art. 128, § 5º, I, a).' from public.questions q where q.public_code = 'PPCE-DC-000140';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Termos de regime previdenciário comum ou antigo.'),
  ('c', 'Incorreta. O vitaliciamento ocorre após 2 anos.'),
  ('d', 'Incorreta. A inamovibilidade pode ser mitigada por interesse público e voto de 2/3 do conselho.'),
  ('e', 'Incorreta. A compulsória é aos 75 anos (Lei Complementar 152/2015).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000140';

-- -----------------------------------------------------------------------------
-- QUESTÃO 141: Estado de Defesa (Requisitos - Art. 136)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000141', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Estado de Defesa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Presidente da República pode, ouvidos o Conselho da República e o Conselho de Defesa Nacional, decretar estado de defesa para preservar ou prontamente restabelecer, em locais restritos e determinados, a ordem pública ou a paz social ameaçadas por:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Guerra declarada ou resposta a agressão armada estrangeira.', 1),
  ('b', 'B', 'Instabilidade institucional grave ou calamidades de grandes proporções na natureza.', 2),
  ('c', 'C', 'Crimes de responsabilidade do Governador.', 3),
  ('d', 'D', 'Greve geral de servidores públicos.', 4),
  ('e', 'E', 'Apenas por calamidades de grandes proporções na natureza.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000141';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000141' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Hipóteses de Estado de Defesa (Art. 136).', 'O Estado de Defesa visa combater instabilidade institucional ou calamidades naturais em locais RESTRITOS.', 'Dica: Locais restritos e determinados.' from public.questions q where q.public_code = 'PPCE-DC-000141';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Hipótese de Estado de Sítio.'),
  ('c', 'Incorreta. Hipótese de Intervenção Federal.'),
  ('d', 'Incorreta. Não autoriza por si só a medida de exceção.'),
  ('e', 'Incorreta. Instabilidade institucional também é causa.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000141';

-- -----------------------------------------------------------------------------
-- QUESTÃO 142: Estado de Defesa (Prazo - Art. 136, § 2º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000142', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Estado de Defesa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O tempo de duração do estado de defesa não será superior a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '15 dias, podendo ser prorrogado uma vez por igual período.', 1),
  ('b', 'B', '30 dias, podendo ser prorrogado uma vez por igual período.', 2),
  ('c', 'C', '60 dias, sem possibilidade de prorrogação.', 3),
  ('d', 'D', 'Indeterminado, enquanto durar a causa.', 4),
  ('e', 'E', '180 dias.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000142';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000142' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Duração do Estado de Defesa.', 'Prazo máximo de 30 dias, admitida UMA ÚNICA prorrogação por igual período.', 'Dica: 30 + 30.' from public.questions q where q.public_code = 'PPCE-DC-000142';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Prazo insuficiente.'),
  ('c', 'Incorreta. Existe prorrogação e o prazo inicial é 30.'),
  ('d', 'Incorreta. Deve ter prazo determinado.'),
  ('e', 'Incorreta. Prazo excessivo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000142';

-- -----------------------------------------------------------------------------
-- QUESTÃO 143: Estado de Sítio (Hipóteses - Art. 137)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000143', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Estado de Sítio', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Presidente da República pode solicitar ao Congresso Nacional autorização para decretar o estado de sítio nos casos de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Comovulção grave de repercussão nacional ou ocorrência de fatos que comprovem a ineficácia de medida tomada durante o estado de defesa.', 1),
  ('b', 'B', 'Calamidades de pequenas proporções na natureza.', 2),
  ('c', 'C', 'Crimes comuns praticados pelo Vice-Presidente.', 3),
  ('d', 'D', 'Descumprimento de prazos processuais pelo Judiciário.', 4),
  ('e', 'E', 'Apenas em caso de guerra externa.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000143';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000143' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Estado de Sítio (Art. 137, I).', 'O Estado de Sítio é mais grave que o de Defesa, aplicado em comoção NACIONAL ou quando o Estado de Defesa falha.', 'Dica: Sítio = Repercussão Nacional ou Ineficácia da Defesa.' from public.questions q where q.public_code = 'PPCE-DC-000143';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Calamidades autorizam Estado de Defesa.'),
  ('c', 'Incorreta. Não é hipótese de sítio.'),
  ('d', 'Incorreta. Problema administrativo não justifica estado de exceção.'),
  ('e', 'Incorreta. Guerra é outra hipótese (Art. 137, II), mas não a única.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000143';

-- -----------------------------------------------------------------------------
-- QUESTÃO 144: Estado de Sítio (Prorrogação - Art. 138, § 1º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000144', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Estado de Sítio', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'No caso de guerra declarada (Art. 137, II), o estado de sítio poderá ser decretado por:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '30 dias, prorrogáveis sucessivamente por mais 30.', 1),
  ('b', 'B', 'Todo o tempo que perdurar a guerra ou a agressão armada.', 2),
  ('c', 'C', '60 dias, sem prorrogação.', 3),
  ('d', 'D', '90 dias.', 4),
  ('e', 'E', 'Um ano, renovável.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000144';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000144' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Duração do Sítio-Guerra.', 'No caso de guerra, o prazo não tem o limite de 30 dias, podendo durar enquanto a guerra durar.', 'Cuidado: No Sítio-Comoção (Art. 137, I), o limite é de 30 dias.' from public.questions q where q.public_code = 'PPCE-DC-000144';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Este limite é para o Sítio-Comoção.'),
  ('c', 'Incorreta. Guerra não tem prazo fixo curto.'),
  ('d', 'Incorreta. Prazo aleatório.'),
  ('e', 'Incorreta. Prazo aleatório.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000144';

-- -----------------------------------------------------------------------------
-- QUESTÃO 145: Forças Armadas (Missão - Art. 142)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000145', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Forças Armadas', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'As Forças Armadas, constituídas pela Marinha, pelo Exército e pela Aeronáutica, destinam-se à defesa da Pátria, à garantia dos poderes constitucionais e, por iniciativa de qualquer destes, da:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Segurança pública urbana.', 1),
  ('b', 'B', 'Ordem pública e do patrimônio privado.', 2),
  ('c', 'C', 'Lei e da ordem.', 3),
  ('d', 'D', 'Moralidade administrativa.', 4),
  ('e', 'E', 'Soberania dos Estados federados.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000145';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000145' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Missão das Forças Armadas.', 'Destinam-se à defesa da Pátria, garantia dos poderes e da LEI E DA ORDEM (GLO).', 'Dica: GLO (Garantia da Lei e da Ordem).' from public.questions q where q.public_code = 'PPCE-DC-000145';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Segurança pública é foco do Art. 144.'),
  ('b', 'Incorreta. Termo genérico não literal da CF.'),
  ('d', 'Incorreta. Foco jurídico/político, não moral direto.'),
  ('e', 'Incorreta. A soberania é da UNIÃO (República Federativa).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000145';

-- -----------------------------------------------------------------------------
-- QUESTÃO 146: Militares (Vedações - Art. 142, § 3º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000146', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Forças Armadas', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Ao militar em serviço ativo é vedado:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Casar-se sem autorização do comandante.', 1),
  ('b', 'B', 'Sindicalização e a greve.', 2),
  ('c', 'C', 'Cursar nível superior em instituições civis.', 3),
  ('d', 'D', 'Ter residência fora da vila militar.', 4),
  ('e', 'E', 'Apenas a greve, sendo a sindicalização permitida.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000146';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000146' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Vedações Militares (Art. 142, § 3º, IV).', 'Militares são proibidos de sindicalização e greve.', 'Dica: Hierarquia e disciplina não combinam com greve.' from public.questions q where q.public_code = 'PPCE-DC-000146';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Não há essa vedação constitucional.'),
  ('c', 'Incorreta. É permitido e incentivado.'),
  ('d', 'Incorreta. Não há essa vedação constitucional.'),
  ('e', 'Incorreta. Ambos são proibidos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000146';

-- -----------------------------------------------------------------------------
-- QUESTÃO 147: Militar e Cargo Eletivo (Art. 142, § 3º, V)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000147', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Forças Armadas', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O militar em serviço ativo que, de acordo com a lei, tomar posse em cargo ou emprego público civil permanente, ressalvada a hipótese de profissionais de saúde, será:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Transferido para a reserva remunerada.', 1),
  ('b', 'B', 'Transferido para a reserva não remunerada.', 2),
  ('c', 'C', 'Demitido sem direito a qualquer verba.', 3),
  ('d', 'D', 'Transferido para a reserva, nos termos da lei.', 4),
  ('e', 'E', 'Mantido na ativa com acumulação de cargos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000147';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000147' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Acumulação de Cargos (Art. 142, § 3º, II).', 'Ao tomar posse em cargo civil permanente, o militar é transferido para a reserva.', 'O militar "sai" da ativa imediatamente.' from public.questions q where q.public_code = 'PPCE-DC-000147';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. A remunerada depende de tempo de serviço e regras da previdência militar.'),
  ('b', 'Incorreta. Não é o termo constitucional exato.'),
  ('c', 'Incorreta. Não há demissão punitiva por este fato.'),
  ('e', 'Incorreta. Vedada a acumulação (salvo saúde/magistério conforme regras específicas).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000147';

-- -----------------------------------------------------------------------------
-- QUESTÃO 148: Habeas Corpus e Punições Militares (Art. 142, § 2º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000148', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Forças Armadas', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Não caberá "habeas corpus" em relação a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Prisão civil por dívida alimentar.', 1),
  ('b', 'B', 'Punições disciplinares militares.', 2),
  ('c', 'C', 'Prisão em flagrante de crime hediondo.', 3),
  ('d', 'D', 'Prisão administrativa de estrangeiro.', 4),
  ('e', 'E', 'Prisão preventiva decretada por tribunal superior.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000148';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000148' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Habeas Corpus e Militares.', 'Não cabe HC para o MÉRITO de punições disciplinares militares.', 'O STF entende que cabe HC para analisar a LEGALIDADE (aspectos formais) da punição militar.' from public.questions q where q.public_code = 'PPCE-DC-000148';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Cabe HC se for ilegal.'),
  ('c', 'Incorreta. Cabe HC se houver ilegalidade.'),
  ('d', 'Incorreta. Cabe HC.'),
  ('e', 'Incorreta. Cabe HC (ao STF).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000148';

-- -----------------------------------------------------------------------------
-- QUESTÃO 149: Segurança Pública (PRF - Art. 144, § 2º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000149', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A polícia rodoviária federal, órgão permanente, organizado e mantido pela União e estruturado em carreira, destina-se, na forma da lei, ao:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Patrulhamento ostensivo das rodovias federais.', 1),
  ('b', 'B', 'Policiamento preventivo de fronteiras.', 2),
  ('c', 'C', 'Repressão ao tráfico interestadual de entorpecentes com exclusividade.', 3),
  ('d', 'D', 'Segurança dos portos e aeroportos.', 4),
  ('e', 'E', 'Combate ao crime organizado em âmbito nacional.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000149';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000149' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Atribuição da PRF.', 'A PRF destina-se ao patrulhamento OSTENSIVO das RODOVIAS federais.', 'Dica: Rodoviária = Rodovias.' from public.questions q where q.public_code = 'PPCE-DC-000149';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Fronteiras é foco da PF (marítima, aeroportuária e de fronteiras).'),
  ('c', 'Incorreta. Atribuição da PF.'),
  ('d', 'Incorreta. Atribuição da PF.'),
  ('e', 'Incorreta. Atribuição genérica da PF.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000149';

-- -----------------------------------------------------------------------------
-- QUESTÃO 150: Polícia Penal (Competência - Art. 144, § 5º-A)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000150', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Às polícias penais, vinculadas ao órgão administrador do sistema penal da unidade federativa a que pertencem, cabe a segurança dos:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Prédios públicos municipais.', 1),
  ('b', 'B', 'Estabelecimentos penais.', 2),
  ('c', 'C', 'Fóruns e tribunais estaduais.', 3),
  ('d', 'D', 'Cidadãos em vias públicas apenas.', 4),
  ('e', 'E', 'Depósitos de armas da Polícia Civil.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000150';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000150' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Atribuição da Polícia Penal.', 'Cabe a segurança dos estabelecimentos penais.', 'Dica: Polícia Penal = Presídios.' from public.questions q where q.public_code = 'PPCE-DC-000150';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Atribuição de guardas municipais ou vigilância patrimonial.'),
  ('c', 'Incorreta. Atribuição de segurança institucional própria ou PM.'),
  ('d', 'Incorreta. Atribuição da PM.'),
  ('e', 'Incorreta. Atribuição da própria Polícia Civil.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000150';




