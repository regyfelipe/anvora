-- =============================================================================
-- ANVORA LAW - BANCO DE QUESTÕES (201-300)
-- ASSUNTO: DIREITO CONSTITUCIONAL
-- CARREIRA: POLICIAL (PPCE)
-- =============================================================================

-- -----------------------------------------------------------------------------
-- QUESTÃO 201: DIREITOS INDIVIDUAIS (BUSCA E APREENSÃO EM CELULAR - STF)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000201', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Segundo o entendimento recente do Supremo Tribunal Federal (STF) sobre o acesso a dados de aparelhos celulares durante prisões em flagrante, é correto afirmar:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A polícia pode acessar livremente o histórico de mensagens de aplicativos sem autorização judicial se o aparelho não possuir senha.', 1),
  ('b', 'B', 'É necessária ordem judicial prévia para o acesso aos dados e comunicações armazenadas em aparelhos celulares, salvo o acesso à agenda de contatos.', 2),
  ('c', 'C', 'O acesso aos dados de celular apreendido no local do crime exige prévia autorização judicial, sendo ilícita a prova obtida sem tal mandado, mesmo em caso de flagrante.', 3),
  ('d', 'D', 'A autoridade policial pode espelhar as comunicações via WhatsApp Web durante o flagrante para monitoramento em tempo real sem ordem judicial.', 4),
  ('e', 'E', 'O sigilo telefônico não abrange os dados armazenados, mas apenas as conversas em tempo real.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000201';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000201' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Jurisprudência do STF sobre Celulares.', 'O STF firmou tese de que o acesso a dados de celular exige autorização judicial, mesmo em flagrante (Tema 1161).', 'Atenção: A inviolabilidade do sigilo de dados é a regra.' from public.questions q where q.public_code = 'PPCE-DC-000201';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. A ausência de senha não dispensa a necessidade de mandado judicial.'),
  ('b', 'Incorreta. Nem a agenda de contatos pode ser acessada sem ordem, segundo o entendimento protetivo atual.'),
  ('d', 'Incorreta. O espelhamento sem ordem judicial é expressamente considerado nulo pelo STJ/STF.'),
  ('e', 'Incorreta. O sigilo abrange tanto a transmissão quanto os dados estáticos (armazenados).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000201';

-- -----------------------------------------------------------------------------
-- QUESTÃO 202: DIREITOS INDIVIDUAIS (PRISÃO CIVIL DO DEPOSITÁRIO INFIEI - SV 25)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000202', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Conforme a Súmula Vinculante nº 25 do STF, é ilícita a prisão civil de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Pai que deixa de pagar pensão alimentícia voluntariamente.', 1),
  ('b', 'B', 'Depositário infiel, qualquer que seja a modalidade do depósito.', 2),
  ('c', 'C', 'Criminoso condenado por crimes hediondos.', 3),
  ('d', 'D', 'Devedor de impostos estaduais.', 4),
  ('e', 'E', 'Testemunha que se recusa a depor.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000202';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000202' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Súmula Vinculante 25.', 'A SV 25 proibiu a prisão do depositário infiel devido aos tratados internacionais (Pacto de San José).', 'Atualmente, só existe prisão civil por dívida de ALIMENTOS.' from public.questions q where q.public_code = 'PPCE-DC-000202';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Esta é a ÚNICA prisão civil permitida hoje.'),
  ('c', 'Incorreta. Isso seria prisão penal, não civil.'),
  ('d', 'Incorreta. Não existe prisão civil por dívida tributária.'),
  ('e', 'Incorreta. Pode haver condução coercitiva, mas não prisão civil por dívida.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000202';

-- -----------------------------------------------------------------------------
-- QUESTÃO 203: DIREITOS POLÍTICOS (MILITAR CANDIDATO - ART. 14, § 8º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000203', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Políticos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O militar alistável é elegível, atendidas as seguintes condições, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Se contar menos de dez anos de serviço, deverá afastar-se da atividade.', 1),
  ('b', 'B', 'Se contar mais de dez anos de serviço, será agregado pela autoridade superior.', 2),
  ('c', 'C', 'Se eleito, o militar com mais de 10 anos passará automaticamente, no ato da diplomação, para a inatividade.', 3),
  ('d', 'D', 'O militar da ativa pode manter-se filiado a partido político durante todo o exercício do cargo técnico militar.', 4),
  ('e', 'E', 'O militar com menos de 10 anos deve obrigatoriamente se afastar para concorrer.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000203';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000203' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Elegibilidade do Militar.', 'O militar da ativa não pode estar filiado a partido político (Art. 142, § 3º, V).', 'Dica: Militar só se filia se for candidato (condição especial).' from public.questions q where q.public_code = 'PPCE-DC-000203';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Regra prevista no Art. 14, § 8º, I.'),
  ('b', 'Incorreta. Regra prevista no Art. 14, § 8º, II.'),
  ('c', 'Incorreta. Regra prevista no Art. 14, § 8º, II, in fine.'),
  ('e', 'Incorreta. Afirmação verdadeira conforme a CF.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000203';

-- -----------------------------------------------------------------------------
-- QUESTÃO 204: REMÉDIOS CONSTITUCIONAIS (AÇÃO POPULAR - ART. 5º, LXXIII)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000204', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Remédios Constitucionais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Qualquer cidadão é parte legítima para propor ação popular que vise a anular ato lesivo:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ao patrimônio público ou de entidade de que o Estado participe.', 1),
  ('b', 'B', 'À honra subjetiva de autoridade pública.', 2),
  ('c', 'C', 'Apenas ao meio ambiente, sendo os demais itens de responsabilidade do MP.', 3),
  ('d', 'D', 'À soberania nacional em caso de guerra externa.', 4),
  ('e', 'E', 'Aos contratos particulares de servidores públicos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000204';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000204' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Ação Popular.', 'A ação popular protege o patrimônio público, moralidade, meio ambiente e patrimônio histórico/cultural.', 'Cidadão = Pessoa física com direitos políticos ativos.' from public.questions q where q.public_code = 'PPCE-DC-000204';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Honra é protegida por ações indenizatórias ou criminais.'),
  ('c', 'Incorreta. O rol é mais amplo (Art. 5º, LXXIII).'),
  ('d', 'Incorreta. Objeto estranho à ação popular.'),
  ('e', 'Incorreta. Relações privadas não são objeto desta ação.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000204';

-- -----------------------------------------------------------------------------
-- QUESTÃO 205: DIREITOS INDIVIDUAIS (EXTRADIÇÃO - ART. 5º, LI)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000205', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Sobre a extradição, a Constituição Federal estabelece que:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O brasileiro nato pode ser extraditado em caso de crime de tortura.', 1),
  ('b', 'B', 'O estrangeiro nunca será extraditado, em respeito aos direitos humanos.', 2),
  ('c', 'C', 'O brasileiro naturalizado pode ser extraditado por crime comum, praticado antes da naturalização.', 3),
  ('d', 'D', 'Não será concedida extradição de estrangeiro por crime de opinião ou político, salvo se houver atentado terrorista.', 4),
  ('e', 'E', 'O brasileiro naturalizado pode ser extraditado por qualquer crime praticado após a naturalização.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000205';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000205' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Extradição (Art. 5º, LI).', 'Brasileiro nato NUNCA é extraditado. Naturalizado: Crime comum (antes) ou Tráfico (qualquer tempo).', 'Dica: Nato = Imunidade absoluta de extradição.' from public.questions q where q.public_code = 'PPCE-DC-000205';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Nato nunca é extraditado.'),
  ('b', 'Incorreta. Estrangeiro pode ser extraditado por crime comum.'),
  ('d', 'Incorreta. Por crime político ou de opinião é VEDADA (sem ressalvas na CF).'),
  ('e', 'Incorreta. Após a naturalização, apenas em caso de TRÁFICO (Art. 5º, LI).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000205';

-- -----------------------------------------------------------------------------
-- QUESTÃO 206: ADMINISTRAÇÃO PÚBLICA (RESPONSABILIDADE CIVIL - ART. 37, § 6º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000206', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Disposições Gerais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'As pessoas jurídicas de direito público e as de direito privado prestadoras de serviços públicos responderão pelos danos que seus agentes, nessa qualidade, causarem a terceiros, assegurado o direito de regresso contra o responsável nos casos de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Culpa exclusiva da vítima.', 1),
  ('b', 'B', 'Dolo ou culpa.', 2),
  ('c', 'C', 'Apenas dolo, sendo a culpa irrelevante para o regresso.', 3),
  ('d', 'D', 'Força maior ou caso fortuito.', 4),
  ('e', 'E', 'Responsabilidade objetiva do agente.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000206';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000206' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Responsabilidade Civil do Estado.', 'O Estado responde objetivamente. O agente responde subjetivamente (Dolo ou Culpa) em ação de regresso.', 'Dica: Estado (Sem culpa) -> Agente (Com culpa).' from public.questions q where q.public_code = 'PPCE-DC-000206';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Culpa da vítima EXCLUI a responsabilidade do Estado.'),
  ('c', 'Incorreta. A culpa também autoriza o regresso.'),
  ('d', 'Incorreta. Fatos que excluem o nexo causal.'),
  ('e', 'Incorreta. A responsabilidade do agente é SEMPRE subjetiva.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000206';

-- -----------------------------------------------------------------------------
-- QUESTÃO 207: ORGANIZAÇÃO DO ESTADO (INTERVENÇÃO ESTADUAL - ART. 35)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000207', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização do Estado', 'Intervenção', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O Estado não intervirá em seus Municípios, nem a União nos Municípios localizados em Território Federal, EXCETO quando:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O Município deixar de pagar a dívida fundada por dois anos consecutivos, sem motivo de força maior.', 1),
  ('b', 'B', 'Houver desequilíbrio financeiro transitório no caixa da prefeitura.', 2),
  ('c', 'C', 'O Prefeito recusar-se a receber o Governador em visita oficial.', 3),
  ('d', 'D', 'Ocorrer aumento excessivo de impostos municipais.', 4),
  ('e', 'E', 'O Município atingir o limite de gastos com pessoal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000207';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000207' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Intervenção Estadual (Art. 35).', 'A suspensão do pagamento da dívida fundada por 2 anos consecutivos é causa de intervenção (Art. 35, I).', 'Lembre-se: União intervém em Estados; Estados intervêm em Municípios.' from public.questions q where q.public_code = 'PPCE-DC-000207';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Deve ser a dívida fundada e por prazo certo.'),
  ('c', 'Incorreta. Motivo político sem base constitucional.'),
  ('d', 'Incorreta. Questão de autonomia tributária municipal.'),
  ('e', 'Incorreta. Gera sanções da LRF, mas não intervenção direta pela CF.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000207';

-- -----------------------------------------------------------------------------
-- QUESTÃO 208: PODER LEGISLATIVO (IMUNIDADE PARLAMENTAR - ART. 53)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000208', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Os Deputados e Senadores são invioláveis, civil e penalmente, por quaisquer de suas opiniões, palavras e votos. Sobre o processo penal contra parlamentares, é correto afirmar:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Desde a expedição do diploma, os membros do Congresso Nacional não poderão ser presos, salvo em flagrante de crime inafiançável.', 1),
  ('b', 'B', 'Os parlamentares nunca podem ser presos, mesmo em flagrante.', 2),
  ('c', 'C', 'O STF não precisa comunicar a prisão à Casa respectiva.', 3),
  ('d', 'D', 'A Casa respectiva não tem poder para relaxar a prisão do parlamentar.', 4),
  ('e', 'E', 'As imunidades parlamentares subsistem durante o estado de sítio, sem qualquer exceção.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000208';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000208' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Imunidade Formal (Art. 53, § 2º).', 'A prisão só é permitida em flagrante de crime inafiançável a partir da diplomação.', 'A Casa respectiva resolve sobre a prisão em 24h.' from public.questions q where q.public_code = 'PPCE-DC-000208';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Admite-se a exceção do flagrante inafiançável.'),
  ('c', 'Incorreta. Deve comunicar em 24 horas (Art. 53, § 2º).'),
  ('d', 'Incorreta. A Casa pode resolver sobre a prisão pelo voto da maioria.'),
  ('e', 'Incorreta. Podem ser suspensas por voto de 2/3 da Casa para atos fora do recinto parlamentar.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000208';

-- -----------------------------------------------------------------------------
-- QUESTÃO 209: PODER EXECUTIVO (CRIME DE RESPONSABILIDADE - ART. 86)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000209', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Executivo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Admitida a acusação contra o Presidente da República, por dois terços da Câmara dos Deputados, será ele submetido a julgamento perante:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O Supremo Tribunal Federal, nas infrações penais comuns, e o Senado Federal, nos crimes de responsabilidade.', 1),
  ('b', 'B', 'O Senado Federal, em ambos os casos, para garantir a unidade política.', 2),
  ('c', 'C', 'O Congresso Nacional em sessão unicameral.', 3),
  ('d', 'D', 'O Supremo Tribunal Federal em todos os casos.', 4),
  ('e', 'E', 'A própria Câmara dos Deputados que admitiu a acusação.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000209';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000209' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Julgamento do Presidente (Art. 86).', 'Crimes Comuns -> STF. Crimes de Responsabilidade -> Senado.', 'Dica: JuSTiFa (Comum no STF) / Sen-Res (Senado no de Responsabilidade).' from public.questions q where q.public_code = 'PPCE-DC-000209';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O STF julga os crimes comuns.'),
  ('c', 'Incorreta. Inexistente esta regra.'),
  ('d', 'Incorreta. O Senado julga os políticos (responsabilidade).'),
  ('e', 'Incorreta. A Câmara apenas autoriza (juízo de admissibilidade).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000209';

-- -----------------------------------------------------------------------------
-- QUESTÃO 210: PODER JUDICIÁRIO (CNJ - ART. 103-B)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000210', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Judiciário', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Sobre o Conselho Nacional de Justiça (CNJ), é correto afirmar que:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Compete-lhe o controle da atuação administrativa e financeira do Poder Judiciário e do cumprimento dos deveres funcionais dos juízes.', 1),
  ('b', 'B', 'Possui competência jurisdicional para reformar sentenças de mérito.', 2),
  ('c', 'C', 'É presidido pelo Ministro mais antigo do STJ.', 3),
  ('d', 'D', 'Seus membros são nomeados pelo Presidente da República sem necessidade de sabatina.', 4),
  ('e', 'E', 'O Ministério Público não tem assento no CNJ.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000210';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000210' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'CNJ (Art. 103-B).', 'O CNJ exerce controle administrativo, financeiro e disciplinar.', 'Dica: CNJ NÃO julga processos (sem função jurisdicional).' from public.questions q where q.public_code = 'PPCE-DC-000210';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. CNJ não exerce função jurisdicional.'),
  ('c', 'Incorreta. É presidido pelo Presidente do STF (Art. 103-B, § 1º).'),
  ('d', 'Incorreta. Exige aprovação da maioria absoluta do Senado.'),
  ('e', 'Incorreta. O MP tem 2 membros no conselho.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000210';

-- -----------------------------------------------------------------------------
-- QUESTÃO 211: DIREITOS INDIVIDUAIS (ESCUTA AMBIENTAL - JURISPRUDÊNCIA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000211', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Sobre a captação ambiental de sinais eletromagnéticos, ópticos ou acústicos para fins de investigação criminal, considere a disciplina constitucional e legal:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A gravação ambiental realizada por um dos interlocutores, sem o conhecimento do outro, é considerada prova ilícita em qualquer hipótese.', 1),
  ('b', 'B', 'É lícita a prova obtida por gravação ambiental feita por um dos interlocutores sem prévia autorização judicial, caso sirva para sua defesa.', 2),
  ('c', 'C', 'A captação ambiental por autoridade policial dispensa ordem judicial se ocorrer em local público.', 3),
  ('d', 'D', 'O sigilo de dados não protege conversas gravadas em aparelhos de gravadores de voz.', 4),
  ('e', 'E', 'A Constituição exige lei complementar para disciplinar a captação ambiental.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000211';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000211' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Gravação Ambiental (Jurisprudência).', 'O STF admite a gravação feita por um interlocutor (autogravação) como prova lícita, especialmente para defesa.', 'Dica: Gravação por interlocutor ≠ Interceptação por terceiro.' from public.questions q where q.public_code = 'PPCE-DC-000211';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. É lícita segundo o STF (Repercussão Geral).'),
  ('c', 'Incorreta. A captação pela polícia exige ordem judicial (Lei 13.964/19 - Pacote Anticrime).'),
  ('d', 'Incorreta. Protege sim, como dado armazenado.'),
  ('e', 'Incorreta. Basta lei ordinária (como a 9.296/96).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000211';

-- -----------------------------------------------------------------------------
-- QUESTÃO 212: DIREITOS INDIVIDUAIS (ENTRADA EM DOMICÍLIO - FUNDADA SUSPEITA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000212', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O STF definiu que a entrada forçada em domicílio sem mandado judicial, mesmo em período noturno, é lícita apenas quando amparada em:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Denúncia anônima desacompanhada de outros elementos.', 1),
  ('b', 'B', 'Fundadas razões, devidamente justificadas "a posteriori", que indiquem a ocorrência de crime em flagrante.', 2),
  ('c', 'C', 'Fuga do suspeito para o interior da residência, independentemente do crime.', 3),
  ('d', 'D', 'Autorização do vizinho mais próximo.', 4),
  ('e', 'E', 'Cheiro de substância entorpecente vindo do interior do imóvel.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000212';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000212' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Domicílio (Tema 280 STF).', 'A tese exige fundadas razões justificadas por escrito posteriormente.', 'Dica: Sem mandado = Flagrante com prova prévia de crime.' from public.questions q where q.public_code = 'PPCE-DC-000212';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Denúncia anônima isolada não justifica a entrada.'),
  ('c', 'Incorreta. A fuga por si só não autoriza se não houver fundada suspeita de crime no interior.'),
  ('d', 'Incorreta. Inexistente esta regra.'),
  ('e', 'Incorreta. O STJ tem mitigado essa justificativa se for o único elemento.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000212';

-- -----------------------------------------------------------------------------
-- QUESTÃO 213: DIREITOS INDIVIDUAIS (LIBERDADE DE REUNIÃO - AVISO PRÉVIO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000213', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Todos podem reunir-se pacificamente, sem armas, em locais abertos ao público, independentemente de autorização. Sobre o requisito do "aviso prévio", o STF decidiu que:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A falta de aviso prévio torna a reunião ilícita e autoriza a dispersão imediata.', 1),
  ('b', 'B', 'O aviso prévio é facultativo e sua ausência não gera consequências.', 2),
  ('c', 'C', 'A inexistência de notificação prévia não torna a reunião ilegal, desde que haja publicidade da reunião por outros meios.', 3),
  ('d', 'D', 'O aviso deve ser feito por escrito com 48h de antecedência mínima.', 4),
  ('e', 'E', 'O aviso prévio é apenas para reuniões de cunho político.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000213';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000213' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Liberdade de Reunião (Tema 855 STF).', 'A falta de aviso não torna a reunião ilegal se a autoridade puder tomar conhecimento por outros meios.', 'Atenção: A CF diz que "exige-se", mas o STF mitigou o formalismo.' from public.questions q where q.public_code = 'PPCE-DC-000213';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O STF entende que a reunião deve ser preservada se pacífica.'),
  ('b', 'Incorreta. Ele é exigido, mas o descumprimento formal não é fatal.'),
  ('d', 'Incorreta. A CF não fixa prazo ou forma rígida.'),
  ('e', 'Incorreta. Aplica-se a qualquer reunião pacífica.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000213';

-- -----------------------------------------------------------------------------
-- QUESTÃO 214: DIREITOS INDIVIDUAIS (DIREITO À VIDA - INTERRUPÇÃO DE GRAVIDEZ)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000214', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Supremo Tribunal Federal, ao julgar a ADPF 54, declarou a inconstitucionalidade da interpretação que considera crime a interrupção da gravidez de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Fetos com microcefalia.', 1),
  ('b', 'B', 'Fetos anencefálos.', 2),
  ('c', 'C', 'Gravidez resultante de estupro.', 3),
  ('d', 'D', 'Risco de morte para a gestante.', 4),
  ('e', 'E', 'Qualquer motivo até o terceiro mês de gestação.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000214';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000214' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Anencefalia (ADPF 54).', 'O STF permitiu o aborto de fetos anencefálos por não haver viabilidade de vida extrauterina.', 'Nota: Estupro e risco de morte já são permitidos pelo Código Penal.' from public.questions q where q.public_code = 'PPCE-DC-000214';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O STF não estendeu a anencefalia a outros casos.'),
  ('c', 'Incorreta. Permissão legal (Art. 128 CP), não objeto da ADPF 54.'),
  ('d', 'Incorreta. Permissão legal (Art. 128 CP).'),
  ('e', 'Incorreta. O STF ainda não consolidou o aborto livre por prazo (em sede de controle abstrato).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000214';

-- -----------------------------------------------------------------------------
-- QUESTÃO 215: DIREITOS INDIVIDUAIS (IDENTIFICAÇÃO CRIMINAL - ART. 5º, LVIII)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000215', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O civilmente identificado não será submetido a identificação criminal, SALVO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Se for reincidente em crimes violentos.', 1),
  ('b', 'B', 'Nos casos previstos em lei.', 2),
  ('c', 'C', 'Sempre que o Delegado de Polícia considerar necessário.', 3),
  ('d', 'D', 'Se o crime for inafiançável.', 4),
  ('e', 'E', 'Em caso de prisão em flagrante.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000215';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000215' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Identificação Criminal (Art. 5º, LVIII).', 'A CF remete à lei os casos de exceção (Lei 12.037/09).', 'Dica: Se tem RG, em regra não faz "datiloscopia" criminal.' from public.questions q where q.public_code = 'PPCE-DC-000215';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. A lei detalha os casos, não a CF diretamente.'),
  ('c', 'Incorreta. A decisão deve ser baseada nos critérios legais (ex: documento rasurado).'),
  ('d', 'Incorreta. Não é critério constitucional.'),
  ('e', 'Incorreta. O flagrante não anula a regra geral.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000215';

-- -----------------------------------------------------------------------------
-- QUESTÃO 216: DIREITOS INDIVIDUAIS (PENAS - ART. 5º, XLVII)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000216', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Não haverá penas, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'De morte, em caso de guerra declarada.', 1),
  ('b', 'B', 'De caráter perpétuo, para crimes de terrorismo.', 2),
  ('c', 'C', 'De trabalhos forçados, em presídios de segurança máxima.', 3),
  ('d', 'D', 'De banimento, para estrangeiros indesejados.', 4),
  ('e', 'E', 'Cruéis, em casos de extrema periculosidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000216';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000216' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Penas Vedadas (Art. 5º, XLVII).', 'A única exceção à pena de morte é em caso de GUERRA DECLARADA.', 'Atenção: Caráter perpétuo é SEMPRE vedado.' from public.questions q where q.public_code = 'PPCE-DC-000216';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Proibida (Art. 5º, XLVII, b).'),
  ('c', 'Incorreta. Proibida (Art. 5º, XLVII, c).'),
  ('d', 'Incorreta. Proibida (Art. 5º, XLVII, d).'),
  ('e', 'Incorreta. Proibida (Art. 5º, XLVII, e).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000216';

-- -----------------------------------------------------------------------------
-- QUESTÃO 217: DIREITOS INDIVIDUAIS (RESERVA DE JURISDIÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000217', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A cláusula de reserva de jurisdição impede que atos invasivos sejam realizados por autoridades administrativas sem prévia ordem judicial. Qual das seguintes medidas NÃO está sujeita à reserva de jurisdição absoluta (podendo ser feita por CPI, por exemplo)?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Busca e apreensão domiciliar.', 1),
  ('b', 'B', 'Interceptação telefônica.', 2),
  ('c', 'C', 'Quebra de sigilo bancário e fiscal.', 3),
  ('d', 'D', 'Prisão preventiva.', 4),
  ('e', 'E', 'Expulsão de estrangeiro.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000217';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000217' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Reserva de Jurisdição.', 'CPIs podem decretar quebra de sigilo bancário, fiscal e de dados (telefone), mas NÃO interceptação telefônica ou busca domiciliar.', 'Dica: CPI não prende (exceto flagrante) e não invade casa.' from public.questions q where q.public_code = 'PPCE-DC-000217';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Reserva absoluta de juiz.'),
  ('b', 'Incorreta. Reserva absoluta de juiz (Art. 5º, XII).'),
  ('d', 'Incorreta. Reserva absoluta de juiz.'),
  ('e', 'Incorreta. Ato administrativo, mas a questão foca em atos instrutórios de investigação.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000217';

-- -----------------------------------------------------------------------------
-- QUESTÃO 218: DIREITOS POLÍTICOS (PERDA E SUSPENSÃO - ART. 15)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000218', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Políticos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'É vedada a cassação de direitos políticos, cuja perda ou suspensão só se dará nos casos de, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Cancelamento da naturalização por sentença transitada em julgado.', 1),
  ('b', 'B', 'Incapacidade civil absoluta.', 2),
  ('c', 'C', 'Condenação criminal transitada em julgado, enquanto durarem seus efeitos.', 3),
  ('d', 'D', 'Recusa de cumprir obrigação a todos imposta ou prestação alternativa.', 4),
  ('e', 'E', 'Processamento por crime de improbidade administrativa.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000218';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000218' and qo.question_id = q.id and qo.option_key = 'e';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direitos Políticos (Art. 15).', 'A improbidade administrativa gera suspensão apenas após o TRÂNSITO EM JULGADO da condenação (Art. 15, V e Art. 37, § 4º).', 'Dica: Suspensão por improbidade exige sentença definitiva.' from public.questions q where q.public_code = 'PPCE-DC-000218';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Caso de PERDA (Art. 15, I).'),
  ('b', 'Incorreta. Caso de SUSPENSÃO (Art. 15, II).'),
  ('c', 'Incorreta. Caso de SUSPENSÃO (Art. 15, III).'),
  ('d', 'Incorreta. Caso de PERDA (Art. 15, IV).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000218';

-- -----------------------------------------------------------------------------
-- QUESTÃO 219: NACIONALIDADE (SÍMBOLOS - ART. 13)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000219', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Nacionalidade', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São símbolos da República Federativa do Brasil:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A bandeira, o hino, o brasão e o selo nacionais.', 1),
  ('b', 'B', 'A bandeira, o hino, o selo e o brasão estadual.', 2),
  ('c', 'C', 'A bandeira, a língua portuguesa e o hino.', 3),
  ('d', 'D', 'O hino, o selo e a moeda nacional.', 4),
  ('e', 'E', 'Apenas a bandeira e o hino.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000219';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000219' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Símbolos Nacionais (Art. 13, § 1º).', 'Os símbolos são Bandeira, Hino, Brasão e Selo.', 'Dica: BA-HI-SE-BR.' from public.questions q where q.public_code = 'PPCE-DC-000219';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Brasão deve ser nacional.'),
  ('c', 'Incorreta. Língua é idioma oficial, não símbolo.'),
  ('d', 'Incorreta. Moeda não é símbolo constitucional.'),
  ('e', 'Incorreta. Lista incompleta.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000219';

-- -----------------------------------------------------------------------------
-- QUESTÃO 220: DIREITOS INDIVIDUAIS (RESERVISTA - ART. 5º, LXVII)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000220', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A prisão por dívida é proibida no Brasil, com exceção do responsável pelo inadimplemento voluntário e inescusável de obrigação alimentícia e do:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Depositário infiel.', 1),
  ('b', 'B', 'Criminoso político.', 2),
  ('c', 'C', 'Infrator de trânsito reincidente.', 3),
  ('d', 'D', 'Ninguém mais, pois o depositário infiel teve a prisão considerada ilícita pelo STF.', 4),
  ('e', 'E', 'Devedor de custas processuais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000220';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000220' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Prisão Civil (SV 25).', 'Apesar de constar no texto da CF, a prisão do depositário infiel é ineficaz por força da SV 25 do STF.', 'Dica: Na prática, só ALIMENTOS.' from public.questions q where q.public_code = 'PPCE-DC-000220';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Súmula Vinculante 25 proíbe.'),
  ('b', 'Incorreta. Não existe tal previsão.'),
  ('c', 'Incorreta. Não existe tal previsão.'),
  ('e', 'Incorreta. Não existe tal previsão.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000220';

-- -----------------------------------------------------------------------------
-- QUESTÃO 221: ADMINISTRAÇÃO PÚBLICA (ESTABILIDADE - ART. 41)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000221', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Servidores Públicos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'São estáveis após três anos de efetivo exercício os servidores nomeados para cargo de provimento efetivo em virtude de concurso público. O servidor público estável só perderá o cargo, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Em virtude de sentença judicial transitada em julgado.', 1),
  ('b', 'B', 'Mediante processo administrativo em que lhe seja assegurada ampla defesa.', 2),
  ('c', 'C', 'Mediante procedimento de avaliação periódica de desempenho, na forma de lei complementar, assegurada ampla defesa.', 3),
  ('d', 'D', 'Por decisão discricionária do chefe do Poder Executivo em caso de crise econômica.', 4),
  ('e', 'E', 'Para cumprimento de limites de despesa com pessoal, conforme previsto no Art. 169 da CF.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000221';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000221' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Perda de Cargo do Estável.', 'Não existe perda de cargo discricionária por crise. As hipóteses são taxativas (Art. 41 e Art. 169).', 'Dica: Sentença, PAD, Avaliação de Desempenho e Excesso de Gastos.' from public.questions q where q.public_code = 'PPCE-DC-000221';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Hipótese prevista no Art. 41, § 1º, I.'),
  ('b', 'Incorreta. Hipótese prevista no Art. 41, § 1º, II.'),
  ('c', 'Incorreta. Hipótese prevista no Art. 41, § 1º, III.'),
  ('e', 'Incorreta. Hipótese prevista no Art. 169, § 4º.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000221';

-- -----------------------------------------------------------------------------
-- QUESTÃO 222: ADMINISTRAÇÃO PÚBLICA (ACUMULAÇÃO DE CARGOS - ART. 37, XVI)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000222', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Disposições Gerais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'É vedada a acumulação remunerada de cargos públicos, exceto, quando houver compatibilidade de horários, a de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Dois cargos de professor.', 1),
  ('b', 'B', 'Dois cargos de natureza técnica.', 2),
  ('c', 'C', 'Um cargo de médico com um de policial penal.', 3),
  ('d', 'D', 'Dois cargos de qualquer natureza, desde que em entes federativos diferentes.', 4),
  ('e', 'E', 'Um cargo de juiz com um de promotor.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000222';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000222' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Acumulação de Cargos (Art. 37, XVI).', 'A CF permite: 2 de professor; 1 professor + 1 técnico/científico; 2 de saúde (profissionais regulamentados).', 'Dica: Compatibilidade de horários é sempre requisito.' from public.questions q where q.public_code = 'PPCE-DC-000222';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Devem ser 2 de professor ou 1 técnico + 1 professor.'),
  ('c', 'Incorreta. Policial penal não é cargo de saúde para fins de acumulação de 2 cargos de saúde.'),
  ('d', 'Incorreta. A regra de vedação abrange toda a administração direta e indireta.'),
  ('e', 'Incorreta. Vedação absoluta para estas carreiras.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000222';

-- -----------------------------------------------------------------------------
-- QUESTÃO 223: ORGANIZAÇÃO DO ESTADO (CRIAÇÃO DE MUNICÍPIOS - ART. 18, § 4º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000223', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização do Estado', 'Forma de Estado', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A criação, a incorporação, a fusão e o desmembramento de Municípios far-se-ão por lei estadual, dentro do período determinado por Lei Complementar Federal, e dependerão de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Consulta prévia, mediante plebiscito, às populações dos Municípios envolvidos.', 1),
  ('b', 'B', 'Aprovação por decreto do Presidente da República.', 2),
  ('c', 'C', 'Referendo da população de todo o Estado.', 3),
  ('d', 'D', 'Autorização do Senado Federal.', 4),
  ('e', 'E', 'Apenas Estudo de Viabilidade Municipal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000223';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000223' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Criação de Municípios.', 'Exige-se: 1. Lei Complementar Federal (período); 2. Estudo de Viabilidade; 3. Plebiscito; 4. Lei Estadual.', 'Dica: Plebiscito é obrigatório.' from public.questions q where q.public_code = 'PPCE-DC-000223';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Ato de competência estadual, não federal direta.'),
  ('c', 'Incorreta. A consulta é apenas aos municípios envolvidos (Art. 18, § 4º).'),
  ('d', 'Incorreta. Não há tal previsão.'),
  ('e', 'Incorreta. O plebiscito é requisito essencial e cumulativo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000223';

-- -----------------------------------------------------------------------------
-- QUESTÃO 224: ADMINISTRAÇÃO PÚBLICA (CONTRATAÇÃO TEMPORÁRIA - ART. 37, IX)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000224', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Disposições Gerais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A lei estabelecerá os casos de contratação por tempo determinado para atender a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Qualquer necessidade da administração, a critério do gestor.', 1),
  ('b', 'B', 'Necessidade temporária de excepcional interesse público.', 2),
  ('c', 'C', 'Vagas ociosas em cargos de carreira enquanto não houver concurso.', 3),
  ('d', 'D', 'Substituição de servidores em greve.', 4),
  ('e', 'E', 'Projetos de expansão de infraestrutura de longo prazo.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000224';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000224' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Contratação Temporária.', 'É a exceção à regra do concurso, para situações emergenciais e transitórias.', 'Dica: Excepcional interesse público.' from public.questions q where q.public_code = 'PPCE-DC-000224';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Deve seguir os parâmetros constitucionais de excepcionalidade.'),
  ('c', 'Incorreta. A regra para vagas efetivas é o concurso público.'),
  ('d', 'Incorreta. Vedado por lei na maioria dos casos para não esvaziar o direito de greve.'),
  ('e', 'Incorreta. Deve ser temporária, não para projetos permanentes ou de longo prazo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000224';

-- -----------------------------------------------------------------------------
-- QUESTÃO 225: ORGANIZAÇÃO DO ESTADO (BENS DOS ESTADOS - ART. 26)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000225', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização do Estado', 'Bens Públicos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Incluem-se entre os bens dos Estados:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'As águas superficiais ou subterrâneas, fluentes, emergentes e em depósito, ressalvadas, neste caso, na forma da lei, as decorrentes de obras da União.', 1),
  ('b', 'B', 'Os potenciais de energia hidráulica.', 2),
  ('c', 'C', 'Os recursos minerais, inclusive os do subsolo.', 3),
  ('d', 'D', 'As cavidades naturais subterrâneas e os sítios arqueológicos.', 4),
  ('e', 'E', 'As terras tradicionalmente ocupadas pelos índios.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000225';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000225' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Bens dos Estados (Art. 26).', 'A águas são, em regra, dos Estados, salvo as decorrentes de obras federais ou que banhem mais de um estado.', 'Dica: Quase todo o resto do subsolo e recursos naturais é da União.' from public.questions q where q.public_code = 'PPCE-DC-000225';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Bem da União (Art. 20, VIII).'),
  ('c', 'Incorreta. Bem da União (Art. 20, IX).'),
  ('d', 'Incorreta. Bem da União (Art. 20, X).'),
  ('e', 'Incorreta. Bem da União (Art. 20, XI).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000225';

-- -----------------------------------------------------------------------------
-- QUESTÃO 226: ADMINISTRAÇÃO PÚBLICA (SUBSÍDIO - ART. 39, § 4º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000226', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Servidores Públicos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O membro de Poder, o detentor de mandato eletivo, os Ministros de Estado e os Secretários Estaduais e Municipais serão remunerados exclusivamente por subsídio, que consiste em:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Parcela única, vedado o acréscimo de qualquer gratificação, adicional, abono, prêmio, verba de representação ou outra espécie remuneratória.', 1),
  ('b', 'B', 'Vencimento básico acrescido de triênios e quinquênios.', 2),
  ('c', 'C', 'Remuneração variável conforme a produtividade do órgão.', 3),
  ('d', 'D', 'Salário mínimo multiplicado por fator de responsabilidade.', 4),
  ('e', 'E', 'Ajuda de custo mensal fixa.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000226';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000226' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Subsídio (Art. 39, § 4º).', 'O subsídio é parcela única. Não admite penduricalhos (gratificações, prêmios, etc).', 'Atenção: Verbas indenizatórias (diárias, transporte) podem ser pagas à parte.' from public.questions q where q.public_code = 'PPCE-DC-000226';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Definição de remuneração comum/vencimentos.'),
  ('c', 'Incorreta. Subsídio é fixo e irredutível.'),
  ('d', 'Incorreta. Não existe tal indexação.'),
  ('e', 'Incorreta. Ajuda de custo é indenizatória, não remuneratória principal.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000226';

-- -----------------------------------------------------------------------------
-- QUESTÃO 227: ORGANIZAÇÃO DO ESTADO (COMPETÊNCIA DOS MUNICÍPIOS - ART. 30)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000227', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização do Estado', 'Repartição de Competências', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Compete aos Municípios, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Legislar sobre assuntos de interesse local.', 1),
  ('b', 'B', 'Suplementar a legislação federal e a estadual no que couber.', 2),
  ('c', 'C', 'Organizar e prestar, diretamente ou sob regime de concessão ou permissão, os serviços públicos de interesse local, incluído o de transporte coletivo.', 3),
  ('d', 'D', 'Legislar sobre trânsito e transporte em âmbito nacional.', 4),
  ('e', 'E', 'Manter, com a cooperação técnica e financeira da União e do Estado, programas de educação infantil e de ensino fundamental.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000227';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000227' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Competência Municipal (Art. 30).', 'Trânsito e transporte nacional é competência PRIVATIVA da União (Art. 22, XI).', 'Dica: Município foca no INTERESSE LOCAL.' from public.questions q where q.public_code = 'PPCE-DC-000227';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Competência prevista no Art. 30, I.'),
  ('b', 'Incorreta. Competência prevista no Art. 30, II.'),
  ('c', 'Incorreta. Competência prevista no Art. 30, V.'),
  ('e', 'Incorreta. Competência prevista no Art. 30, VI.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000227';

-- -----------------------------------------------------------------------------
-- QUESTÃO 228: ADMINISTRAÇÃO PÚBLICA (GREVE E SINDICATO - ART. 37, VI e VII)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000228', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Disposições Gerais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Sobre os direitos sindicais e de greve do servidor público civil, é correto afirmar:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'É garantido ao servidor público civil o direito à livre associação sindical.', 1),
  ('b', 'B', 'O direito de greve será exercido livremente, independentemente de lei específica.', 2),
  ('c', 'C', 'Os militares podem exercer o direito de greve se houver prévio aviso à autoridade superior.', 3),
  ('d', 'D', 'O direito à sindicalização é vedado aos servidores da saúde.', 4),
  ('e', 'E', 'A greve do servidor público civil deve ser autorizada pelo STF caso a caso.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000228';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000228' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direitos do Servidor Civil (Art. 37).', 'O servidor civil tem direito à sindicalização. O direito de greve depende de lei (Art. 37, VII).', 'Atenção: Militares são PROIBIDOS de greve e sindicalização (Art. 142).' from public.questions q where q.public_code = 'PPCE-DC-000228';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Exige lei específica.'),
  ('c', 'Incorreta. Vedado aos militares (Art. 142, § 3º, IV).'),
  ('d', 'Incorreta. Garantido a todos os servidores civis.'),
  ('e', 'Incorreta. O STF decidiu que se aplica a lei da greve do setor privado (Lei 7.783/89) por omissão legislativa.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000228';

-- -----------------------------------------------------------------------------
-- QUESTÃO 229: ORGANIZAÇÃO DO ESTADO (REGIÕES METROPOLITANAS - ART. 25, § 3º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000229', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização do State', 'Autonomia Estadual', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Os Estados poderão, mediante lei complementar, instituir regiões metropolitanas, aglomerações urbanas e microrregiões, constituídas por agrupamentos de municípios limítrofes, para:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Integrar a organização, o planejamento e a execução de funções públicas de interesse comum.', 1),
  ('b', 'B', 'Cobrar impostos municipais de forma unificada.', 2),
  ('c', 'C', 'Extinguir as prefeituras locais em prol de um governo regional.', 3),
  ('d', 'D', 'Criar novos Estados a partir da união dessas regiões.', 4),
  ('e', 'E', 'Aumentar o número de vereadores proporcionalmente à população da região.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000229';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000229' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Regiões Metropolitanas (Art. 25, § 3º).', 'O objetivo é a integração de funções públicas de interesse comum (ex: saneamento, transporte).', 'Dica: Criadas por LEI COMPLEMENTAR ESTADUAL.' from public.questions q where q.public_code = 'PPCE-DC-000229';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Não altera a competência tributária municipal.'),
  ('c', 'Incorreta. Municípios mantêm sua autonomia.'),
  ('d', 'Incorreta. A criação de Estados segue o rito do Art. 18, § 3º.'),
  ('e', 'Incorreta. Não afeta a composição das Câmaras Municipais.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000229';

-- -----------------------------------------------------------------------------
-- QUESTÃO 230: ADMINISTRAÇÃO PÚBLICA (PUBLICIDADE DOS ATOS - ART. 37, § 1º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000230', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Princípios', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A publicidade dos atos, programas, obras, serviços e campanhas dos órgãos públicos deverá ter caráter educativo, informativo ou de orientação social, dela não podendo constar:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Nomes, símbolos ou imagens que caracterizem promoção pessoal de autoridades ou servidores públicos.', 1),
  ('b', 'B', 'O custo total da obra ou serviço realizado.', 2),
  ('c', 'C', 'O nome do órgão responsável pela execução.', 3),
  ('d', 'D', 'Informações sobre como o cidadão pode usufruir do serviço.', 4),
  ('e', 'E', 'Referências a leis e normas que fundamentam o ato.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000230';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000230' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Publicidade Institucional (Princípio da Impessoalidade).', 'A publicidade não pode servir para promoção pessoal de políticos.', 'Dica: Foco no serviço, não na pessoa.' from public.questions q where q.public_code = 'PPCE-DC-000230';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Transparência de custos é dever.'),
  ('c', 'Incorreta. O órgão deve ser identificado (impessoalidade).'),
  ('d', 'Incorreta. Faz parte do caráter informativo permitido.'),
  ('e', 'Incorreta. Reforça a legalidade do ato.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000230';

-- -----------------------------------------------------------------------------
-- QUESTÃO 231: ORGANIZAÇÃO DO ESTADO (COMPETÊNCIA CONCORRENTE - ART. 24)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000231', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização do Estado', 'Repartição de Competências', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Compete à União, aos Estados e ao Distrito Federal legislar concorrentemente sobre, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Direito tributário, financeiro, penitenciário, econômico e urbanístico.', 1),
  ('b', 'B', 'Direito processual civil e penal.', 2),
  ('c', 'C', 'Educação, cultura, ensino, desporto, ciência, tecnologia, pesquisa, desenvolvimento e inovação.', 3),
  ('d', 'D', 'Proteção e integração social das pessoas com deficiência.', 4),
  ('e', 'E', 'Procedimentos em matéria processual.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000231';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000231' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Competência Concorrente (Art. 24).', 'Direito Processual é competência PRIVATIVA da União (Art. 22, I). Procedimentos em matéria processual é Concorrente.', 'Dica: Concorrente = PUFE (Penitenciário, Urbanístico, Financeiro, Econômico) + Tributário.' from public.questions q where q.public_code = 'PPCE-DC-000231';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Faz parte do "PUFE-T" (Art. 24, I).'),
  ('c', 'Incorreta. Concorrente (Art. 24, IX).'),
  ('d', 'Incorreta. Concorrente (Art. 24, XIV).'),
  ('e', 'Incorreta. Concorrente (Art. 24, XI).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000231';

-- -----------------------------------------------------------------------------
-- QUESTÃO 232: ORGANIZAÇÃO DO ESTADO (COMPETÊNCIA PRIVATIVA - ART. 22)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000232', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização do Estado', 'Repartição de Competências', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Compete privativamente à União legislar sobre:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Desapropriação.', 1),
  ('b', 'B', 'Proteção ao patrimônio histórico.', 2),
  ('c', 'C', 'Previdência social.', 3),
  ('d', 'D', 'Assistência jurídica e Defensoria pública.', 4),
  ('e', 'E', 'Custas dos serviços forenses.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000232';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000232' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Competência Privativa (Art. 22).', 'Desapropriação é competência privativa da União (Art. 22, II).', 'Dica: CAPACETE DE PM (Civil, Agrário, Penal, Aeronáutico, Comercial, Eleitoral, Trabalho, Espacial, Desapropriação, Processual, Marítimo).' from public.questions q where q.public_code = 'PPCE-DC-000232';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Concorrente (Art. 24, VII).'),
  ('c', 'Incorreta. Concorrente (Art. 24, XII).'),
  ('d', 'Incorreta. Concorrente (Art. 24, XIII).'),
  ('e', 'Incorreta. Concorrente (Art. 24, IV).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000232';

-- -----------------------------------------------------------------------------
-- QUESTÃO 233: ADMINISTRAÇÃO PÚBLICA (CARGOS EM COMISSÃO - ART. 37, V)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000233', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Disposições Gerais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'As funções de confiança e os cargos em comissão destinam-se exclusivamente às atribuições de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Execução técnica e apoio logístico.', 1),
  ('b', 'B', 'Direção, chefia e assessoramento.', 2),
  ('c', 'C', 'Fiscalização e auditoria externa.', 3),
  ('d', 'D', 'Atendimento direto ao público.', 4),
  ('e', 'E', 'Segurança institucional e transporte.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000233';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000233' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Cargos em Comissão (Art. 37, V).', 'Ambos destinam-se a Direção, Chefia e Assessoramento (DCA).', 'Dica: Função de confiança = Só efetivo; Cargo em comissão = Livre (efetivo ou não).' from public.questions q where q.public_code = 'PPCE-DC-000233';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Estas são funções de cargos efetivos de base.'),
  ('c', 'Incorreta. Auditoria exige cargo efetivo por concurso.'),
  ('d', 'Incorreta. Função operacional.'),
  ('e', 'Incorreta. Função operacional.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000233';

-- -----------------------------------------------------------------------------
-- QUESTÃO 234: PODER JUDICIÁRIO (QUINTO CONSTITUCIONAL - ART. 94)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000234', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Judiciário', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Um quinto dos lugares dos Tribunais Regionais Federais, dos Tribunais dos Estados, e do Distrito Federal e Territórios será composto de membros do Ministério Público e de advogados. Sobre o "Quinto Constitucional", é correto afirmar:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Os advogados devem ter mais de cinco anos de efetiva atividade profissional.', 1),
  ('b', 'B', 'Os membros do MP devem ter mais de dez anos de carreira.', 2),
  ('c', 'C', 'A lista sêxtupla é enviada diretamente ao Presidente da República.', 3),
  ('d', 'D', 'O Tribunal reduz a lista para tríplice antes de enviar ao Chefe do Executivo.', 4),
  ('e', 'E', 'O STF também possui a regra do quinto constitucional.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000234';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000234' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Quinto Constitucional (Art. 94).', 'Membros do MP: > 10 anos de carreira. Advogados: > 10 anos de atividade profissional.', 'Dica: Regra do 10-10 (Dez anos para ambos).' from public.questions q where q.public_code = 'PPCE-DC-000234';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Devem ser mais de dez anos.'),
  ('c', 'Incorreta. A lista sêxtupla vai para o Tribunal respectivo.'),
  ('d', 'Incorreta. Opção d diz o mesmo que o rito correto, mas a alternativa B é a literalidade mais cobrada sobre os anos. Na verdade, a D está correta tecnicamente também. Vamos ajustar para ser a única correta.'),
  ('e', 'Incorreta. STF não segue o quinto (composição híbrida mas sem cota fixa de 1/5).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000234';

-- Ajuste na questão 234 para evitar dubiedade (D estava certa, mas B é o foco do erro comum de anos)
update public.question_options set text = 'O Tribunal reduz a lista para quádrupla antes de enviar ao Chefe do Executivo.' where option_key = 'd' and question_id in (select id from public.questions where public_code = 'PPCE-DC-000234');

-- -----------------------------------------------------------------------------
-- QUESTÃO 235: PODER LEGISLATIVO (CPI - ART. 58, § 3º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000235', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'As comissões parlamentares de inquérito (CPI), que terão poderes de investigação próprios das autoridades judiciais, serão criadas mediante requerimento de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Metade de seus membros, para apuração de fato genérico.', 1),
  ('b', 'B', 'Um terço de seus membros, para a apuração de fato determinado e por prazo certo.', 2),
  ('c', 'C', 'Dois terços de seus membros, com aprovação do Plenário.', 3),
  ('d', 'D', 'Qualquer parlamentar, desde que aprovado pela Mesa Diretora.', 4),
  ('e', 'E', 'Apenas pelo Presidente da Câmara ou do Senado.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000235';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000235' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'CPI (Art. 58, § 3º).', 'Requisitos: 1/3 das assinaturas; Fato determinado; Prazo certo.', 'Dica: É direito da minoria (não precisa de aprovação da maioria).' from public.questions q where q.public_code = 'PPCE-DC-000235';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Deve ser fato determinado e 1/3.'),
  ('c', 'Incorreta. O quórum é de 1/3.'),
  ('d', 'Incorreta. Exige quórum de 1/3.'),
  ('e', 'Incorreta. É ato coletivo dos parlamentares.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000235';

-- -----------------------------------------------------------------------------
-- QUESTÃO 236: FUNÇÕES ESSENCIAIS À JUSTIÇA (DEFENSORIA PÚBLICA - ART. 134)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000236', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Funções Essenciais à Justiça', 'Defensoria Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A Defensoria Pública é instituição permanente, instrumento do regime democrático, fundamentalmente orientada para a promoção dos direitos humanos e a defesa dos:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Agentes públicos em processos administrativos.', 1),
  ('b', 'B', 'Necessitados, na forma da lei.', 2),
  ('c', 'C', 'Membros de partidos políticos de oposição.', 3),
  ('d', 'D', 'Presos políticos exclusivamente.', 4),
  ('e', 'E', 'Empresas públicas em dificuldades financeiras.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000236';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000236' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Defensoria Pública (Art. 134).', 'A Defensoria atua na defesa dos necessitados (hipossuficientes).', 'Dica: Instituição essencial à função jurisdicional.' from public.questions q where q.public_code = 'PPCE-DC-000236';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. A Defensoria foca no cidadão necessitado, não no vínculo funcional.'),
  ('c', 'Incorreta. Não há distinção partidária.'),
  ('d', 'Incorreta. A defesa é ampla (civil, criminal, etc).'),
  ('e', 'Incorreta. Defesa de pessoas físicas ou grupos vulneráveis.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000236';

-- -----------------------------------------------------------------------------
-- QUESTÃO 237: SEGURANÇA PÚBLICA (POLÍCIA PENAL - ART. 144, § 5º-A)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000237', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Às polícias penais, vinculadas ao órgão administrador do sistema penal da unidade federativa a que pertencem, cabe:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A polícia ostensiva e a preservação da ordem pública.', 1),
  ('b', 'B', 'A segurança dos estabelecimentos penais.', 2),
  ('c', 'C', 'As funções de polícia judiciária e a apuração de infrações penais.', 3),
  ('d', 'D', 'O patrulhamento ostensivo das rodovias estaduais.', 4),
  ('e', 'E', 'A guarda das fronteiras nacionais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000237';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000237' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Polícia Penal (Art. 144, § 5º-A).', 'A competência precípua é a segurança dos estabelecimentos penais (Emenda 104/19).', 'Dica: Questão obrigatória para PPCE.' from public.questions q where q.public_code = 'PPCE-DC-000237';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Atribuição da PM.'),
  ('c', 'Incorreta. Atribuição da Polícia Civil ou Federal.'),
  ('d', 'Incorreta. Atribuição da PM (Rodoviária).'),
  ('e', 'Incorreta. Atribuição da Polícia Federal.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000237';

-- -----------------------------------------------------------------------------
-- QUESTÃO 238: DEFESA DO ESTADO (ESTADO DE SÍTIO - ART. 137)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000238', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Estado de Defesa e Estado de Sítio', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O Presidente da República pode, ouvidos o Conselho da República e o Conselho de Defesa Nacional, solicitar ao Congresso Nacional autorização para decretar o estado de sítio nos casos de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Comovação de grave repercussão nacional ou ocorrência de fatos que comprovem a ineficácia de medida tomada durante o estado de defesa.', 1),
  ('b', 'B', 'Instabilidade institucional grave em apenas um município.', 2),
  ('c', 'C', 'Calalamidade pública de grandes proporções na natureza.', 3),
  ('d', 'D', 'Crise econômica severa com hiperinflação.', 4),
  ('e', 'E', 'Greve geral de servidores públicos essenciais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000238';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000238' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Estado de Sítio (Art. 137).', 'O estado de sítio é a medida mais grave. Hipótese A: Ineficácia do Estado de Defesa ou Grave Repercussão Nacional.', 'Dica: Estado de Defesa (Presidente decreta e envia); Estado de Sítio (Presidente pede autorização ANTES).' from public.questions q where q.public_code = 'PPCE-DC-000238';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Deve ser de repercussão nacional.'),
  ('c', 'Incorreta. Calamidade autoriza Estado de Defesa.'),
  ('d', 'Incorreta. Não é hipótese de exceção constitucional.'),
  ('e', 'Incorreta. Não é hipótese de exceção constitucional.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000238';

-- -----------------------------------------------------------------------------
-- QUESTÃO 239: PODER JUDICIÁRIO (CONSELHO DA REPÚBLICA - ART. 89)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000239', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Executivo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O Conselho da República é órgão superior de consulta do Presidente da República. Dele participam, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O Vice-Presidente da República.', 1),
  ('b', 'B', 'O Presidente da Câmara dos Deputados e o do Senado Federal.', 2),
  ('c', 'C', 'O Ministro da Justiça.', 3),
  ('d', 'D', 'O Ministro da Defesa.', 4),
  ('e', 'E', 'O líder da maioria e o da minoria em cada Casa Legislativa.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000239';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000239' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Conselho da República (Art. 89).', 'O Ministro da Defesa participa do Conselho de Defesa Nacional, não do Conselho da República.', 'Dica: Conselho da República foca em política institucional (Líderes das Casas).' from public.questions q where q.public_code = 'PPCE-DC-000239';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Participa (Art. 89, I).'),
  ('b', 'Incorreta. Participam (Art. 89, II e III).'),
  ('c', 'Incorreta. Participa (Art. 89, V).'),
  ('e', 'Incorreta. Participam (Art. 89, IV).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000239';

-- -----------------------------------------------------------------------------
-- QUESTÃO 240: PODER JUDICIÁRIO (SUMULA VINCULANTE - ART. 103-A)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000240', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Judiciário', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Supremo Tribunal Federal poderá, de ofício ou por provocação, mediante decisão de dois terços dos seus membros, após reiteradas decisões sobre matéria constitucional, aprovar súmula que terá efeito vinculante em relação:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Aos demais órgãos do Poder Judiciário e à administração pública direta e indireta, nas três esferas.', 1),
  ('b', 'B', 'Apenas aos órgãos do Poder Judiciário.', 2),
  ('c', 'C', 'Ao Poder Legislativo em sua função legiferante.', 3),
  ('d', 'D', 'Aos cidadãos em suas relações privadas exclusivamente.', 4),
  ('e', 'E', 'Aos tribunais internacionais em matéria de direitos humanos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000240';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000240' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Súmula Vinculante (Art. 103-A).', 'O efeito vinculante atinge o Judiciário e a Administração Pública (Direta e Indireta).', 'Atenção: NÃO vincula o Legislativo na função de criar leis.' from public.questions q where q.public_code = 'PPCE-DC-000240';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Também vincula a Administração Pública.'),
  ('c', 'Incorreta. O Legislativo pode legislar contra a súmula para evitar a "fossilização do direito".'),
  ('d', 'Incorreta. Vincula entes públicos prioritariamente.'),
  ('e', 'Incorreta. Inexistente esta regra.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000240';

-- -----------------------------------------------------------------------------
-- QUESTÃO 241: PROCESSO LEGISLATIVO (INICIATIVA PRIVATIVA - ART. 61, § 1º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000241', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Processo Legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'São de iniciativa privativa do Presidente da República as leis que disponham sobre:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Organização do Ministério Público e da Defensoria Pública da União.', 1),
  ('b', 'B', 'Fixação do subsídio dos Ministros do Supremo Tribunal Federal.', 2),
  ('c', 'C', 'Criação de cargos, funções ou empregos públicos na administração direta e autárquica ou aumento de sua remuneração.', 3),
  ('d', 'D', 'Normas gerais sobre licitações e contratos administrativos.', 4),
  ('e', 'E', 'Direito penal e processual penal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000241';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000241' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Iniciativa Privativa (Art. 61, § 1º).', 'A criação de cargos e aumento de remuneração no Executivo é iniciativa exclusiva do Presidente.', 'Dica: Quase tudo que envolve gastos no Executivo é dele.' from public.questions q where q.public_code = 'PPCE-DC-000241';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O MP tem iniciativa própria (Art. 128, § 5º).'),
  ('b', 'Incorreta. Iniciativa conjunta dos Presidentes das Casas e do STF (Art. 48, XV).'),
  ('d', 'Incorreta. Iniciativa comum (concorrência legislativa no sentido de autoria).'),
  ('e', 'Incorreta. Iniciativa comum (qualquer parlamentar pode propor lei penal).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000241';

-- -----------------------------------------------------------------------------
-- QUESTÃO 242: PROCESSO LEGISLATIVO (EMENDA À CONSTITUIÇÃO - ART. 60)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000242', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Processo Legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A Constituição poderá ser emendada mediante proposta, EXCETO de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Um terço, no mínimo, dos membros da Câmara dos Deputados ou do Senado Federal.', 1),
  ('b', 'B', 'Presidente da República.', 2),
  ('c', 'C', 'Mais da metade das Assembleias Legislativas das unidades da Federação, manifestando-se, cada uma delas, pela maioria relativa de seus membros.', 3),
  ('d', 'D', 'Cidadãos, mediante iniciativa popular assinada por 1% do eleitorado nacional.', 4),
  ('e', 'E', 'Qualquer um dos citados acima pode propor PEC.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000242';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000242' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Iniciativa de PEC (Art. 60).', 'NÃO existe iniciativa popular para Emenda à Constituição (PEC) na esfera Federal.', 'Dica: Iniciativa popular só para Lei Ordinária e Complementar.' from public.questions q where q.public_code = 'PPCE-DC-000242';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Hipótese prevista no Art. 60, I.'),
  ('b', 'Incorreta. Hipótese prevista no Art. 60, II.'),
  ('c', 'Incorreta. Hipótese prevista no Art. 60, III.'),
  ('e', 'Incorreta. A iniciativa popular é a exceção que não existe para PEC.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000242';

-- -----------------------------------------------------------------------------
-- QUESTÃO 243: CONTROLE DE CONSTITUCIONALIDADE (LEGITIMADOS - ART. 103)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000243', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Controle de Constitucionalidade', 'Controle Abstrato', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Podem propor a ação direta de inconstitucionalidade e a ação declaratória de constitucionalidade, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O Procurador-Geral da República.', 1),
  ('b', 'B', 'O Conselho Federal da Ordem dos Advogados do Brasil.', 2),
  ('c', 'C', 'Partido político com representação no Congresso Nacional.', 3),
  ('d', 'D', 'O Defensor Público-Geral Federal.', 4),
  ('e', 'E', 'Confederação sindical ou entidade de classe de âmbito nacional.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000243';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000243' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Legitimados do Controle (Art. 103).', 'A Defensoria Pública ainda NÃO é legitimada universal para propor ADI no STF segundo o rol do Art. 103.', 'Dica: São 3 mesas, 3 autoridades e 3 entidades.' from public.questions q where q.public_code = 'PPCE-DC-000243';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Autoridade legitimada (Art. 103, VI).'),
  ('b', 'Incorreta. Entidade legitimada (Art. 103, VII).'),
  ('c', 'Incorreta. Entidade legitimada (Art. 103, VIII).'),
  ('e', 'Incorreta. Entidade legitimada (Art. 103, IX).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000243';

-- -----------------------------------------------------------------------------
-- QUESTÃO 244: PROCESSO LEGISLATIVO (VETO PRESIDENTE - ART. 66)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000244', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Processo Legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Se o Presidente da República considerar o projeto, no todo ou em parte, inconstitucional or contrário ao interesse público, vetá-lo-á total ou parcialmente, no prazo de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '10 dias úteis.', 1),
  ('b', 'B', '15 dias úteis.', 2),
  ('c', 'C', '15 dias corridos.', 3),
  ('d', 'D', '30 dias úteis.', 4),
  ('e', 'E', '48 horas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000244';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000244' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Veto Presidencial.', 'O prazo é de 15 dias ÚTEIS.', 'Dica: Silêncio do Presidente após 15 dias úteis = SANÇÃO TÁCITA.' from public.questions q where q.public_code = 'PPCE-DC-000244';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Prazo insuficiente.'),
  ('c', 'Incorreta. A CF especifica dias úteis.'),
  ('d', 'Incorreta. Prazo excessivo.'),
  ('e', 'Incorreta. Prazo insuficiente.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000244';

-- -----------------------------------------------------------------------------
-- QUESTÃO 245: CONTROLE DE CONSTITUCIONALIDADE (CONTROLE DIFUSO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000245', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Controle de Constitucionalidade', 'Controle Difuso', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O controle de constitucionalidade difuso ou aberto caracteriza-se por:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Poder ser exercido por qualquer juiz ou tribunal em um caso concreto.', 1),
  ('b', 'B', 'Ser de competência exclusiva do Supremo Tribunal Federal.', 2),
  ('c', 'C', 'Ter efeitos erga omnes e vinculantes imediatos.', 3),
  ('d', 'D', 'Atacar a lei em tese, sem necessidade de lide.', 4),
  ('e', 'E', 'Ser realizado apenas por provocação do Presidente da República.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000245';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000245' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Controle Difuso.', 'No controle difuso, qualquer juiz pode afastar a aplicação de lei inconstitucional no caso concreto.', 'Dica: Efeitos Inter Partes (em regra).' from public.questions q where q.public_code = 'PPCE-DC-000245';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Este é o controle concentrado.'),
  ('c', 'Incorreta. Efeitos são inter partes.'),
  ('d', 'Incorreta. O difuso exige um caso real (incidental).'),
  ('e', 'Incorreta. Qualquer cidadão/parte pode suscitar no processo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000245';

-- -----------------------------------------------------------------------------
-- QUESTÃO 246: PROCESSO LEGISLATIVO (LEI COMPLEMENTAR - ART. 69)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000246', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Processo Legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'As leis complementares serão aprovadas por:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Maioria simples.', 1),
  ('b', 'B', 'Maioria absoluta.', 2),
  ('c', 'C', 'Dois terços dos membros.', 3),
  ('d', 'D', 'Três quintos dos membros.', 4),
  ('e', 'E', 'Voto unânime.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000246';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000246' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Quórum Lei Complementar.', 'Lei Complementar exige Maioria Absoluta. Lei Ordinária exige Maioria Simples.', 'Dica: Absoluta = Primeiro número inteiro após a metade do total.' from public.questions q where q.public_code = 'PPCE-DC-000246';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Quórum de lei ordinária.'),
  ('c', 'Incorreta. Quórum de impeachment ou cargos altos.'),
  ('d', 'Incorreta. Quórum de PEC.'),
  ('e', 'Incorreta. Inexistente em processo legislativo ordinário.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000246';

-- -----------------------------------------------------------------------------
-- QUESTÃO 247: CONTROLE DE CONSTITUCIONALIDADE (ADPF - ART. 102, § 1º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000247', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Controle de Constitucionalidade', 'Controle Abstrato', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A Arguição de Descumprimento de Preceito Fundamental (ADPF) é regida pelo princípio da:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Subsidiariedade.', 1),
  ('b', 'B', 'Hierarquia.', 2),
  ('c', 'C', 'Simetria.', 3),
  ('d', 'D', 'Exclusividade.', 4),
  ('e', 'E', 'Anterioridade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000247';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000247' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'ADPF e Subsidiariedade.', 'A ADPF só pode ser usada se não houver outro meio eficaz de sanar a lesividade.', 'Dica: É o "coringa" do controle de constitucionalidade.' from public.questions q where q.public_code = 'PPCE-DC-000247';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Não é o princípio regente da admissibilidade específica da ADPF.'),
  ('c', 'Incorreta. Refere-se à reprodução obrigatória de normas federais pelos estados.'),
  ('d', 'Incorreta. Ela é subsidiária, não exclusiva.'),
  ('e', 'Incorreta. Princípio tributário ou penal.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000247';

-- -----------------------------------------------------------------------------
-- QUESTÃO 248: PROCESSO LEGISLATIVO (MEDIDA PROVISÓRIA - ART. 62)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000248', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Processo Legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Em caso de relevância e urgência, o Presidente da República poderá adotar medidas provisórias, com força de lei. É VEDADA a edição de medidas provisórias sobre matéria relativa a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Direito tributário e impostos em geral.', 1),
  ('b', 'B', 'Direito penal, processual penal e processual civil.', 2),
  ('c', 'C', 'Créditos suplementares para o orçamento.', 3),
  ('d', 'D', 'Reforma administrativa do Poder Executivo.', 4),
  ('e', 'E', 'Meio ambiente e proteção florestal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000248';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000248' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Vedações à MP (Art. 62, § 1º).', 'É proibido MP sobre Direito Penal e Processual. Imagine o perigo de criar crimes por decreto!', 'Dica: MP não mexe com Código Penal nem Eleitoral.' from public.questions q where q.public_code = 'PPCE-DC-000248';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. MP pode tratar de tributos (com regras de anterioridade).'),
  ('c', 'Incorreta. Créditos extraordinários podem ser por MP.'),
  ('d', 'Incorreta. MP pode reorganizar a administração se não criar gastos extras.'),
  ('e', 'Incorreta. MP pode tratar de meio ambiente.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000248';

-- -----------------------------------------------------------------------------
-- QUESTÃO 249: PODER JUDICIÁRIO (CONTRADITÓRIO E AMPLA DEFESA - ART. 5º, LV)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000249', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Individuais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Aos litigantes, em processo judicial ou administrativo, e aos acusados em geral são assegurados o contraditório e a ampla defesa, com os recursos a ela inerentes. Esse princípio aplica-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Apenas em processos criminais.', 1),
  ('b', 'B', 'Em processos judiciais e também em processos administrativos (inclusive disciplinares).', 2),
  ('c', 'C', 'Exclusivamente no âmbito do Poder Judiciário.', 3),
  ('d', 'D', 'Apenas quando houver risco de prisão.', 4),
  ('e', 'E', 'Apenas para brasileiros natos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000249';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000249' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Contraditório e Ampla Defesa.', 'O princípio é universal para qualquer lide ou acusação, seja na justiça ou na prefeitura/presídio.', 'Dica: Súmula Vinculante 5 (falta de advogado em PAD não anula se houve defesa).' from public.questions q where q.public_code = 'PPCE-DC-000249';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Abrange cível, trabalhista, administrativo, etc.'),
  ('c', 'Incorreta. O texto da CF cita expressamente "administrativo".'),
  ('d', 'Incorreta. Aplica-se a qualquer sanção ou perda de direito.'),
  ('e', 'Incorreta. Estrangeiros residentes também gozam deste direito.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000249';

-- -----------------------------------------------------------------------------
-- QUESTÃO 250: ORGANIZAÇÃO DO ESTADO (CAPITAIS - ART. 18, § 1º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000250', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização do Estado', 'Brasília', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Brasília é a Capital Federal. Sobre o Distrito Federal, é correto afirmar:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'É dividido em municípios.', 1),
  ('b', 'B', 'Pode ser subdividido em Estados.', 2),
  ('c', 'C', 'É vedada sua divisão em Municípios.', 3),
  ('d', 'D', 'Não possui autonomia política.', 4),
  ('e', 'E', 'O Governador é nomeado pelo Presidente.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000250';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000250' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Distrito Federal (Art. 32).', 'O DF é um ente híbrido e NÃO pode ser dividido em municípios.', 'Dica: O DF acumula competências estaduais e municipais.' from public.questions q where q.public_code = 'PPCE-DC-000250';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Vedação expressa do Art. 32.'),
  ('b', 'Incorreta. É ente federativo autônomo e único.'),
  ('d', 'Incorreta. Possui autonomia (elege governador e deputados).'),
  ('e', 'Incorreta. O governador é eleito pelo povo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000250';

-- -----------------------------------------------------------------------------
-- QUESTÃO 251: SEGURANÇA PÚBLICA (ROL TAXATIVO - ART. 144)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000251', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A segurança pública, dever do Estado, direito e responsabilidade de todos, é exercida para a preservação da ordem pública e da incolumidade das pessoas e do patrimônio, através dos seguintes órgãos, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Polícia Federal.', 1),
  ('b', 'B', 'Polícia Rodoviária Federal.', 2),
  ('c', 'C', 'Polícias Penais federal, estaduais e distrital.', 3),
  ('d', 'D', 'Guardas Municipais.', 4),
  ('e', 'E', 'Polícias Civis.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000251';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000251' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Órgãos de Segurança Pública (Art. 144).', 'As Guardas Municipais NÃO constam no rol dos órgãos de segurança pública dos incisos do Art. 144, embora estejam previstas no § 8º.', 'Atenção: O STF decidiu que guardas integram o SISTEMA de segurança, mas a literalidade do rol taxativo ainda as exclui dos incisos principais.' from public.questions q where q.public_code = 'PPCE-DC-000251';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Órgão do inciso I.'),
  ('b', 'Incorreta. Órgão do inciso II.'),
  ('c', 'Incorreta. Órgão do inciso VI (novo).'),
  ('e', 'Incorreta. Órgão do inciso IV.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000251';

-- -----------------------------------------------------------------------------
-- QUESTÃO 252: SEGURANÇA PÚBLICA (POLÍCIA FEDERAL - ART. 144, § 1º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000252', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A Polícia Federal, instituída por lei como órgão permanente, estruturado em carreira, destina-se a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Exercer, com exclusividade, as funções de polícia judiciária da União.', 1),
  ('b', 'B', 'Realizar o policiamento ostensivo das fronteiras.', 2),
  ('c', 'C', 'Apurar infrações penais contra a ordem política e social apenas.', 3),
  ('d', 'D', 'Prevenir e reprimir o tráfico ilícito de entorpecentes em âmbito municipal.', 4),
  ('e', 'E', 'Substituir as polícias civis em caso de greve.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000252';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000252' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Atribuições da PF (Art. 144, § 1º).', 'A PF exerce, com exclusividade, a polícia judiciária da União (Art. 144, § 1º, IV).', 'Dica: Exclusividade é a palavra-chave para Polícia Judiciária da União.' from public.questions q where q.public_code = 'PPCE-DC-000252';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A PF faz patrulhamento marítimo, aeroportuário e de fronteiras, mas o ostensivo geral é da PRF/PM em suas áreas.'),
  ('c', 'Incorreta. Também apura infrações contra bens, serviços e interesses da União.'),
  ('d', 'Incorreta. A PF atua no tráfico interestadual ou internacional.'),
  ('e', 'Incorreta. Não há essa previsão de substituição.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000252';

-- -----------------------------------------------------------------------------
-- QUESTÃO 253: SEGURANÇA PÚBLICA (POLÍCIA CIVIL - ART. 144, § 4º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000253', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Às polícias civis, dirigidas por delegados de polícia de carreira, incumbem, ressalvada a competência da União:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'As funções de polícia judiciária e a apuração de infrações penais, exceto as militares.', 1),
  ('b', 'B', 'O policiamento ostensivo e a preservação da ordem pública.', 2),
  ('c', 'C', 'A segurança dos estabelecimentos penais estaduais.', 3),
  ('d', 'D', 'A proteção dos bens, serviços e instalações dos Municípios.', 4),
  ('e', 'E', 'A fiscalização de trânsito em rodovias federais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000253';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000253' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Polícia Civil (Art. 144, § 4º).', 'A PC faz a polícia judiciária estadual e apura crimes, menos os militares (que ficam com as próprias forças militares).', 'Dica: PC apura, PM patrulha.' from public.questions q where q.public_code = 'PPCE-DC-000253';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Função da Polícia Militar.'),
  ('c', 'Incorreta. Função da Polícia Penal.'),
  ('d', 'Incorreta. Função das Guardas Municipais.'),
  ('e', 'Incorreta. Função da PRF.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000253';

-- -----------------------------------------------------------------------------
-- QUESTÃO 254: SEGURANÇA PÚBLICA (MILITARES DOS ESTADOS - ART. 42)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000254', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Militares dos Estados', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Os membros das Polícias Militares e Corpos de Bombeiros Militares, instituições organizadas com base na hierarquia e disciplina, são militares dos Estados. Sobre eles, é correto afirmar:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Podem sindicalizar-se e exercer o direito de greve.', 1),
  ('b', 'B', 'São proibidos de sindicalização e de greve.', 2),
  ('c', 'C', 'Podem estar filiados a partidos políticos enquanto na ativa.', 3),
  ('d', 'D', 'Não possuem foro especial para crimes militares.', 4),
  ('e', 'E', 'São equiparados aos servidores civis para todos os fins.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000254';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000254' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Militares (Art. 42 c/c Art. 142).', 'Militares são proibidos de sindicalização e greve (Art. 142, § 3º, IV).', 'Dica: Regra de ouro da disciplina militar.' from public.questions q where q.public_code = 'PPCE-DC-000254';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Proibição absoluta.'),
  ('c', 'Incorreta. Vedado na ativa (Art. 142, § 3º, V).'),
  ('d', 'Incorreta. Possuem a Justiça Militar Estadual.'),
  ('e', 'Incorreta. Possuem regime jurídico próprio.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000254';

-- -----------------------------------------------------------------------------
-- QUESTÃO 255: SEGURANÇA PÚBLICA (POLÍCIA FERROVIÁRIA FEDERAL - ART. 144, § 3º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000255', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A polícia ferroviária federal, órgão permanente, estruturado em carreira, destina-se, na forma da lei, ao:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Patrulhamento ostensivo das ferrovias federais.', 1),
  ('b', 'B', 'Combate ao tráfico de drogas em trens.', 2),
  ('c', 'C', 'Investigação de crimes cometidos em bens da União.', 3),
  ('d', 'D', 'Segurança pessoal das autoridades do Ministério dos Transportes.', 4),
  ('e', 'E', 'Manutenção dos trilhos e sinalização ferroviária.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000255';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000255' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Polícia Ferroviária Federal (Art. 144, § 3º).', 'Sua função é o patrulhamento ostensivo das ferrovias federais.', 'Dica: Quase não há efetivo hoje, mas ainda está na CF.' from public.questions q where q.public_code = 'PPCE-DC-000255';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Atribuição da PF no que tange à investigação.'),
  ('c', 'Incorreta. Atribuição da PF.'),
  ('d', 'Incorreta. Não é atribuição constitucional.'),
  ('e', 'Incorreta. Função técnica/manutenção, não policial.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000255';

-- -----------------------------------------------------------------------------
-- QUESTÃO 256: SEGURANÇA PÚBLICA (POLÍCIA MILITAR - ART. 144, § 5º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000256', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Às polícias militares cabem a polícia ostensiva e a preservação da ordem pública; aos corpos de bombeiros militares, além das atribuições definidas em lei, incumbe a execução de atividades de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Defesa civil.', 1),
  ('b', 'B', 'Guarda portuária.', 2),
  ('c', 'C', 'Polícia judiciária militar.', 3),
  ('d', 'D', 'Fiscalização ambiental urbana.', 4),
  ('e', 'E', 'Primeiros socorros em acidentes de trânsito exclusivamente.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000256';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000256' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Bombeiros Militares (Art. 144, § 5º).', 'A função primordial dos Bombeiros Militares é a Defesa Civil.', 'Dica: PM = Ordem Pública; Bombeiro = Defesa Civil.' from public.questions q where q.public_code = 'PPCE-DC-000256';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Função vinculada à administração portuária/União.'),
  ('c', 'Incorreta. Incumbe às polícias militares no âmbito de seus membros.'),
  ('d', 'Incorreta. Função administrativa/ambiental.'),
  ('e', 'Incorreta. Defesa Civil é mais amplo que socorro em trânsito.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000256';

-- -----------------------------------------------------------------------------
-- QUESTÃO 257: SEGURANÇA PÚBLICA (CONTROLE DAS POLÍCIAS - ART. 129, VII)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000257', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Funções Essenciais à Justiça', 'Ministério Público', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O controle externo da atividade policial será exercido pelo:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Poder Judiciário, através das corregedorias.', 1),
  ('b', 'B', 'Ministério Público, na forma da lei complementar.', 2),
  ('c', 'C', 'Tribunal de Contas da União.', 3),
  ('d', 'D', 'Ministério da Justiça e Segurança Pública.', 4),
  ('e', 'E', 'Conselho Federal da OAB.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000257';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000257' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Controle Externo da Polícia (Art. 129, VII).', 'O Ministério Público detém a competência constitucional para o controle externo da polícia.', 'Dica: Polícia é fiscalizada pelo MP.' from public.questions q where q.public_code = 'PPCE-DC-000257';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Judiciário faz controle interno/disciplinar do próprio órgão.'),
  ('c', 'Incorreta. TCU faz controle financeiro.'),
  ('d', 'Incorreta. O MJSP faz controle administrativo/hierárquico federal.'),
  ('e', 'Incorreta. A OAB não tem poder de controle estatal direto.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000257';

-- -----------------------------------------------------------------------------
-- QUESTÃO 258: SEGURANÇA PÚBLICA (FORÇAS AUXILIARES - ART. 144, § 6º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000258', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'As polícias militares e os corpos de bombeiros militares, forças auxiliares e reserva do Exército subordinam-se, juntamente com as polícias civis e as polícias penais estaduais e distrital:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ao Ministério da Defesa.', 1),
  ('b', 'B', 'Aos Governadores dos Estados, do Distrito Federal e dos Territórios.', 2),
  ('c', 'C', 'Diretamente ao Comandante do Exército.', 3),
  ('d', 'D', 'Ao Congresso Nacional.', 4),
  ('e', 'E', 'Ao Secretário Nacional de Segurança Pública.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000258';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000258' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Subordinação Policial (Art. 144, § 6º).', 'As polícias estaduais (Civil, Militar, Penal e Bombeiros) subordinam-se aos Governadores.', 'Dica: Governador é o "Comandante-em-Chefe" estadual.' from public.questions q where q.public_code = 'PPCE-DC-000258';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Defesa foca nas Forças Armadas.'),
  ('c', 'Incorreta. Somente em caso de convocação/mobilização.'),
  ('d', 'Incorreta. O Legislativo não exerce subordinação direta.'),
  ('e', 'Incorreta. Órgão de coordenação, não de comando.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000258';

-- -----------------------------------------------------------------------------
-- QUESTÃO 259: SEGURANÇA PÚBLICA (SEGURANÇA VIÁRIA - ART. 144, § 10)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000259', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A segurança viária, exercida para a preservação da ordem pública e da incolumidade das pessoas e do seu patrimônio nas vias públicas, compreende:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A educação, engenharia e fiscalização de trânsito.', 1),
  ('b', 'B', 'Apenas a aplicação de multas por radares eletrônicos.', 2),
  ('c', 'C', 'O policiamento rodoviário exclusivamente estadual.', 3),
  ('d', 'D', 'O transporte público intermunicipal.', 4),
  ('e', 'E', 'A construção e pavimentação de novas rodovias.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000259';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000259' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Segurança Viária (Art. 144, § 10).', 'Compreende educação, engenharia e fiscalização de trânsito (Tríade do Trânsito).', 'Dica: Compete aos Estados, DF e Municípios.' from public.questions q where q.public_code = 'PPCE-DC-000259';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Muito restritivo.'),
  ('c', 'Incorreta. Também abrange o âmbito municipal.'),
  ('d', 'Incorreta. Questão de serviço público, não segurança viária stricto sensu.'),
  ('e', 'Incorreta. Atividade de engenharia civil/infraestrutura.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000259';

-- -----------------------------------------------------------------------------
-- QUESTÃO 260: SEGURANÇA PÚBLICA (POLÍCIA PENAL - CRIAÇÃO - ART. 144, VI)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000260', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O preenchimento do quadro de servidores das polícias penais será feito, exclusivamente, por meio de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Livre nomeação pelo Governador.', 1),
  ('b', 'B', 'Concurso público e por meio da transformação dos cargos isolados, dos cargos de carreira dos atuais agentes penitenciários e dos cargos equivalentes.', 2),
  ('c', 'C', 'Indicação por mérito dos diretores de presídios.', 3),
  ('d', 'D', 'Processo seletivo simplificado para temporários.', 4),
  ('e', 'E', 'Transferência de policiais militares em final de carreira.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000260';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000260' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Provimento Polícia Penal (Art. 144, § 5º-A).', 'A CF previu a transformação dos antigos agentes penitenciários em Policiais Penais e o concurso público como regra.', 'Dica: Exclusivamente por concurso (pro futuro).' from public.questions q where q.public_code = 'PPCE-DC-000260';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Fere a regra do concurso público.'),
  ('c', 'Incorreta. Fere a regra do concurso público.'),
  ('d', 'Incorreta. Fere a regra do provimento efetivo.'),
  ('e', 'Incorreta. Fere a regra da carreira própria.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000260';

-- -----------------------------------------------------------------------------
-- QUESTÃO 261: PODER JUDICIÁRIO (CNJ - ART. 103-B)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000261', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Judiciário', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O Conselho Nacional de Justiça (CNJ) compõe-se de 15 membros com mandato de dois anos, admitida uma recondução. Sobre o CNJ, é correto afirmar:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Exerce funções jurisdicionais em todo o território nacional.', 1),
  ('b', 'B', 'É presidido pelo Presidente do Supremo Tribunal Federal.', 2),
  ('c', 'C', 'Seus membros são nomeados pelo Presidente do Congresso Nacional.', 3),
  ('d', 'D', 'Não possui competência para rever processos disciplinares de magistrados.', 4),
  ('e', 'E', 'É composto exclusivamente por magistrados de carreira.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000261';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000261' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'CNJ (Art. 103-B).', 'O Presidente do STF é o Presidente nato do CNJ (§ 1º).', 'Atenção: O CNJ é órgão de controle administrativo e financeiro, NÃO exerce jurisdição (não julga causas).' from public.questions q where q.public_code = 'PPCE-DC-000261';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O CNJ não julga ações judiciais, apenas administrativas.'),
  ('c', 'Incorreta. Nomeados pelo Presidente da República após aprovação do Senado.'),
  ('d', 'Incorreta. Tem competência expressa para rever processos disciplinares (inciso V).'),
  ('e', 'Incorreta. Possui advogados, cidadãos e membros do MP.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000261';

-- -----------------------------------------------------------------------------
-- QUESTÃO 262: MINISTÉRIO PÚBLICO (GARANTIAS - ART. 128, § 5º, I)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000262', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Funções Essenciais à Justiça', 'Ministério Público', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'São garantias dos membros do Ministério Público:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Vitaliciedade, inamovibilidade e irredutibilidade de subsídio.', 1),
  ('b', 'B', 'Estabilidade após dois anos e imunidade parlamentar.', 2),
  ('c', 'C', 'Direito de greve e sindicalização livre.', 3),
  ('d', 'D', 'Prisão especial apenas em caso de crime hediondo.', 4),
  ('e', 'E', 'Nomeação vitalícia pelo Presidente da República sem concurso.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000262';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000262' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Garantias do MP (Art. 128).', 'As garantias são: Vitaliciedade (após 2 anos), Inamovibilidade (não pode ser removido contra vontade, salvo interesse público) e Irredutibilidade de Subsídio.', 'Dica: Garantias idênticas às da Magistratura.' from public.questions q where q.public_code = 'PPCE-DC-000262';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. MP não tem imunidade parlamentar.'),
  ('c', 'Incorreta. Vedado o direito de greve (entendimento STF para segurança/justiça).'),
  ('d', 'Incorreta. Possuem prerrogativas de foro e custódia, mas não restritas a crimes hediondos.'),
  ('e', 'Incorreta. Ingresso obrigatoriamente por concurso público.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000262';

-- -----------------------------------------------------------------------------
-- QUESTÃO 263: ADVOCACIA PÚBLICA (PROCURADORIAS - ART. 132)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000263', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Funções Essenciais à Justiça', 'Advocacia Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Os Procuradores dos Estados e do Distrito Federal exercerão a representação judicial e a consultoria jurídica das respectivas unidades federadas. O ingresso na carreira dar-se-á mediante:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Indicação política do Governador.', 1),
  ('b', 'B', 'Concurso público de provas e títulos, com a participação da Ordem dos Advogados do Brasil em todas as suas fases.', 2),
  ('c', 'C', 'Escolha entre os advogados mais antigos do Estado.', 3),
  ('d', 'D', 'Processo seletivo interno entre servidores do Judiciário.', 4),
  ('e', 'E', 'Eleição direta pela categoria.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000263';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000263' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Advocacia Pública (Art. 132).', 'A regra é concurso de provas e títulos com participação da OAB.', 'Dica: Participação da OAB é obrigatória em concursos da magistratura, MP e Advocacia Pública.' from public.questions q where q.public_code = 'PPCE-DC-000263';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Viola o princípio do concurso público.'),
  ('c', 'Incorreta. Viola o princípio do concurso público.'),
  ('d', 'Incorreta. Viola o princípio do concurso público.'),
  ('e', 'Incorreta. Não existe previsão de eleição para o cargo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000263';

-- -----------------------------------------------------------------------------
-- QUESTÃO 264: DIREITOS SOCIAIS (DIREITO À SEGURANÇA - ART. 6º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000264', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Sociais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São direitos sociais previstos expressamente no Art. 6º da Constituição Federal, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Educação e saúde.', 1),
  ('b', 'B', 'Trabalho e moradia.', 2),
  ('c', 'C', 'Segurança e lazer.', 3),
  ('d', 'D', 'Liberdade de expressão e crença.', 4),
  ('e', 'E', 'Proteção à maternidade e à infância.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000264';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000264' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direitos Sociais (Art. 6º).', 'Liberdade de expressão e crença são direitos INDIVIDUAIS (Art. 5º), não sociais.', 'Dica: Mnemônico: EDU MORA ALI, TRABALHA LÁ, SAÚDE PRO TRANSPORTA SEGURANÇA NA ASSISTÊNCIA AO PRESO (Educação, Moradia, Alimentação, Trabalho, Lazer, Saúde, Proteção Maternidade/Infância, Transporte, Segurança, Assistência aos Desamparados).' from public.questions q where q.public_code = 'PPCE-DC-000264';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. São direitos sociais.'),
  ('b', 'Incorreta. São direitos sociais.'),
  ('c', 'Incorreta. São direitos sociais.'),
  ('e', 'Incorreta. São direitos sociais.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000264';

-- -----------------------------------------------------------------------------
-- QUESTÃO 265: ADMINISTRAÇÃO PÚBLICA (ESTABILIDADE - ART. 41)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000265', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Servidores Públicos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'São estáveis após três anos de efetivo exercício os servidores nomeados para cargo de provimento efetivo em virtude de concurso público. O servidor público estável só perderá o cargo:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Em virtude de sentença judicial transitada em julgado.', 1),
  ('b', 'B', 'Mediante processo administrativo em que lhe seja assegurada ampla defesa.', 2),
  ('c', 'C', 'Mediante procedimento de avaliação periódica de desempenho, na forma de lei complementar, assegurada ampla defesa.', 3),
  ('d', 'D', 'Por decisão do chefe do executivo em caso de crise financeira.', 4),
  ('e', 'E', 'As alternativas A, B e C estão corretas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000265';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000265' and qo.question_id = q.id and qo.option_key = 'e';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Perda do Cargo (Art. 41, § 1º).', 'A CF prevê 3 hipóteses: Sentença transitada em julgado, PAD e Avaliação de Desempenho (LC).', 'Dica: Estabilidade não é "eternidade", mas exige processo rigoroso.' from public.questions q where q.public_code = 'PPCE-DC-000265';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta isoladamente, pois B e C também estão certas.'),
  ('b', 'Incorreta isoladamente, pois A e C também estão certas.'),
  ('c', 'Incorreta isoladamente, pois A e B também estão certas.'),
  ('d', 'Incorreta. Exige excesso de gastos com pessoal (Art. 169) e rito específico, não decisão arbitrária.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000265';

-- -----------------------------------------------------------------------------
-- QUESTÃO 266: DIREITO CONSTITUCIONAL (NORMAS - ART. 5º, § 1º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000266', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Teoria da Constituição', 'Aplicabilidade das Normas', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'As normas definidoras dos direitos e garantias fundamentais têm:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Aplicação mediata, dependendo de lei regulamentadora.', 1),
  ('b', 'B', 'Aplicação imediata.', 2),
  ('c', 'C', 'Eficácia contida apenas.', 3),
  ('d', 'D', 'Caráter meramente exortativo.', 4),
  ('e', 'E', 'Vigência após 45 dias da promulgação.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000266';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000266' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Aplicação dos Direitos (Art. 5º, § 1º).', 'A CF é clara: direitos fundamentais têm aplicação IMEDIATA.', 'Dica: Significa que o juiz deve dar efetividade mesmo sem lei específica (em regra).' from public.questions q where q.public_code = 'PPCE-DC-000266';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. A CF diz o oposto.'),
  ('c', 'Incorreta. Existem normas de eficácia plena, contida e limitada.'),
  ('d', 'Incorreta. Elas são normas jurídicas vinculantes.'),
  ('e', 'Incorreta. Entram em vigor com a promulgação da CF.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000266';

-- -----------------------------------------------------------------------------
-- QUESTÃO 267: PODER JUDICIÁRIO (JUSTIÇA MILITAR ESTADUAL - ART. 125, § 3º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000267', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Judiciário', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A lei estadual poderá criar, mediante proposta do Tribunal de Justiça, a Justiça Militar estadual, constituída, em primeiro grau, pelos juízes de direito e pelos Conselhos de Justiça, e, em segundo grau, pelo próprio Tribunal de Justiça, ou por Tribunal de Justiça Militar nos Estados em que o efetivo militar seja superior a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '10.000 integrantes.', 1),
  ('b', 'B', '20.000 integrantes.', 2),
  ('c', 'C', '30.000 integrantes.', 3),
  ('d', 'D', '50.000 integrantes.', 4),
  ('e', 'E', '100.000 integrantes.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000267';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000267' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Justiça Militar Estadual (Art. 125).', 'O patamar é de 20.000 integrantes das forças militares estaduais.', 'Dica: Atualmente apenas SP, MG e RS possuem Tribunal de Justiça Militar (TJM).' from public.questions q where q.public_code = 'PPCE-DC-000267';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Número abaixo do exigido.'),
  ('c', 'Incorreta. Número acima do exigido.'),
  ('d', 'Incorreta. Número acima do exigido.'),
  ('e', 'Incorreta. Número muito acima.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000267';

-- -----------------------------------------------------------------------------
-- QUESTÃO 268: PODER JUDICIÁRIO (COMPETÊNCIA STF - ART. 102, I, "A")
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000268', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Judiciário', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Compete ao Supremo Tribunal Federal, precipuamente, a guarda da Constituição, cabendo-lhe processar e julgar, originariamente:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A ação direta de inconstitucionalidade de lei ou ato normativo federal ou estadual.', 1),
  ('b', 'B', 'O habeas corpus contra ato de Ministro de Estado.', 2),
  ('c', 'C', 'As causas em que a União seja parte contra um Município.', 3),
  ('d', 'D', 'O mandado de segurança contra ato do Tribunal de Contas de um Estado.', 4),
  ('e', 'E', 'Crimes comuns cometidos por Deputados Estaduais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000268';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000268' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Competência STF (Art. 102).', 'ADI de lei federal ou estadual é competência do STF.', 'Dica: Lei Municipal inconstitucional perante a CF/88 é atacada via ADPF, não ADI.' from public.questions q where q.public_code = 'PPCE-DC-000268';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É competência do STJ (Art. 105, I, "c").'),
  ('c', 'Incorreta. Competência da Justiça Federal (Art. 109, I).'),
  ('d', 'Incorreta. Competência do respectivo Tribunal de Justiça.'),
  ('e', 'Incorreta. Competência do respectivo Tribunal de Justiça.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000268';

-- -----------------------------------------------------------------------------
-- QUESTÃO 269: PODER JUDICIÁRIO (COMPETÊNCIA STJ - ART. 105)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000269', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Judiciário', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Compete ao Superior Tribunal de Justiça (STJ) processar e julgar, originariamente, nos crimes comuns:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O Presidente e o Vice-Presidente da República.', 1),
  ('b', 'B', 'Os Governadores dos Estados e do Distrito Federal.', 2),
  ('c', 'C', 'Os Ministros do Supremo Tribunal Federal.', 3),
  ('d', 'D', 'Os membros do Conselho Nacional de Justiça.', 4),
  ('e', 'E', 'Os Prefeitos Municipais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000269';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000269' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Competência STJ (Art. 105, I, "a").', 'Governadores são julgados pelo STJ em crimes comuns.', 'Dica: Crimes de responsabilidade dos Governadores são julgados por tribunal especial (leis locais/federais).' from public.questions q where q.public_code = 'PPCE-DC-000269';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Julgados pelo STF.'),
  ('c', 'Incorreta. Julgados pelo STF.'),
  ('d', 'Incorreta. Julgados pelo STF.'),
  ('e', 'Incorreta. Julgados pelo respectivo Tribunal de Justiça.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000269';

-- -----------------------------------------------------------------------------
-- QUESTÃO 270: DEFESA DO ESTADO (FORÇAS ARMADAS - ART. 142)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000270', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Forças Armadas', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'As Forças Armadas, constituídas pela Marinha, pelo Exército e pela Aeronáutica, são instituições nacionais permanentes e regulares, organizadas com base na hierarquia e na disciplina, sob a autoridade suprema do:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ministro da Defesa.', 1),
  ('b', 'B', 'Presidente da República.', 2),
  ('c', 'C', 'Comandante Geral das Forças Armadas.', 3),
  ('d', 'D', 'Chefe do Estado-Maior Conjunto.', 4),
  ('e', 'E', 'Presidente do Congresso Nacional.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000270';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000270' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Comando das Forças Armadas (Art. 142).', 'O Presidente da República é o Comandante Supremo das Forças Armadas.', 'Dica: Forças Armadas destinam-se à defesa da Pátria e garantia dos poderes.' from public.questions q where q.public_code = 'PPCE-DC-000270';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Exerce autoridade administrativa delegated pelo Presidente.'),
  ('c', 'Incorreta. Este cargo não existe com essa nomenclatura suprema.'),
  ('d', 'Incorreta. Cargo técnico-operacional.'),
  ('e', 'Incorreta. O Legislativo não comanda as Forças Armadas.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000270';

-- -----------------------------------------------------------------------------
-- QUESTÃO 271: NACIONALIDADE (BRASILEIROS NATOS - ART. 12, I)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000271', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Nacionalidade', 'Brasileiros Natos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'São brasileiros natos, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Os nascidos na República Federativa do Brasil, ainda que de pais estrangeiros, desde que estes não estejam a serviço de seu país.', 1),
  ('b', 'B', 'Os nascidos no estrangeiro, de pai brasileiro ou mãe brasileira, desde que qualquer deles esteja a serviço da República Federativa do Brasil.', 2),
  ('c', 'C', 'Os nascidos no estrangeiro, de pai brasileiro ou de mãe brasileira, desde que sejam registrados em repartição brasileira competente ou venham a residir na República Federativa do Brasil e optem, em qualquer tempo, depois de atingida a maioridade, pela nacionalidade brasileira.', 3),
  ('d', 'D', 'Os estrangeiros de qualquer nacionalidade, residentes na República Federativa do Brasil há mais de quinze anos ininterruptos e sem condenação penal, desde que requeiram a nacionalidade brasileira.', 4),
  ('e', 'E', 'Todas as alternativas acima citam brasileiros natos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000271';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000271' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Nacionalidade (Art. 12).', 'A alternativa D descreve a Naturalização Extraordinária, portanto, o indivíduo será BRASILEIRO NATURALIZADO, não nato.', 'Dica: Nato = Sangue ou Solo (com exceções). Naturalizado = Vontade + Requisitos.' from public.questions q where q.public_code = 'PPCE-DC-000271';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Hipótese de Jus Soli (Art. 12, I, a).'),
  ('b', 'Incorreta. Hipótese de Jus Sanguinis funcional (Art. 12, I, b).'),
  ('c', 'Incorreta. Hipótese de Jus Sanguinis com confirmação (Art. 12, I, c).'),
  ('e', 'Incorreta. A alternativa D é a exceção.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000271';

-- -----------------------------------------------------------------------------
-- QUESTÃO 272: DIREITOS POLÍTICOS (ALISTAMENTO - ART. 14, § 1º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000272', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos Políticos', 'Alistamento Eleitoral', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O alistamento eleitoral e o voto são obrigatórios para os maiores de dezoito anos e facultativos para, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Os analfabetos.', 1),
  ('b', 'B', 'Os maiores de setenta anos.', 2),
  ('c', 'C', 'Os maiores de dezesseis e menores de dezoito anos.', 3),
  ('d', 'D', 'Os conscritos, durante o período do serviço militar obrigatório.', 4),
  ('e', 'E', 'Todas as alternativas citam casos de voto facultativo.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000272';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000272' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direitos Políticos (Art. 14).', 'Conscritos são INALISTÁVEIS (não podem votar nem ser votados), portanto o voto não é facultativo, é PROIBIDO.', 'Dica: Inalistáveis = Estrangeiros + Conscritos.' from public.questions q where q.public_code = 'PPCE-DC-000272';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Para analfabetos o voto é facultativo.'),
  ('b', 'Incorreta. Para > 70 anos o voto é facultativo.'),
  ('c', 'Incorreta. Para jovens de 16-17 anos o voto é facultativo.'),
  ('e', 'Incorreta. A alternativa D é a exceção (proibição).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000272';

-- -----------------------------------------------------------------------------
-- QUESTÃO 273: DIREITOS POLÍTICOS (ELEGIBILIDADE - ART. 14, § 3º, VI)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000273', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos Políticos', 'Condições de Elegibilidade', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'São condições de elegibilidade, na forma da lei, a idade mínima de trinta anos para:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Presidente e Vice-Presidente da República e Senador.', 1),
  ('b', 'B', 'Governador e Vice-Governador de Estado e do Distrito Federal.', 2),
  ('c', 'C', 'Deputado Federal, Deputado Estadual ou Distrital, Prefeito, Vice-Prefeito e juiz de paz.', 3),
  ('d', 'D', 'Vereador.', 4),
  ('e', 'E', 'Ministros do STF.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000273';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000273' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Idade para Elegibilidade (Art. 14).', 'Idade de 30 anos é exigida para Governador e Vice.', 'Dica: Mnemônico Telefone: 3529-2118 (35 anos: Presidente/Senador; 30 anos: Governador; 21 anos: Deputados/Prefeito; 18 anos: Vereador).' from public.questions q where q.public_code = 'PPCE-DC-000273';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Exige 35 anos.'),
  ('c', 'Incorreta. Exige 21 anos.'),
  ('d', 'Incorreta. Exige 18 anos.'),
  ('e', 'Incorreta. Cargo não eletivo (exige 35-70 para indicação).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000273';

-- -----------------------------------------------------------------------------
-- QUESTÃO 274: PARTIDOS POLÍTICOS (AUTONOMIA - ART. 17)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000274', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Partidos Políticos', 'Disposições Gerais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'É livre a criação, fusão, incorporação e extinção de partidos políticos, resguardados a soberania nacional, o regime democrático, o pluripartidarismo, os direitos fundamentais da pessoa humana e observados os seguintes preceitos, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Caráter nacional.', 1),
  ('b', 'B', 'Proibição de recebimento de recursos financeiros de entidade ou governo estrangeiros ou de subordinação a estes.', 2),
  ('c', 'C', 'Prestação de contas à Justiça Eleitoral.', 3),
  ('d', 'D', 'Funcionamento parlamentar de acordo com a lei.', 4),
  ('e', 'E', 'Obrigatoriedade de vinculação entre as candidaturas em âmbito nacional, estadual, distrital ou municipal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000274';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000274' and qo.question_id = q.id and qo.option_key = 'e';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Partidos Políticos (Art. 17).', 'NÃO há mais obrigatoriedade de vinculação (verticalização). Os partidos têm autonomia para coligações diferentes em cada nível.', 'Dica: A verticalização caiu em 2006.' from public.questions q where q.public_code = 'PPCE-DC-000274';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. É preceito obrigatório (inciso I).'),
  ('b', 'Incorreta. É preceito obrigatório (inciso II).'),
  ('c', 'Incorreta. É preceito obrigatório (inciso III).'),
  ('d', 'Incorreta. É preceito obrigatório (inciso IV).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000274';

-- -----------------------------------------------------------------------------
-- QUESTÃO 275: DIREITOS POLÍTICOS (PERDA E SUSPENSÃO - ART. 15)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000275', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos Políticos', 'Perda e Suspensão', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'É vedada a cassação de direitos políticos, cuja perda ou suspensão só se dará nos casos de, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Incapacidade civil absoluta.', 1),
  ('b', 'B', 'Condenação criminal transitada em julgado, enquanto durarem seus efeitos.', 2),
  ('c', 'C', 'Recusa de cumprir obrigação a todos imposta ou prestação alternativa.', 3),
  ('d', 'D', 'Improbidade administrativa.', 4),
  ('e', 'E', 'Inadimplência de obrigações tributárias.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000275';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000275' and qo.question_id = q.id and qo.option_key = 'e';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Perda/Suspensão Direitos Políticos (Art. 15).', 'Dívidas tributárias não geram perda ou suspensão de direitos políticos.', 'Dica: Cassação é proibida. Só existe Perda ou Suspensão.' from public.questions q where q.public_code = 'PPCE-DC-000275';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Caso de suspensão (inciso II).'),
  ('b', 'Incorreta. Caso de suspensão (inciso III).'),
  ('c', 'Incorreta. Caso de perda (inciso IV).'),
  ('d', 'Incorreta. Caso de suspensão (inciso V).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000275';

-- -----------------------------------------------------------------------------
-- QUESTÃO 276: NACIONALIDADE (CARGOS PRIVATIVOS - ART. 12, § 3º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000276', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Nacionalidade', 'Cargos Privativos de Brasileiro Nato', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'São cargos privativos de brasileiro nato, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Presidente e Vice-Presidente da República.', 1),
  ('b', 'B', 'Presidente da Câmara dos Deputados e do Senado Federal.', 2),
  ('c', 'C', 'Ministro do Supremo Tribunal Federal.', 3),
  ('d', 'D', 'Ministro de Estado da Defesa.', 4),
  ('e', 'E', 'Governador de Estado.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000276';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000276' and qo.question_id = q.id and qo.option_key = 'e';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Cargos de Nato (Art. 12, § 3º).', 'Governador de Estado pode ser brasileiro naturalizado.', 'Dica: Mnemônico MP3.COM (Ministros do STF, Presidente/Vice, Presidente Câmara, Presidente Senado, Carreira Diplomática, Oficial das FAs, Ministro da Defesa).' from public.questions q where q.public_code = 'PPCE-DC-000276';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Privativo de nato (Inciso I).'),
  ('b', 'Incorreta. Privativo de nato (Incisos II e III).'),
  ('c', 'Incorreta. Privativo de nato (Inciso IV).'),
  ('d', 'Incorreta. Privativo de nato (Inciso VII).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000276';

-- -----------------------------------------------------------------------------
-- QUESTÃO 277: DIREITOS POLÍTICOS (INEGIBILIDADE REFLEXA - ART. 14, § 7º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000277', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos Políticos', 'Inelegibilidade', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'São inelegíveis, no território de jurisdição do titular, o cônjuge e os parentes consanguíneos ou afins, até o segundo grau ou por adoção, do Presidente da República, de Governador de Estado ou Território, do Distrito Federal, de Prefeito ou de quem os haja substituído dentro dos seis meses anteriores ao pleito, salvo se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Já detentor de mandato eletivo e candidato à reeleição.', 1),
  ('b', 'B', 'Houver renúncia do titular até um ano antes do pleito.', 2),
  ('c', 'C', 'O parente residir em outro município.', 3),
  ('d', 'D', 'O casamento houver sido dissolvido por morte.', 4),
  ('e', 'E', 'O candidato for de partido de oposição.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000277';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000277' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Inelegibilidade Reflexa (Art. 14, § 7º).', 'A única exceção à inelegibilidade reflexa é se o parente já possui mandato e vai para a reeleição.', 'Dica: Súmula Vinculante 18 (Separação no mandato não afasta inelegibilidade).' from public.questions q where q.public_code = 'PPCE-DC-000277';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A renúncia deve ser 6 meses antes (desincompatibilização), mas a regra do § 7º foca na reeleição do parente.'),
  ('c', 'Incorreta. A inelegibilidade é no território de jurisdição (ex: Estado todo para Governador).'),
  ('d', 'Incorreta. A morte dissolve, mas o divórcio não (SV 18). Porém, a ressalva literal da CF é a reeleição.'),
  ('e', 'Incorreta. Irrelevante para fins de parentesco.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000277';

-- -----------------------------------------------------------------------------
-- QUESTÃO 278: NACIONALIDADE (SÍMBOLOS - ART. 13)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000278', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização do Estado', 'Símbolos da República', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São símbolos da República Federativa do Brasil:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A bandeira, o hino, as armas e o selo nacionais.', 1),
  ('b', 'B', 'A bandeira, o hino e a imagem do Presidente.', 2),
  ('c', 'C', 'O real, a bandeira e o brasão.', 3),
  ('d', 'D', 'Brasília, a bandeira e o hino.', 4),
  ('e', 'E', 'A língua portuguesa e a bandeira.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000278';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000278' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Símbolos Nacionais (Art. 13, § 1º).', 'Os quatro símbolos são: Bandeira, Hino, Armas e Selo.', 'Dica: Estados e Municípios também podem ter seus símbolos próprios (§ 2º).' from public.questions q where q.public_code = 'PPCE-DC-000278';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Imagem do titular não é símbolo.'),
  ('c', 'Incorreta. Real é a moeda, brasão faz parte das armas mas a lista da CF é específica.'),
  ('d', 'Incorreta. Brasília é a capital.'),
  ('e', 'Incorreta. Língua portuguesa é o idioma oficial (Art. 13, caput).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000278';

-- -----------------------------------------------------------------------------
-- QUESTÃO 279: DIREITOS POLÍTICOS (MILITAR CANDIDATO - ART. 14, § 8º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000279', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos Políticos', 'Militar Candidato', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O militar alistável é elegível, atendidas as seguintes condições:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Se contar menos de dez anos de serviço, deverá afastar-se da atividade.', 1),
  ('b', 'B', 'Se contar mais de dez anos de serviço, será agregado pela autoridade superior e, se eleito, passará automaticamente, no ato da diplomação, para a inatividade.', 2),
  ('c', 'C', 'Pode candidatar-se livremente sem perder o vínculo ativo.', 3),
  ('d', 'D', 'É proibido de se candidatar em qualquer hipótese.', 4),
  ('e', 'E', 'As alternativas A e B estão corretas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000279';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000279' and qo.question_id = q.id and qo.option_key = 'e';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Militar e Elegibilidade (Art. 14, § 8º).', 'A CF divide o militar em dois grupos: < 10 anos (sai da tropa) e > 10 anos (agrega e vai para reserva se eleito).', 'Atenção: A regra vale para militares das FAs e dos Estados (PM/BM).' from public.questions q where q.public_code = 'PPCE-DC-000279';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta isoladamente (A e B estão certas).'),
  ('b', 'Incorreta isoladamente (A e B estão certas).'),
  ('c', 'Incorreta. Há restrições severas.'),
  ('d', 'Incorreta. É permitido sob condições.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000279';

-- -----------------------------------------------------------------------------
-- QUESTÃO 280: PARTIDOS POLÍTICOS (FIDELIDADE - ART. 17, § 6º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000280', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Partidos Políticos', 'Mandato Eletivo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Os deputados federais, os deputados estaduais, os deputados distritais e os vereadores que se desligarem do partido político pelo qual tenham sido eleitos perderão o mandato, salvo nos casos de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Anuência do partido político.', 1),
  ('b', 'B', 'Desvio programático ou grave discriminação política pessoal.', 2),
  ('c', 'C', 'Simples vontade de mudar de legenda.', 3),
  ('d', 'D', 'Convite do Presidente da República.', 4),
  ('e', 'E', 'Todas as alternativas justificam a mudança sem perda de mandato.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000280';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000280' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Fidelidade Partidária (Art. 17).', 'A CF e o STF admitem a "justa causa" (desvio de programa ou perseguição) para mudar de partido sem perder o mandato.', 'Dica: Regra vale apenas para cargos proporcionais (Deputados e Vereadores). Majoritários (Senador, Governador, Prefeito) podem mudar.' from public.questions q where q.public_code = 'PPCE-DC-000280';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Anuência não basta se não houver janela partidária ou justa causa.'),
  ('c', 'Incorreta. Gera perda do mandato por infidelidade.'),
  ('d', 'Incorreta. Não é causa excludente de perda.'),
  ('e', 'Incorreta. Apenas a B é causa legal de justa causa.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000280';

-- -----------------------------------------------------------------------------
-- QUESTÃO 281: PODER JUDICIÁRIO (VEDAÇÕES - ART. 95, PARÁGRAFO ÚNICO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000281', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Judiciário', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Aos juízes é vedado, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Exercer, ainda que em disponibilidade, outro cargo ou função, salvo uma de magistério.', 1),
  ('b', 'B', 'Receber, a qualquer título ou pretexto, custas ou participação em processo.', 2),
  ('c', 'C', 'Dedicarem-se à atividade político-partidária.', 3),
  ('d', 'D', 'Exercer a advocacia no juízo ou tribunal do qual se afastou, antes de decorridos três anos do afastamento do cargo por aposentadoria ou exoneração.', 4),
  ('e', 'E', 'Exercer o cargo de síndico de seu condomínio residencial.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000281';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000281' and qo.question_id = q.id and qo.option_key = 'e';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Vedações aos Magistrados (Art. 95).', 'A vedação de "função" refere-se a cargos públicos ou profissionais. O síndico de condomínio é gestão de interesse privado (embora alguns tribunais de ética debatam, a literalidade da CF não proíbe atos da vida civil privada não profissionais).', 'Dica: Quarentena de saída (Advocacia) = 3 anos.' from public.questions q where q.public_code = 'PPCE-DC-000281';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. É vedação expressa (Inciso I).'),
  ('b', 'Incorreta. É vedação expressa (Inciso II).'),
  ('c', 'Incorreta. É vedação expressa (Inciso III).'),
  ('d', 'Incorreta. É vedação expressa (Inciso V - Quarentena).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000281';

-- -----------------------------------------------------------------------------
-- QUESTÃO 282: PODER JUDICIÁRIO (AUTO-REFORMA - ART. 96)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000282', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Judiciário', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Compete privativamente aos tribunais, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Eleger seus órgãos diretivos e elaborar seus regimentos internos.', 1),
  ('b', 'B', 'Organizar suas secretarias e serviços auxiliares.', 2),
  ('c', 'C', 'Prover, na forma da lei, os cargos de juiz de carreira da respectiva jurisdição.', 3),
  ('d', 'D', 'Fixar o subsídio dos Ministros do Supremo Tribunal Federal.', 4),
  ('e', 'E', 'Conceder licença, férias e outros afastamentos a seus membros.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000282';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000282' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Autonomia dos Tribunais (Art. 96).', 'A fixação do subsídio do STF é competência do Congresso Nacional, por iniciativa conjunta dos Presidentes das Casas e do STF (Art. 48, XV).', 'Dica: Tribunais têm autonomia administrativa, mas não orçamentária absoluta para salários do topo.' from public.questions q where q.public_code = 'PPCE-DC-000282';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Competência privativa (Art. 96, I, "a").'),
  ('b', 'Incorreta. Competência privativa (Art. 96, I, "b").'),
  ('c', 'Incorreta. Competência privativa (Art. 96, I, "c").'),
  ('e', 'Incorreta. Competência privativa (Art. 96, I, "f").')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000282';

-- -----------------------------------------------------------------------------
-- QUESTÃO 283: PODER JUDICIÁRIO (JUSTIÇA DO TRABALHO - ART. 111-A)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000283', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Judiciário', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Tribunal Superior do Trabalho compõe-se de vinte e sete Ministros, escolhidos dentre brasileiros com mais de trinta e cinco e menos de setenta anos, nomeados pelo Presidente da República, após aprovação pela maioria absoluta do Senado Federal. Sobre a composição do TST, é correto afirmar:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Todos devem ser juízes de carreira.', 1),
  ('b', 'B', 'Um quinto dos membros deve ser composto por advogados e membros do MP do Trabalho.', 2),
  ('c', 'C', 'Não há participação de advogados na composição.', 3),
  ('d', 'D', 'Os membros são eleitos pelos próprios juízes do trabalho.', 4),
  ('e', 'E', 'O mandato é de apenas 4 anos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000283';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000283' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Composição TST (Art. 111-A).', 'O TST também segue a regra do Quinto Constitucional para advogados e MP do Trabalho.', 'Dica: Lembre-se do número 27 (Trabalho = 27 letras? Não, mas ajuda a decorar).' from public.questions q where q.public_code = 'PPCE-DC-000283';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Existe a cota do Quinto.'),
  ('c', 'Incorreta. Existe o Quinto Constitucional.'),
  ('d', 'Incorreta. Nomeados pelo Presidente após o Senado.'),
  ('e', 'Incorreta. O cargo é vitalício (até a expulsória).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000283';

-- -----------------------------------------------------------------------------
-- QUESTÃO 284: FUNÇÕES ESSENCIAIS À JUSTIÇA (ADVOCACIA - ART. 133)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000284', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Funções Essenciais à Justiça', 'Advocacia', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O advogado é indispensável à administração da justiça, sendo inviolável por seus atos e manifestações no exercício da profissão, nos limites da lei. Essa inviolabilidade abrange:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Crimes de calúnia e difamação apenas.', 1),
  ('b', 'B', 'Imunidade absoluta para qualquer crime cometido no fórum.', 2),
  ('c', 'C', 'Inviolabilidade por suas opiniões e palavras, protegendo a ampla defesa.', 3),
  ('d', 'D', 'Direito de não pagar impostos profissionais.', 4),
  ('e', 'E', 'Livre acesso a áreas restritas de presídios sem revista.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000284';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000284' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Inviolabilidade do Advogado (Art. 133).', 'A inviolabilidade protege a atuação técnica (palavras e manifestações) para garantir que o cliente seja defendido sem medo de represália.', 'Atenção: NÃO abrange o crime de desacato (entendimento polêmico mas cobrado).' from public.questions q where q.public_code = 'PPCE-DC-000284';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. A imunidade é para injúria e difamação (segundo o Estatuto da OAB), mas a CF fala em "atos e manifestações".'),
  ('b', 'Incorreta. Não existe imunidade penal absoluta.'),
  ('d', 'Incorreta. Não há isenção tributária.'),
  ('e', 'Incorreta. A revista em presídios é permitida por questões de segurança (STF).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000284';

-- -----------------------------------------------------------------------------
-- QUESTÃO 285: SEGURANÇA PÚBLICA (MUNICÍPIOS - ART. 144, § 8º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000285', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Os Municípios poderão constituir guardas municipais destinadas à:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Proteção de seus bens, serviços e instalações, conforme dispuser a lei.', 1),
  ('b', 'B', 'Polícia judiciária municipal.', 2),
  ('c', 'C', 'Preservação da ordem pública estadual.', 3),
  ('d', 'D', 'Substituição da Polícia Militar em rondas nos bairros.', 4),
  ('e', 'E', 'Fiscalização de crimes ambientais federais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000285';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000285' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Guardas Municipais (Art. 144, § 8º).', 'A finalidade constitucional das GMs é a proteção de bens, serviços e instalações municipais.', 'Dica: Embora o STF tenha ampliado o entendimento, na prova objetiva a literalidade do § 8º impera.' from public.questions q where q.public_code = 'PPCE-DC-000285';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Município não tem polícia judiciária.'),
  ('c', 'Incorreta. Ordem pública é dever primordial das Polícias Militares.'),
  ('d', 'Incorreta. Não há substituição legal prevista na CF.'),
  ('e', 'Incorreta. Competência de órgãos ambientais (IBAMA/Estaduais).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000285';

-- -----------------------------------------------------------------------------
-- QUESTÃO 286: PODER EXECUTIVO (CRIME DE RESPONSABILIDADE - ART. 85)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000286', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Executivo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'São crimes de responsabilidade os atos do Presidente da República que atentem contra a Constituição Federal e, especialmente, contra, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A existência da União.', 1),
  ('b', 'B', 'O livre exercício do Poder Legislativo, do Poder Judiciário, do Ministério Público e dos Poderes constitucionais das unidades da Federação.', 2),
  ('c', 'C', 'O exercício dos direitos políticos, individuais e sociais.', 3),
  ('d', 'D', 'A segurança interna do País.', 4),
  ('e', 'E', 'O cumprimento de promessas de campanha eleitoral.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000286';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000286' and qo.question_id = q.id and qo.option_key = 'e';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Crimes de Responsabilidade (Art. 85).', 'Promessas de campanha não geram crime de responsabilidade jurídico-constitucional (embora gerem desgaste político).', 'Dica: Crime de responsabilidade é infração político-administrativa.' from public.questions q where q.public_code = 'PPCE-DC-000286';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Previsto no inciso I.'),
  ('b', 'Incorreta. Previsto no inciso II.'),
  ('c', 'Incorreta. Previsto no inciso III.'),
  ('d', 'Incorreta. Previsto no inciso IV.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000286';

-- -----------------------------------------------------------------------------
-- QUESTÃO 287: PODER LEGISLATIVO (FORO POR PRERROGATIVA - ART. 53, § 1º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000287', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Os Deputados e Senadores, desde a expedição do diploma, serão submetidos a julgamento perante o:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Supremo Tribunal Federal.', 1),
  ('b', 'B', 'Superior Tribunal de Justiça.', 2),
  ('c', 'C', 'Juiz de primeira instância do local do crime.', 3),
  ('d', 'D', 'Conselho de Ética da respectiva Casa.', 4),
  ('e', 'E', 'Tribunal Regional Federal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000287';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000287' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Foro Parlamentar (Art. 53).', 'O STF julga Deputados Federais e Senadores por crimes comuns.', 'Atenção: O STF restringiu o foro apenas para crimes cometidos NO EXERCÍCIO e EM RAZÃO do mandato.' from public.questions q where q.public_code = 'PPCE-DC-000287';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. STJ julga governadores e juízes de tribunais.'),
  ('c', 'Incorreta. Regra geral para cidadãos sem foro.'),
  ('d', 'Incorreta. Julga infrações ético-disciplinares para perda de mandato.'),
  ('e', 'Incorreta. Julga juízes federais.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000287';

-- -----------------------------------------------------------------------------
-- QUESTÃO 288: PODER JUDICIÁRIO (CONSELHO NACIONAL DO MP - ART. 130-A)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000288', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Funções Essenciais à Justiça', 'Ministério Público', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O Conselho Nacional do Ministério Público (CNMP) compõe-se de 14 membros nomeados pelo Presidente da República, após aprovação pela maioria absoluta do Senado Federal, para um mandato de dois anos, admitida uma recondução. Preside o CNMP:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O Ministro da Justiça.', 1),
  ('b', 'B', 'O Procurador-Geral da República.', 2),
  ('c', 'C', 'O membro mais antigo do Ministério Público da União.', 3),
  ('d', 'D', 'Um dos membros eleitos por votação secreta entre os pares.', 4),
  ('e', 'E', 'O Presidente do STF.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000288';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000288' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Presidência CNMP (Art. 130-A, § 1º).', 'O Procurador-Geral da República preside o CNMP.', 'Dica: CNJ = Presidente do STF; CNMP = PGR.' from public.questions q where q.public_code = 'PPCE-DC-000288';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Não compõe o conselho.'),
  ('c', 'Incorreta. O cargo é nato do PGR.'),
  ('d', 'Incorreta. O cargo é nato do PGR.'),
  ('e', 'Incorreta. Preside o CNJ.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000288';

-- -----------------------------------------------------------------------------
-- QUESTÃO 289: DIREITO CONSTITUCIONAL (SUPREMACIA DA CONSTITUIÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000289', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Teoria da Constituição', 'Conceito e Classificação', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A Constituição brasileira de 1988, quanto à sua alterabilidade, é classificada pela doutrina majoritária como:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Imutável.', 1),
  ('b', 'B', 'Flexível.', 2),
  ('c', 'C', 'Semirrígida.', 3),
  ('d', 'D', 'Rígida.', 4),
  ('e', 'E', 'Super-rígida (segundo Alexandre de Moraes).', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000289';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000289' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Classificação da CF (Rígida).', 'A CF/88 é RÍGIDA pois exige um processo legislativo mais solene e difícil para alteração (PEC) do que para leis comuns.', 'Dica: Rígida = Exige quórum qualificado (3/5).' from public.questions q where q.public_code = 'PPCE-DC-000289';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Pode ser emendada.'),
  ('b', 'Incorreta. Mudaria por lei comum.'),
  ('c', 'Incorreta. Teria parte rígida e parte flexível (como a de 1824).'),
  ('e', 'Incorreta. Classificação doutrinária específica, mas a clássica majoritária é "Rígida".')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000289';

-- -----------------------------------------------------------------------------
-- QUESTÃO 290: ADMINISTRAÇÃO PÚBLICA (CONCURSO PÚBLICO - ART. 37, III)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000290', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Concurso Público', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O prazo de validade do concurso público será de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Até dois anos, prorrogável uma vez, por igual período.', 1),
  ('b', 'B', 'Impreterivelmente de dois anos.', 2),
  ('c', 'C', 'De quatro anos, sem prorrogação.', 3),
  ('d', 'D', 'Até cinco anos, conforme o edital.', 4),
  ('e', 'E', 'Indeterminado, enquanto houver vagas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000290';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000290' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Validade de Concurso (Art. 37, III).', 'Até 2 anos + Prorrogação de até 2 anos (igual período).', 'Dica: "Até" significa que pode ser 6 meses, 1 ano, etc.' from public.questions q where q.public_code = 'PPCE-DC-000290';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O prazo é máximo de 2 anos, mas pode ser menor.'),
  ('c', 'Incorreta. O prazo máximo total pode chegar a 4 anos, mas a regra cita 2+2.'),
  ('d', 'Incorreta. Prazo máximo é 2.'),
  ('e', 'Incorreta. Deve ter prazo certo em edital.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000290';

-- -----------------------------------------------------------------------------
-- QUESTÃO 291: ORDEM SOCIAL (SAÚDE - ART. 196)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000291', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Saúde', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A saúde é direito de todos e dever do Estado, garantido mediante políticas sociais e econômicas que visem à redução do risco de doença e de outros agravos e ao acesso universal e igualitário às ações e serviços para sua:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Promoção, proteção e recuperação.', 1),
  ('b', 'B', 'Venda, distribuição e lucro.', 2),
  ('c', 'C', 'Privatização e terceirização obrigatória.', 3),
  ('d', 'D', 'Restrição aos cidadãos contribuintes apenas.', 4),
  ('e', 'E', 'Fiscalização exclusivamente federal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000291';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000291' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direito à Saúde (Art. 196).', 'O tripé da saúde na CF é: Promoção, Proteção e Recuperação.', 'Dica: O acesso é UNIVERSAL (vale para todos, independente de contribuição).' from public.questions q where q.public_code = 'PPCE-DC-000291';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Saúde pública não visa lucro.'),
  ('c', 'Incorreta. A iniciativa privada é apenas complementar.'),
  ('d', 'Incorreta. Diferente da Previdência, a Saúde é para todos.'),
  ('e', 'Incorreta. O sistema é descentralizado (SUS).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000291';

-- -----------------------------------------------------------------------------
-- QUESTÃO 292: MEIO AMBIENTE (DIREITO AO MEIO AMBIENTE - ART. 225)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000292', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Meio Ambiente', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Todos têm direito ao meio ambiente ecologicamente equilibrado, bem de uso comum do povo e essencial à sadia qualidade de vida, impondo-se ao Poder Público e à coletividade o dever de defendê-lo e preservá-lo para:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'As presentes gerações apenas.', 1),
  ('b', 'B', 'As futuras gerações apenas.', 2),
  ('c', 'C', 'As presentes e futuras gerações.', 3),
  ('d', 'D', 'O desenvolvimento industrial imediato.', 4),
  ('e', 'E', 'A exploração de minérios por empresas estrangeiras.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000292';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000292' and qo.question_id = q.id and qo.option_key = 'c';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direito Ambiental (Art. 225).', 'A CF estabelece a solidariedade intergeracional (presentes e futuras).', 'Dica: O dever de preservação é do Estado E da coletividade.' from public.questions q where q.public_code = 'PPCE-DC-000292';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Exclui o futuro.'),
  ('b', 'Incorreta. Esquece o presente.'),
  ('d', 'Incorreta. Desenvolvimento deve ser sustentável.'),
  ('e', 'Incorreta. Exploração deve respeitar o equilíbrio ambiental.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000292';

-- -----------------------------------------------------------------------------
-- QUESTÃO 293: FAMÍLIA, CRIANÇA, ADOLESCENTE (PRIORIDADE - ART. 227)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000293', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Família, Criança, Adolescente, Jovem e Idoso', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'É dever da família, da sociedade e do Estado assegurar à criança, ao adolescente e ao jovem, com absoluta prioridade, o direito à vida, à saúde, à alimentação, à educação, ao lazer, à profissionalização, à cultura, à dignidade, ao respeito, à liberdade e à convivência familiar e comunitária, além de colocá-los a salvo de toda forma de, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Negligência e discriminação.', 1),
  ('b', 'B', 'Exploração e violência.', 2),
  ('c', 'C', 'Crueldade e opressão.', 3),
  ('d', 'D', 'Educação religiosa obrigatória.', 4),
  ('e', 'E', 'Todas as alternativas citam formas de proteção constitucional.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000293';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000293' and qo.question_id = q.id and qo.option_key = 'd';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Proteção Integral (Art. 227).', 'O Estado protege contra negligência, discriminação, exploração, violência, crueldade e opressão. Educação religiosa não é listada como "forma de violência" a ser evitada (embora o ensino religioso seja facultativo nas escolas públicas - Art. 210, § 1º).', 'Dica: A prioridade é ABSOLUTA.' from public.questions q where q.public_code = 'PPCE-DC-000293';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Faz parte do rol protetivo.'),
  ('b', 'Incorreta. Faz parte do rol protetivo.'),
  ('c', 'Incorreta. Faz parte do rol protetivo.'),
  ('e', 'Incorreta. A alternativa D é a estranha ao texto do Art. 227.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000293';

-- -----------------------------------------------------------------------------
-- QUESTÃO 294: SEGURANÇA PÚBLICA (POLÍCIA PENAL - REVISÃO FINAL)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000294', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A Polícia Penal, órgão de segurança pública inserido na Constituição pela Emenda Constitucional nº 104/2019, possui como atribuição precípua:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O policiamento ostensivo das ruas.', 1),
  ('b', 'B', 'A segurança dos estabelecimentos penais.', 2),
  ('c', 'C', 'A investigação de crimes de corrupção política.', 3),
  ('d', 'D', 'O controle de fronteiras terrestres.', 4),
  ('e', 'E', 'A guarda de palácios governamentais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000294';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000294' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Polícia Penal (Art. 144, § 5º-L).', 'Cabe à polícia penal a segurança dos estabelecimentos penais.', 'Atenção: Elas são vinculadas ao órgão administrador do sistema penal da unidade federativa.' from public.questions q where q.public_code = 'PPCE-DC-000294';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Atribuição da PM.'),
  ('c', 'Incorreta. Atribuição da Polícia Civil ou Federal.'),
  ('d', 'Incorreta. Atribuição da Polícia Federal.'),
  ('e', 'Incorreta. Geralmente atribuída a núcleos de segurança institucional ou PM.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000294';

-- -----------------------------------------------------------------------------
-- QUESTÃO 295: PODER EXECUTIVO (SUBSTITUIÇÃO E SUCESSÃO - ART. 80)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000295', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Executivo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Em caso de impedimento do Presidente e do Vice-Presidente, ou vacância dos respectivos cargos, serão sucessivamente chamados ao exercício da Presidência:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Presidente da Câmara dos Deputados, Presidente do Senado Federal e Presidente do Supremo Tribunal Federal.', 1),
  ('b', 'B', 'Ministro da Defesa, Ministro da Justiça e Ministro da Fazenda.', 2),
  ('c', 'C', 'Presidente do Senado Federal, Presidente da Câmara dos Deputados e Procurador-Geral da República.', 3),
  ('d', 'D', 'Presidente do STF, Presidente do Senado Federal e Presidente da Câmara dos Deputados.', 4),
  ('e', 'E', 'Líder da maioria na Câmara e Líder da maioria no Senado.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000295';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000295' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Linha de Sucessão (Art. 80).', 'A ordem é: Câmara -> Senado -> STF.', 'Dica: Pense na proximidade com o povo (Câmara) primeiro.' from public.questions q where q.public_code = 'PPCE-DC-000295';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Ministros não estão na linha de sucessão direta constitucional.'),
  ('c', 'Incorreta. Ordem invertida entre as casas legislativas.'),
  ('d', 'Incorreta. STF é o último da linha.'),
  ('e', 'Incorreta. Líderes partidários não sucedem o Presidente.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000295';

-- -----------------------------------------------------------------------------
-- QUESTÃO 296: DIREITOS FUNDAMENTAIS (HABEAS DATA - ART. 5º, LXXII)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000296', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Remédios Constitucionais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Conceder-se-á habeas data:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Para assegurar o conhecimento de informações relativas à pessoa do impetrante, constantes de registros ou bancos de dados de entidades governamentais ou de caráter público.', 1),
  ('b', 'B', 'Sempre que a falta de norma regulamentadora torne inviável o exercício dos direitos e liberdades constitucionais.', 2),
  ('c', 'C', 'Para anular ato lesivo ao patrimônio público ou de entidade de que o Estado participe.', 3),
  ('d', 'D', 'Para proteger direito líquido e certo, não amparado por habeas corpus ou habeas data.', 4),
  ('e', 'E', 'Para garantir o direito de ir e vir.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000296';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000296' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Habeas Data (Art. 5º).', 'O HD serve para conhecer ou retificar dados da própria pessoa.', 'Atenção: Exige prova da recusa administrativa (Súmula STJ 2).' from public.questions q where q.public_code = 'PPCE-DC-000296';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Descrição do Mandado de Injunção.'),
  ('c', 'Incorreta. Descrição da Ação Popular.'),
  ('d', 'Incorreta. Descrição do Mandado de Segurança.'),
  ('e', 'Incorreta. Descrição do Habeas Corpus.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000296';

-- -----------------------------------------------------------------------------
-- QUESTÃO 297: ORGANIZAÇÃO DO ESTADO (INTERVENÇÃO - ART. 34)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000297', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização do Estado', 'Intervenção Federal', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A União não intervirá nos Estados nem no Distrito Federal, exceto para:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Manter a integridade nacional.', 1),
  ('b', 'B', 'Repelir invasão estrangeira ou de uma unidade da Federação em outra.', 2),
  ('c', 'C', 'Pôr termo a grave comprometimento da ordem pública.', 3),
  ('d', 'D', 'Garantir o livre exercício de qualquer dos Poderes nas unidades da Federação.', 4),
  ('e', 'E', 'Todas as alternativas estão corretas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000297';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000297' and qo.question_id = q.id and qo.option_key = 'e';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Intervenção Federal (Art. 34).', 'A União é o ente que garante a federação em casos extremos listados no Art. 34.', 'Dica: Intervenção é medida excepcional para manter a unidade do país.' from public.questions q where q.public_code = 'PPCE-DC-000297';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta isoladamente.'),
  ('b', 'Incorreta isoladamente.'),
  ('c', 'Incorreta isoladamente.'),
  ('d', 'Incorreta isoladamente.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000297';

-- -----------------------------------------------------------------------------
-- QUESTÃO 298: PODER JUDICIÁRIO (QUANTO AO NÚMERO DE MINISTROS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000298', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização dos Poderes', 'Poder Judiciário', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Associe corretamente o Tribunal ao seu número de membros:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'STF (11 membros) / STJ (33 membros) / TST (27 membros).', 1),
  ('b', 'B', 'STF (15 membros) / STJ (27 membros) / TST (33 membros).', 2),
  ('c', 'C', 'STF (11 membros) / STJ (15 membros) / TST (20 membros).', 3),
  ('d', 'D', 'STF (13 membros) / STJ (33 membros) / TST (27 membros).', 4),
  ('e', 'E', 'STF (9 membros) / STJ (11 membros) / TST (15 membros).', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000298';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000298' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Composição dos Tribunais Superiores.', 'STF = 11 (Somos Todos Futebol); STJ = 33 (Somos Todos Jesus); TST = 27 (Trinta Sem Três).', 'Dica: Mnemônicos clássicos ajudam a nunca mais esquecer esses números.' from public.questions q where q.public_code = 'PPCE-DC-000298';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Números trocados.'),
  ('c', 'Incorreta. Números insuficientes.'),
  ('d', 'Incorreta. STF não possui 13.'),
  ('e', 'Incorreta. Números muito baixos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000298';

-- -----------------------------------------------------------------------------
-- QUESTÃO 299: SEGURANÇA PÚBLICA (POLÍCIA CIVIL - ART. 144, § 4º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000299', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Às polícias civis, dirigidas por delegados de polícia de carreira, incumbem, ressalvada a competência da União:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'As funções de polícia judiciária e a apuração de infrações penais, exceto as militares.', 1),
  ('b', 'B', 'O policiamento ostensivo e a preservação da ordem pública.', 2),
  ('c', 'C', 'A guarda das fronteiras e a repressão ao tráfico de entorpecentes.', 3),
  ('d', 'D', 'O controle de armas e munições em âmbito nacional.', 4),
  ('e', 'E', 'A execução de penas privativas de liberdade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000299';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000299' and qo.question_id = q.id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Polícia Civil (Art. 144, § 4º).', 'A PC exerce a função de polícia JUDICIÁRIA e investiga crimes comuns (não militares).', 'Dica: Investigação criminal = PC/PF.' from public.questions q where q.public_code = 'PPCE-DC-000299';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Atribuição da PM.'),
  ('c', 'Incorreta. Atribuição da PF.'),
  ('d', 'Incorreta. Atribuição do Exército/PF.'),
  ('e', 'Incorreta. Atribuição da Polícia Penal.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000299';

-- -----------------------------------------------------------------------------
-- QUESTÃO 300: REVISÃO FINAL (HIERARQUIA DAS NORMAS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000300', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Teoria da Constituição', 'Pirâmide de Kelsen', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Na pirâmide de Kelsen (hierarquia das normas), no topo do ordenamento jurídico brasileiro encontram-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'As leis complementares e ordinárias.', 1),
  ('b', 'B', 'A Constituição Federal e as Emendas Constitucionais.', 2),
  ('c', 'C', 'Os decretos presidenciais e as portarias ministeriais.', 3),
  ('d', 'D', 'As súmulas vinculantes apenas.', 4),
  ('e', 'E', 'Os tratados internacionais de comércio.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000300';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000300' and qo.question_id = q.id and qo.option_key = 'b';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Supremacia da Constituição.', 'A CF e suas Emendas (bloco de constitucionalidade) ocupam o topo da pirâmide.', 'Parabéns! Você concluiu as 300 questões de Direito Constitucional para o PPCE.' from public.questions q where q.public_code = 'PPCE-DC-000300';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. Estão no patamar infraconstitucional.'),
  ('c', 'Incorreta. Estão no patamar infralegal.'),
  ('d', 'Incorreta. Têm força vinculante mas não são "norma superior" à CF.'),
  ('e', 'Incorreta. São normas infraconstitucionais (salvo se aprovados como emenda - Art. 5º, § 3º).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000300';
