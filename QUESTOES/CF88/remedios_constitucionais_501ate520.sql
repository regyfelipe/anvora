-- =============================================================================
-- BLOCO DE QUESTÕES: PPCE - DIREITO CONSTITUCIONAL
-- TÓPICO: REMÉDIOS CONSTITUCIONAIS
-- CÓDIGOS: PPCE-DC-000501 A PPCE-DC-000520
-- =============================================================================

-- -----------------------------------------------------------------------------
-- QUESTÃO 501: Habeas Corpus - Natureza e Gratuidade
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000501', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Corpus', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Sobre o Habeas Corpus, remédio constitucional destinado a proteger a liberdade de locomoção, assinale a alternativa correta:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'É uma ação judicial paga, exigindo custas processuais iniciais.', 1),
  ('b', 'B', 'Pode ser impetrado apenas por advogado devidamente habilitado.', 2),
  ('c', 'C', 'São gratuitas as ações de habeas corpus.', 3),
  ('d', 'D', 'Não pode ser utilizado em caso de abuso de poder, apenas em ilegalidade.', 4),
  ('e', 'E', 'É cabível para proteger o direito de acesso a informações pessoais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000501';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000501' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Habeas Corpus - Gratuidade.', 'A Constituição Federal de 1988, no Art. 5º, LXXVII, estabelece expressamente que as ações de habeas corpus e habeas data são gratuitas.', 'Dica: HC e HD são os "H" gratuitos.' from public.questions q where q.public_code = 'PPCE-DC-000501';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O HC é gratuito.'),
  ('b', 'Incorreta. O HC pode ser impetrado por qualquer pessoa, independentemente de advogado.'),
  ('d', 'Incorreta. É cabível tanto por ilegalidade quanto por abuso de poder.'),
  ('e', 'Incorreta. Para informações pessoais o remédio adequado é o Habeas Data.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000501';

-- -----------------------------------------------------------------------------
-- QUESTÃO 502: Mandado de Segurança - Direito Líquido e Certo
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000502', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Segurança', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Mandado de Segurança é o remédio constitucional cabível para proteger direito líquido e certo, não amparado por habeas corpus ou habeas data. Sobre o conceito de "direito líquido e certo", assinale a alternativa correta:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'É aquele que pode ser comprovado mediante dilação probatória durante o processo.', 1),
  ('b', 'B', 'É o direito que se apresenta manifesto na sua existência, delimitado na sua extensão e apto a ser exercitado no momento da impetração.', 2),
  ('c', 'C', 'Refere-se apenas a direitos patrimoniais líquidos e mensuráveis.', 3),
  ('d', 'D', 'É o direito que depende de perícia técnica para sua constatação.', 4),
  ('e', 'E', 'É o direito amparado exclusivamente por lei complementar.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000502';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000502' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Mandado de Segurança - Direito Líquido e Certo.', 'Direito líquido e certo é aquele comprovado de plano, por documentos (prova pré-constituída), sem necessidade de fase de produção de provas.', 'Se precisar de testemunha ou perícia, não cabe MS!' from public.questions q where q.public_code = 'PPCE-DC-000502';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O MS não admite dilação probatória.'),
  ('c', 'Incorreta. Pode ser qualquer direito, desde que líquido e certo.'),
  ('d', 'Incorreta. Perícia exige dilação probatória, o que afasta o MS.'),
  ('e', 'Incorreta. Não há essa restrição quanto à espécie normativa.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000502';

-- -----------------------------------------------------------------------------
-- QUESTÃO 503: Habeas Data - Requisito Administrativo
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000503', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Data', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'De acordo com a jurisprudência sumulada do Superior Tribunal de Justiça (Súmula 2), o conhecimento do Habeas Data exige:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A comprovação da recusa da autoridade administrativa ao pedido de acesso às informações.', 1),
  ('b', 'B', 'A presença de advogado e o pagamento de custas judiciais.', 2),
  ('c', 'C', 'Que a informação seja relativa a terceiros, para garantir o interesse público.', 3),
  ('d', 'D', 'Que o impetrante seja estrangeiro não residente no país.', 4),
  ('e', 'E', 'Apenas a alegação de que a informação é sigilosa.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000503';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000503' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Habeas Data - Recusa Administrativa.', 'O Habeas Data é uma ação de natureza subsidiária. A Súmula 2 do STJ diz: "Não cabe o habeas data (CF, art. 5., LXXII, a) se não houver recusa de informações por parte da autoridade administrativa".', 'Sem recusa administrativa, não há interesse de agir no HD.' from public.questions q where q.public_code = 'PPCE-DC-000503';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. HD é gratuito, embora exija advogado.'),
  ('c', 'Incorreta. HD é personalíssimo (apenas dados do próprio impetrante).'),
  ('d', 'Incorreta. Qualquer pessoa pode impetrar.'),
  ('e', 'Incorreta. O objetivo do HD é justamente acessar a informação, não apenas alegar sigilo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000503';

-- -----------------------------------------------------------------------------
-- QUESTÃO 504: Mandado de Injunção - Finalidade
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000504', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Injunção', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Conceder-se-á Mandado de Injunção sempre que:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Alguém sofrer violência na sua liberdade de locomoção por ilegalidade.', 1),
  ('b', 'B', 'Houver necessidade de retificação de dados pessoais em registros públicos.', 2),
  ('c', 'C', 'A falta de norma regulamentadora torne inviável o exercício dos direitos e liberdades constitucionais.', 3),
  ('d', 'D', 'Um cidadão desejar anular ato lesivo ao patrimônio público.', 4),
  ('e', 'E', 'Houver direito líquido e certo não amparado por outros remédios.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000504';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000504' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Mandado de Injunção - Finalidade.', 'O MI combate a síndrome da inefetividade das normas constitucionais de eficácia limitada (Art. 5º, LXXI).', 'MI = Falta de norma regulamentadora.' from public.questions q where q.public_code = 'PPCE-DC-000504';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Caso de Habeas Corpus.'),
  ('b', 'Incorreta. Caso de Habeas Data.'),
  ('d', 'Incorreta. Caso de Ação Popular.'),
  ('e', 'Incorreta. Caso de Mandado de Segurança.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000504';

-- -----------------------------------------------------------------------------
-- QUESTÃO 505: Ação Popular - Legitimidade Ativa
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000505', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Ação Popular', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A legitimidade ativa para a propositura de Ação Popular é restrita ao:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ministério Público.', 1),
  ('b', 'B', 'Qualquer partido político com representação no Congresso.', 2),
  ('c', 'C', 'Cidadão.', 3),
  ('d', 'D', 'Qualquer residente no país, nacional ou estrangeiro.', 4),
  ('e', 'E', 'Defensor Público Geral.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000505';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000505' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Ação Popular - Legitimidade.', 'A Ação Popular (Art. 5º, LXXIII) exige que o autor seja CIDADÃO (pessoa física no gozo de seus direitos políticos).', 'Pessoa jurídica não pode propor Ação Popular!' from public.questions q where q.public_code = 'PPCE-DC-000505';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O MP pode assumir a ação se o cidadão desistir, mas não a inicia.'),
  ('b', 'Incorreta. Partidos podem propor MS Coletivo, mas não AP como entidade.'),
  ('d', 'Incorreta. Exige-se o título de eleitor (cidadania).'),
  ('e', 'Incorreta. Não possui legitimidade para Ação Popular.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000505';

-- -----------------------------------------------------------------------------
-- QUESTÃO 506: Mandado de Segurança Coletivo - Legitimidade
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000506', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Segurança', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Mandado de Segurança Coletivo pode ser impetrado por partido político:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Independentemente de representação parlamentar.', 1),
  ('b', 'B', 'Com representação no Congresso Nacional.', 2),
  ('c', 'C', 'Apenas se possuir mais de 1 milhão de filiados.', 3),
  ('d', 'D', 'Somente em defesa de seus interesses patrimoniais.', 4),
  ('e', 'E', 'Apenas se estiver no governo (situação).', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000506';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000506' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MS Coletivo - Partidos Políticos.', 'Segundo o Art. 5º, LXX, a Constituição exige que o partido político tenha representação no Congresso Nacional (pelo menos um deputado ou um senador).', 'Dica: Um parlamentar já basta para configurar representação.' from public.questions q where q.public_code = 'PPCE-DC-000506';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. A representação no Congresso é requisito constitucional.'),
  ('c', 'Incorreta. Não há requisito de número de filiados na CF.'),
  ('d', 'Incorreta. Pode defender interesses de seus membros ou associados relacionados a fins partidários.'),
  ('e', 'Incorreta. Partidos de oposição também possuem esse direito.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000506';

-- -----------------------------------------------------------------------------
-- QUESTÃO 507: Habeas Corpus Preventivo
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000507', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Corpus', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Quando o indivíduo se acha apenas "ameaçado" de sofrer violência ou coação em sua liberdade de locomoção, o Habeas Corpus a ser impetrado é do tipo:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Repressivo.', 1),
  ('b', 'B', 'Liberatório.', 2),
  ('c', 'C', 'Preventivo (Salvo-conduto).', 3),
  ('d', 'D', 'Suspensivo.', 4),
  ('e', 'E', 'Declaratório.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000507';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000507' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'HC Preventivo.', 'O HC preventivo é cabível quando há fundado receio de ameaça à liberdade. O documento expedido é o Salvo-conduto.', 'Ameaça = Preventivo. Coação já ocorrida = Repressivo.' from public.questions q where q.public_code = 'PPCE-DC-000507';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O repressivo serve para quando a violência já ocorreu.'),
  ('b', 'Incorreta. Liberatório é sinônimo de repressivo.'),
  ('d', 'Incorreta. Não é nomenclatura usual para HC.'),
  ('e', 'Incorreta. Não é nomenclatura usual para HC.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000507';

-- -----------------------------------------------------------------------------
-- QUESTÃO 508: Mandado de Injunção Coletivo
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000508', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Injunção', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Sobre o Mandado de Injunção Coletivo (Lei 13.300/2016), assinale a alternativa que indica um legitimado ativo para sua propositura:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Qualquer cidadão individualmente.', 1),
  ('b', 'B', 'Ministério Público, quando a falta de norma regulamentadora for necessária para o exercício de direitos sociais.', 2),
  ('c', 'C', 'Conselho Federal da OAB apenas.', 3),
  ('d', 'D', 'Exclusivamente o Presidente da República.', 4),
  ('e', 'E', 'Empresas públicas federais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000508';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000508' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MI Coletivo - Legitimidade.', 'A Lei 13.300/2016 e a jurisprudência conferem legitimidade ao MP, partidos políticos com representação, organizações sindicais, entidades de classe ou associações.', 'O MP tem papel fundamental na defesa de direitos coletivos via MI.' from public.questions q where q.public_code = 'PPCE-DC-000508';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Cidadão propõe MI individual.'),
  ('c', 'Incorreta. Não é o único legitimado.'),
  ('d', 'Incorreta. O Presidente é geralmente o legitimado passivo (quem deve criar a norma).'),
  ('e', 'Incorreta. Não possuem essa atribuição constitucional/legal.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000508';

-- -----------------------------------------------------------------------------
-- QUESTÃO 509: Ação Popular - Objeto
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000509', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Ação Popular', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A Ação Popular visa anular ato lesivo a diversos bens jurídicos. Qual dos seguintes NÃO consta expressamente no Art. 5º, LXXIII da CF/88 como objeto de proteção da Ação Popular?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Patrimônio público ou de entidade de que o Estado participe.', 1),
  ('b', 'B', 'Moralidade administrativa.', 2),
  ('c', 'C', 'Meio ambiente.', 3),
  ('d', 'D', 'Patrimônio histórico e cultural.', 4),
  ('e', 'E', 'Segurança pública nacional.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000509';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000509' and qo.question_id = q.id and qo.option_key = 'e';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Ação Popular - Objeto.', 'A CF elenca: patrimônio público/entidade participada, moralidade administrativa, meio ambiente e patrimônio histórico/cultural.', 'Dica: PMMM (Patrimônio, Moralidade, Meio ambiente, Memória histórica).' from public.questions q where q.public_code = 'PPCE-DC-000509';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Está previsto expressamente.'),
  ('b', 'Incorreta. Está previsto expressamente.'),
  ('c', 'Incorreta. Está previsto expressamente.'),
  ('d', 'Incorreta. Está previsto expressamente.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000509';

-- -----------------------------------------------------------------------------
-- QUESTÃO 510: Mandado de Segurança - Prazo Decadencial
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000510', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Segurança', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O direito de requerer Mandado de Segurança extinguir-se-á decorridos quantos dias da ciência, pelo interessado, do ato impugnado?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '30 dias.', 1),
  ('b', 'B', '60 dias.', 2),
  ('c', 'C', '90 dias.', 3),
  ('d', 'D', '120 dias.', 4),
  ('e', 'E', '180 dias.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000510';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000510' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MS - Prazo Decadencial.', 'Conforme o Art. 23 da Lei 12.016/2009, o prazo é de 120 dias.', 'Lembre-se: 120 dias é o prazo "mágico" do MS.' from public.questions q where q.public_code = 'PPCE-DC-000510';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Prazo muito curto.'),
  ('b', 'Incorreta. Erro comum, mas o prazo legal é o dobro.'),
  ('c', 'Incorreta. Prazo incorreto.'),
  ('e', 'Incorreta. Prazo muito longo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000510';

-- -----------------------------------------------------------------------------
-- QUESTÃO 511: Habeas Data - Caráter Personalíssimo
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000511', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Data', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O Habeas Data pode ser utilizado para obter informações de terceiros (como cônjuges ou pais falecidos)?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, em qualquer situação, bastando o parentesco.', 1),
  ('b', 'B', 'Não, pois é um remédio de caráter estritamente personalíssimo.', 2),
  ('c', 'C', 'Sim, conforme entendimento do STF, os herdeiros legítimos possuem legitimidade para pedir informações do "de cujus".', 3),
  ('d', 'D', 'Sim, mas apenas se houver autorização judicial prévia específica.', 4),
  ('e', 'E', 'Não, exceto se o terceiro for autoridade pública.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000511';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000511' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Habeas Data - Terceiros.', 'Embora a regra seja o caráter personalíssimo, o STF e o STJ admitem o HD por herdeiros para acessar dados de familiares falecidos.', 'Esta é uma exceção jurisprudencial importante para provas de nível médio/alto.' from public.questions q where q.public_code = 'PPCE-DC-000511';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Exige-se que o titular dos dados tenha falecido (sucessão).'),
  ('b', 'Incorreta. A regra é essa, mas a jurisprudência abriu a exceção para herdeiros.'),
  ('d', 'Incorreta. O próprio HD já é o meio judicial, não exige outra autorização.'),
  ('e', 'Incorreta. Critério não jurídico para esta situação.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000511';

-- -----------------------------------------------------------------------------
-- QUESTÃO 512: Mandado de Injunção - Efeitos da Decisão (Corrente Concretista)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000512', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Injunção', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A Lei 13.300/2016 adotou, como regra para os efeitos da decisão no Mandado de Injunção, a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Corrente Não-Concretista (apenas declara a mora).', 1),
  ('b', 'B', 'Corrente Concretista Direta (o tribunal aplica o direito ao caso).', 2),
  ('c', 'C', 'Corrente Concretista Intermediária (dá prazo ao órgão e, se não cumprido, o tribunal concretiza).', 3),
  ('d', 'D', 'Teoria do Abuso de Poder Legislativo.', 4),
  ('e', 'E', 'Suspensão de todos os processos similares no país.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000512';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000512' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MI - Corrente Concretista.', 'A Lei 13.300/2016 (Art. 8º) estabelece que o juiz determinará prazo para a norma ser editada e, após isso, estabelecerá as condições de exercício do direito.', 'Isso evita que o Judiciário invada a competência do Legislativo de imediato.' from public.questions q where q.public_code = 'PPCE-DC-000512';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Essa era a visão antiga do STF, hoje superada.'),
  ('b', 'Incorreta. A direta ocorre em casos excepcionais onde o prazo é dispensado.'),
  ('d', 'Incorreta. Nome de teoria doutrinária, não de efeito de decisão.'),
  ('e', 'Incorreta. Isso pode ocorrer em IRDR ou Recursos Repetitivos, não é a regra do MI.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000512';

-- -----------------------------------------------------------------------------
-- QUESTÃO 513: Ação Popular - Custas e Má-fé
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000513', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Ação Popular', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O autor de Ação Popular ficará isento de custas judiciais e do ônus da sucumbência, SALVO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Se for pessoa de baixa renda.', 1),
  ('b', 'B', 'Se perder a ação por falta de provas.', 2),
  ('c', 'C', 'Comprovada má-fé.', 3),
  ('d', 'D', 'Se a ação for contra o Governador do Estado.', 4),
  ('e', 'E', 'Em nenhuma hipótese, a isenção é absoluta.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000513';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000513' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Ação Popular - Custas.', 'O Art. 5º, LXXIII diz: "...ficando o autor, salvo comprovada má-fé, isento de custas judiciais e do ônus da sucumbência".', 'A má-fé pune o autor aventureiro que usa a ação para fins políticos ou perseguição.' from public.questions q where q.public_code = 'PPCE-DC-000513';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. A isenção é para qualquer cidadão, rica ou pobre, se estiver de boa-fé.'),
  ('b', 'Incorreta. Perder a ação faz parte do risco, a sucumbência só vem se houver má-fé.'),
  ('d', 'Incorreta. O réu não altera a regra da isenção.'),
  ('e', 'Incorreta. A má-fé é a única exceção prevista.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000513';

-- -----------------------------------------------------------------------------
-- QUESTÃO 514: Habeas Corpus - Punições Disciplinares Militares
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000514', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Corpus', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Não cabe Habeas Corpus em relação a punições disciplinares militares. Essa vedação constitucional impede o controle judicial de quais aspectos da punição?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Impede qualquer tipo de controle judicial, inclusive sobre a legalidade.', 1),
  ('b', 'B', 'Impede apenas o controle sobre o mérito da punição (conveniência e oportunidade).', 2),
  ('c', 'C', 'Impede o controle sobre a competência da autoridade.', 3),
  ('d', 'D', 'Autoriza o HC apenas se a punição for de prisão.', 4),
  ('e', 'E', 'Não impede nenhum controle se houver advogado.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000514';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000514' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'HC e Militares.', 'A vedação (Art. 142, § 2º) refere-se ao MÉRITO da punição. A LEGALIDADE (competência, rito, previsão legal) ainda pode ser objeto de HC conforme jurisprudência do STF.', 'Pegadinha clássica: o Judiciário pode sim ver se a punição foi legal, mas não se foi "justa" no mérito militar.' from public.questions q where q.public_code = 'PPCE-DC-000514';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. A legalidade sempre é passível de controle.'),
  ('c', 'Incorreta. Competência é um aspecto da legalidade, controlável via HC.'),
  ('d', 'Incorreta. O texto constitucional veda justamente em relação a essas punições de liberdade no âmbito militar.'),
  ('e', 'Incorreta. A vedação existe e é parcial (mérito).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000514';

-- -----------------------------------------------------------------------------
-- QUESTÃO 515: Mandado de Segurança - Ato de Gestão Comercial
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000515', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Segurança', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Não cabe Mandado de Segurança contra atos de gestão comercial praticados pelos administradores de empresas públicas e sociedades de economia mista. Isso ocorre porque:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Essas empresas não possuem personalidade jurídica de direito público.', 1),
  ('b', 'B', 'Tais atos não são considerados atos de autoridade pública.', 2),
  ('c', 'C', 'O Ministério Público é o único que pode processar essas empresas.', 3),
  ('d', 'D', 'Direito comercial não é protegido pela Constituição.', 4),
  ('e', 'E', 'Apenas o TCU pode anular esses atos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000515';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000515' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MS - Atos de Autoridade.', 'O MS exige um "ato de autoridade". Atos de gestão comercial (como vender um produto ou contratar fornecedor comum) são atos de direito privado, não de império.', 'Súmula 333 do STJ: "Cabe mandado de segurança contra ato praticado em licitação por dirigente de sociedade de economia mista" (pois licitação é ato de autoridade, gestão não).' from public.questions q where q.public_code = 'PPCE-DC-000515';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Embora verdadeiro, não é o motivo principal (delegatários de serviço público também podem sofrer MS).'),
  ('c', 'Incorreta. MP não tem exclusividade.'),
  ('d', 'Incorreta. Afirmação absurda juridicamente.'),
  ('e', 'Incorreta. O TCU exerce controle externo, não substitui o Judiciário via MS.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000515';

-- -----------------------------------------------------------------------------
-- QUESTÃO 516: Habeas Data - Objeto de Retificação
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000516', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Data', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Habeas Data é cabível para a retificação de dados, quando não se prefira fazê-lo por processo sigiloso, judicial ou administrativo. Essa retificação refere-se a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Erros em certidões de nascimento ou casamento.', 1),
  ('b', 'B', 'Dados inexatos em registros ou bancos de dados de entidades governamentais ou de caráter público.', 2),
  ('c', 'C', 'Informações em bancos de dados de empresas privadas de acesso restrito.', 3),
  ('d', 'D', 'Opiniões negativas de vizinhos em processos criminais.', 4),
  ('e', 'E', 'Qualquer informação publicada em redes sociais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000516';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000516' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'HD - Retificação de Dados.', 'O HD serve para dados em registros governamentais ou que, embora privados, tenham caráter público (ex: SPC/Serasa).', 'Art. 5º, LXXII, "b".' from public.questions q where q.public_code = 'PPCE-DC-000516';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Retificação de registro civil tem rito próprio na Lei de Registros Públicos.'),
  ('c', 'Incorreta. Se for estritamente privado (sem caráter público), não cabe HD.'),
  ('d', 'Incorreta. HD não serve para apagar opiniões, mas para corrigir fatos inexatos.'),
  ('e', 'Incorreta. Redes sociais são geridas por empresas privadas sem caráter de registro público.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000516';

-- -----------------------------------------------------------------------------
-- QUESTÃO 517: Mandado de Injunção - Legitimidade Passiva
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000517', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Injunção', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Quem é o legitimado passivo (réu) no Mandado de Injunção?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O cidadão que se beneficia da falta da norma.', 1),
  ('b', 'B', 'O Poder Judiciário, por não ter julgado antes.', 2),
  ('c', 'C', 'O órgão ou autoridade encarregada de produzir a norma regulamentadora.', 3),
  ('d', 'D', 'O Ministério Público Federal.', 4),
  ('e', 'E', 'A Ordem dos Advogados do Brasil.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000517';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000517' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MI - Legitimidade Passiva.', 'O MI é impetrado contra quem tem o dever de legislar e não o fez (omissão legislativa).', 'Se a lei depende do Congresso, o réu é a União (representada pelas mesas da Câmara/Senado).' from public.questions q where q.public_code = 'PPCE-DC-000517';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O benefício é irrelevante para a legitimidade passiva.'),
  ('b', 'Incorreta. O Judiciário é quem julga a omissão de outrem.'),
  ('d', 'Incorreta. O MP atua como fiscal ou autor (no coletivo), não como réu.'),
  ('e', 'Incorreta. Não tem dever de legislar.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000517';

-- -----------------------------------------------------------------------------
-- QUESTÃO 518: Ação Popular - Cidadão Português
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000518', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Ação Popular', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Um cidadão português, residente no Brasil, pode propor uma Ação Popular?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Não, pois a Ação Popular é restrita a brasileiros natos ou naturalizados.', 1),
  ('b', 'B', 'Sim, desde que lhe seja reconhecido o gozo de direitos políticos no Brasil, em virtude de reciprocidade.', 2),
  ('c', 'C', 'Sim, independentemente de qualquer requisito, pelo princípio da igualdade.', 3),
  ('d', 'D', 'Não, exceto se for casado com brasileira.', 4),
  ('e', 'E', 'Apenas se a ação visar proteger o meio ambiente.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000518';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000518' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Ação Popular - Português Equiparado.', 'O Art. 12, § 1º da CF concede aos portugueses com residência permanente os mesmos direitos do brasileiro, salvo exceções (a AP não é exceção se ele tiver direitos políticos).', 'O Estatuto da Igualdade permite que o português vote e seja votado, logo, é cidadão.' from public.questions q where q.public_code = 'PPCE-DC-000518';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Esquece a regra da equiparação do português.'),
  ('c', 'Incorreta. Exige-se o requisito da reciprocidade e direitos políticos.'),
  ('d', 'Incorreta. Casamento não concede cidadania automática.'),
  ('e', 'Incorreta. O objeto da ação não altera a legitimidade do autor.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000518';

-- -----------------------------------------------------------------------------
-- QUESTÃO 519: Mandado de Segurança - Súmula 266 STF
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000519', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Segurança', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'De acordo com a Súmula 266 do STF, "não cabe mandado de segurança contra...":', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Atos de juízes de primeira instância.', 1),
  ('b', 'B', 'Lei em tese.', 2),
  ('c', 'C', 'Decisão judicial passível de recurso.', 3),
  ('d', 'D', 'Atos do Presidente da República.', 4),
  ('e', 'E', 'Omissões administrativas superiores a 1 ano.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000519';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000519' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MS - Lei em Tese.', 'O MS serve para atacar um ATO CONCRETO. Se a lei é genérica e ainda não foi aplicada ao caso real, o MS não é o meio adequado (deve-se usar ADI ou esperar a aplicação).', 'Lei em tese = Lei genérica e abstrata.' from public.questions q where q.public_code = 'PPCE-DC-000519';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Cabe MS se o ato for ilegal e não houver recurso com efeito suspensivo.'),
  ('c', 'Incorreta. Embora seja outra vedação (Súmula 267), a 266 fala especificamente de lei em tese.'),
  ('d', 'Incorreta. Cabe MS contra atos do Presidente.'),
  ('e', 'Incorreta. Não há essa limitação temporal na súmula.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000519';

-- -----------------------------------------------------------------------------
-- QUESTÃO 520: Habeas Corpus - Substitutivo de Recurso
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000520', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Corpus', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Atualmente, as cortes superiores (STF e STJ) têm restringido o uso do Habeas Corpus como substitutivo de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Mandado de Segurança.', 1),
  ('b', 'B', 'Recurso ordinário, especial ou agravo.', 2),
  ('c', 'C', 'Revisão criminal.', 3),
  ('d', 'D', 'Petição administrativa.', 4),
  ('e', 'E', 'Ação Popular.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000520';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000520' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'HC - Substitutivo.', 'Para racionalizar o sistema, as cortes não admitem HC quando deveria ter sido interposto o recurso próprio, salvo ilegalidade flagrante.', 'A "jurisprudência defensiva" busca evitar a banalização do HC.' from public.questions q where q.public_code = 'PPCE-DC-000520';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. São remédios com finalidades distintas.'),
  ('c', 'Incorreta. O HC pode até ser usado como revisão criminal em casos específicos, mas a restrição maior é sobre recursos.'),
  ('d', 'Incorreta. Esfera administrativa não se confunde com a judicial do HC.'),
  ('e', 'Incorreta. Sem relação temática.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000520';
