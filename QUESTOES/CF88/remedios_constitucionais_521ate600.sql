-- =============================================================================
-- BLOCO DE QUESTÕES: PPCE - DIREITO CONSTITUCIONAL
-- TÓPICO: REMÉDIOS CONSTITUCIONAIS
-- CÓDIGOS: PPCE-DC-000521 A PPCE-DC-000600
-- =============================================================================

-- -----------------------------------------------------------------------------
-- QUESTÃO 521: Habeas Corpus - Legitimidade Ativa (Universalidade)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000521', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Corpus', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A legitimidade para impetrar Habeas Corpus é uma das mais amplas do ordenamento jurídico brasileiro. Sobre quem pode figurar no polo ativo dessa ação, assinale a alternativa correta:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Somente advogados regularmente inscritos na OAB.', 1),
  ('b', 'B', 'Apenas brasileiros natos ou naturalizados.', 2),
  ('c', 'C', 'Qualquer pessoa, física ou jurídica, nacional ou estrangeira, independentemente de capacidade civil.', 3),
  ('d', 'D', 'Somente o Ministério Público e a Defensoria Pública.', 4),
  ('e', 'E', 'Apenas pessoas maiores de 18 anos no pleno gozo de direitos políticos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000521';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000521' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Habeas Corpus - Legitimidade Ativa.', 'O HC pode ser impetrado por qualquer pessoa (física ou jurídica), inclusive incapazes, estrangeiros e o próprio MP.', 'Dica: Pessoa jurídica pode impetrar HC em favor de pessoa física, mas nunca em seu próprio favor.' from public.questions q where q.public_code = 'PPCE-DC-000521';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. HC não exige capacidade postulatória (advogado).'),
  ('b', 'Incorreta. Estrangeiros também possuem legitimidade.'),
  ('d', 'Incorreta. Estes possuem legitimidade, mas não são os únicos.'),
  ('e', 'Incorreta. Até menores e loucos podem impetrar HC.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000521';

-- -----------------------------------------------------------------------------
-- QUESTÃO 522: Mandado de Segurança Coletivo - Objeto
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000522', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Segurança', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Mandado de Segurança Coletivo visa proteger direitos que pertencem a um grupo, categoria ou classe. Segundo a Lei 12.016/2009, esses direitos podem ser:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Apenas direitos difusos.', 1),
  ('b', 'B', 'Apenas direitos individuais homogêneos.', 2),
  ('c', 'C', 'Direitos coletivos (stricto sensu) e direitos individuais homogêneos.', 3),
  ('d', 'D', 'Direitos políticos exclusivos de partidos.', 4),
  ('e', 'E', 'Direitos meramente patrimoniais disponíveis.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000522';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000522' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MS Coletivo - Objeto.', 'O MS Coletivo protege direitos coletivos (indivisíveis) ou individuais homogêneos (divisíveis, mas com origem comum).', 'A Lei 12.016/2009 detalha essa proteção no Art. 21.' from public.questions q where q.public_code = 'PPCE-DC-000522';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Direitos difusos são protegidos preferencialmente pela Ação Civil Pública.'),
  ('b', 'Incorreta. Também abrange direitos coletivos em sentido estrito.'),
  ('d', 'Incorreta. É uma possibilidade, mas a definição legal é mais ampla.'),
  ('e', 'Incorreta. A natureza do direito não se limita ao patrimônio.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000522';

-- -----------------------------------------------------------------------------
-- QUESTÃO 523: Mandado de Injunção - Objeto e Omissão
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000523', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Injunção', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Mandado de Injunção é o remédio contra a omissão legislativa. Sobre o tipo de norma que enseja a impetração desse remédio, assinale a alternativa correta:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Normas de eficácia plena que foram revogadas.', 1),
  ('b', 'B', 'Normas de eficácia contida em período de vacatio legis.', 2),
  ('c', 'C', 'Normas de eficácia limitada que dependem de regulamentação para o exercício de direitos e liberdades constitucionais.', 3),
  ('d', 'D', 'Normas infraconstitucionais que ferem a Constituição.', 4),
  ('e', 'E', 'Tratados internacionais ainda não ratificados.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000523';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000523' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Mandado de Injunção - Normas Limitadas.', 'O MI ataca a falta de norma regulamentadora de preceitos constitucionais de eficácia limitada.', 'Dica: Se a norma já é plena, não precisa de MI.' from public.questions q where q.public_code = 'PPCE-DC-000523';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Normas revogadas não geram direito ao MI por omissão.'),
  ('b', 'Incorreta. Eficácia contida já é aplicável de imediato.'),
  ('d', 'Incorreta. Caso de controle de constitucionalidade (ADI).'),
  ('e', 'Incorreta. MI refere-se a omissão legislativa doméstica sobre a CF.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000523';

-- -----------------------------------------------------------------------------
-- QUESTÃO 524: Ação Popular - Desistência e Ministério Público
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000524', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Ação Popular', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Na Ação Popular, caso o autor desista da ação ou dê causa à sua extinção sem julgamento de mérito, qual deve ser a conduta do Ministério Público?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O MP deve obrigatoriamente concordar com a desistência e arquivar o processo.', 1),
  ('b', 'B', 'O MP deve prosseguir com a ação, assumindo o polo ativo, se houver interesse público.', 2),
  ('c', 'C', 'O MP deve multar o autor por má-fé processual.', 3),
  ('d', 'D', 'O MP deve extinguir suas funções naquele processo específico.', 4),
  ('e', 'E', 'O MP deve convocar novas eleições para escolher um novo autor.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000524';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000524' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Ação Popular - Papel do MP.', 'O MP atua como substituto processual se o autor desistir, garantindo a continuidade da defesa do patrimônio público.', 'Art. 9º da Lei 4.717/65.' from public.questions q where q.public_code = 'PPCE-DC-000524';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O MP tem o dever de zelar pela ação se houver fundamento.'),
  ('c', 'Incorreta. A desistência em si não presume má-fé.'),
  ('d', 'Incorreta. Pelo contrário, sua função se torna mais ativa.'),
  ('e', 'Incorreta. Hipótese sem qualquer base jurídica.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000524';

-- -----------------------------------------------------------------------------
-- QUESTÃO 525: Habeas Data - Requisito de Personalidade e Herdeiros
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000525', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Data', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Embora o Habeas Data seja um remédio personalíssimo, o STF admite sua impetração por herdeiros legítimos do falecido. Essa legitimidade é fundamentada no:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Direito à sucessão universal e proteção da memória do de cujus.', 1),
  ('b', 'B', 'Poder familiar exercido sobre os bens do morto.', 2),
  ('c', 'C', 'Dever de fiscalização dos órgãos públicos pelos cidadãos.', 3),
  ('d', 'D', 'Princípio da eficiência administrativa.', 4),
  ('e', 'E', 'Direito de petição genérico.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000525';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000525' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Habeas Data - Herdeiros.', 'Os herdeiros possuem interesse jurídico em acessar dados do falecido para fins de inventário, retificação histórica ou defesa da honra familiar.', 'Exceção importante ao caráter personalíssimo do HD.' from public.questions q where q.public_code = 'PPCE-DC-000525';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Poder familiar se encerra com a maioridade ou morte.'),
  ('c', 'Incorreta. O HD exige interesse específico nos dados, não é ação popular.'),
  ('d', 'Incorreta. Fundamento administrativo, não processual-constitucional.'),
  ('e', 'Incorreta. O HD é mais específico que o simples direito de petição.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000525';

-- -----------------------------------------------------------------------------
-- QUESTÃO 526: Habeas Corpus - Atos de Particulares
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000526', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Corpus', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Habeas Corpus pode ser impetrado contra ato de particular?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Não, pois remédios constitucionais só atacam atos de autoridade pública.', 1),
  ('b', 'B', 'Sim, por exemplo, contra diretor de hospital que retém paciente por falta de pagamento.', 2),
  ('c', 'C', 'Sim, mas apenas se o particular for estrangeiro.', 3),
  ('d', 'D', 'Não, devendo o interessado buscar apenas a via indenizatória comum.', 4),
  ('e', 'E', 'Sim, mas exige-se que o particular esteja em exercício de função delegada.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000526';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000526' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'HC contra Particular.', 'O HC protege a liberdade de locomoção contra qualquer ilegalidade, venha ela de autoridade pública ou de particular (ex: internação forçada ilegal).', 'É o único remédio constitucional que admite amplamente o polo passivo particular.' from public.questions q where q.public_code = 'PPCE-DC-000526';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O HC é a exceção a essa regra geral dos remédios.'),
  ('c', 'Incorreta. A nacionalidade do particular é irrelevante.'),
  ('d', 'Incorreta. A liberdade de locomoção é bem jurídico supremo que autoriza o HC.'),
  ('e', 'Incorreta. Não se exige o exercício de função delegada para o HC contra particular.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000526';

-- -----------------------------------------------------------------------------
-- QUESTÃO 527: Mandado de Segurança - Prova Pré-constituída
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000527', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Segurança', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A exigência de "direito líquido e certo" para o Mandado de Segurança significa que:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Os fatos devem ser comprovados apenas por documentos no momento da impetração.', 1),
  ('b', 'B', 'O autor tem o direito de produzir provas testemunhais durante o processo.', 2),
  ('c', 'C', 'O juiz deve realizar perícia técnica antes de decidir.', 3),
  ('d', 'D', 'O direito deve estar previsto em lei complementar.', 4),
  ('e', 'E', 'O autor deve ter esgotado todas as instâncias administrativas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000527';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000527' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MS - Prova Documental.', 'Direito líquido e certo é aquele que não exige dilação probatória (fase de provas). A prova deve ser pré-constituída.', 'Se precisar de testemunha, use a ação comum, não o MS.' from public.questions q where q.public_code = 'PPCE-DC-000527';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O rito do MS é célere e não admite testemunhas.'),
  ('c', 'Incorreta. Perícia é incompatível com o rito do MS.'),
  ('d', 'Incorreta. A espécie normativa não define a liquidez do direito.'),
  ('e', 'Incorreta. O MS não exige esgotamento administrativo prévio (Súmula 429 STF).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000527';

-- -----------------------------------------------------------------------------
-- QUESTÃO 528: Mandado de Injunção - Súmula Vinculante e Diferenças
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000528', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Injunção', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Diferentemente da Ação Direta de Inconstitucionalidade por Omissão (ADO), o Mandado de Injunção:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'É um instrumento de controle concentrado de constitucionalidade.', 1),
  ('b', 'B', 'Busca garantir o exercício de um direito no caso concreto do impetrante.', 2),
  ('c', 'C', 'Possui legitimados universais como o Presidente da República e o PGR.', 3),
  ('d', 'D', 'Não admite a participação de partidos políticos.', 4),
  ('e', 'E', 'É julgado exclusivamente pelo Supremo Tribunal Federal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000528';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000528' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MI vs ADO.', 'O MI é controle difuso/concreto (foca no indivíduo). A ADO é controle concentrado/abstrato (foca na norma e vale para todos).', 'MI = Garantir meu direito. ADO = Tirar o Estado da mora legislativa.' from public.questions q where q.public_code = 'PPCE-DC-000528';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. MI é controle difuso.'),
  ('c', 'Incorreta. Esta é a legitimidade da ADO (Art. 103 CF).'),
  ('d', 'Incorreta. Partidos podem propor MI Coletivo.'),
  ('e', 'Incorreta. Outros tribunais podem julgar MI se a autoridade coatora for de sua competência.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000528';

-- -----------------------------------------------------------------------------
-- QUESTÃO 529: Ação Popular - Litisconsórcio Passivo
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000529', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Ação Popular', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Devem figurar no polo passivo da Ação Popular:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Apenas a autoridade que assinou o ato lesivo.', 1),
  ('b', 'B', 'Apenas o beneficiário direto do ato.', 2),
  ('c', 'C', 'As autoridades, os agentes e os beneficiários do ato, bem como a entidade pública lesada.', 3),
  ('d', 'D', 'O Ministério Público, obrigatoriamente.', 4),
  ('e', 'E', 'O Tribunal de Contas que aprovou as contas relativas ao ato.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000529';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000529' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Ação Popular - Polo Passivo.', 'Há um litisconsórcio passivo necessário entre os responsáveis pelo ato e quem dele se beneficiou.', 'Art. 6º da Lei 4.717/65.' from public.questions q where q.public_code = 'PPCE-DC-000529';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Definição incompleta.'),
  ('b', 'Incorreta. Definição incompleta.'),
  ('d', 'Incorreta. O MP atua como fiscal da lei ou autor substituto, nunca réu.'),
  ('e', 'Incorreta. O TC não é réu por seus pareceres.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000529';

-- -----------------------------------------------------------------------------
-- QUESTÃO 530: Habeas Data - Sigilo de Bancos de Dados Privados
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000530', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Data', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Cabe Habeas Data contra entidade privada?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Não, o HD é exclusivo contra bancos de dados governamentais.', 1),
  ('b', 'B', 'Sim, desde que a entidade privada mantenha banco de dados de caráter público.', 2),
  ('c', 'C', 'Sim, contra qualquer empresa privada, independente do tipo de dados.', 3),
  ('d', 'D', 'Não, para dados privados o remédio é apenas a ação de exibição de documentos.', 4),
  ('e', 'E', 'Sim, mas apenas se a empresa for concessionária de telefonia.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000530';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000530' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'HD - Entidade Privada.', 'O HD cabe contra bancos de dados governamentais OU de caráter público (aqueles cujas informações podem ser transmitidas a terceiros, ex: Serasa/SPC).', 'Súmula 11 do STJ.' from public.questions q where q.public_code = 'PPCE-DC-000530';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Ignora as entidades de caráter público.'),
  ('c', 'Incorreta. Se o banco de dados for estritamente interno e privado, não cabe HD.'),
  ('d', 'Incorreta. O HD é a via constitucional adequada para dados de caráter público.'),
  ('e', 'Incorreta. Definição muito restritiva.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000530';

-- -----------------------------------------------------------------------------
-- QUESTÃO 531: Habeas Corpus - Punição Disciplinar e Controle de Legalidade
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000531', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Corpus', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O STF consolidou entendimento de que, apesar da vedação do Art. 142, § 2º da CF, cabe Habeas Corpus contra punição disciplinar militar para:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Analisar o mérito da punição.', 1),
  ('b', 'B', 'Verificar apenas a legalidade do ato (competência, rito, etc.).', 2),
  ('c', 'C', 'Substituir a punição por advertência.', 3),
  ('d', 'D', 'Anular a punição por ser considerada injusta.', 4),
  ('e', 'E', 'Conceder indulto ao militar.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000531';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000531' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'HC e Militares.', 'A restrição é quanto ao mérito. O Judiciário pode sempre ver se o rito foi seguido e se quem puniu tinha poder para isso.', 'Legalidade SEMPRE pode ser controlada.' from public.questions q where q.public_code = 'PPCE-DC-000531';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Mérito é vedado.'),
  ('c', 'Incorreta. O Judiciário não atua como administrador militar.'),
  ('d', 'Incorreta. Justiça e mérito são esferas do comando militar.'),
  ('e', 'Incorreta. Indulto é ato do Presidente.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000531';

-- -----------------------------------------------------------------------------
-- QUESTÃO 532: Mandado de Segurança - Súmula 266 STF (Lei em Tese)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000532', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Segurança', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Conforme a Súmula 266 do STF, NÃO cabe mandado de segurança contra:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ato de gestão comercial de empresa pública.', 1),
  ('b', 'B', 'Lei em tese.', 2),
  ('c', 'C', 'Ato disciplinar de servidor público civil.', 3),
  ('d', 'D', 'Decisão judicial passível de recurso com efeito suspensivo.', 4),
  ('e', 'E', 'Ato de autoridade com base em lei inconstitucional.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000532';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000532' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MS e Lei em Tese.', 'O MS não serve para atacar leis de forma abstrata (isso é ADI). Deve haver um ato concreto de aplicação da lei.', 'Súmula 266 STF: Não cabe mandado de segurança contra lei em tese.' from public.questions q where q.public_code = 'PPCE-DC-000532';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Também não cabe, mas a Súmula 266 foca especificamente na lei em tese.'),
  ('c', 'Incorreta. Cabe MS se houver ilegalidade no rito.'),
  ('d', 'Incorreta. Súmula 267 STF (outro fundamento).'),
  ('e', 'Incorreta. Se houver ato concreto, cabe MS alegando a inconstitucionalidade incidental.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000532';

-- -----------------------------------------------------------------------------
-- QUESTÃO 533: Habeas Data - Indeferimento Administrativo (Súmula 2 STJ)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000533', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Data', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Segundo a Súmula 2 do STJ, o Habeas Data exige:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Esgotamento da via administrativa com decisão final.', 1),
  ('b', 'B', 'A recusa da autoridade administrativa em fornecer os dados ou retificá-los.', 2),
  ('c', 'C', 'O pagamento de custas judiciais prévias.', 3),
  ('d', 'D', 'Assistência obrigatória da Defensoria Pública.', 4),
  ('e', 'E', 'A prova de que os dados são falsos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000533';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000533' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'HD e Recusa Administrativa.', 'Não se pode ir ao judiciário via HD sem antes ter o pedido negado na esfera administrativa.', 'Diferente do MS, o HD EXIGE a prova da recusa.' from public.questions q where q.public_code = 'PPCE-DC-000533';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Basta a recusa, não precisa esperar o fim de todos os recursos.'),
  ('c', 'Incorreta. HD é gratuito.'),
  ('d', 'Incorreta. Exige advogado, mas não necessariamente da Defensoria.'),
  ('e', 'Incorreta. HD também serve para conhecimento dos dados, não só retificação.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000533';

-- -----------------------------------------------------------------------------
-- QUESTÃO 534: Mandado de Injunção - Teoria Concretista Direta
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000534', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Injunção', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A Lei 13.300/2016, ao disciplinar o Mandado de Injunção, estabeleceu que o juiz, ao reconhecer a omissão, deve:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Declarar a inconstitucionalidade da omissão e aguardar 180 dias.', 1),
  ('b', 'B', 'Estabelecer as condições em que se dará o exercício dos direitos ou, se for o caso, as condições em que o interessado poderá reclamar perdas e danos.', 2),
  ('c', 'C', 'Ordenar a imediata votação do projeto de lei pelo Congresso.', 3),
  ('d', 'D', 'Cassar o mandato do autor da omissão.', 4),
  ('e', 'E', 'Nomear um interventor legislativo.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000534';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000534' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MI - Efeitos da Decisão.', 'A lei adotou a teoria concretista (individual e direta), permitindo ao juiz viabilizar o direito no caso concreto.', 'Art. 8º da Lei 13.300/2016.' from public.questions q where q.public_code = 'PPCE-DC-000534';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Este era o efeito da teoria não-concretista (apenas declarar a mora).'),
  ('c', 'Incorreta. O Judiciário não pode ordenar o processo legislativo (Separação de Poderes).'),
  ('d', 'Incorreta. Medida desproporcional e sem previsão.'),
  ('e', 'Incorreta. Não existe a figura de interventor legislativo por omissão.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000534';

-- -----------------------------------------------------------------------------
-- QUESTÃO 535: Ação Popular - Objeto (Meio Ambiente)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000535', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Ação Popular', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A Ação Popular pode ser utilizada para anular ato lesivo ao meio ambiente?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, pois o meio ambiente é um dos bens protegidos expressamente pela CF no rol da Ação Popular.', 1),
  ('b', 'B', 'Não, a proteção do meio ambiente é exclusiva da Ação Civil Pública.', 2),
  ('c', 'C', 'Sim, mas apenas se o dano for causado por empresa estrangeira.', 3),
  ('d', 'D', 'Não, o cidadão deve buscar apenas a denúncia aos órgãos ambientais.', 4),
  ('e', 'E', 'Sim, mas exige-se que o autor seja morador da área afetada.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000535';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000535' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Objeto da Ação Popular.', 'A CF protege: Patrimônio Público, Moralidade Administrativa, Meio Ambiente e Patrimônio Histórico/Cultural.', 'Lembre-se: MP-MH-MA (Moralidade, Público, Histórico, Ambiental).' from public.questions q where q.public_code = 'PPCE-DC-000535';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Existe concorrência de vias; o cidadão usa a AP, o MP usa a ACP.'),
  ('c', 'Incorreta. O poluidor pode ser nacional ou estrangeiro.'),
  ('d', 'Incorreta. A via judicial é garantida pela CF.'),
  ('e', 'Incorreta. Qualquer cidadão brasileiro pode propor, independente de onde more.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000535';

-- -----------------------------------------------------------------------------
-- QUESTÃO 536: Habeas Corpus - Substitutivo de Recurso (Jurisprudência)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000536', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Corpus', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Atualmente, a jurisprudência do STF e STJ quanto ao uso do Habeas Corpus como substitutivo de recurso próprio (ex: Apelação ou Recurso Especial) orienta-se no sentido de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Admitir livremente em nome do princípio da ampla defesa.', 1),
  ('b', 'B', 'Não admitir, salvo se houver flagrante ilegalidade que justifique a concessão de ordem de ofício.', 2),
  ('c', 'C', 'Exigir o pagamento de multa para quem usar o HC indevidamente.', 3),
  ('d', 'D', 'Admitir apenas se o impetrante for o Ministério Público.', 4),
  ('e', 'E', 'Admitir apenas em crimes contra a vida.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000536';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000536' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'HC como Substitutivo.', 'Para evitar o congestionamento das cortes, o HC não deve substituir recursos previstos no CPP, exceto em casos de erro grosseiro/ilegalidade evidente.', 'Tendência de "racionalização" do HC.' from public.questions q where q.public_code = 'PPCE-DC-000536';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Esta era a visão antiga, hoje superada.'),
  ('c', 'Incorreta. Não há previsão de multa para impetração de HC.'),
  ('d', 'Incorreta. A legitimidade é universal.'),
  ('e', 'Incorreta. Aplica-se a qualquer crime onde haja ameaça à liberdade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000536';

-- -----------------------------------------------------------------------------
-- QUESTÃO 537: Mandado de Segurança - Legitimidade Passiva (Autoridade Coatora)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000537', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Segurança', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'No Mandado de Segurança, considera-se autoridade coatora:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O órgão público ao qual o agente pertence (ex: Estado do Ceará).', 1),
  ('b', 'B', 'A pessoa física que tem o poder de decisão e que praticou o ato impugnado.', 2),
  ('c', 'C', 'O superior hierárquico de quem praticou o ato.', 3),
  ('d', 'D', 'O Procurador-Geral do Estado.', 4),
  ('e', 'E', 'Qualquer servidor público que trabalhe no departamento.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000537';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000537' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MS - Autoridade Coatora.', 'A autoridade é quem detém a competência funcional para desfazer o ato ou suprir a omissão.', 'Diferente da ação comum onde se processa o ENTE, no MS foca-se na AUTORIDADE.' from public.questions q where q.public_code = 'PPCE-DC-000537';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O ente é o sujeito passivo da relação, mas a coatora é a autoridade.'),
  ('c', 'Incorreta. Súmula 510 STF: A autoridade que delega não responde pelo ato do delegado.'),
  ('d', 'Incorreta. Só se ele foi o autor do ato.'),
  ('e', 'Incorreta. Deve ter poder de decisão.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000537';

-- -----------------------------------------------------------------------------
-- QUESTÃO 538: Habeas Data - Retificação de Dados (Rito)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000538', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Data', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Habeas Data para retificação de dados somente será admitido quando:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O interessado não preferir fazê-lo por processo sigiloso, judicial ou administrativo.', 1),
  ('b', 'B', 'Os dados forem relativos a terceiros.', 2),
  ('c', 'C', 'Houver autorização do Ministério Público.', 3),
  ('d', 'D', 'O erro for de natureza meramente ortográfica.', 4),
  ('e', 'E', 'A entidade detentora dos dados for estrangeira.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000538';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000538' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'HD - Caráter Subsidiário da Retificação.', 'A retificação via HD é opcional se houver outra via administrativa/judicial sigilosa.', 'Texto expresso do Art. 5º, LXXII, "b" da CF/88.' from public.questions q where q.public_code = 'PPCE-DC-000538';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O HD é para dados próprios.'),
  ('c', 'Incorreta. Não exige autorização do MP.'),
  ('d', 'Incorreta. Qualquer erro de fato autoriza a retificação.'),
  ('e', 'Incorreta. Deve ser entidade de caráter público nacional.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000538';

-- -----------------------------------------------------------------------------
-- QUESTÃO 539: Mandado de Injunção - Eficácia da Decisão (Individual vs Coletiva)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000539', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Injunção', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'De acordo com a Lei 13.300/2016, no Mandado de Injunção Coletivo, a sentença fará coisa julgada:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Apenas para os membros que autorizaram expressamente a ação.', 1),
  ('b', 'B', 'Ultra partes, mas limitada à categoria ou grupo representado pelo impetrante.', 2),
  ('c', 'C', 'Erga omnes, atingindo todos os cidadãos brasileiros.', 3),
  ('d', 'D', 'Apenas para o Ministério Público.', 4),
  ('e', 'E', 'Apenas para a autoridade administrativa citada.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000539';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000539' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Efeitos do MI Coletivo.', 'A decisão beneficia todos os membros do grupo ou categoria representada.', 'Pode haver efeito erga omnes se for essencial para o exercício do direito (excepcional).' from public.questions q where q.public_code = 'PPCE-DC-000539';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. No coletivo, a representação é ampla para a classe.'),
  ('c', 'Incorreta. Erga omnes é a regra para a ADO, não para o MI (salvo decisão judicial específica).'),
  ('d', 'Incorreta. O MP é fiscal ou autor, mas a decisão visa os beneficiários.'),
  ('e', 'Incorreta. A decisão obriga a autoridade, mas seu efeito é para os impetrantes.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000539';

-- -----------------------------------------------------------------------------
-- QUESTÃO 540: Ação Popular - Isenção de Custas (Má-fé)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000540', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Ação Popular', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O autor da Ação Popular responderá por custas judiciais e ônus da sucumbência se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Perder a ação, independente do motivo.', 1),
  ('b', 'B', 'For comprovada sua má-fé.', 2),
  ('c', 'C', 'O valor da causa for superior a 100 mil reais.', 3),
  ('d', 'D', 'O réu for um Governador de Estado.', 4),
  ('e', 'E', 'A ação durar mais de 2 anos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000540';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000540' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Gratuidade na AP.', 'A isenção é a regra para incentivar a fiscalização cidadã. A punição (custas) só ocorre se houver comprovada má-fé.', 'Texto literal do Art. 5º, LXXIII.' from public.questions q where q.public_code = 'PPCE-DC-000540';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Se perdeu de boa-fé, continua isento.'),
  ('c', 'Incorreta. O valor não altera a regra da gratuidade.'),
  ('d', 'Incorreta. O cargo do réu é irrelevante para essa regra.'),
  ('e', 'Incorreta. O tempo processual não gera cobrança de custas ao autor.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000540';

-- -----------------------------------------------------------------------------
-- QUESTÃO 541: Habeas Corpus - Preventivo vs Repressivo
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000541', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Corpus', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Quando alguém se sente na iminência de sofrer uma prisão ilegal, o remédio adequado é o:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Habeas Corpus repressivo (Alvará de Soltura).', 1),
  ('b', 'B', 'Habeas Corpus preventivo (Salvo-Conduto).', 2),
  ('c', 'C', 'Mandado de Segurança contra ato judicial.', 3),
  ('d', 'D', 'Habeas Data de prevenção.', 4),
  ('e', 'E', 'Mandado de Injunção cautelar.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000541';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000541' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Tipos de HC.', 'Preventivo = Ameaça de lesão (Salvo-conduto). Repressivo = Lesão já ocorrida (Alvará de soltura).', 'Foco: Liberdade de Locomoção.' from public.questions q where q.public_code = 'PPCE-DC-000541';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Repressivo é para quem já está preso.'),
  ('c', 'Incorreta. MS não protege liberdade de locomoção (caráter residual).'),
  ('d', 'Incorreta. HD é para informações, não liberdade.'),
  ('e', 'Incorreta. MI é para falta de norma, não para ameaça de prisão.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000541';

-- -----------------------------------------------------------------------------
-- QUESTÃO 542: Mandado de Segurança - Ato Disciplinar Militar
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000542', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Segurança', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Diferente do Habeas Corpus, o Mandado de Segurança pode ser utilizado por militar para:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Questionar sanções que NÃO restrinjam a liberdade de locomoção (ex: perda de graduação).', 1),
  ('b', 'B', 'Obter liberdade de ir e vir durante o serviço.', 2),
  ('c', 'C', 'Anular prisão administrativa por indisciplina.', 3),
  ('d', 'D', 'Evitar a transferência para a reserva.', 4),
  ('e', 'E', 'Garantir o direito à greve militar.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000542';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000542' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MS e Militares.', 'O HC só protege a locomoção. Direitos como promoção, vencimentos ou graduação militar são protegidos via MS.', 'Súmula 694 STF.' from public.questions q where q.public_code = 'PPCE-DC-000542';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Locomoção é objeto de HC.'),
  ('c', 'Incorreta. Se restringe a locomoção, a via seria o HC (respeitando os limites do Art. 142).'),
  ('d', 'Incorreta. Questão administrativa comum.'),
  ('e', 'Incorreta. Militar é proibido de fazer greve.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000542';

-- -----------------------------------------------------------------------------
-- QUESTÃO 543: Habeas Data - Obtenção de Certidões (Diferença)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000543', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Data', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Para obter certidão em órgãos públicos, para defesa de direitos e esclarecimento de situações de interesse pessoal, o remédio adequado em caso de recusa é:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Habeas Data.', 1),
  ('b', 'B', 'Mandado de Segurança.', 2),
  ('c', 'C', 'Ação Popular.', 3),
  ('d', 'D', 'Habeas Corpus.', 4),
  ('e', 'E', 'Mandado de Injunção.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000543';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000543' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MS vs HD - Certidões.', 'O HD serve para conhecer informações em BANCO DE DADOS. Para obter CERTIDÕES (documentos prontos), usa-se o MS baseado no direito de certidão (Art. 5º, XXXIV, b).', 'Cuidado! Essa cai muito.' from public.questions q where q.public_code = 'PPCE-DC-000543';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. HD é para dados constantes de registros/bancos de dados, não para certidões.'),
  ('c', 'Incorreta. AP foca no patrimônio/moralidade coletiva.'),
  ('d', 'Incorreta. HC foca na locomoção.'),
  ('e', 'Incorreta. MI foca na omissão legislativa.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000543';

-- -----------------------------------------------------------------------------
-- QUESTÃO 544: Mandado de Injunção - Legitimidade Ativa (Partidos Políticos)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000544', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Injunção', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Um partido político com representação no Congresso Nacional pode impetrar Mandado de Injunção Coletivo?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, para assegurar o exercício de direitos e liberdades de seus filiados ou de uma coletividade.', 1),
  ('b', 'B', 'Não, pois o MI é remédio exclusivamente individual.', 2),
  ('c', 'C', 'Sim, mas apenas se o direito for relativo ao processo eleitoral.', 3),
  ('d', 'D', 'Não, pois partidos políticos só podem impetrar Mandado de Segurança.', 4),
  ('e', 'E', 'Sim, mas apenas se o Ministério Público autorizar.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000544';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000544' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MI Coletivo e Partidos.', 'A Lei 13.300/16 expressamente autoriza os partidos com representação (pelo menos 1 parlamentar) a impetrar MI Coletivo.', 'Legitimidade igual à do MS Coletivo.' from public.questions q where q.public_code = 'PPCE-DC-000544';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Existe a figura do MI Coletivo desde a lei de 2016.'),
  ('c', 'Incorreta. Pode abranger qualquer direito constitucional obstado por omissão.'),
  ('d', 'Incorreta. Podem impetrar ambos.'),
  ('e', 'Incorreta. Independe de autorização do MP.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000544';

-- -----------------------------------------------------------------------------
-- QUESTÃO 545: Ação Popular - Cidadão (Título de Eleitor)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000545', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Ação Popular', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Para fins de propositura de Ação Popular, a prova da condição de cidadão é feita mediante a apresentação do:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'RG ou CPF.', 1),
  ('b', 'B', 'Título de Eleitor ou documento que comprove o alistamento eleitoral.', 2),
  ('c', 'C', 'Certificado de reservista.', 3),
  ('d', 'D', 'Diploma de curso superior.', 4),
  ('e', 'E', 'Passaporte válido.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000545';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000545' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Cidadania na AP.', 'Cidadão é quem está no pleno gozo de seus direitos políticos. O título de eleitor é o documento que prova essa condição.', 'Súmula 365 STF.' from public.questions q where q.public_code = 'PPCE-DC-000545';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Provam nacionalidade ou identidade, mas não cidadania plena.'),
  ('c', 'Incorreta. Prova quitação militar, não direitos políticos ativos.'),
  ('d', 'Incorreta. Escolaridade não define cidadania para este fim.'),
  ('e', 'Incorreta. Prova nacionalidade e permite viagens, mas não substitui o título.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000545';

-- -----------------------------------------------------------------------------
-- QUESTÃO 546: Habeas Corpus - Atos Institucionais e Estado de Sítio
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000546', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Corpus', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Durante a vigência do Estado de Sítio, o Habeas Corpus:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Fica totalmente suspenso em todo o território nacional.', 1),
  ('b', 'B', 'Continua cabível contra prisões ou detenções que não obedeçam às formalidades constitucionais e legais do próprio regime de exceção.', 2),
  ('c', 'C', 'Pode ser impetrado apenas pelo Ministério Público.', 3),
  ('d', 'D', 'Exige autorização prévia do Congresso Nacional para ser processado.', 4),
  ('e', 'E', 'Só pode ser julgado pelo STF, independente da autoridade coatora.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000546';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000546' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'HC no Estado de Sítio.', 'Mesmo em estados de exceção, as garantias fundamentais não desaparecem. O HC serve para controlar se o governo está seguindo as regras do próprio Estado de Sítio.', 'A CF não autoriza a suspensão total do HC.' from public.questions q where q.public_code = 'PPCE-DC-000546';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Seria um retrocesso autoritário não previsto na CF/88.'),
  ('c', 'Incorreta. A legitimidade ativa permanece universal.'),
  ('d', 'Incorreta. O Judiciário mantém sua independência para julgar remédios.'),
  ('e', 'Incorreta. As regras de competência ordinária se mantêm.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000546';

-- -----------------------------------------------------------------------------
-- QUESTÃO 547: Mandado de Segurança - Prazo Decadencial (Súmula 632 STF)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000547', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Segurança', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O prazo de 120 dias para impetração do Mandado de Segurança é:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Prescricional, podendo ser interrompido por recurso administrativo.', 1),
  ('b', 'B', 'Decadencial, não se interrompendo por pedido de reconsideração administrativa.', 2),
  ('c', 'C', 'Processual, contado apenas em dias úteis.', 3),
  ('d', 'D', 'Facultativo, podendo o juiz relevá-lo em nome da justiça.', 4),
  ('e', 'E', 'Contado a partir da prática do ato, independente da ciência do interessado.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000547';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000547' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Prazo do MS.', 'O prazo é decadencial. Súmula 430 STF: Pedido de reconsideração na via administrativa não interrompe o prazo para o MS.', 'Dica: Passou 120 dias, não cabe mais MS, mas ainda cabe ação comum.' from public.questions q where q.public_code = 'PPCE-DC-000547';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. É prazo de extinção do direito ao remédio célere (decadência).'),
  ('c', 'Incorreta. Prazos decadenciais contam-se de forma contínua.'),
  ('d', 'Incorreta. É norma cogente de ordem pública.'),
  ('e', 'Incorreta. Conta-se da CIÊNCIA pelo interessado.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000547';

-- -----------------------------------------------------------------------------
-- QUESTÃO 548: Habeas Data - Caráter Personalíssimo (Exceções)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000548', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Data', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Um sindicato pode impetrar Habeas Data para obter dados funcionais de todos os seus sindicalizados de uma só vez?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, baseado na sua função de substituto processual.', 1),
  ('b', 'B', 'Não, pois o Habeas Data tem caráter estritamente personalíssimo.', 2),
  ('c', 'C', 'Sim, desde que os sindicalizados autorizem individualmente em assembleia.', 3),
  ('d', 'D', 'Não, para isso deve utilizar o Mandado de Segurança Coletivo.', 4),
  ('e', 'E', 'Sim, mas apenas se o sindicato for de servidores públicos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000548';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000548' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'HD - Natureza Personalíssima.', 'O HD serve para conhecer dados do IMPETRANTE. Não se admite HD para conhecer dados de terceiros (salvo herdeiros legítimos).', 'Não existe HD Coletivo.' from public.questions q where q.public_code = 'PPCE-DC-000548';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. A substituição processual não alcança o HD.'),
  ('c', 'Incorreta. Nem com autorização se admite o HD "por procuração" para dados alheios.'),
  ('d', 'Incorreta. O MS Coletivo também não serviria para "conhecer dados personalíssimos", mas sim para proteger direitos de classe.'),
  ('e', 'Incorreta. A regra vale para qualquer sindicato.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000548';

-- -----------------------------------------------------------------------------
-- QUESTÃO 549: Mandado de Injunção - Ciência ao Órgão Impetrado
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000549', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Injunção', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'No Mandado de Injunção, ao deferir a ordem, o juiz ou tribunal deve dar ciência ao órgão ou autoridade responsável por editar a norma. Caso a norma venha a ser editada após a decisão, o que ocorre?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A decisão judicial continua valendo para o impetrante, ignorando-se a nova lei.', 1),
  ('b', 'B', 'A nova norma passará a reger as situações futuras, mas não poderá prejudicar o direito já exercido por força da decisão judicial (salvo se a lei for mais favorável).', 2),
  ('c', 'C', 'A nova lei é considerada nula por afrontar a decisão do Judiciário.', 3),
  ('d', 'D', 'O impetrante deve pagar indenização ao Estado pelo tempo em que usou o direito via MI.', 4),
  ('e', 'E', 'O MI deve ser julgado novamente desde o início.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000549';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000549' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MI - Advento da Norma.', 'A superveniência da norma regulamentadora produz efeitos ex nunc (daqui para frente).', 'Art. 11 da Lei 13.300/16.' from public.questions q where q.public_code = 'PPCE-DC-000549';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O Judiciário apenas supriu a omissão; vindo a lei, esta assume o comando.'),
  ('c', 'Incorreta. O Legislativo é soberano para legislar a qualquer tempo.'),
  ('d', 'Incorreta. Não há base legal para tal cobrança.'),
  ('e', 'Incorreta. A perda de objeto ocorre se a lei vier ANTES da decisão.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000549';

-- -----------------------------------------------------------------------------
-- QUESTÃO 550: Ação Popular - Competência de Foro
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000550', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Ação Popular', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Sobre a competência para julgar a Ação Popular, é correto afirmar que:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Se o réu for o Presidente da República, a competência é do STF.', 1),
  ('b', 'B', 'Não existe foro por prerrogativa de função (foro privilegiado) em sede de Ação Popular.', 2),
  ('c', 'C', 'Deve ser julgada sempre na capital da unidade federativa lesada.', 3),
  ('d', 'D', 'A competência é exclusiva da Justiça Federal.', 4),
  ('e', 'E', 'O Ministério Público escolhe o juízo de sua conveniência.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000550';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000550' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Competência na AP.', 'A AP é julgada pelo juízo de 1º grau (primeira instância), mesmo que o réu seja autoridade com foro em outras ações.', 'Entendimento pacificado do STF.' from public.questions q where q.public_code = 'PPCE-DC-000550';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Mesmo contra o Presidente, julga o juiz de 1ª instância.'),
  ('c', 'Incorreta. Segue as regras gerais de competência territorial do CPC.'),
  ('d', 'Incorreta. Só será federal se houver interesse da União ou suas autarquias.'),
  ('e', 'Incorreta. O autor (cidadão) é quem ajuíza, seguindo regras de competência legal.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000550';

-- -----------------------------------------------------------------------------
-- QUESTÃO 551: Habeas Corpus - Pessoas Jurídicas
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000551', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Corpus', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Sobre a participação de pessoas jurídicas no Habeas Corpus, assinale a alternativa correta:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Podem ser pacientes (beneficiárias) do HC.', 1),
  ('b', 'B', 'Podem ser apenas impetrantes (quem propõe a ação) em favor de pessoa física.', 2),
  ('c', 'C', 'São impedidas de qualquer participação no rito do HC.', 3),
  ('d', 'D', 'Devem ser obrigatoriamente representadas pelo Ministério Público.', 4),
  ('e', 'E', 'Podem usar o HC para proteger sua sede contra invasões policiais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000551';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000551' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'PJ no Habeas Corpus.', 'Pessoa jurídica não tem corpo, logo não tem liberdade de locomoção. Só pode impetrar para outros.', 'Dica: PJ pode impetrar, mas nunca ser paciente.' from public.questions q where q.public_code = 'PPCE-DC-000551';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. PJ não sofre ameaça à locomoção física.'),
  ('c', 'Incorreta. Podem impetrar em favor de seus diretores ou terceiros.'),
  ('d', 'Incorreta. PJ tem capacidade própria de impetração.'),
  ('e', 'Incorreta. Inviolabilidade de domicílio é protegida por Mandado de Segurança.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000551';

-- -----------------------------------------------------------------------------
-- QUESTÃO 552: Mandado de Segurança - Ato de Gestão vs Império
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000552', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Segurança', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O Mandado de Segurança NÃO é cabível contra:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Atos de gestão comercial praticados pelos administradores de empresas públicas.', 1),
  ('b', 'B', 'Atos de autoridade praticados por reitores de universidades privadas.', 2),
  ('c', 'C', 'Decisões do Tribunal de Contas que anulam concursos.', 3),
  ('d', 'D', 'Atos de Presidentes de Mesas Legislativas.', 4),
  ('e', 'E', 'Omissões de Secretários de Estado.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000552';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000552' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MS e Atos de Gestão.', 'Atos puramente comerciais (contratos de aluguel, compra de insumos) não são atos de autoridade pública (jus imperii), logo não cabe MS.', 'Apenas atos de "império" autorizam o MS.' from public.questions q where q.public_code = 'PPCE-DC-000552';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Reitores exercem função pública delegada em atos acadêmicos.'),
  ('c', 'Incorreta. São atos de autoridade administrativa plena.'),
  ('d', 'Incorreta. Autoridade pública no exercício de função.'),
  ('e', 'Incorreta. O MS também cabe contra omissões.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000552';

-- -----------------------------------------------------------------------------
-- QUESTÃO 553: Habeas Data - Retificação vs Anotação
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000553', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Data', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Além de conhecer e retificar dados, a Lei 9.507/97 prevê que o Habeas Data pode ser utilizado para:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Pedir indenização por danos morais causados por dados falsos.', 1),
  ('b', 'B', 'Anotação nos assentamentos do interessado, de explicação ou contestação sobre dado verdadeiro mas justificável e que esteja sob pendência judicial ou amigável.', 2),
  ('c', 'C', 'Excluir definitivamente o nome de cadastros de inadimplentes.', 3),
  ('d', 'D', 'Obter cópias de processos administrativos sigilosos.', 4),
  ('e', 'E', 'Investigar a vida privada de autoridades públicas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000553';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000553' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'HD - Anotação Justificativa.', 'É a terceira finalidade do HD: não se apaga o dado, mas se coloca uma nota explicativa ao lado dele.', 'Art. 7º, III da Lei 9.507/97.' from public.questions q where q.public_code = 'PPCE-DC-000553';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Indenização exige ação ordinária.'),
  ('c', 'Incorreta. Exclusão de nome por dívida prescrita usa-se o CDC/Ação ordinária.'),
  ('d', 'Incorreta. MS é a via para vista de processos.'),
  ('e', 'Incorreta. HD é apenas para dados PRÓPRIOS.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000553';

-- -----------------------------------------------------------------------------
-- QUESTÃO 554: Mandado de Injunção - Súmula Vinculante 33
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000554', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Injunção', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A Súmula Vinculante 33 do STF trata de qual tema comumente levado via Mandado de Injunção?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Direito de greve do servidor público civil.', 1),
  ('b', 'B', 'Aposentadoria especial de servidor público que exerça atividades sob condições prejudiciais à saúde ou à integridade física.', 2),
  ('c', 'C', 'Revisão geral anual de vencimentos.', 3),
  ('d', 'D', 'Criação de novos municípios.', 4),
  ('e', 'E', 'Contratação temporária de policiais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000554';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000554' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'SV 33 e MI.', 'A súmula determina que se apliquem as regras do regime geral de previdência (RGPS) aos servidores enquanto não houver lei complementar sobre aposentadoria especial.', 'É um exemplo clássico de decisão injuncional consolidada.' from public.questions q where q.public_code = 'PPCE-DC-000554';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Greve é tratada pelo MI 670 (sem súmula vinculante específica com esse texto).'),
  ('c', 'Incorreta. Revisão geral não gera direito a aumento automático via MI.'),
  ('d', 'Incorreta. Tema de ADO.'),
  ('e', 'Incorreta. Tema de concurso público.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000554';

-- -----------------------------------------------------------------------------
-- QUESTÃO 555: Ação Popular - Litispendência e Coisa Julgada
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000555', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Ação Popular', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A sentença na Ação Popular faz coisa julgada erga omnes, EXCETO se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O pedido for julgado improcedente por deficiência de provas.', 1),
  ('b', 'B', 'O réu for uma empresa privada.', 2),
  ('c', 'C', 'O autor for pessoa jurídica.', 3),
  ('d', 'D', 'O valor do dano for inestimável.', 4),
  ('e', 'E', 'Houver recurso do Ministério Público.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000555';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000555' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Coisa Julgada na AP.', 'Se a ação foi perdida por falta de provas, qualquer outro cidadão pode tentar novamente com novas provas. Caso contrário, vale para todos.', 'Art. 18 da Lei 4.717/65.' from public.questions q where q.public_code = 'PPCE-DC-000555';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O tipo de réu não altera os efeitos da sentença coletiva.'),
  ('c', 'Incorreta. PJ não pode propor AP.'),
  ('d', 'Incorreta. O valor é irrelevante para a coisa julgada.'),
  ('e', 'Incorreta. O recurso é fase do processo, não define a amplitude da coisa julgada final.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000555';

-- -----------------------------------------------------------------------------
-- QUESTÃO 556: Habeas Corpus - Cabe contra Punição Disciplinar em Escolas Militares?
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000556', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Corpus', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Cabe Habeas Corpus contra punição disciplinar imposta a aluno de escola militar (Ex: Colégio Militar)?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, pois o regime de alunos não se confunde com o regime jurídico dos militares da ativa para fins da restrição do Art. 142.', 1),
  ('b', 'B', 'Não, a vedação estende-se a todos que frequentem instituições militares.', 2),
  ('c', 'C', 'Sim, mas apenas se o aluno for menor de idade.', 3),
  ('d', 'D', 'Não, devendo o aluno recorrer apenas ao conselho escolar.', 4),
  ('e', 'E', 'Sim, mas exige-se que a punição seja de expulsão.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000556';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000556' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'HC e Alunos Militares.', 'A restrição constitucional do Art. 142, § 2º foca no militar profissional e na hierarquia de comando. Alunos de escolas militares têm maior amplitude de defesa via HC.', 'Jurisprudência dominante.' from public.questions q where q.public_code = 'PPCE-DC-000556';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A vedação é interpretada restritivamente.'),
  ('c', 'Incorreta. A idade não é o divisor de águas, mas a natureza da relação.'),
  ('d', 'Incorreta. O acesso ao judiciário via remédios é livre.'),
  ('e', 'Incorreta. Qualquer restrição à locomoção física (ex: detenção disciplinar) autoriza o HC.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000556';

-- -----------------------------------------------------------------------------
-- QUESTÃO 557: Mandado de Segurança - Cência do Interessado (Súmula 430 STF)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000557', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Segurança', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Um candidato reprovado em exame psicotécnico de concurso público decide entrar com Mandado de Segurança. O prazo de 120 dias começa a contar:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Da data do edital de abertura do concurso.', 1),
  ('b', 'B', 'Da data da publicação do resultado que o considerou inabilitado.', 2),
  ('c', 'C', 'Da data em que o candidato protocolou o recurso administrativo.', 3),
  ('d', 'D', 'Da data do encerramento do concurso.', 4),
  ('e', 'E', 'A qualquer tempo, pois o prejuízo é contínuo.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000557';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000557' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Termo Inicial do MS.', 'O prazo conta-se da ciência do ato que lesa o direito. No caso, o resultado da prova.', 'Importante: Recurso administrativo SEM efeito suspensivo não interrompe este prazo.' from public.questions q where q.public_code = 'PPCE-DC-000557';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O edital é a regra, mas a lesão concreta só ocorre na reprovação.'),
  ('c', 'Incorreta. O recurso não é o marco, salvo se a lesão vier da decisão do recurso.'),
  ('d', 'Incorreta. Não há relação com o fim do certame.'),
  ('e', 'Incorreta. Atos comissivos (positivos) geram prazo decadencial certo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000557';

-- -----------------------------------------------------------------------------
-- QUESTÃO 558: Habeas Data - Conhecimento de Dados de Terceiros (Cônjuge)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000558', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Data', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Uma esposa pode impetrar Habeas Data para acessar os registros funcionais de seu marido (servidor público vivo), alegando comunhão de bens?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, o interesse familiar supre a natureza personalíssima.', 1),
  ('b', 'B', 'Não, o HD é personalíssimo e não admite substituição por parentesco de pessoa viva.', 2),
  ('c', 'C', 'Sim, desde que apresente a certidão de casamento.', 3),
  ('d', 'D', 'Não, pois dados funcionais são sempre sigilosos.', 4),
  ('e', 'E', 'Sim, mas apenas para fins de cálculo de pensão.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000558';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000558' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'HD - Personalíssimo.', 'O dado deve ser relativo ao impetrante. Se o marido está vivo, apenas ele pode pedir seus dados via HD.', 'Regra de ouro: HD é eu pedindo meus dados.' from public.questions q where q.public_code = 'PPCE-DC-000558';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O interesse jurídico patrimonial não quebra a regra da personalidade do HD.'),
  ('c', 'Incorreta. Documento de parentesco não gera legitimidade no HD de vivos.'),
  ('d', 'Incorreta. Dados funcionais não são sigilosos para o próprio servidor.'),
  ('e', 'Incorreta. Para isso ela deve usar outros meios (ação de alimentos/exibição).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000558';

-- -----------------------------------------------------------------------------
-- QUESTÃO 559: Mandado de Injunção - Ciência à Autoridade (PGR)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000559', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Injunção', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'No Mandado de Injunção, o Ministério Público tem qual papel?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Atua como autoridade coatora.', 1),
  ('b', 'B', 'Atua como fiscal da ordem jurídica (custos legis) e também possui legitimidade ativa para o MI coletivo.', 2),
  ('c', 'C', 'Atua apenas se o impetrante for hipossuficiente.', 3),
  ('d', 'D', 'É quem deve editar a norma em caso de omissão do Congresso.', 4),
  ('e', 'E', 'Não participa deste tipo de remédio.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000559';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000559' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MP no Mandado de Injunção.', 'O MP deve ser ouvido em todos os MI e pode propor a ação coletiva se o interesse social assim exigir.', 'Art. 5º da Lei 13.300/16.' from public.questions q where q.public_code = 'PPCE-DC-000559';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O MP não omite norma (salvo norma interna do próprio MP).'),
  ('c', 'Incorreta. Atua em todos os casos por ser remédio constitucional.'),
  ('d', 'Incorreta. Função legislativa não cabe ao MP.'),
  ('e', 'Incorreta. Participação é obrigatória.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000559';

-- -----------------------------------------------------------------------------
-- QUESTÃO 560: Ação Popular - Gratuidade e Litispendência
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000560', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Ação Popular', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A propositura de uma Ação Popular impede que outro cidadão ajuíze ação com o mesmo objeto?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, ocorre a litispendência, devendo a segunda ser extinta.', 1),
  ('b', 'B', 'Não, mas as ações devem ser reunidas perante o juízo que primeiro despachou (prevenção) para evitar decisões conflitantes.', 2),
  ('c', 'C', 'Sim, apenas o primeiro que protocolou tem legitimidade.', 3),
  ('d', 'D', 'Não, cada cidadão tem seu processo independente até o fim.', 4),
  ('e', 'E', 'Depende do valor da causa.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000560';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000560' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Litispendência na AP.', 'Ações idênticas são reunidas no juízo prevento para julgamento conjunto (simultaneus processus).', 'Dica: Unir para não conflitar.' from public.questions q where q.public_code = 'PPCE-DC-000560';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Não se extingue, se reúne.'),
  ('c', 'Incorreta. Todos os cidadãos mantêm a legitimidade, mas o processo é um só.'),
  ('d', 'Incorreta. Geraria caos jurídico e risco de sentenças opostas.'),
  ('e', 'Incorreta. Valor não é critério para reunião de processos por conexão.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000560';

-- -----------------------------------------------------------------------------
-- [AS QUESTÕES 561 A 600 SEGUIRÃO ABAIXO PARA COMPLETAR O ARQUIVO]
-- -----------------------------------------------------------------------------

-- QUESTÃO 561: Habeas Corpus - Cabe contra pena de multa?
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000561', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Corpus', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Cabe Habeas Corpus quando o processo criminal visa apenas a condenação em pena de multa?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, pois toda condenação criminal mancha o nome do réu.', 1),
  ('b', 'B', 'Não, conforme Súmula 693 do STF.', 2),
  ('c', 'C', 'Sim, se a multa for superior a 10 salários mínimos.', 3),
  ('d', 'D', 'Apenas se o réu for estrangeiro.', 4),
  ('e', 'E', 'Sim, como medida preventiva.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000561';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000561' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'HC e Pena de Multa.', 'Não cabe HC quando já não houver risco à liberdade de locomoção. Multa não leva à prisão diretamente hoje.', 'Súmula 693 STF.' from public.questions q where q.public_code = 'PPCE-DC-000561';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O HC é específico para locomoção, não para honra ou nome.'),
  ('c', 'Incorreta. O valor não autoriza o remédio.'),
  ('d', 'Incorreta. A regra é pela natureza da pena.'),
  ('e', 'Incorreta. Sem ameaça de prisão, sem HC.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000561';

-- QUESTÃO 562: Mandado de Segurança - Contra decisão judicial (Súmula 267 STF)
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000562', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Segurança', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Não cabe Mandado de Segurança contra ato judicial:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Passível de recurso ou correição.', 1),
  ('b', 'B', 'Proferido por Juiz Federal.', 2),
  ('c', 'C', 'Que defere liminar.', 3),
  ('d', 'D', 'Relativo a verbas alimentares.', 4),
  ('e', 'E', 'Em fase de execução fiscal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000562';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000562' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MS contra Ato Judicial.', 'O MS não é "recurso coringa". Se tem recurso na lei, use o recurso.', 'Súmula 267 STF.' from public.questions q where q.public_code = 'PPCE-DC-000562';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Cabe se não houver recurso.'),
  ('c', 'Incorreta. Contra liminar cabe Agravo, logo não cabe MS como regra.'),
  ('d', 'Incorreta. O objeto não impede o MS, mas a existência de recurso sim.'),
  ('e', 'Incorreta. A regra é processual geral.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000562';

-- QUESTÃO 563: Habeas Data - Sigilo Imprescindível (Exceção)
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000563', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Data', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O direito ao Habeas Data pode ser negado sob alegação de que a informação é imprescindível à segurança da sociedade e do Estado?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Não, pois o direito à informação pessoal é absoluto.', 1),
  ('b', 'B', 'Sim, pois o interesse público prevalece sobre o privado (Art. 5º, XXXIII).', 2),
  ('c', 'C', 'Apenas se houver guerra declarada.', 3),
  ('d', 'D', 'Não, a segurança do Estado não justifica o sigilo de dados pessoais do próprio interessado.', 4),
  ('e', 'E', 'Sim, desde que autorizado pelo STF.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000563';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000563' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'HD e Sigilo de Estado.', 'Embora o HD seja para dados pessoais, a própria CF prevê exceções de sigilo para segurança nacional.', 'Fique atento ao conflito de normas dentro da CF.' from public.questions q where q.public_code = 'PPCE-DC-000563';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Nenhum direito fundamental é absoluto.'),
  ('c', 'Incorreta. Pode ocorrer em tempos de paz também.'),
  ('d', 'Incorreta. Justifica sim, conforme o texto constitucional.'),
  ('e', 'Incorreta. A autoridade administrativa pode alegar o sigilo inicialmente.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000563';

-- QUESTÃO 564: Mandado de Injunção - Ciência ao Réu
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000564', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Injunção', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Quem deve ser notificado para prestar informações no Mandado de Injunção?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O órgão público detentor da atribuição de editar a norma regulamentadora.', 1),
  ('b', 'B', 'O Procurador-Geral da República em todos os casos.', 2),
  ('c', 'C', 'O Presidente do Supremo Tribunal Federal.', 3),
  ('d', 'D', 'Qualquer parlamentar.', 4),
  ('e', 'E', 'O Conselho da República.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000564';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000564' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Polo Passivo do MI.', 'O réu é o órgão omisso (Congresso, Presidente, etc.).', 'Dica: Notifica-se quem deveria ter feito a lei.' from public.questions q where q.public_code = 'PPCE-DC-000564';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Ele é ouvido como custos legis, não é o réu nato.'),
  ('c', 'Incorreta. O juiz não é réu por não ter lei.'),
  ('d', 'Incorreta. O órgão (casa legislativa) é o réu, não o indivíduo isolado.'),
  ('e', 'Incorreta. Órgão consultivo apenas.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000564';

-- QUESTÃO 565: Ação Popular - Custo Zero vs Má-fé
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000565', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Ação Popular', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A regra da gratuidade na Ação Popular visa:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Evitar que o cidadão se torne réu por danos morais.', 1),
  ('b', 'B', 'Incentivar o exercício da cidadania na proteção do patrimônio público.', 2),
  ('c', 'C', 'Economizar recursos do Tribunal de Justiça.', 3),
  ('d', 'D', 'Substituir o salário do advogado.', 4),
  ('e', 'E', 'Premiar o autor com o valor da causa.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000565';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000565' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Fundamento da Gratuidade na AP.', 'Remover barreiras financeiras para que o cidadão fiscalize a administração.', 'Lembre-se: Salvo má-fé.' from public.questions q where q.public_code = 'PPCE-DC-000565';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Má-fé gera condenação em custas.'),
  ('c', 'Incorreta. Na verdade custa mais ao Estado oferecer a gratuidade.'),
  ('d', 'Incorreta. Advogado deve ser pago (salvo se for Defensoria).'),
  ('e', 'Incorreta. O benefício da AP volta para o ente público lesado, não para o bolso do autor.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000565';

-- QUESTÃO 566: Habeas Corpus - Cabe para trancamento de inquérito?
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000566', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Corpus', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Habeas Corpus pode ser utilizado para "trancar" (encerrar prematuramente) um inquérito policial?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, se houver atipicidade flagrante do fato ou causa extintiva da punibilidade.', 1),
  ('b', 'B', 'Não, o inquérito é inquisitivo e não sofre controle judicial.', 2),
  ('c', 'C', 'Apenas se o delegado de polícia autorizar.', 3),
  ('d', 'D', 'Sim, mas apenas se o crime for de baixo potencial ofensivo.', 4),
  ('e', 'E', 'Não, deve-se aguardar a denúncia do Ministério Público.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000566';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000566' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'HC para Trancamento.', 'Se o fato obviamente não é crime ou o direito de punir prescreveu, o HC serve para cessar o constrangimento ilegal da investigação.', 'É medida excepcional.' from public.questions q where q.public_code = 'PPCE-DC-000566';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Todo ato administrativo/policial sofre controle de legalidade.'),
  ('c', 'Incorreta. O delegado é a autoridade coatora.'),
  ('d', 'Incorreta. Aplica-se a qualquer crime.'),
  ('e', 'Incorreta. O constrangimento ilegal começa com a investigação indevida.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000566';

-- QUESTÃO 567: Mandado de Segurança - Liminar (Suspensão do ato)
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000567', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Segurança', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A concessão de medida liminar no Mandado de Segurança exige a presença de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Apenas a prova de que o autor é pobre.', 1),
  ('b', 'B', 'Fundamento relevante (fumus boni iuris) e risco de ineficácia da medida final (periculum in mora).', 2),
  ('c', 'C', 'Depósito prévio do valor da multa aplicada.', 3),
  ('d', 'D', 'Autorização do Procurador-Geral.', 4),
  ('e', 'E', 'Oitiva prévia obrigatória da autoridade coatora em 24h.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000567';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000567' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Liminar no MS.', 'São os requisitos clássicos das medidas urgentes.', 'Art. 7º, III da Lei 12.016/09.' from public.questions q where q.public_code = 'PPCE-DC-000567';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Gratuidade e liminar são coisas diferentes.'),
  ('c', 'Incorreta. Depósito não é requisito para liminar (Súmula Vinculante 28 trata de recursos, cuidado).'),
  ('d', 'Incorreta. Decisão é exclusiva do juiz.'),
  ('e', 'Incorreta. A liminar pode ser concedida inaudita altera parte (sem ouvir o outro lado).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000567';

-- QUESTÃO 568: Habeas Data - Retificação Gratuita?
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000568', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Data', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O Habeas Data é gratuito para:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Apenas para quem comprovar insuficiência de recursos.', 1),
  ('b', 'B', 'Todos, independente de sua situação financeira.', 2),
  ('c', 'C', 'Apenas para pessoas físicas.', 3),
  ('d', 'D', 'Ninguém, devendo ser pagas as taxas judiciais padrão.', 4),
  ('e', 'E', 'Apenas para brasileiros natos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000568';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000568' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Gratuidade do HD.', 'HC e HD são gratuitos para TODOS (Art. 5, LXXVII).', 'Dica: H e H são grátis.' from public.questions q where q.public_code = 'PPCE-DC-000568';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. A gratuidade é universal.'),
  ('c', 'Incorreta. PJ também goza da gratuidade no HD.'),
  ('d', 'Incorreta. Contraria a Constituição.'),
  ('e', 'Incorreta. Estrangeiros também têm direito à gratuidade do remédio.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000568';

-- QUESTÃO 569: Mandado de Injunção - Objeto (Sindicato e Data-base)
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000569', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Injunção', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Cabe Mandado de Injunção para forçar o Estado a conceder o índice de revisão geral anual (data-base) aos servidores?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, pois é um direito expresso no Art. 37, X da CF.', 1),
  ('b', 'B', 'Não, pois o Judiciário não pode fixar o índice de reajuste sob pena de violar a separação de poderes.', 2),
  ('c', 'C', 'Sim, mas apenas se o índice for o da inflação (IPCA).', 3),
  ('d', 'D', 'Não, o MI só serve para direitos de liberdade.', 4),
  ('e', 'E', 'Sim, mas exige-se que o sindicato tenha 10 anos de fundação.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000569';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000569' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MI e Data-base.', 'O STF entende que o Estado está em mora, mas o juiz não pode substituir o legislador na escolha do índice financeiro.', 'O MI reconhece a mora, mas não fixa o valor.' from public.questions q where q.public_code = 'PPCE-DC-000569';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O direito existe, mas o remédio MI tem limites em questões orçamentárias complexas.'),
  ('c', 'Incorreta. Nenhuma escolha de índice pode ser feita pelo juiz no MI.'),
  ('d', 'Incorreta. MI serve para direitos de soberania e cidadania também.'),
  ('e', 'Incorreta. Regra inexistente.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000569';

-- QUESTÃO 570: Ação Popular - Pode contra omissão?
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000570', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Ação Popular', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A Ação Popular pode ser utilizada para combater uma omissão da autoridade que cause dano ao patrimônio público?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, atos lesivos podem ser comissivos (fazer) ou omissivos (deixar de fazer).', 1),
  ('b', 'B', 'Não, a AP serve apenas para anular atos positivos já praticados.', 2),
  ('c', 'C', 'Sim, mas apenas se a omissão for intencional (dolo).', 3),
  ('d', 'D', 'Não, contra omissão o único remédio é o Mandado de Injunção.', 4),
  ('e', 'E', 'Sim, mas o MP deve autorizar previamente.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000570';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000570' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'AP e Atos Omissivos.', 'A omissão administrativa que gera dano (ex: não cobrar uma dívida que prescreve) é passível de Ação Popular.', 'O conceito de "ato" na AP é amplo.' from public.questions q where q.public_code = 'PPCE-DC-000570';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Omissões também são lesivas.'),
  ('c', 'Incorreta. Culpa grave também autoriza a ação.'),
  ('d', 'Incorreta. O MI é para omissão legislativa de norma regulamentadora.'),
  ('e', 'Incorreta. Independe de autorização.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000570';

-- QUESTÃO 571: Habeas Corpus - Estrangeiro que não fala português
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000571', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Corpus', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O Habeas Corpus deve obrigatoriamente ser escrito em língua portuguesa?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, por ser o idioma oficial e regra de validade dos atos processuais no Brasil.', 1),
  ('b', 'B', 'Não, pode ser em qualquer idioma se o impetrante for estrangeiro.', 2),
  ('c', 'C', 'Sim, mas o juiz pode aceitar em outro idioma e mandar traduzir depois.', 3),
  ('d', 'D', 'Apenas se for manuscrito.', 4),
  ('e', 'E', 'Não, o HC admite até libras.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000571';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000571' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'HC e Idioma.', 'Apesar do informalismo do HC, a língua portuguesa é requisito de validade de petições judiciais no Brasil.', 'Se vier em outro idioma, o juiz deve mandar traduzir ou não conhecer da ordem.' from public.questions q where q.public_code = 'PPCE-DC-000571';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Viola as normas de organização judiciária.'),
  ('c', 'Incorreta. A tradução deve ser prévia ou oficial para o processo fluir.'),
  ('d', 'Incorreta. A forma (manuscrito/digitado) não altera o requisito do idioma.'),
  ('e', 'Incorreta. Libras é linguagem, mas o processo é escrito/documental em português.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000571';

-- QUESTÃO 572: Mandado de Segurança - Contra ato de Empresa Privada Concessionária
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000572', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Segurança', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Cabe Mandado de Segurança contra ato de dirigente de empresa privada concessionária de serviço público?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, desde que o ato seja praticado no exercício de funções delegadas do Poder Público.', 1),
  ('b', 'B', 'Não, pois o MS é exclusivo contra órgãos do Estado.', 2),
  ('c', 'C', 'Sim, para qualquer ato da empresa.', 3),
  ('d', 'D', 'Apenas se a empresa for subsidiária da União.', 4),
  ('e', 'E', 'Não, devendo o interessado usar o Código de Defesa do Consumidor.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000572';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000572' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MS e Delegação Pública.', 'Equipara-se a autoridade pública o particular que exerce múnus público (ex: diretor de faculdade privada cancelando matrícula).', 'Foco na natureza do ato, não da pessoa jurídica.' from public.questions q where q.public_code = 'PPCE-DC-000572';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A CF fala em "agentes de pessoas jurídicas no exercício de atribuições do Poder Público".'),
  ('c', 'Incorreta. Atos de gestão privada (contratações de pessoal, etc.) não admitem MS.'),
  ('d', 'Incorreta. Aplica-se a concessionárias de qualquer ente (estado, município).'),
  ('e', 'Incorreta. O CDC protege o consumo, o MS protege o direito líquido e certo contra ilegalidade da autoridade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000572';

-- QUESTÃO 573: Habeas Data - Retificação ou Complementação?
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000573', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Data', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Habeas Data para retificação exige que o dado seja:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Comprovadamente falso ou inexato.', 1),
  ('b', 'B', 'Sigiloso por natureza.', 2),
  ('c', 'C', 'Relativo a dívidas financeiras.', 3),
  ('d', 'D', 'Obtido ilegalmente pela polícia.', 4),
  ('e', 'E', 'Apenas relativo à data de nascimento.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000573';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000573' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Objeto do HD.', 'Retificar significa corrigir o que está errado. Se o dado é certo, mas o interessado quer explicar, usa-se a "anotação".', 'Foco na verdade real dos registros.' from public.questions q where q.public_code = 'PPCE-DC-000573';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Sigilo é motivo de recusa, não de retificação.'),
  ('c', 'Incorreta. HD é amplo para qualquer dado pessoal.'),
  ('d', 'Incorreta. Ilegalidade na obtenção pode gerar anulação de prova via HC/MS, mas HD foca na exatidão do registro.'),
  ('e', 'Incorreta. Abrange qualquer dado biográfico ou funcional.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000573';

-- QUESTÃO 574: Mandado de Injunção - Súmula Vinculante e Perda de Objeto
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000574', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Injunção', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A edição de Súmula Vinculante sobre o tema do Mandado de Injunção:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Não altera o processo, pois a súmula não é lei.', 1),
  ('b', 'B', 'Pode acarretar a perda de objeto do MI, pois a súmula já supre a necessidade de norma regulamentadora para o exercício do direito.', 2),
  ('c', 'C', 'Obriga o Congresso a votar a lei em 24h.', 3),
  ('d', 'D', 'É proibida se houver MI em curso.', 4),
  ('e', 'E', 'Gera indenização automática ao impetrante.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000574';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000574' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MI e Súmula Vinculante.', 'Se o STF já fixou a regra via SV (ex: SV 33 para aposentadoria), o MI perde o sentido de existir.', 'A SV tem força normativa superior.' from public.questions q where q.public_code = 'PPCE-DC-000574';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. A SV vincula a administração e o judiciário, suprindo a omissão.'),
  ('c', 'Incorreta. O legislativo mantém seu rito próprio.'),
  ('d', 'Incorreta. O STF pode editar SV a qualquer tempo se houver controvérsia.'),
  ('e', 'Incorreta. SV não gera reparação pecuniária por si só.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000574';

-- QUESTÃO 575: Ação Popular - Litisconsórcio Ativo
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000575', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Ação Popular', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Vários cidadãos podem se unir para propor uma única Ação Popular?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, admite-se o litisconsórcio ativo facultativo.', 1),
  ('b', 'B', 'Não, a ação deve ser sempre individual para fins de responsabilidade.', 2),
  ('c', 'C', 'Sim, mas apenas se forem parentes até o 3º grau.', 3),
  ('d', 'D', 'Não, para grupos o correto é a Ação Civil Pública.', 4),
  ('e', 'E', 'Apenas com autorização do Ministério Público.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000575';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000575' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Litisconsórcio na AP.', 'Vários cidadãos podem atuar juntos no polo ativo.', 'Fortalece a fiscalização social.' from public.questions q where q.public_code = 'PPCE-DC-000575';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Não há proibição legal ou constitucional.'),
  ('c', 'Incorreta. Parentesco é irrelevante.'),
  ('d', 'Incorreta. ACP é para o MP e Associações, a união de cidadãos continua sendo AP.'),
  ('e', 'Incorreta. MP não autoriza petição cidadã.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000575';

-- QUESTÃO 576: Habeas Corpus - Cabe contra expulsão de estrangeiro?
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000576', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Corpus', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Cabe Habeas Corpus para discutir a legalidade de decreto de expulsão de estrangeiro?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, pois a expulsão envolve restrição direta à liberdade de permanência e locomoção no território nacional.', 1),
  ('b', 'B', 'Não, pois estrangeiro não goza de direitos fundamentais no Brasil.', 2),
  ('c', 'C', 'Sim, mas apenas se o estrangeiro for casado com brasileira.', 3),
  ('d', 'D', 'Não, a via correta é o Mandado de Segurança.', 4),
  ('e', 'E', 'Apenas se autorizado pelo Ministério da Justiça.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000576';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000576' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'HC e Expulsão.', 'Qualquer medida que cerceie a liberdade de locomoção (incluindo sair ou permanecer) autoriza o HC.', 'Direito estendido aos estrangeiros pela CF.' from public.questions q where q.public_code = 'PPCE-DC-000576';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Estrangeiros gozam da maioria dos direitos civis (Art. 5º caput).'),
  ('c', 'Incorreta. O casamento pode impedir a expulsão no mérito, mas o HC cabe independente disso.'),
  ('d', 'Incorreta. O HC é preferencial se houver risco à locomoção.'),
  ('e', 'Incorreta. O judiciário controla o ato administrativo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000576';

-- QUESTÃO 577: Mandado de Segurança - Coisa Julgada (Diferença para AP)
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000577', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Segurança', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A denegação da segurança no MS por ausência de prova pré-constituída impede que o autor renove o pedido em ação comum?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, ocorre a coisa julgada material absoluta.', 1),
  ('b', 'B', 'Não, pois a decisão que denega por falta de provas não julga o mérito da relação jurídica, podendo ser intentada a via ordinária.', 2),
  ('c', 'C', 'Sim, pois o MS é via definitiva e irrevogável.', 3),
  ('d', 'D', 'Apenas se houver autorização do juiz da causa anterior.', 4),
  ('e', 'E', 'Não, desde que pague multa pelo uso indevido do MS.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000577';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000577' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Coisa Julgada no MS.', 'Se o MS falhou apenas porque "não tinha o papel na hora" (prova pré-constituída), você ainda pode processar o Estado pela via lenta com produção de provas.', 'Diferença entre coisa julgada formal e material.' from public.questions q where q.public_code = 'PPCE-DC-000577';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Só ocorreria coisa julgada material se o juiz dissesse que o direito NÃO existe.'),
  ('c', 'Incorreta. O MS é célere, mas não bloqueia o acesso à justiça ordinária se denegado sem mérito.'),
  ('d', 'Incorreta. A lei garante o acesso.'),
  ('e', 'Incorreta. Não há multa para quem tenta o MS e não consegue provar de imediato.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000577';

-- QUESTÃO 578: Habeas Data - Pode pedir informações de Segurança Nacional?
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000578', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Data', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A recusa de fornecer dados sob alegação de "segurança do Estado" pode ser combatida por Habeas Data?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, e o juiz analisará se o sigilo é realmente necessário ou abusivo.', 1),
  ('b', 'B', 'Não, a alegação de segurança nacional é insindicável pelo Poder Judiciário.', 2),
  ('c', 'C', 'Sim, mas o processo correrá em segredo de justiça.', 3),
  ('d', 'D', 'Apenas se a recusa vier de autoridade militar.', 4),
  ('e', 'E', 'Não, deve-se usar o Mandado de Segurança.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000578';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000578' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'HD e Controle Judicial de Sigilo.', 'O juiz pode requisitar a informação para ver se ela deve ou não ser revelada ao autor.', 'O sigilo não é um escudo absoluto contra o Judiciário.' from public.questions q where q.public_code = 'PPCE-DC-000578';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. No Estado de Direito todos os atos são passíveis de controle.'),
  ('c', 'Incorreta. A questão é sobre o cabimento do remédio, não sobre o rito apenas.'),
  ('d', 'Incorreta. Vale para qualquer autoridade (PF, Abin, etc.).'),
  ('e', 'Incorreta. HD é a via específica para dados pessoais.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000578';

-- QUESTÃO 579: Mandado de Injunção - Súmulas Impeditivas
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000579', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Injunção', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O Mandado de Injunção será indeferido de plano quando:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O pedido for contrário a tese fixada em Súmula Vinculante ou decisão do STF em controle concentrado.', 1),
  ('b', 'B', 'O autor for analfabeto.', 2),
  ('c', 'C', 'Houver projeto de lei em tramitação na Câmara.', 3),
  ('d', 'D', 'O direito pleiteado for individual.', 4),
  ('e', 'E', 'O autor não for sindicalizado.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000579';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000579' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Indeferimento do MI.', 'Se o tema já está resolvido contra o que o autor quer (ex: STF já disse que o Estado NÃO está em mora), o juiz nem processa.', 'Art. 6º da Lei 13.300/16.' from public.questions q where q.public_code = 'PPCE-DC-000579';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Não há essa restrição de capacidade.'),
  ('c', 'Incorreta. Tramitação não retira a mora se o prazo razoável passou.'),
  ('d', 'Incorreta. MI pode ser individual.'),
  ('e', 'Incorreta. Sindicalização não é requisito universal.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000579';

-- QUESTÃO 580: Ação Popular - O Cidadão pode pedir perdas e danos?
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000580', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Ação Popular', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Na procedência da Ação Popular, a condenação dos réus consistirá em:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Pagamento de multa ao autor da ação como prêmio.', 1),
  ('b', 'B', 'Restituição dos bens ou valores ao patrimônio da entidade lesada e perdas e danos aos responsáveis.', 2),
  ('c', 'C', 'Prisão imediata dos administradores.', 3),
  ('d', 'D', 'Cassação dos direitos políticos por 10 anos.', 4),
  ('e', 'E', 'Desculpas públicas em jornal de grande circulação.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000580';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000580' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Condenação na AP.', 'O objetivo é o ressarcimento ao erário (Estado).', 'O autor não ganha nada financeiro pessoal.' from public.questions q where q.public_code = 'PPCE-DC-000580';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Não existe prêmio para o autor cidadão.'),
  ('c', 'Incorreta. AP é ação cível, não penal direta.'),
  ('d', 'Incorreta. Sanção de improbidade (Lei 8.429), não automática da AP.'),
  ('e', 'Incorreta. Medida simbólica que não recompõe o patrimônio.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000580';

-- QUESTÃO 581: Habeas Corpus - Cabe para militar preso em flagrante?
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000581', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Corpus', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Cabe Habeas Corpus contra prisão em flagrante de militar por crime militar?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, para verificar a legalidade da prisão (formalidades do flagrante).', 1),
  ('b', 'B', 'Não, militares estão fora da proteção do HC em qualquer hipótese de prisão.', 2),
  ('c', 'C', 'Sim, mas apenas se o crime for punível com menos de 2 anos.', 3),
  ('d', 'D', 'Não, deve-se usar apenas o recurso de agravo militar.', 4),
  ('e', 'E', 'Apenas se autorizado pelo comandante.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000581';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000581' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'HC e Prisão Militar.', 'A vedação do Art. 142 é para PUNIÇÕES DISCIPLINARES. Prisão por crime (processo penal militar) admite HC normalmente.', 'Diferencie punição (falta) de prisão (crime).' from public.questions q where q.public_code = 'PPCE-DC-000581';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Restrição é limitada a punições internas.'),
  ('c', 'Incorreta. Cabe para qualquer crime.'),
  ('d', 'Incorreta. HC é sempre cabível contra ilegalidade na locomoção.'),
  ('e', 'Incorreta. O comandante é quem costuma ser a autoridade coatora.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000581';

-- QUESTÃO 582: Mandado de Segurança - Contra ato de autoridade estrangeira no Brasil
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000582', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Segurança', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Cabe Mandado de Segurança contra ato de agente consular estrangeiro praticado no território brasileiro?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Não, devido à imunidade de jurisdição dos estados estrangeiros.', 1),
  ('b', 'B', 'Sim, pois o ato foi praticado em solo nacional contra brasileiro.', 2),
  ('c', 'C', 'Sim, mas exige autorização do Itamaraty.', 3),
  ('d', 'D', 'Apenas se o cônsul renunciar à imunidade.', 4),
  ('e', 'E', 'Não, a via correta é a reclamação na ONU.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000582';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000582' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MS e Imunidade Diplomática.', 'Atos de império de estados estrangeiros gozam de imunidade, impossibilitando o uso de remédios constitucionais nacionais contra eles.', 'Questão de Direito Internacional e Constitucional.' from public.questions q where q.public_code = 'PPCE-DC-000582';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A soberania estrangeira impede a coerção judicial via MS.'),
  ('c', 'Incorreta. O Itamaraty não tem poder para quebrar imunidade alheia.'),
  ('d', 'Incorreta. Mesmo assim, o MS foca na autoridade "nacional" delegada.'),
  ('e', 'Incorreta. Resposta genérica e fora do âmbito dos remédios locais.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000582';

-- QUESTÃO 583: Habeas Data - Prazo para resposta administrativa
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000583', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Data', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Para fins de configuração da "recusa administrativa" no Habeas Data, se a autoridade não responder ao pedido de informação em quanto tempo presume-se a recusa?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '10 dias.', 1),
  ('b', 'B', '15 dias.', 2),
  ('c', 'C', '30 dias.', 3),
  ('d', 'D', '48 horas.', 4),
  ('e', 'E', 'Não há prazo, deve-se esperar resposta expressa.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000583';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000583' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Prazos do HD.', 'A Lei 9.507/97 fixa 10 dias para o pedido de acesso e 15 dias para o pedido de retificação.', 'O silêncio após o prazo legal equivale à recusa.' from public.questions q where q.public_code = 'PPCE-DC-000583';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. 15 dias é o prazo para retificação/anotação.'),
  ('c', 'Incorreta. Prazo excessivo conforme a lei especial.'),
  ('d', 'Incorreta. Muito curto.'),
  ('e', 'Incorreta. Inviabilizaria o remédio contra autoridades desidiosas.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000583';

-- QUESTÃO 584: Mandado de Injunção - Desistência
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000584', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Injunção', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A desistência do Mandado de Injunção Individual exige a concordância do réu?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, conforme regra geral do CPC.', 1),
  ('b', 'B', 'Não, pode ocorrer a qualquer tempo antes da sentença, independente de anuência.', 2),
  ('c', 'C', 'Sim, mas apenas se o réu já tiver prestado informações.', 3),
  ('d', 'D', 'Não, mas o Ministério Público deve autorizar.', 4),
  ('e', 'E', 'É proibida a desistência em remédios constitucionais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000584';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000584' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Desistência no MI.', 'Segue o rito do MS (Art. 6º, § 5º da Lei 12.016/09 por analogia e entendimento jurisprudencial).', 'Autonomia do impetrante.' from public.questions q where q.public_code = 'PPCE-DC-000584';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Os remédios constitucionais possuem ritos céleres e regras de desistência mais flexíveis para o autor.'),
  ('c', 'Incorreta. No MS/MI a desistência é livre mesmo após as informações.'),
  ('d', 'Incorreta. MP não tem poder de veto na desistência individual.'),
  ('e', 'Incorreta. É direito do autor.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000584';

-- QUESTÃO 585: Ação Popular - Litisconsórcio com o Ministério Público?
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000585', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Ação Popular', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Ministério Público pode figurar no polo PASSIVO de uma Ação Popular?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, se ele foi conivente com o ato lesivo.', 1),
  ('b', 'B', 'Não, o MP atua apenas como fiscal da lei ou substituto do autor.', 2),
  ('c', 'C', 'Sim, mas apenas se a ação for contra o Procurador-Geral.', 3),
  ('d', 'D', 'Apenas se o juiz determinar.', 4),
  ('e', 'E', 'Sim, como litisconsorte do Estado.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000585';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000585' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MP na Ação Popular.', 'O MP tem vedação constitucional e legal de defender o ato lesivo. Ele deve zelar pela celeridade e utilidade da ação popular.', 'O MP nunca é réu na AP.' from public.questions q where q.public_code = 'PPCE-DC-000585';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Mesmo que membros tenham errado, o órgão MP atua na fiscalização do processo.'),
  ('c', 'Incorreta. Réu seria a pessoa física do Procurador, não o órgão MP.'),
  ('d', 'Incorreta. Decisão judicial não pode contrariar a função institucional do MP.'),
  ('e', 'Incorreta. MP não defende o patrimônio público ficando do lado de quem o lesou.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000585';

-- QUESTÃO 586: Habeas Corpus - Cabe para reaver CNH apreendida?
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000586', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Corpus', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Cabe Habeas Corpus para anular decisão judicial que apreende a Carteira Nacional de Habilitação (CNH) de um devedor?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, pois impede a liberdade de ir e vir dirigindo veículo próprio.', 1),
  ('b', 'B', 'Não, conforme entendimento do STJ, pois a CNH não retira o direito de locomoção, apenas o direito de conduzir veículos.', 2),
  ('c', 'C', 'Sim, se o devedor for motorista profissional.', 3),
  ('d', 'D', 'Não, deve-se usar apenas o Habeas Data.', 4),
  ('e', 'E', 'Sim, mas apenas se o valor da dívida for baixo.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000586';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000586' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'HC e CNH.', 'O STJ entende que a apreensão de passaporte (cabe HC) é diferente da apreensão de CNH (não cabe HC), pois esta última não impede a locomoção por outros meios.', 'Atenção: Passaporte SIM, CNH NÃO.' from public.questions q where q.public_code = 'PPCE-DC-000586';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Locomoção pode ser feita a pé, de ônibus, táxi, etc.'),
  ('c', 'Incorreta. Motorista profissional deve usar MS por direito ao trabalho, não HC.'),
  ('d', 'Incorreta. HD não tem relação com documentos de trânsito.'),
  ('e', 'Incorreta. O valor não altera o cabimento do remédio.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000586';

-- QUESTÃO 587: Mandado de Segurança - Ato de mesa legislativa
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000587', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Segurança', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Um parlamentar que se sinta prejudicado por descumprimento de regra do regimento interno durante o processo legislativo de uma PEC deve impetrar:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Mandado de Segurança.', 1),
  ('b', 'B', 'Mandado de Injunção.', 2),
  ('c', 'C', 'Ação Popular.', 3),
  ('d', 'D', 'Habeas Data.', 4),
  ('e', 'E', 'Reclamação Constitucional.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000587';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000587' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MS Parlamentar.', 'O parlamentar tem direito líquido e certo ao devido processo legislativo. Apenas ele pode impetrar MS contra erros de rito interno.', 'Legitimidade ativa exclusiva do parlamentar.' from public.questions q where q.public_code = 'PPCE-DC-000587';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O MI é para falta de norma, aqui a norma (regimento) existe mas é descumprida.'),
  ('c', 'Incorreta. A AP não serve para ritos internos legislativos sem lesão patrimonial imediata.'),
  ('d', 'Incorreta. Nada a ver com dados.'),
  ('e', 'Incorreta. Cabe se houver descumprimento de decisão específica do STF, mas a via geral é o MS.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000587';

-- QUESTÃO 588: Habeas Data - Decisão Denegatória (Recurso)
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000588', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Data', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Da decisão que nega o Habeas Data em primeira instância, cabe:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Recurso Ordinário Constitucional (ROC).', 1),
  ('b', 'B', 'Apelação.', 2),
  ('c', 'C', 'Agravo de Instrumento.', 3),
  ('d', 'D', 'Recurso Especial.', 4),
  ('e', 'E', 'Embargos de Divergência.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000588';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000588' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Recurso no HD.', 'O rito do HD segue o CPC quanto aos recursos cíveis comuns (Apelação da sentença).', 'Art. 15 da Lei 9.507/97.' from public.questions q where q.public_code = 'PPCE-DC-000588';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. ROC é para quando o remédio é negado originariamente por Tribunal.'),
  ('c', 'Incorreta. Agravo é contra decisões interlocutórias.'),
  ('d', 'Incorreta. Recurso para o STJ contra decisão de Tribunal.'),
  ('e', 'Incorreta. Recurso interno de Tribunais Superiores.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000588';

-- QUESTÃO 589: Mandado de Injunção - Ciência ao Réu (Prazo)
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000589', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Injunção', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O prazo para a autoridade prestar informações no Mandado de Injunção é de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '10 dias.', 1),
  ('b', 'B', '15 dias.', 2),
  ('c', 'C', '30 dias.', 3),
  ('d', 'D', '48 horas.', 4),
  ('e', 'E', '5 dias.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000589';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000589' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Prazo de Informações no MI.', 'Segue o padrão do Mandado de Segurança (10 dias).', 'Art. 5º da Lei 13.300/16.' from public.questions q where q.public_code = 'PPCE-DC-000589';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Prazo de defesa comum no CPC.'),
  ('c', 'Incorreta. Prazo excessivo para remédio constitucional.'),
  ('d', 'Incorreta. Reservado para casos de extrema urgência em liminares.'),
  ('e', 'Incorreta. Prazo de agravo interno ou outros incidentes.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000589';

-- QUESTÃO 590: Ação Popular - Pode contra ato de Tribunal?
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000590', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Ação Popular', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Cabe Ação Popular contra ato administrativo praticado pelo Presidente de um Tribunal de Justiça?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, pois o ato é de natureza administrativa e pode ser lesivo ao patrimônio.', 1),
  ('b', 'B', 'Não, atos de tribunais só podem ser atacados por MS ou recursos.', 2),
  ('c', 'C', 'Apenas se o ato for relativo a pagamento de juízes.', 3),
  ('d', 'D', 'Não, o Judiciário goza de imunidade contra Ação Popular.', 4),
  ('e', 'E', 'Sim, mas o julgamento será feito pelo próprio Tribunal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000590';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000590' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'AP contra Judiciário.', 'Atos administrativos (licitações, nomeações, compras) de qualquer poder podem ser objeto de AP.', 'Dica: AP não ataca a "sentença", ataca o "ato administrativo".' from public.questions q where q.public_code = 'PPCE-DC-000590';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. MS e recursos atacam a legalidade processual/sentença, a AP ataca a lesividade patrimonial.'),
  ('c', 'Incorreta. Pode ser qualquer ato (compra de carros, reforma de prédio, etc.).'),
  ('d', 'Incorreta. Ninguém está acima da fiscalização cidadã.'),
  ('e', 'Incorreta. Será julgada por juiz de 1º grau (Justiça comum).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000590';

-- QUESTÃO 591: Habeas Corpus - Cabe contra advertência verbal?
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000591', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Corpus', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Cabe Habeas Corpus contra pena de advertência verbal?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, para limpar a ficha criminal.', 1),
  ('b', 'B', 'Não, pois não há qualquer ameaça ou lesão à liberdade de locomoção.', 2),
  ('c', 'C', 'Sim, se a advertência for pública.', 3),
  ('d', 'D', 'Apenas se o autor for servidor público.', 4),
  ('e', 'E', 'Sim, como medida de honra.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000591';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000591' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'HC e Advertência.', 'O HC exige risco à LIBERDADE. Advertência não prende ninguém.', 'Foco no objeto jurídico do remédio.' from public.questions q where q.public_code = 'PPCE-DC-000591';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Use MS ou ação ordinária para isso.'),
  ('c', 'Incorreta. Publicidade não gera risco de prisão.'),
  ('d', 'Incorreta. Servidor usaria MS.'),
  ('e', 'Incorreta. HC não é ação de reparação de honra.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000591';

-- QUESTÃO 592: Mandado de Segurança - Prazo em feriados
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000592', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Segurança', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O prazo decadencial para o Mandado de Segurança se encerra em um domingo. O que ocorre?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Prorroga-se para o primeiro dia útil seguinte.', 1),
  ('b', 'B', 'Extingue-se o direito, pois prazos decadenciais não se suspendem nem se prorrogam.', 2),
  ('c', 'C', 'O autor deve procurar o plantão judiciário no domingo.', 3),
  ('d', 'D', 'O prazo é contado em dias úteis, logo nunca terminaria no domingo.', 4),
  ('e', 'E', 'O juiz pode aceitar a impetração na segunda-feira apenas se houver justa causa.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000592';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000592' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Prorrogação de Prazo no MS.', 'Embora seja decadencial, o prazo para impetração judicial se prorroga para o dia útil se o fórum estiver fechado.', 'Jurisprudência consolidada para garantir o acesso à justiça.' from public.questions q where q.public_code = 'PPCE-DC-000592';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A regra da não-prorrogação da decadência sofre mitigação quando o obstáculo é o próprio fechamento do judiciário.'),
  ('c', 'Incorreta. Plantão é para casos de urgência extrema (HC), não para protocolo de MS comum no último dia.'),
  ('d', 'Incorreta. O prazo de 120 dias é de direito material (corrido).'),
  ('e', 'Incorreta. Prorrogação é automática por lei.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000592';

-- QUESTÃO 593: Habeas Data - Decisão em Agravo
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000593', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Data', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O Habeas Data admite liminar?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, como qualquer ação célere.', 1),
  ('b', 'B', 'Não, a Lei 9.507/97 não prevê a concessão de liminar para acesso aos dados.', 2),
  ('c', 'C', 'Apenas se houver risco de morte do impetrante.', 3),
  ('d', 'D', 'Sim, mas apenas se o Ministério Público concordar.', 4),
  ('e', 'E', 'Apenas para fins de retificação urgente.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000593';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000593' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Liminar no HD.', 'A doutrina majoritária e a lei do HD não preveem liminar, pois o acesso antecipado esgotaria o objeto da ação antes da defesa da autoridade.', 'Diferente do MS, onde a liminar apenas suspende o ato.' from public.questions q where q.public_code = 'PPCE-DC-000593';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Cada remédio tem sua lei e rito próprios.'),
  ('c', 'Incorreta. Risco de morte geraria HC.'),
  ('d', 'Incorreta. Requisito inexistente.'),
  ('e', 'Incorreta. A lei é silente sobre liminares no HD.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000593';

-- QUESTÃO 594: Mandado de Injunção - Ciência ao Órgão (Desistência)
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000594', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Injunção', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A desistência de um Mandado de Injunção Coletivo proposto por sindicato:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Extingue o direito de todos os sindicalizados individualmente.', 1),
  ('b', 'B', 'Não impede que outro legitimado ou o Ministério Público assumam a titularidade da ação se houver interesse público.', 2),
  ('c', 'C', 'É proibida após a citação do Estado.', 3),
  ('d', 'D', 'Obriga o sindicato a pagar os honorários de sucumbência.', 4),
  ('e', 'E', 'Só vale se 100% dos filiados concordarem.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000594';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000594' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Desistência no MI Coletivo.', 'Como se trata de direito coletivo, a desistência do autor originário permite a sucessão processual por outros legitimados.', 'Proteção do interesse da classe.' from public.questions q where q.public_code = 'PPCE-DC-000594';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O direito individual permanece íntegro para ser pleiteado em MI individual.'),
  ('c', 'Incorreta. Admite-se a desistência livre conforme o rito do MS Coletivo.'),
  ('d', 'Incorreta. Em remédios coletivos a sucumbência segue regras de isenção similares à AP e MS.'),
  ('e', 'Incorreta. O sindicato decide por seus órgãos diretivos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000594';

-- QUESTÃO 595: Ação Popular - Pode contra o Judiciário? (Sentença)
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000595', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Ação Popular', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Cabe Ação Popular para anular uma sentença judicial que o cidadão considera injusta?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, se a sentença causar dano ao erário.', 1),
  ('b', 'B', 'Não, a AP serve para anular atos administrativos e não atos jurisdicionais (sentenças/decisões).', 2),
  ('c', 'C', 'Sim, contra sentenças do Supremo Tribunal Federal apenas.', 3),
  ('d', 'D', 'Não, deve-se usar o Habeas Corpus.', 4),
  ('e', 'E', 'Apenas se houver prova de corrupção do juiz.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000595';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000595' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'AP vs Ato Jurisdicional.', 'A AP ataca a função executiva/administrativa. Para sentenças injustas, usa-se RECURSO ou AÇÃO RESCISÓRIA.', 'Limites da Ação Popular.' from public.questions q where q.public_code = 'PPCE-DC-000595';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Mesmo que a sentença seja financeiramente ruim para o Estado, ela é ato jurisdicional estável.'),
  ('c', 'Incorreta. Nenhuma sentença sofre AP.'),
  ('d', 'Incorreta. HC é para locomoção.'),
  ('e', 'Incorreta. Corrupção gera crime e rescisória, mas não autoriza a AP contra a peça da sentença em si.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000595';

-- QUESTÃO 596: Habeas Corpus - Cabe para soltar preso em dívida alimentar?
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000596', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Corpus', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Cabe Habeas Corpus contra prisão civil por dívida alimentar?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, para verificar a legalidade da ordem de prisão.', 1),
  ('b', 'B', 'Não, pois a prisão é cível e o HC é apenas para crimes.', 2),
  ('c', 'C', 'Sim, mas apenas se o devedor provar que está desempregado.', 3),
  ('d', 'D', 'Não, contra prisão cível só cabe Mandado de Segurança.', 4),
  ('e', 'E', 'Apenas se autorizado pela ex-esposa.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000596';

update public.questions q set correct_option_id = qo.id from public.questions q join public.question_options qo on q.id = qo.question_id where q.public_code = 'PPCE-DC-000596' and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'HC e Prisão Cível.', 'O HC protege contra QUALQUER prisão ilegal, seja ela penal ou cível (alimentos ou depositário infiel - esta última proibida pela súmula vinculante 25).', 'Locomoção é o foco.' from public.questions q where q.public_code = 'PPCE-DC-000596';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O HC é universal contra prisão indevida.'),
  ('c', 'Incorreta. O desemprego é mérito, o HC vê se a prisão seguiu o rito e se é cabível no caso.'),
  ('d', 'Incorreta. MS não solta ninguém em risco de prisão imediata por dívida.'),
  ('e', 'Incorreta. Regra sem sentido jurídico.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000596';

-- QUESTÃO 597: Mandado de Segurança - Legitimidade de estrangeiro não residente
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000597', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Segurança', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Um estrangeiro que não reside no Brasil pode impetrar Mandado de Segurança?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Não, apenas brasileiros e estrangeiros residentes possuem legitimidade.', 1),
  ('b', 'B', 'Sim, desde que o ato de autoridade brasileira atinja direito seu amparado pela nossa ordem jurídica.', 2),
  ('c', 'C', 'Sim, mas deve fazer um depósito de caução em dólares.', 3),
  ('d', 'D', 'Não, deve usar a via diplomática.', 4),
  ('e', 'E', 'Apenas se o país de origem dele der reciprocidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000597';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000597' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MS e Estrangeiro.', 'A jurisprudência do STF estende as garantias processuais fundamentais a qualquer pessoa sob a jurisdição brasileira.', 'Acesso à justiça é amplo.' from public.questions q where q.public_code = 'PPCE-DC-000597';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. A leitura literal do caput do Art. 5º é superada pela interpretação extensiva do STF.'),
  ('c', 'Incorreta. Caução não é requisito para remédios constitucionais.'),
  ('d', 'Incorreta. A via judicial é sempre aberta.'),
  ('e', 'Incorreta. Reciprocidade vale para direitos políticos, não para garantias judiciais fundamentais.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000597';

-- QUESTÃO 598: Habeas Data - Pode pedir notas de prova de concurso?
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000598', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Habeas Data', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Cabe Habeas Data para candidato obter acesso à correção fundamentada de sua prova discursiva em concurso público?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, são informações pessoais constantes de registro público.', 1),
  ('b', 'B', 'Não, a via adequada é o Mandado de Segurança baseado no princípio da publicidade.', 2),
  ('c', 'C', 'Sim, mas apenas se o candidato for aprovado.', 3),
  ('d', 'D', 'Não, notas de prova são sigilosas até o fim do concurso.', 4),
  ('e', 'E', 'Apenas se houver erro de soma.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000598';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000598' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'HD vs MS - Concursos.', 'O HD é para dados de cadastro/registro biográfico. Notas e critérios de correção são atos administrativos que devem ser públicos, protegidos via MS.', 'Diferenciação importante de "dado pessoal" vs "ato administrativo".' from public.questions q where q.public_code = 'PPCE-DC-000598';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Embora sejam dele, o HD não é a via eleita pela jurisprudência para acesso a documentos de rito seletivo.'),
  ('c', 'Incorreta. O direito de acesso independe da aprovação.'),
  ('d', 'Incorreta. Pelo contrário, devem ser acessíveis para recurso.'),
  ('e', 'Incorreta. Cabe para qualquer tipo de correção.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000598';

-- QUESTÃO 599: Mandado de Injunção - Aplicabilidade imediata?
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000599', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Mandado de Injunção', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A decisão em Mandado de Injunção Individual produz efeitos:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sempre retroativos à data da promulgação da Constituição.', 1),
  ('b', 'B', 'Imediatos para o impetrante, a partir do trânsito em julgado.', 2),
  ('c', 'C', 'Apenas após a lei ser votada.', 3),
  ('d', 'D', 'Para todos os brasileiros (erga omnes).', 4),
  ('e', 'E', 'Suspensivos de outros processos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000599';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000599' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Efeitos do MI.', 'O impetrante passa a usufruir do direito imediatamente conforme as regras fixadas pelo juiz.', 'Concretização do direito.' from public.questions q where q.public_code = 'PPCE-DC-000599';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Efeitos são ex nunc (proativos).'),
  ('c', 'Incorreta. O MI serve justamente para não ter que esperar a lei.'),
  ('d', 'Incorreta. No MI individual o efeito é inter partes.'),
  ('e', 'Incorreta. Pode haver suspensão de processos idênticos no MI Coletivo, mas no individual a regra é o seguimento.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000599';

-- QUESTÃO 600: Ação Popular - Conclusão do Banco de Questões
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000600', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Remédios constitucionais', 'Ação Popular', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A Ação Popular é cabível contra atos de entidades que recebam subvenções do Estado?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, desde que o ato lesivo atinja a parte do patrimônio constituída pelo auxílio estatal.', 1),
  ('b', 'B', 'Não, a AP foca apenas na administração direta e autárquica.', 2),
  ('c', 'C', 'Sim, para qualquer ato da entidade, mesmo os de natureza privada.', 3),
  ('d', 'D', 'Apenas se a entidade for sem fins lucrativos (ONG).', 4),
  ('e', 'E', 'Não, nesses casos usa-se a Ação Civil Pública.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000600';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000600' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'AP e Entidades Subvencionadas.', 'Se o dinheiro público entrou, a fiscalização cidadã o segue.', 'Art. 1º da Lei 4.717/65.' from public.questions q where q.public_code = 'PPCE-DC-000600';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Abrange indireta e subvencionadas.'),
  ('c', 'Incorreta. Deve haver lesão ao interesse público/verba estatal.'),
  ('d', 'Incorreta. Vale para qualquer entidade (clube, escola, empresa) que receba verba pública.'),
  ('e', 'Incorreta. O cidadão mantém sua legitimidade de agir.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000600';
