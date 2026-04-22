-- =============================================================================
-- BLOCO DE QUESTÕES: 61 A 100 (PPCE - DIREITO CONSTITUCIONAL)
-- =============================================================================

-- LIMPEZA INICIAL (Ajustado para o novo range)
delete from public.questions where public_code in (
  'PPCE-DC-000061', 'PPCE-DC-000062', 'PPCE-DC-000063', 'PPCE-DC-000064', 'PPCE-DC-000065',
  'PPCE-DC-000066', 'PPCE-DC-000067', 'PPCE-DC-000068', 'PPCE-DC-000069', 'PPCE-DC-000070',
  'PPCE-DC-000071', 'PPCE-DC-000072', 'PPCE-DC-000073', 'PPCE-DC-000074', 'PPCE-DC-000075',
  'PPCE-DC-000076', 'PPCE-DC-000077', 'PPCE-DC-000078', 'PPCE-DC-000079', 'PPCE-DC-000080',
  'PPCE-DC-000081', 'PPCE-DC-000082', 'PPCE-DC-000083', 'PPCE-DC-000084', 'PPCE-DC-000085',
  'PPCE-DC-000086', 'PPCE-DC-000087', 'PPCE-DC-000088', 'PPCE-DC-000089', 'PPCE-DC-000090',
  'PPCE-DC-000091', 'PPCE-DC-000092', 'PPCE-DC-000093', 'PPCE-DC-000094', 'PPCE-DC-000095',
  'PPCE-DC-000096', 'PPCE-DC-000097', 'PPCE-DC-000098', 'PPCE-DC-000099', 'PPCE-DC-000100'
);

-- -----------------------------------------------------------------------------
-- QUESTÃO 61: Tratados Internacionais de Direitos Humanos (Art. 5º, § 3º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000061', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Tratados Internacionais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Os tratados e convenções internacionais sobre direitos humanos que forem aprovados, em cada Casa do Congresso Nacional, em dois turnos, por três quintos dos votos dos respectivos membros, serão equivalentes a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Leis ordinárias.', 1),
  ('b', 'B', 'Leis complementares.', 2),
  ('c', 'C', 'Emendas constitucionais.', 3),
  ('d', 'D', 'Atos administrativos normativos.', 4),
  ('e', 'E', 'Tratados de supralegalidade apenas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000061';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000061' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Tratados de Direitos Humanos.', 'Tratados de DH aprovados pelo rito das emendas (2 turnos, 3/5 dos votos) possuem status de Emenda Constitucional.', 'Dica: Rito do 2235.' from public.questions q where q.public_code = 'PPCE-DC-000061';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Status de lei ordinária é para tratados que não versam sobre DH.'),
  ('b', 'Incorreta. Não há previsão de equivalência com lei complementar.'),
  ('d', 'Incorreta. Possuem status normativo superior.'),
  ('e', 'Incorreta. Supralegalidade é para tratados de DH aprovados pelo rito comum.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000061';

-- -----------------------------------------------------------------------------
-- QUESTÃO 62: Direito à Informação e Sigilo da Fonte
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000062', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'É assegurado a todos o acesso à informação e resguardado o sigilo da fonte, quando:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Houver autorização judicial expressa.', 1),
  ('b', 'B', 'Necessário ao exercício profissional.', 2),
  ('c', 'C', 'Tratarem-se de dados bancários de servidores públicos.', 3),
  ('d', 'D', 'O informante for menor de idade.', 4),
  ('e', 'E', 'A informação for de interesse exclusivo do Estado.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000062';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000062' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Sigilo da Fonte (Art. 5º, XIV).', 'O sigilo da fonte é resguardado quando necessário ao exercício profissional (ex: jornalistas).', 'Lembre-se: Acesso à informação é a regra.' from public.questions q where q.public_code = 'PPCE-DC-000062';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O sigilo profissional independe de autorização judicial.'),
  ('c', 'Incorreta. Dados bancários possuem rito próprio de quebra, não se confundem com sigilo de fonte profissional.'),
  ('d', 'Incorreta. A idade não é o critério constitucional.'),
  ('e', 'Incorreta. O direito foca no cidadão e no profissional.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000062';

-- -----------------------------------------------------------------------------
-- QUESTÃO 63: Tribunal do Júri (Competência)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000063', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'É reconhecida a instituição do júri, com a organização que lhe der a lei, assegurada a competência para o julgamento dos:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Crimes contra a administração pública.', 1),
  ('b', 'B', 'Crimes de latrocínio e roubo seguido de morte.', 2),
  ('c', 'C', 'Crimes dolosos contra a vida.', 3),
  ('d', 'D', 'Crimes militares cometidos contra civis.', 4),
  ('e', 'E', 'Crimes de responsabilidade praticados por prefeitos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000063';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000063' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Tribunal do Júri (Art. 5º, XXXVIII).', 'O Júri julga crimes DOLOSOS contra a vida (Homicídio, Induzimento ao suicídio, Infanticídio e Aborto).', 'Cuidado: Latrocínio não é crime contra a vida, mas contra o patrimônio (Súmula 603 STF).' from public.questions q where q.public_code = 'PPCE-DC-000063';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Julgados por juiz singular.'),
  ('b', 'Incorreta. Latrocínio é crime patrimonial.'),
  ('d', 'Incorreta. Se militar, julgado pela justiça militar (salvo homicídio de civil por militar em serviço, que vai ao júri conforme lei específica).'),
  ('e', 'Incorreta. Possuem foro especial ou ritos próprios.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000063';

-- -----------------------------------------------------------------------------
-- QUESTÃO 64: Extradição de Brasileiros (Art. 5º, LI)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000064', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Nacionalidade', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Nenhum brasileiro será extraditado, salvo o naturalizado, em caso de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Crime comum praticado a qualquer tempo.', 1),
  ('b', 'B', 'Crime político ou de opinião.', 2),
  ('c', 'C', 'Crime comum, praticado antes da naturalização, ou de comprovado envolvimento em tráfico ilícito de entorpecentes, na forma da lei.', 3),
  ('d', 'D', 'Crimes hediondos praticados após a naturalização.', 4),
  ('e', 'E', 'Dívidas de pensão alimentícia no exterior.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000064';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000064' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Extradição (Art. 5º, LI).', 'Brasileiro NATO nunca é extraditado. Naturalizado pode ser: 1. Crime comum ANTES da naturalização; 2. Tráfico a QUALQUER TEMPO.', 'Dica: Nato NÃO. Naturalizado: Crime Pré ou Tráfico Sempre.' from public.questions q where q.public_code = 'PPCE-DC-000064';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Crime comum após a naturalização não gera extradição.'),
  ('b', 'Incorreta. É vedada a extradição por crime político ou de opinião (Art. 5º, LII).'),
  ('d', 'Incorreta. Apenas se for tráfico ou se o crime hediondo foi antes da naturalização.'),
  ('e', 'Incorreta. Extradição foca em crimes penais graves.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000064';

-- -----------------------------------------------------------------------------
-- QUESTÃO 65: Direito de Propriedade e Função Social
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000065', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A propriedade atenderá a sua função social. No caso de iminente perigo público, a autoridade competente poderá usar de propriedade particular, assegurada ao proprietário indenização:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Prévia e em dinheiro.', 1),
  ('b', 'B', 'Ulterior, se houver dano.', 2),
  ('c', 'C', 'Apenas em títulos da dívida pública.', 3),
  ('d', 'D', 'Dobrada, como penalidade administrativa.', 4),
  ('e', 'E', 'Não há previsão de indenização para requisição administrativa.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000065';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000065' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Requisição Administrativa (Art. 5º, XXV).', 'Na requisição (perigo iminente), a indenização é ULTERIOR (depois) e SOMENTE SE HOUVER DANO.', 'Cuidado: Desapropriação é que costuma ser prévia e justa.' from public.questions q where q.public_code = 'PPCE-DC-000065';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Prévia é para desapropriação por necessidade/utilidade pública.'),
  ('c', 'Incorreta. Títulos são usados em desapropriação-sanção urbana ou rural.'),
  ('d', 'Incorreta. Não existe previsão de indenização dobrada.'),
  ('e', 'Incorreta. A CF garante a indenização se houver dano.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000065';

-- -----------------------------------------------------------------------------
-- QUESTÃO 66: Direito de Herança (Art. 5º, XXXI)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000066', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A sucessão de bens de estrangeiros situados no País será regulada pela lei brasileira em benefício do cônjuge ou dos filhos brasileiros, sempre que:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A lei brasileira for mais gravosa ao estrangeiro.', 1),
  ('b', 'B', 'Não lhes seja mais favorável a lei pessoal do "de cujus".', 2),
  ('c', 'C', 'Houver autorização expressa do consulado de origem.', 3),
  ('d', 'D', 'O valor dos bens ultrapassar 1.000 salários mínimos.', 4),
  ('e', 'E', 'O falecido tiver dupla nacionalidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000066';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000066' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Sucessão de Estrangeiros.', 'A lei brasileira protege os brasileiros (filhos/cônjuge) aplicando-se sempre que a lei do estrangeiro não for melhor.', 'Favor Rei: aplica-se a lei mais benéfica aos herdeiros brasileiros.' from public.questions q where q.public_code = 'PPCE-DC-000066';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Busca-se a lei MAIS FAVORÁVEL aos herdeiros locais.'),
  ('c', 'Incorreta. Independe de autorização consular.'),
  ('d', 'Incorreta. Não há limite de valor.'),
  ('e', 'Incorreta. A regra foca no local dos bens e nacionalidade dos herdeiros.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000066';

-- -----------------------------------------------------------------------------
-- QUESTÃO 67: Mandado de Injunção Coletivo
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000067', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Remédios Constitucionais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O mandado de injunção coletivo pode ser impetrado por partido político com representação no Congresso Nacional para assegurar o exercício de direitos e liberdades constitucionais de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Seus filiados apenas.', 1),
  ('b', 'B', 'Qualquer cidadão brasileiro em situação de pobreza.', 2),
  ('c', 'C', 'Uma coletividade de pessoas ou de seus membros.', 3),
  ('d', 'D', 'Autoridades do Poder Executivo.', 4),
  ('e', 'E', 'Empresas públicas federais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000067';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000067' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MI Coletivo (Lei 13.300/16).', 'Pode ser impetrado para proteger direitos de uma coletividade ou de seus membros.', 'Legitimados: Partidos (com representação), Organizações sindicais, Entidade de classe e MP.' from public.questions q where q.public_code = 'PPCE-DC-000067';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Abrange toda a coletividade representada.'),
  ('b', 'Incorreta. Definição muito ampla e não técnica.'),
  ('d', 'Incorreta. Foge da finalidade do remédio coletivo.'),
  ('e', 'Incorreta. Empresas públicas não são objeto típico de proteção via MI coletivo partidário.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000067';

-- -----------------------------------------------------------------------------
-- QUESTÃO 68: Gratuidade de Ações (Art. 5º, LXXVII)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000068', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Remédios Constitucionais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São gratuitas as ações de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Mandado de Segurança e Mandado de Injunção.', 1),
  ('b', 'B', 'Habeas Corpus e Habeas Data.', 2),
  ('c', 'C', 'Ação Popular e Ação Civil Pública.', 3),
  ('d', 'D', 'Reclamação Constitucional.', 4),
  ('e', 'E', 'Todas as ações contra o Estado.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000068';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000068' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Gratuidade de Remédios.', 'HC e HD são gratuitos para TODOS por expressa previsão constitucional (Art. 5º, LXXVII).', 'Dica: H e H são grátis. Ação Popular é grátis se não houver má-fé.' from public.questions q where q.public_code = 'PPCE-DC-000068';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. MS e MI são pagos (exigem custas e advogado).'),
  ('c', 'Incorreta. ACP é paga. Ação Popular é gratuita salvo má-fé.'),
  ('d', 'Incorreta. Reclamação exige pagamento de custas.'),
  ('e', 'Incorreta. Não existe essa regra de gratuidade geral.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000068';

-- -----------------------------------------------------------------------------
-- QUESTÃO 69: Princípio do Juiz Natural
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000069', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Ninguém será processado nem sentenciado senão pela autoridade competente. Este dispositivo consagra o princípio do:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Devido processo legal.', 1),
  ('b', 'B', 'Juiz natural.', 2),
  ('c', 'C', 'Contraditório e ampla defesa.', 3),
  ('d', 'D', 'Presunção de inocência.', 4),
  ('e', 'E', 'Inafastabilidade da jurisdição.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000069';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000069' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Juiz Natural (Art. 5º, LIII).', 'O princípio garante que o julgamento ocorra por autoridade prévia e legalmente constituída.', 'Proíbe os tribunais de exceção.' from public.questions q where q.public_code = 'PPCE-DC-000069';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Gênero que abrange todas as garantias processuais.'),
  ('c', 'Incorreta. Referem-se ao direito de resposta e defesa técnica.'),
  ('d', 'Incorreta. Refere-se à culpabilidade.'),
  ('e', 'Incorreta. Refere-se ao acesso à justiça.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000069';

-- -----------------------------------------------------------------------------
-- QUESTÃO 70: Provas Ilícitas (Art. 5º, LVI)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000070', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'São inadmissíveis, no processo, as provas obtidas por meios ilícitos. Sobre este tema, o STF entende que:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A prova ilícita pode ser usada para condenar se o crime for hediondo.', 1),
  ('b', 'B', 'A prova ilícita pode ser admitida se for a única forma de absolver o réu (Pro reo).', 2),
  ('c', 'C', 'Gravações telefônicas sem autorização judicial são sempre lícitas se feitas pela polícia.', 3),
  ('d', 'D', 'Confissões obtidas sob tortura são válidas se confirmadas por outras provas.', 4),
  ('e', 'E', 'A ilicitude da prova nunca se comunica às provas dela derivadas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000070';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000070' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Provas Ilícitas.', 'Doutrina e jurisprudência admitem, excepcionalmente, o uso de prova ilícita em favor do réu (Princípio da Proporcionalidade / Pro Reo).', 'Teoria dos frutos da árvore envenenada: a ilicitude se comunica às derivadas (salvo fonte independente).' from public.questions q where q.public_code = 'PPCE-DC-000070';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Vedação absoluta para condenação.'),
  ('c', 'Incorreta. Exige reserva de jurisdição (ordem judicial).'),
  ('d', 'Incorreta. Tortura invalida a prova de forma absoluta.'),
  ('e', 'Incorreta. Pelo contrário, vigora a teoria da contaminação (Fruits of the poisonous tree).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000070';

-- -----------------------------------------------------------------------------
-- QUESTÃO 71: Estado de Defesa (Art. 136)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000071', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Estado de Defesa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Presidente da República pode, ouvidos o Conselho da República e o Conselho de Defesa Nacional, decretar estado de defesa para preservar ou prontamente restabelecer, em locais restritos e determinados, a ordem pública ou a paz social ameaçadas por:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Guerra declarada ou resposta a agressão armada estrangeira.', 1),
  ('b', 'B', 'Ineficácia de medida tomada durante o estado de sítio.', 2),
  ('c', 'C', 'Instabilidade institucional acentuada ou calamidades de grandes proporções na natureza.', 3),
  ('d', 'D', 'Greve geral de servidores públicos federais.', 4),
  ('e', 'E', 'Apenas crimes de responsabilidade do Governador.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000071';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000071' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Estado de Defesa.', 'Decretado em locais RESTRITOS e DETERMINADOS para conter instabilidade institucional ou calamidades naturais.', 'Dica: No ED o controle do Congresso é A POSTERIORI (24h para enviar).' from public.questions q where q.public_code = 'PPCE-DC-000071';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Hipótese de Estado de Sítio.'),
  ('b', 'Incorreta. O Estado de Defesa é medida anterior ou mais branda que o Sítio.'),
  ('d', 'Incorreta. Greve não é hipótese constitucional direta de ED.'),
  ('e', 'Incorreta. Não é o objeto do estado de exceção.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000071';

-- -----------------------------------------------------------------------------
-- QUESTÃO 72: Estado de Sítio (Duração)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000072', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Estado de Sítio', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O decreto do estado de sítio indicará sua duração, as normas necessárias a sua execução e as garantias constitucionais que ficarão suspensas, e, depois de publicado, o Presidente da República designará o executor das medidas específicas e as áreas abrangidas. No caso de comoção intestinal grave, o prazo não poderá ser superior a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '15 dias, prorrogáveis por igual período.', 1),
  ('b', 'B', '30 dias, podendo ser prorrogado, cada vez, por prazo não superior a 30 dias.', 2),
  ('c', 'C', '60 dias, sem possibilidade de prorrogação.', 3),
  ('d', 'D', 'Todo o tempo que durar a guerra ou a agressão estrangeira.', 4),
  ('e', 'E', '10 dias, sob pena de crime de responsabilidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000072';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000072' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Prazos do Estado de Sítio.', 'Para comoção grave ou ineficácia do ED: máx 30 dias (prorrogáveis por +30 cada vez).', 'Cuidado: No caso de GUERRA, o prazo pode ser por todo o tempo da agressão.' from public.questions q where q.public_code = 'PPCE-DC-000072';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. 15+15 é o prazo do Estado de Defesa.'),
  ('c', 'Incorreta. Prazo não previsto na CF para sítio.'),
  ('d', 'Incorreta. Essa exceção é para o caso de GUERRA, não de comoção interna.'),
  ('e', 'Incorreta. Prazo insuficiente para as medidas de exceção.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000072';

-- -----------------------------------------------------------------------------
-- QUESTÃO 73: Forças Armadas (Art. 142)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000073', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Forças Armadas', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'As Forças Armadas, constituídas pela Marinha, pelo Exército e pela Aeronáutica, são instituições nacionais permanentes e regulares, organizadas com base na:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Eficiência e meritocracia.', 1),
  ('b', 'B', 'Hierarquia e disciplina.', 2),
  ('c', 'C', 'Legalidade e moralidade.', 3),
  ('d', 'D', 'Soberania e independência nacional.', 4),
  ('e', 'E', 'Unicidade e indivisibilidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000073';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000073' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Base das Forças Armadas.', 'Os pilares das instituições militares são a Hierarquia e a Disciplina.', 'Sob autoridade suprema do Presidente da República.' from public.questions q where q.public_code = 'PPCE-DC-000073';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. São princípios da adm. pública, mas não a base orgânica militar.'),
  ('c', 'Incorreta. Princípios gerais do Art. 37.'),
  ('d', 'Incorreta. São objetivos/fundamentos da República.'),
  ('e', 'Incorreta. Termos aplicados ao MP.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000073';

-- -----------------------------------------------------------------------------
-- QUESTÃO 74: Militar e Greve (Art. 142, § 3º, IV)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000074', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Forças Armadas', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Ao militar são proibidas as seguintes atividades, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A sindicalização.', 1),
  ('b', 'B', 'A greve.', 2),
  ('c', 'C', 'A filiação partidária enquanto em serviço ativo.', 3),
  ('d', 'D', 'O exercício do voto.', 4),
  ('e', 'E', 'O Habeas Corpus em relação a punições disciplinares militares (regra geral).', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000074';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000074' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Proibições aos Militares.', 'Militares podem votar (voto é direito do cidadão), mas não podem se sindicalizar, fazer greve ou ter filiação partidária ativa.', 'Lembre-se: Militar não faz greve!' from public.questions q where q.public_code = 'PPCE-DC-000074';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. É expressamente proibida.'),
  ('b', 'Incorreta. É expressamente proibida.'),
  ('c', 'Incorreta. Só pode se filiar se for para concorrer a cargo eletivo (regras de elegibilidade).'),
  ('e', 'Incorreta. Não cabe HC para mérito de punição disciplinar (Art. 142, § 2º).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000074';

-- -----------------------------------------------------------------------------
-- QUESTÃO 75: Segurança Pública (Órgãos)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000075', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A segurança pública, dever do Estado, direito e responsabilidade de todos, é exercida para a preservação da ordem pública e da incolumidade das pessoas e do patrimônio, através dos seguintes órgãos, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Polícia Federal.', 1),
  ('b', 'B', 'Polícia Rodoviária Federal.', 2),
  ('c', 'C', 'Guardas Municipais.', 3),
  ('d', 'D', 'Polícias Penais federal, estaduais e distrital.', 4),
  ('e', 'E', 'Polícias Civis.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000075';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000075' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Órgãos do Art. 144.', 'As Guardas Municipais NÃO constam no rol taxativo dos órgãos de segurança pública do caput do Art. 144, embora citadas no § 8º.', 'Dica: O rol é TAXATIVO.' from public.questions q where q.public_code = 'PPCE-DC-000075';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. É órgão do Art. 144, inciso I.'),
  ('b', 'Incorreta. É órgão do Art. 144, inciso II.'),
  ('d', 'Incorreta. Inseridas pela EC 104/2019 (Inciso VI).'),
  ('e', 'Incorreta. Órgãos estaduais do Art. 144, inciso IV.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000075';

-- -----------------------------------------------------------------------------
-- QUESTÃO 76: Polícia Federal (Atribuições)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000076', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Compete à Polícia Federal, instituída por lei como órgão permanente, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Apurar infrações penais contra a ordem política e social.', 1),
  ('b', 'B', 'Exercer as funções de polícia marítima, aeroportuária e de fronteiras.', 2),
  ('c', 'C', 'Exercer, com exclusividade, as funções de polícia judiciária da União.', 3),
  ('d', 'D', 'Realizar o patrulhamento ostensivo das rodovias federais.', 4),
  ('e', 'E', 'Prevenir e reprimir o tráfico ilícito de entorpecentes.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000076';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000076' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Atribuições da PF.', 'Patrulhamento ostensivo de RODOVIAS federais é da PRF. A PF faz polícia judiciária e repressão a crimes interestaduais/internacionais.', 'PF = Investigação. PRF = Patrulhamento.' from public.questions q where q.public_code = 'PPCE-DC-000076';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. É atribuição da PF (Art. 144, § 1º, I).'),
  ('b', 'Incorreta. É atribuição da PF (Art. 144, § 1º, III).'),
  ('c', 'Incorreta. É atribuição EXCLUSIVA da PF (Art. 144, § 1º, IV).'),
  ('e', 'Incorreta. Atribuição clássica da PF.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000076';

-- -----------------------------------------------------------------------------
-- QUESTÃO 77: Polícia Civil (Chefia)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000077', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'As polícias civis, dirigidas por delegados de polícia de carreira, incumbem, ressalvada a competência da União, as funções de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Polícia ostensiva e a preservação da ordem pública.', 1),
  ('b', 'B', 'Polícia judiciária e a apuração de infrações penais, exceto as militares.', 2),
  ('c', 'C', 'Polícia administrativa e fiscalização fazendária.', 3),
  ('d', 'D', 'Segurança externa de estabelecimentos penais.', 4),
  ('e', 'E', 'Patrulhamento ferroviário.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000077';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000077' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Polícia Civil.', 'Incumbe a polícia judiciária e apuração de crimes (salvo militares e competência da União).', 'Dirigida por delegados de carreira.' from public.questions q where q.public_code = 'PPCE-DC-000077';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Atribuição da PM.'),
  ('c', 'Incorreta. Atribuição de órgãos de fiscalização.'),
  ('d', 'Incorreta. Atribuição da Polícia Penal.'),
  ('e', 'Incorreta. Atribuição da PFF.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000077';

-- -----------------------------------------------------------------------------
-- QUESTÃO 78: Polícia Penal (EC 104/2019)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000078', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Às polícias penais, vinculadas ao órgão administrador do sistema penal da unidade federativa a que pertencem, cabe a segurança de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Órgãos do Poder Judiciário e Ministério Público.', 1),
  ('b', 'B', 'Edifícios públicos da Administração Direta.', 2),
  ('c', 'C', 'Estabelecimentos penais.', 3),
  ('d', 'D', 'Fronteiras e áreas alfandegárias.', 4),
  ('e', 'E', 'Vias urbanas e rodovias estaduais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000078';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000078' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Polícia Penal (Art. 144, § 5º-A).', 'Cabe às polícias penais a segurança dos estabelecimentos penais.', 'Novidade da EC 104/2019.' from public.questions q where q.public_code = 'PPCE-DC-000078';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Segurança institucional tem órgãos próprios.'),
  ('b', 'Incorreta. Segurança patrimonial comum não é a função constitucional da Polícia Penal.'),
  ('d', 'Incorreta. Atribuição da PF e Forças Armadas.'),
  ('e', 'Incorreta. Atribuição da PM e órgãos de trânsito.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000078';

-- -----------------------------------------------------------------------------
-- QUESTÃO 79: Segurança Viária (Municípios)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000079', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'No âmbito dos Municípios, a segurança viária será exercida pelos seus respectivos órgãos ou entidades de trânsito e seus:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Fiscais de tributos.', 1),
  ('b', 'B', 'Agentes de trânsito.', 2),
  ('c', 'C', 'Guardas patrimoniais.', 3),
  ('d', 'D', 'Auxiliares de serviços gerais.', 4),
  ('e', 'E', 'Vigilantes terceirizados.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000079';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000079' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Segurança Viária (Art. 144, § 10).', 'Exercida por agentes de trânsito estruturados em carreira.', 'Pode ser no âmbito dos Estados, DF e Municípios.' from public.questions q where q.public_code = 'PPCE-DC-000079';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Fiscais tributários não exercem segurança viária.'),
  ('c', 'Incorreta. Guardas municipais focam em bens, serviços e instalações (embora possam atuar em trânsito via convênio).'),
  ('d', 'Incorreta. Não possuem competência de polícia administrativa.'),
  ('e', 'Incorreta. Segurança viária exige agentes de carreira.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000079';

-- -----------------------------------------------------------------------------
-- QUESTÃO 80: Militares dos Estados e DF
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000080', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Forças Armadas', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'As polícias militares e os corpos de bombeiros militares, forças auxiliares e reserva do Exército, subordinam-se, juntamente com as polícias civis e as polícias penais estaduais e distrital, aos:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ministros de Estado da Defesa.', 1),
  ('b', 'B', 'Governadores dos Estados, do Distrito Federal e dos Territórios.', 2),
  ('c', 'C', 'Comandantes-Gerais do Exército.', 3),
  ('d', 'D', 'Prefeitos Municipais.', 4),
  ('e', 'E', 'Presidentes de Tribunais de Justiça.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000080';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000080' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Subordinação Policial (Art. 144, § 6º).', 'As polícias estaduais (PM, BM, PC e PP) subordinam-se aos Governadores.', 'Dica: O Governador é o "Comandante em Chefe" local.' from public.questions q where q.public_code = 'PPCE-DC-000080';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Defesa cuida das Forças Armadas federais.'),
  ('c', 'Incorreta. Exército é força nacional.'),
  ('d', 'Incorreta. Prefeitos não comandam polícias estaduais.'),
  ('e', 'Incorreta. Judiciário não tem comando sobre órgãos de segurança do executivo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000080';

-- -----------------------------------------------------------------------------
-- QUESTÃO 81: Princípios da Administração Pública (Art. 37)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000081', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Disposições Gerais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A administração pública direta e indireta de qualquer dos Poderes da União, dos Estados, do Distrito Federal e dos Municípios obedecerá aos princípios de legalidade, impessoalidade, moralidade, publicidade e:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Economicidade.', 1),
  ('b', 'B', 'Eficiência.', 2),
  ('c', 'C', 'Continuidade do serviço público.', 3),
  ('d', 'D', 'Supremacia do interesse público.', 4),
  ('e', 'E', 'Hierarquia.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000081';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000081' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Princípios do LIMPE.', 'Legalidade, Impessoalidade, Moralidade, Publicidade e EFICIÊNCIA (inserido pela EC 19/98).', 'Dica: Mnemônico LIMPE.' from public.questions q where q.public_code = 'PPCE-DC-000081';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. É princípio, mas não consta no rol expresso do caput do Art. 37.'),
  ('c', 'Incorreta. Princípio implícito da administração.'),
  ('d', 'Incorreta. Princípio implícito fundamental.'),
  ('e', 'Incorreta. Princípio organizacional, não listado no LIMPE.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000081';

-- -----------------------------------------------------------------------------
-- QUESTÃO 82: Acessibilidade aos Cargos Públicos (Art. 37, I)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000082', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Servidores Públicos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Os cargos, empregos e funções públicas são acessíveis aos brasileiros que preencham os requisitos estabelecidos em lei, assim como aos estrangeiros:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Em nenhuma hipótese.', 1),
  ('b', 'B', 'Apenas se possuírem visto permanente.', 2),
  ('c', 'C', 'Na forma da lei.', 3),
  ('d', 'D', 'Apenas em cargos de confiança.', 4),
  ('e', 'E', 'Apenas para cargos de professor universitário.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000082';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000082' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Acesso de Estrangeiros.', 'Estrangeiros podem acessar cargos públicos NA FORMA DA LEI.', 'Norma de eficácia limitada.' from public.questions q where q.public_code = 'PPCE-DC-000082';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. A CF permite o acesso.'),
  ('b', 'Incorreta. A exigência é o que a LEI determinar.'),
  ('d', 'Incorreta. Podem acessar cargos efetivos também.'),
  ('e', 'Incorreta. Embora comum em universidades, a regra do Art. 37 é geral.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000082';

-- -----------------------------------------------------------------------------
-- QUESTÃO 83: Prazo de Validade do Concurso (Art. 37, III)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000083', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Servidores Públicos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O prazo de validade do concurso público será de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Até 2 anos, prorrogável uma vez, por igual período.', 1),
  ('b', 'B', 'Até 1 ano, prorrogável quantas vezes forem necessárias.', 2),
  ('c', 'C', 'De 2 anos, obrigatoriamente.', 3),
  ('d', 'D', 'Indeterminado, até que todos os aprovados sejam nomeados.', 4),
  ('e', 'E', '6 meses, sem possibilidade de prorrogação.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000083';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000083' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Validade do Concurso.', 'Prazo de ATÉ 2 anos, com UMA ÚNICA prorrogação por IGUAL período.', 'Dica: 2 + 2 (máximo).' from public.questions q where q.public_code = 'PPCE-DC-000083';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Só pode prorrogar uma vez.'),
  ('c', 'Incorreta. É "até" 2 anos, pode ser menor.'),
  ('d', 'Incorreta. Geraria insegurança jurídica.'),
  ('e', 'Incorreta. Contraria o texto constitucional.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000083';

-- -----------------------------------------------------------------------------
-- QUESTÃO 84: Direito de Greve do Servidor Civil (Art. 37, VII)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000084', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Servidores Públicos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O direito de greve do servidor público civil será exercido:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Nos termos e nos limites definidos em lei específica.', 1),
  ('b', 'B', 'Livremente, conforme as leis do setor privado (CLT).', 2),
  ('c', 'C', 'Apenas com autorização prévia do chefe do Poder Executivo.', 3),
  ('d', 'D', 'Somente em caso de atraso salarial superior a 3 meses.', 4),
  ('e', 'E', 'É vedado a todos os servidores públicos civis e militares.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000084';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000084' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Greve no Serviço Público.', 'A CF prevê o direito de greve para servidores civis, a ser exercido nos termos de lei específica.', 'STF (MI 670): Enquanto não houver lei específica, aplica-se a lei de greve do setor privado (Lei 7.783/89) no que couber.' from public.questions q where q.public_code = 'PPCE-DC-000084';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A CF exige lei específica.'),
  ('c', 'Incorreta. O direito é garantido constitucionalmente.'),
  ('d', 'Incorreta. Não existe essa condição temporal na CF.'),
  ('e', 'Incorreta. É vedado apenas aos militares (e, segundo o STF, aos policiais civis e demais órgãos de segurança pública).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000084';

-- -----------------------------------------------------------------------------
-- QUESTÃO 85: Responsabilidade Civil do Estado (Art. 37, § 6º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000085', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Responsabilidade Civil', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'As pessoas jurídicas de direito público e as de direito privado prestadoras de serviços públicos responderão pelos danos que seus agentes, nessa qualidade, causarem a terceiros, assegurado o direito de regresso contra o responsável nos casos de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Culpa exclusiva da vítima.', 1),
  ('b', 'B', 'Dolo ou culpa.', 2),
  ('c', 'C', 'Caso fortuito ou força maior.', 3),
  ('d', 'D', 'Dano moral apenas.', 4),
  ('e', 'E', 'Apenas em caso de morte.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000085';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000085' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Responsabilidade Civil.', 'O Estado responde OBJETIVAMENTE (independe de culpa). Mas o direito de regresso contra o agente exige DOLO ou CULPA (responsabilidade subjetiva).', 'Dica: Regresso = Subjetiva.' from public.questions q where q.public_code = 'PPCE-DC-000085';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Exclui a responsabilidade do Estado, não é base para regresso.'),
  ('c', 'Incorreta. Excluem a responsabilidade do Estado.'),
  ('d', 'Incorreta. Abrange danos materiais também.'),
  ('e', 'Incorreta. Abrange qualquer dano causado.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000085';

-- -----------------------------------------------------------------------------
-- QUESTÃO 86: Acumulação de Cargos (Art. 37, XVI)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000086', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Servidores Públicos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'É vedada a acumulação remunerada de cargos públicos, exceto, quando houver compatibilidade de horários, a de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Dois cargos de professor.', 1),
  ('b', 'B', 'Dois cargos técnicos ou científicos.', 2),
  ('c', 'C', 'Um cargo de juiz com um de promotor.', 3),
  ('d', 'D', 'Dois cargos de policial penal.', 4),
  ('e', 'E', 'Um cargo de médico com um de motorista.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000086';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000086' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Acumulação de Cargos.', 'A CF permite acumular: 2 de professor; 1 de professor + 1 técnico/científico; 2 de profissionais de saúde.', 'Sempre exige compatibilidade de horários!' from public.questions q where q.public_code = 'PPCE-DC-000086';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Pode ser 1 técnico com 1 de professor, mas não 2 técnicos.'),
  ('c', 'Incorreta. Vedado acumular cargos jurídicos (salvo 1 de juiz/promotor com 1 de magistério).'),
  ('d', 'Incorreta. Cargos policiais são de dedicação exclusiva, sem previsão de acumulação dupla.'),
  ('e', 'Incorreta. Motorista não é cargo privativo de profissional de saúde.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000086';

-- -----------------------------------------------------------------------------
-- QUESTÃO 87: Estabilidade do Servidor (Art. 41)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000087', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Servidores Públicos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São estáveis após três anos de efetivo exercício os servidores nomeados para cargo de provimento efetivo em virtude de concurso público. Como condição para a aquisição da estabilidade, é obrigatória a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Aprovação em exame psicotécnico anual.', 1),
  ('b', 'B', 'Avaliação especial de desempenho por comissão instituída para esse fim.', 2),
  ('c', 'C', 'Conclusão de curso de pós-graduação na área.', 3),
  ('d', 'D', 'Autorização do Tribunal de Contas.', 4),
  ('e', 'E', 'Inexistência de faltas durante o estágio probatório.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000087';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000087' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Estabilidade (Art. 41).', 'A estabilidade exige 3 anos de exercício + avaliação especial de desempenho.', 'Lembre-se: 3 anos!' from public.questions q where q.public_code = 'PPCE-DC-000087';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Não há essa previsão para estabilidade.'),
  ('c', 'Incorreta. Exigência não constitucional para estabilidade.'),
  ('d', 'Incorreta. TC fiscaliza a legalidade do ato, mas a avaliação é interna.'),
  ('e', 'Incorreta. Faltas justificadas não impedem a estabilidade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000087';

-- -----------------------------------------------------------------------------
-- QUESTÃO 88: Ordem Social (Saúde - Art. 196)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000088', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Saúde', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A saúde é direito de todos e dever do Estado, garantido mediante políticas sociais e econômicas que visem à redução do risco de doença e de outros agravos e ao acesso:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Restrito aos cidadãos que contribuem para a previdência.', 1),
  ('b', 'B', 'Universal e igualitário às ações e serviços para sua promoção, proteção e recuperação.', 2),
  ('c', 'C', 'Preferencial aos servidores públicos e seus dependentes.', 3),
  ('d', 'D', 'Exclusivo para casos de emergência e urgência.', 4),
  ('e', 'E', 'Mediante pagamento de taxas moderadoras.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000088';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000088' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direito à Saúde.', 'A saúde no Brasil é UNIVERSAL e IGUALITÁRIA (SUS).', 'Diferente da previdência, que é contributiva.' from public.questions q where q.public_code = 'PPCE-DC-000088';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. A saúde não exige contribuição.'),
  ('c', 'Incorreta. O acesso deve ser igualitário para todos.'),
  ('d', 'Incorreta. Abrange promoção, proteção e recuperação completa.'),
  ('e', 'Incorreta. O acesso no SUS é gratuito.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000088';

-- -----------------------------------------------------------------------------
-- QUESTÃO 89: Meio Ambiente (Art. 225)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000089', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Meio Ambiente', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Todos têm direito ao meio ambiente ecologicamente equilibrado, bem de uso comum do povo e essencial à sadia qualidade de vida, impondo-se ao Poder Público e à coletividade o dever de defendê-lo e preservá-lo para:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'As gerações presentes apenas.', 1),
  ('b', 'B', 'As presentes e futuras gerações.', 2),
  ('c', 'C', 'O desenvolvimento industrial acelerado.', 3),
  ('d', 'D', 'O benefício exclusivo dos proprietários rurais.', 4),
  ('e', 'E', 'Fins de exploração turística internacional.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000089';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000089' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direito Ambiental.', 'O meio ambiente deve ser preservado para as presentes e futuras gerações (Solidariedade Intergeracional).', 'Dica: É um direito de terceira geração/dimensão.' from public.questions q where q.public_code = 'PPCE-DC-000089';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Deve focar também no futuro.'),
  ('c', 'Incorreta. O desenvolvimento deve ser sustentável.'),
  ('d', 'Incorreta. É bem de uso comum do povo.'),
  ('e', 'Incorreta. A finalidade é a sadia qualidade de vida.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000089';

-- -----------------------------------------------------------------------------
-- QUESTÃO 90: Família, Criança e Adolescente (Art. 226/227)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000090', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Família, Criança, Adolescente e Idoso', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'É dever da família, da sociedade e do Estado assegurar à criança, ao adolescente e ao jovem, com absoluta prioridade, o direito à vida, à saúde, à alimentação, à educação, ao lazer, à profissionalização, à cultura, à dignidade, ao respeito, à liberdade e à convivência familiar e comunitária, além de colocá-los a salvo de toda forma de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Intervenção estatal.', 1),
  ('b', 'B', 'Negligência, discriminação, exploração, violência, crueldade e opressão.', 2),
  ('c', 'C', 'Trabalho remunerado antes dos 18 anos.', 3),
  ('d', 'D', 'Dúvida religiosa.', 4),
  ('e', 'E', 'Convívio com pessoas idosas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000090';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000090' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Prioridade Absoluta.', 'A CF elenca diversas formas de violência e negligência das quais os jovens devem ser protegidos.', 'Princípio do Melhor Interesse da Criança.' from public.questions q where q.public_code = 'PPCE-DC-000090';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O Estado deve intervir para proteger.'),
  ('c', 'Incorreta. O trabalho é permitido a partir de 16 anos (ou 14 como aprendiz).'),
  ('d', 'Incorreta. A liberdade religiosa é garantida.'),
  ('e', 'Incorreta. O convívio geracional é incentivado.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000090';

-- -----------------------------------------------------------------------------
-- QUESTÃO 91: Previdência Social (Art. 201)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000091', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Previdência Social', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A previdência social será organizada under a forma de regime geral, de caráter contributivo e de filiação obrigatória, observados critérios que preservem o equilíbrio financeiro e atuarial, e atenderá, nos termos da lei, a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Cobertura exclusiva de acidentes de trabalho.', 1),
  ('b', 'B', 'Cobertura dos eventos de doença, invalidez, morte e idade avançada.', 2),
  ('c', 'C', 'Apenas aos servidores públicos ocupantes de cargo em comissão.', 3),
  ('d', 'D', 'Cidadãos que nunca contribuíram para o sistema.', 4),
  ('e', 'E', 'Empresas em situação de falência.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000091';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000091' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Previdência Social.', 'Diferente da saúde, a previdência exige CONTRIBUIÇÃO e cobre riscos sociais como doença, morte e velhice.', 'Caráter contributivo e filiação obrigatória.' from public.questions q where q.public_code = 'PPCE-DC-000091';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Abrange diversos outros riscos.'),
  ('c', 'Incorreta. Aplica-se ao Regime Geral (setor privado e temporários).'),
  ('d', 'Incorreta. Sem contribuição não há benefício previdenciário (haveria assistencial).'),
  ('e', 'Incorreta. Previdência foca no trabalhador pessoa física.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000091';

-- -----------------------------------------------------------------------------
-- QUESTÃO 92: Assistência Social (Art. 203)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000092', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Assistência Social', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A assistência social será prestada a quem dela necessitar:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Desde que comprovada contribuição prévia de 15 anos.', 1),
  ('b', 'B', 'Independentemente de contribuição à seguridade social.', 2),
  ('c', 'C', 'Apenas para portadores de doenças raras.', 3),
  ('d', 'D', 'Somente se houver vaga em abrigos municipais.', 4),
  ('e', 'E', 'Mediante contraprestação de serviços comunitários.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000092';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000092' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Assistência Social.', 'A assistência social NÃO EXIGE contribuição (ex: BPC/LOAS).', 'Dica: Seguridade = Saúde (grátis) + Assistência (grátis) + Previdência (paga).' from public.questions q where q.public_code = 'PPCE-DC-000092';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Exigência da previdência, não da assistência.'),
  ('c', 'Incorreta. Atende a todos os necessitados.'),
  ('d', 'Incorreta. É um direito garantido por lei e orçamento.'),
  ('e', 'Incorreta. É um benefício não vinculado a trabalho.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000092';

-- -----------------------------------------------------------------------------
-- QUESTÃO 93: Educação (Dever do Estado - Art. 208)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000093', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Educação', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O dever do Estado com a educação será efetivado mediante a garantia de educação básica obrigatória e gratuita dos:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '0 aos 6 anos de idade.', 1),
  ('b', 'B', '4 aos 17 anos de idade.', 2),
  ('c', 'C', '7 aos 14 anos de idade.', 3),
  ('d', 'D', 'Até a conclusão do ensino fundamental.', 4),
  ('e', 'E', 'Para todos os brasileiros alfabetizados.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000093';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000093' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Educação Obrigatória.', 'A educação básica obrigatória e gratuita vai dos 4 aos 17 anos.', 'Assegurada inclusive para quem não teve acesso na idade própria.' from public.questions q where q.public_code = 'PPCE-DC-000093';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Corresponde à educação infantil (creche e pré-escola).'),
  ('c', 'Incorreta. Era o parâmetro antigo.'),
  ('d', 'Incorreta. Abrange também o ensino médio.'),
  ('e', 'Incorreta. O critério é etário para a obrigatoriedade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000093';

-- -----------------------------------------------------------------------------
-- QUESTÃO 94: Índios (Art. 231)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000094', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Índios', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São reconhecidos aos índios sua organização social, costumes, línguas, crenças e tradições, e os direitos originários sobre as terras que tradicionalmente ocupam, competindo à União:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Vendê-las para exploração mineral privada.', 1),
  ('b', 'B', 'Demarcá-las, proteger e fazer respeitar todos os seus bens.', 2),
  ('c', 'C', 'Integrá-los compulsoriamente à vida urbana.', 3),
  ('d', 'D', 'Proibir a prática de ritos religiosos não cristãos.', 4),
  ('e', 'E', 'Cobrar impostos sobre a produção de subsistência.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000094';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000094' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direitos Indígenas.', 'Compete à União demarcar e proteger as terras indígenas.', 'As terras são bens da UNIÃO, mas de posse permanente dos índios.' from public.questions q where q.public_code = 'PPCE-DC-000094';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. As terras são inalienáveis e indisponíveis.'),
  ('c', 'Incorreta. A CF protege a cultura e tradição original.'),
  ('d', 'Incorreta. A CF garante o respeito às suas crenças.'),
  ('e', 'Incorreta. Possuem proteção contra tributação de suas atividades essenciais.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000094';

-- -----------------------------------------------------------------------------
-- QUESTÃO 95: Defesa do Consumidor (Art. 5º, XXXII)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000095', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais e Coletivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O Estado promoverá, na forma da lei, a defesa do consumidor. Este dispositivo constitui uma:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Norma de eficácia contida.', 1),
  ('b', 'B', 'Norma de eficácia limitada.', 2),
  ('c', 'C', 'Cláusula pétrea implícita apenas.', 3),
  ('d', 'D', 'Norma de eficácia plena.', 4),
  ('e', 'E', 'Sugestão administrativa não vinculante.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000095';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000095' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Defesa do Consumidor.', 'O Art. 5º, XXXII é uma norma de eficácia limitada, pois depende de lei (CDC) para produzir seus principais efeitos.', 'Também é um princípio da Ordem Econômica (Art. 170).' from public.questions q where q.public_code = 'PPCE-DC-000095';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Não pode ter seus efeitos restringidos por lei, mas sim EXIGIDOS via lei.'),
  ('c', 'Incorreta. É direito fundamental explícito.'),
  ('d', 'Incorreta. Exige a "forma da lei".'),
  ('e', 'Incorreta. É um comando constitucional obrigatório.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000095';

-- -----------------------------------------------------------------------------
-- QUESTÃO 96: Mandado de Segurança (Prazo)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000096', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios Constitucionais', 'Mandado de Segurança', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O direito de requerer mandado de segurança extinguir-se-á decorrido o prazo de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '60 dias.', 1),
  ('b', 'B', '90 dias.', 2),
  ('c', 'C', '120 dias.', 3),
  ('d', 'D', '5 anos.', 4),
  ('e', 'E', 'Não há prazo decadencial para MS.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000096';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000096' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Prazo do MS.', 'O prazo decadencial para impetrar MS é de 120 dias (Lei 12.016/09).', 'Dica: 120 dias contados da ciência do ato.' from public.questions q where q.public_code = 'PPCE-DC-000096';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Prazo insuficiente.'),
  ('b', 'Incorreta. Prazo comum em outros ritos, mas não MS.'),
  ('d', 'Incorreta. Prazo prescricional comum, mas MS é decadencial curto.'),
  ('e', 'Incorreta. Existe prazo decadencial sim.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000096';

-- -----------------------------------------------------------------------------
-- QUESTÃO 97: Súmula Vinculante (Art. 103-A)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000097', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Judiciário', 'Supremo Tribunal Federal', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Supremo Tribunal Federal poderá, de ofício ou por provocação, mediante decisão de dois terços dos seus membros, após reiteradas decisões sobre matéria constitucional, aprovar súmula que, a partir de sua publicação na imprensa oficial, terá efeito vinculante em relação:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Aos demais órgãos do Poder Judiciário e à administração pública direta e indireta.', 1),
  ('b', 'B', 'Ao Poder Legislativo em sua função legiferante.', 2),
  ('c', 'C', 'Apenas aos tribunais superiores.', 3),
  ('d', 'D', 'Exclusivamente aos órgãos da União.', 4),
  ('e', 'E', 'Aos cidadãos em suas relações privadas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000097';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000097' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Súmula Vinculante.', 'A Súmula Vinculante vincula o Judiciário e a Administração Pública, mas NÃO vincula o Legislativo em sua função de criar leis.', 'Quorum: 2/3 (8 ministros).' from public.questions q where q.public_code = 'PPCE-DC-000097';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O Legislativo não é vinculado para não haver "fossilização" do direito.'),
  ('c', 'Incorreta. Vincula todos os graus do judiciário.'),
  ('d', 'Incorreta. Vincula União, Estados e Municípios.'),
  ('e', 'Incorreta. Vincula órgãos públicos, não diretamente a autonomia privada.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000097';

-- -----------------------------------------------------------------------------
-- QUESTÃO 98: CNJ (Composição)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000098', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Judiciário', 'Conselho Nacional de Justiça', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Conselho Nacional de Justiça (CNJ) é composto por 15 membros com mandato de 2 anos, admitida uma recondução. O CNJ é presidido pelo:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ministro mais antigo do STJ.', 1),
  ('b', 'B', 'Presidente do Supremo Tribunal Federal.', 2),
  ('c', 'C', 'Procurador-Geral da República.', 3),
  ('d', 'D', 'Presidente da OAB.', 4),
  ('e', 'E', 'Ministro da Justiça e Segurança Pública.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000098';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000098' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Presidência do CNJ.', 'O Presidente do STF é, por inerência, o Presidente do CNJ.', 'O CNJ faz o controle administrativo e financeiro do Judiciário.' from public.questions q where q.public_code = 'PPCE-DC-000098';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O Ministro do STJ é o Corregedor do CNJ.'),
  ('c', 'Incorreta. O PGR é membro do Ministério Público, não do CNJ (embora oficie perante ele).'),
  ('d', 'Incorreta. A OAB indica membros, mas não preside.'),
  ('e', 'Incorreta. O MJSP pertence ao Poder Executivo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000098';

-- -----------------------------------------------------------------------------
-- QUESTÃO 99: Símbolos da República (Art. 13)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000099', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Estado e Constituição', 'Símbolos Nacionais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São símbolos da República Federativa do Brasil:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A Bandeira, o Hino, as Armas e o Selo nacionais.', 1),
  ('b', 'B', 'A Bandeira, o Hino, o Escudo e o Mapa.', 2),
  ('c', 'C', 'A Bandeira, a Constituição, o Selo e a Língua Portuguesa.', 3),
  ('d', 'D', 'O Hino, o Selo, a Bandeira e o Presidente da República.', 4),
  ('e', 'E', 'Apenas a Bandeira e o Hino.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000099';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000099' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Símbolos Nacionais.', 'A CF elenca 4 símbolos: Bandeira, Hino, Armas e Selo.', 'Dica: BA-HI-AS (Bandeira, Hino, Armas, Selo).' from public.questions q where q.public_code = 'PPCE-DC-000099';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Escudo e Mapa não são símbolos oficiais.'),
  ('c', 'Incorreta. Língua Portuguesa é idioma oficial, mas não símbolo nacional no rol do Art. 13.'),
  ('d', 'Incorreta. Presidente não é símbolo nacional.'),
  ('e', 'Incorreta. Faltam Armas e Selo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000099';

-- -----------------------------------------------------------------------------
-- QUESTÃO 100: Perda de Cargo do Estável
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000100', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Servidores Públicos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O servidor público estável só perderá o cargo em virtude de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sentença judicial transitada em julgado.', 1),
  ('b', 'B', 'Processo administrativo em que lhe seja assegurada ampla defesa.', 2),
  ('c', 'C', 'Procedimento de avaliação periódica de desempenho, na forma de lei complementar, assegurada ampla defesa.', 3),
  ('d', 'D', 'Todas as alternativas anteriores estão corretas.', 4),
  ('e', 'E', 'Apenas as alternativas A e B estão corretas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000100';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000100' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Perda de Cargo do Estável.', 'O estável pode perder o cargo por: 1. Sentença (trânsito); 2. PAD; 3. Avaliação periódica; 4. Excesso de gastos (Art. 169).', 'Lembre-se: Estabilidade não é absoluta.' from public.questions q where q.public_code = 'PPCE-DC-000100';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Embora verdadeira, não é a única hipótese.'),
  ('b', 'Incorreta. Embora verdadeira, não é a única hipótese.'),
  ('c', 'Incorreta. Embora verdadeira, não é a única hipótese.'),
  ('e', 'Incorreta. Exclui a avaliação de desempenho.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000100';
