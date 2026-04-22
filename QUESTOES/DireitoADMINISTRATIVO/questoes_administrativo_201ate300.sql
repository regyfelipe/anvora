
-- -----------------------------------------------------------------------------
-- QUESTÃO 201: ORGANIZAÇÃO ADMINISTRATIVA (GOVERNANÇA E ACCOUNTABILITY)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000201', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Governança e accountability', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O dever de prestação de contas, a transparência na gestão e a responsabilização dos agentes públicos perante a sociedade referem-se ao conceito de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Accountability.', 1),
  ('b', 'B', 'Eficiência operacional.', 2),
  ('c', 'C', 'Poder hierárquico.', 3),
  ('d', 'D', 'Centralização administrativa.', 4),
  ('e', 'E', 'Autotutela.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000201';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000201' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Accountability.', 'Accountability é o conjunto de mecanismos de controle que obriga os gestores a prestar contas e serem responsabilizados.', 'Dica: Divide-se em vertical (povo -> gestor), horizontal (entre órgãos) e societal.' from public.questions q where q.public_code = 'PPCE-DA-000201';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Foca na produtividade.'),
  ('c', 'Incorreta. Refere-se à subordinação interna.'),
  ('d', 'Incorreta. Técnica de organização.'),
  ('e', 'Incorreta. Controle de legalidade dos próprios atos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000201';

-- -----------------------------------------------------------------------------
-- QUESTÃO 202: LICITAÇÕES (PNCP)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000202', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Licitações', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Segundo a Lei 14.133/2021, o sítio eletrônico oficial que centraliza a divulgação de todos os editais, atas e contratos da Administração Pública chama-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Portal Nacional de Contratações Públicas (PNCP).', 1),
  ('b', 'B', 'Sistema de Cadastramento Unificado de Fornecedores (SICAF).', 2),
  ('c', 'C', 'Portal de Transparência Federal.', 3),
  ('d', 'D', 'Diário Oficial da União Digital.', 4),
  ('e', 'E', 'ComprasNet.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000202';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000202' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Portal Nacional (PNCP).', 'O PNCP é a grande inovação da Nova Lei de Licitações para centralizar dados e transparência.', 'Dica: A publicação no PNCP é condição de eficácia do contrato.' from public.questions q where q.public_code = 'PPCE-DA-000202';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Cadastro de fornecedores.'),
  ('c', 'Incorreta. Mais amplo que licitações.'),
  ('d', 'Incorreta. Local de publicação legal, mas não o portal centralizador da nova lei.'),
  ('e', 'Incorreta. Sistema de execução de pregões do Governo Federal.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000202';

-- -----------------------------------------------------------------------------
-- QUESTÃO 203: PROCESSO ADMINISTRATIVO (SILÊNCIO ADMINISTRATIVO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000203', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Processo administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'No Direito Administrativo brasileiro, como regra geral, o silêncio da Administração diante de um requerimento do particular configura:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Um fato administrativo que autoriza o particular a recorrer ao Judiciário por omissão.', 1),
  ('b', 'B', 'Aceitação tácita automática do pedido.', 2),
  ('c', 'C', 'Indeferimento automático por falta de interesse público.', 3),
  ('d', 'D', 'Um ato administrativo vinculado de rejeição.', 4),
  ('e', 'E', 'A perda da competência da autoridade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000203';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000203' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Silêncio Administrativo.', 'O silêncio não é ato (pois falta manifestação de vontade), é um fato jurídico omissivo. Salvo lei específica em contrário, o silêncio não significa nem sim nem não, apenas demora ilegal.', 'Dica: A Lei de Liberdade Econômica trouxe exceções de "aprovação tácita" para certos alvarás, mas a REGRA GERAL continua sendo a necessidade de decisão expressa.' from public.questions q where q.public_code = 'PPCE-DA-000203';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Só em casos excepcionais previstos em lei.'),
  ('c', 'Incorreta. O silêncio não gera efeitos de conteúdo de decisão.'),
  ('d', 'Incorreta. Silêncio não é ato administrativo por essência.'),
  ('e', 'Incorreta. A competência é irrenunciável.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000203';

-- -----------------------------------------------------------------------------
-- QUESTÃO 204: ATOS ADMINISTRATIVOS (CADUCIDADE)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000204', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Extinção do ato administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A extinção de um ato administrativo em virtude de uma nova norma jurídica que torna incompatível a permanência do ato anterior denomina-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Caducidade.', 1),
  ('b', 'B', 'Cassação.', 2),
  ('c', 'C', 'Revogação.', 3),
  ('d', 'D', 'Anulação.', 4),
  ('e', 'E', 'Contraposição.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000204';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000204' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Caducidade.', 'Caducidade = Lei nova proíbe o que o ato permitia. Ex: alvará para banca de jornal em local que virou área de segurança máxima por lei nova.', 'Dica: Cassação = Culpa do particular. Revogação = Conveniência. Anulação = Ilegalidade.' from public.questions q where q.public_code = 'PPCE-DA-000204';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Quando o particular descumpre regras.'),
  ('c', 'Incorreta. Mérito administrativo.'),
  ('d', 'Incorreta. Vício de legalidade.'),
  ('e', 'Incorreta. Ato novo que faz o oposto do anterior.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000204';

-- -----------------------------------------------------------------------------
-- QUESTÃO 205: AGENTES PÚBLICOS (ESTATUTO CEARÁ - PRESCRIÇÃO DISCIPLINAR)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000205', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Agentes Públicos', 'Estatuto dos Servidores do Ceará', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'No Estatuto do Ceará (Lei 9.826/74), o prazo de prescrição para a aplicação da pena de DEMISSÃO é de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '5 anos.', 1),
  ('b', 'B', '2 anos.', 2),
  ('c', 'C', '180 dias.', 3),
  ('d', 'D', '10 anos.', 4),
  ('e', 'E', 'Imprescritível.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000205';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000205' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Prescrição Disciplinar.', 'A demissão prescreve em 5 anos. Suspensão em 2 anos. Repreensão/Multa em 180 dias.', 'Dica: Se a falta também for crime, segue o prazo da lei penal.' from public.questions q where q.public_code = 'PPCE-DA-000205';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Prazo para suspensão.'),
  ('c', 'Incorreta. Prazo para repreensão.'),
  ('d', 'Incorreta. Prazo civil comum.'),
  ('e', 'Incorreta. O poder de punir do Estado é limitado no tempo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000205';

-- -----------------------------------------------------------------------------
-- QUESTÃO 206: PODERES ADMINISTRATIVOS (TAXAS DE POLÍCIA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000206', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes administrativos', 'Poder de polícia', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O exercício efetivo ou potencial do poder de polícia permite à Administração a cobrança de qual espécie tributária?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Taxa.', 1),
  ('b', 'B', 'Imposto.', 2),
  ('c', 'C', 'Contribuição de Melhoria.', 3),
  ('d', 'D', 'Tarifa.', 4),
  ('e', 'E', 'Empréstimo Compulsório.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000206';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000206' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Taxas de Polícia.', 'O Poder de Polícia é um serviço estatal específico e divisível (ou fiscalização), o que autoriza a cobrança de TAXA.', 'Dica: Exemplo: Taxa de Licenciamento de Veículo, Taxa de Fiscalização Sanitária.' from public.questions q where q.public_code = 'PPCE-DA-000206';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Imposto não é vinculado a atividade estatal específica.'),
  ('c', 'Incorreta. Cobrada por valorização imobiliária por obra pública.'),
  ('d', 'Incorreta. Preço público por serviço voluntário.'),
  ('e', 'Incorreta. Para casos de calamidade ou investimento urgente.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000206';

-- -----------------------------------------------------------------------------
-- QUESTÃO 207: IMPROBIDADE ADMINISTRATIVA (ANPC)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000207', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Controle e responsabilização da administração', 'Lei de Improbidade Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A Lei 14.230/2021 institucionalizou a possibilidade de celebração de acordo entre o Ministério Público e o investigado para encerrar a demanda de improbidade sem julgamento, desde que haja ressarcimento integral do dano. Esse acordo é o:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Acordo de Não Persecução Cível (ANPC).', 1),
  ('b', 'B', 'Delação Premiada Cível.', 2),
  ('c', 'C', 'Termo de Ajustamento de Conduta (TAC).', 3),
  ('d', 'D', 'Leniência Administrativa.', 4),
  ('e', 'E', 'Compromisso de Cessação.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000207';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000207' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Acordo de Não Persecução Cível.', 'O ANPC é a grande mudança que permite resolver casos de improbidade de forma consensual.', 'Dica: Exige o ressarcimento do dano e o pagamento de multa.' from public.questions q where q.public_code = 'PPCE-DA-000207';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Nome não técnico para este caso.'),
  ('c', 'Incorreta. Usado em direitos difusos, mas a lei de improbidade foca no ANPC.'),
  ('d', 'Incorreta. Para empresas na Lei Anticorrupção.'),
  ('e', 'Incorreta. Usado no CADE (concorrência).')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000207';

-- -----------------------------------------------------------------------------
-- QUESTÃO 208: ORGANIZAÇÃO ADMINISTRATIVA (EFICIÊNCIA vs EFICÁCIA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000208', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Eficiência, eficácia e efetividade no setor público', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Na gestão pública, o conceito que foca na relação entre os produtos gerados (saídas) e os insumos utilizados (entradas), buscando o menor custo possível, é a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Eficiência.', 1),
  ('b', 'B', 'Eficácia.', 2),
  ('c', 'C', 'Efetividade.', 3),
  ('d', 'D', 'Economicidade pura.', 4),
  ('e', 'E', 'Transparência.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000208';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000208' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Eficiência.', 'Eficiência = Fazer mais com menos (foco no processo/meio).', 'Dica: Eficácia = Atingir a meta (foco no resultado). Efetividade = Mudar a realidade social (foco no impacto).' from public.questions q where q.public_code = 'PPCE-DA-000208';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Foca no cumprimento do objetivo.'),
  ('c', 'Incorreta. Foca no impacto social.'),
  ('d', 'Incorreta. Apenas um dos pilares da eficiência.'),
  ('e', 'Incorreta. Refere-se à publicidade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000208';

-- -----------------------------------------------------------------------------
-- QUESTÃO 209: LICITAÇÕES (CRITÉRIOS DE JULGAMENTO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000209', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Licitações', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A Lei 14.133/2021 estabelece critérios de julgamento. Qual critério é utilizado quando o Estado quer contratar quem oferece o maior retorno econômico baseado na economia gerada?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Maior Retorno Econômico.', 1),
  ('b', 'B', 'Melhor Técnica.', 2),
  ('c', 'C', 'Menor Preço.', 3),
  ('d', 'D', 'Maior Lance (Leilão).', 4),
  ('e', 'E', 'Técnica e Preço.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000209';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000209' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Maior Retorno Econômico.', 'É uma novidade para contratos de eficiência (ex: trocar lâmpadas por LED e pagar com a economia de energia).', 'Dica: A remuneração do contratado é um percentual da economia gerada.' from public.questions q where q.public_code = 'PPCE-DA-000209';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Foca na qualidade técnica.'),
  ('c', 'Incorreta. Foca apenas no custo nominal baixo.'),
  ('d', 'Incorreta. Para venda de ativos.'),
  ('e', 'Incorreta. Ponderação entre os dois fatores.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000209';

-- -----------------------------------------------------------------------------
-- QUESTÃO 210: ATOS ADMINISTRATIVOS (MOTIVO vs MOTIVAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000210', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Conceitos, requisitos, elementos, pressupostos e classificação', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A exposição por escrito dos fundamentos de fato e de direito que justificam a prática do ato administrativo chama-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Motivação.', 1),
  ('b', 'B', 'Motivo.', 2),
  ('c', 'C', 'Objeto.', 3),
  ('d', 'D', 'Finalidade secundária.', 4),
  ('e', 'E', 'Competência delegada.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000210';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000210' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Motivação.', 'Motivo = O fato em si (ex: a falta do servidor). Motivação = O texto no papel explicando o motivo.', 'Dica: O motivo é elemento do ato; a motivação é a formalização desse motivo.' from public.questions q where q.public_code = 'PPCE-DA-000210';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Motivo é o pressuposto de fato/direito, não a explicação escrita.'),
  ('c', 'Incorreta. Objeto é o que o ato decide.'),
  ('d', 'Incorreta. Finalidade é o objetivo público.'),
  ('e', 'Incorreta. Refere-se a quem pratica o ato.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000210';

-- -----------------------------------------------------------------------------
-- QUESTÃO 211: AGENTES PÚBLICOS (ESTATUTO CEARÁ - LICENÇA PRÊMIO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000211', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Agentes Públicos', 'Estatuto dos Servidores do Ceará', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'No Estatuto do Ceará, após cada quinquênio (5 anos) de efetivo serviço, o funcionário tem direito a uma licença com todos os direitos e vantagens do cargo, pelo prazo de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '3 meses.', 1),
  ('b', 'B', '1 mês.', 2),
  ('c', 'C', '6 meses.', 3),
  ('d', 'D', '15 dias.', 4),
  ('e', 'E', '1 ano.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000211';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000211' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Licença Especial (Prêmio).', 'A regra clássica do Estatuto do Ceará é de 3 meses a cada 5 anos.', 'Dica: O servidor não pode ter sofrido penas graves no período para ter direito.' from public.questions q where q.public_code = 'PPCE-DA-000211';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Prazo muito curto.'),
  ('c', 'Incorreta. Prazo de certas licenças para tratar de interesses particulares.'),
  ('d', 'Incorreta. Prazo comum de recesso.'),
  ('e', 'Incorreta. Prazo muito longo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000211';

-- -----------------------------------------------------------------------------
-- QUESTÃO 212: PODERES ADMINISTRATIVOS (PODER HIERÁRQUICO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000212', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes administrativos', 'Poder hierárquico', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O poder que permite ao superior dar ordens, fiscalizar, avocar competências e delegar funções aos seus subordinados é o:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Poder Hierárquico.', 1),
  ('b', 'B', 'Poder de Polícia.', 2),
  ('c', 'C', 'Poder Regulamentar.', 3),
  ('d', 'D', 'Poder Disciplinar.', 4),
  ('e', 'E', 'Poder Judiciário.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000212';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000212' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Poder Hierárquico.', 'É a estrutura interna de comando da Administração.', 'Dica: Não há hierarquia entre a Administração Direta e a Indireta (há apenas vinculação/controle).' from public.questions q where q.public_code = 'PPCE-DA-000212';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Foca na restrição de liberdades do particular.'),
  ('c', 'Incorreta. Foca na edição de decretos.'),
  ('d', 'Incorreta. Foca na aplicação de punições.'),
  ('e', 'Incorreta. Não é poder administrativo, é função do Estado.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000212';

-- -----------------------------------------------------------------------------
-- QUESTÃO 213: IMPROBIDADE ADMINISTRATIVA (PRESCRICAO INTERCORRENTE)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000213', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Controle e responsabilização da administração', 'Lei de Improbidade Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Interrompida a prescrição pelo ajuizamento da ação de improbidade, o prazo recomeça pela metade. Se o processo ficar parado entre marcos processuais (ex: entre a sentença e o acórdão) por mais de X anos, ocorre a prescrição intercorrente. Qual o valor de X?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '4 anos.', 1),
  ('b', 'B', '2 anos.', 2),
  ('c', 'C', '5 anos.', 3),
  ('d', 'D', '8 anos.', 4),
  ('e', 'E', '1 ano.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000213';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000213' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Prescrição Intercorrente.', 'A nova LIA prevê que se o processo demorar mais de 4 anos entre os marcos (ajuizamento -> sentença -> acórdão), ele prescreve.', 'Dica: É o prazo de 8 anos reduzido pela metade após a interrupção.' from public.questions q where q.public_code = 'PPCE-DA-000213';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Prazo muito curto.'),
  ('c', 'Incorreta. Prazo comum de prescrição civil.'),
  ('d', 'Incorreta. Esse é o prazo da prescrição principal.'),
  ('e', 'Incorreta. Prazo muito curto.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000213';

-- -----------------------------------------------------------------------------
-- QUESTÃO 214: RESPONSABILIDADE CIVIL (TEMA 1002 STF - PRESOS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000214', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Responsabilidade civil do State', 'Responsabilidade Civil do Estado', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O Estado responde objetivamente por danos causados a detentos sob sua custódia? Segundo o STF:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, pois o Estado tem o dever de guarda e incolumidade física do preso.', 1),
  ('b', 'B', 'Não, pois o preso assume o risco ao cometer o crime.', 2),
  ('c', 'C', 'Apenas se o preso for provisório.', 3),
  ('d', 'D', 'Sim, mas a responsabilidade é sempre subjetiva (exige prova de culpa).', 4),
  ('e', 'E', 'Apenas em casos de rebelião generalizada.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000214';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000214' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Responsabilidade por Presos.', 'O Estado tem o dever de custódia. Se o preso morre ou se fere, o Estado responde objetivamente.', 'Dica: O Estado só se exime se provar que a morte foi por causas naturais ou suicídio impossível de prever/evitar.' from public.questions q where q.public_code = 'PPCE-DA-000214';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Direitos fundamentais permanecem, inclusive a vida.'),
  ('c', 'Incorreta. Vale para qualquer preso sob custódia.'),
  ('d', 'Incorreta. A regra é objetiva (Art. 37, §6º).'),
  ('e', 'Incorreta. Vale para casos individuais também.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000214';

-- -----------------------------------------------------------------------------
-- QUESTÃO 215: ATOS ADMINISTRATIVOS (FATO vs ATO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000215', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Fato e ato administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Um evento da natureza, como uma chuva torrencial que destrói uma viatura policial, é classificado juridicamente como:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Fato administrativo.', 1),
  ('b', 'B', 'Ato administrativo unilateral.', 2),
  ('c', 'C', 'Contrato administrativo implícito.', 3),
  ('d', 'D', 'Silêncio administrativo.', 4),
  ('e', 'E', 'Ato da administração.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000215';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000215' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Fato Administrativo.', 'Fato Administrativo = Acontecimento que produz efeitos na Administração, mas não nasce de uma declaração de vontade (ato).', 'Dica: Morte de servidor, decurso de prazo e desastres naturais são fatos.' from public.questions q where q.public_code = 'PPCE-DA-000215';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Atos exigem vontade humana estatal.'),
  ('c', 'Incorreta. Incompatível.'),
  ('d', 'Incorreta. Silêncio é omissão humana.'),
  ('e', 'Incorreta. Atos da administração são mais amplos (incluem atos privados).')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000215';

-- -----------------------------------------------------------------------------
-- QUESTÃO 216: ORGANIZAÇÃO ADMINISTRATIVA (AGÊNCIAS EXECUTIVAS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000216', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Organização Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Uma Autarquia ou Fundação Pública que celebra um "Contrato de Gestão" com o Ministério supervisor para otimizar recursos e atingir metas, recebendo em troca maior autonomia, passa a ser qualificada como:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Agência Executiva.', 1),
  ('b', 'B', 'Agência Reguladora.', 2),
  ('c', 'C', 'Organização Social (OS).', 3),
  ('d', 'D', 'OSCIP.', 4),
  ('e', 'E', 'Empresa Pública.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000216';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000216' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Agência Executiva.', 'Agência Executiva é uma QUALIFICAÇÃO (título) dada a autarquias/fundações já existentes.', 'Dica: Diferente da Agência Reguladora, que já nasce com essa função de fiscalizar mercados.' from public.questions q where q.public_code = 'PPCE-DA-000216';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Criadas para regular setores específicos (ex: ANATEL).'),
  ('c', 'Incorreta. Entidades privadas do terceiro setor.'),
  ('d', 'Incorreta. Entidades privadas do terceiro setor.'),
  ('e', 'Incorreta. Pessoa jurídica de direito privado da Indireta.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000216';

-- -----------------------------------------------------------------------------
-- QUESTÃO 217: LICITAÇÕES (AGENTE DE CONTRATAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000217', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Licitações', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Na Lei 14.133/2021, a pessoa designada pela autoridade superior para tomar decisões, acompanhar o trâmite da licitação e impulsionar o procedimento chama-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Agente de Contratação.', 1),
  ('b', 'B', 'Pregoeiro.', 2),
  ('c', 'C', 'Comissão de Licitação.', 3),
  ('d', 'D', 'Fiscal de Contrato.', 4),
  ('e', 'E', 'Ordenador de Despesas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000217';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000217' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Agente de Contratação.', 'A nova lei foca na figura única do Agente de Contratação (que deve ser servidor efetivo).', 'Dica: No pregão, ele ainda pode ser chamado de pregoeiro.' from public.questions q where q.public_code = 'PPCE-DA-000217';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Nome específico para a modalidade pregão.'),
  ('c', 'Incorreta. A regra agora é o agente individual (comissões são para casos especiais).'),
  ('d', 'Incorreta. Atua após a assinatura do contrato.'),
  ('e', 'Incorreta. Quem autoriza o pagamento.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000217';

-- -----------------------------------------------------------------------------
-- QUESTÃO 218: PROCESSO ADMINISTRATIVO (ANULAÇÃO DE OFÍCIO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000218', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Processo administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O princípio que autoriza a própria Administração Pública a anular seus atos quando eivados de vícios de legalidade, sem necessidade de intervenção do Judiciário, é o da:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Autotutela.', 1),
  ('b', 'B', 'Publicidade.', 2),
  ('c', 'C', 'Razoabilidade.', 3),
  ('d', 'D', 'Hierarquia.', 4),
  ('e', 'E', 'Contraditório.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000218';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000218' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Autotutela.', 'Autotutela = Controle interno (Súmula 473 do STF).', 'Dica: A Administração anula (ilegalidade) ou revoga (conveniência).' from public.questions q where q.public_code = 'PPCE-DA-000218';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Dever de transparência.'),
  ('c', 'Incorreta. Limite ao agir administrativo.'),
  ('d', 'Incorreta. Estrutura de subordinação.'),
  ('e', 'Incorreta. Direito de defesa.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000218';

-- -----------------------------------------------------------------------------
-- QUESTÃO 219: ATOS ADMINISTRATIVOS (CONTRAPOSIÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000219', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Extinção do ato administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Quando um ato administrativo é extinto porque a Administração emite um NOVO ATO que possui efeitos opostos ao anterior (ex: a nomeação é extinta pela exoneração), ocorre a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Contraposição (ou Derrubada).', 1),
  ('b', 'B', 'Cassação.', 2),
  ('c', 'C', 'Revogação parcial.', 3),
  ('d', 'D', 'Anulação retroativa.', 4),
  ('e', 'E', 'Caducidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000219';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000219' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Contraposição.', 'Contraposição: O segundo ato "mata" o primeiro por ser logicamente incompatível.', 'Dica: Exoneração vs Nomeação. Aposentadoria vs Atividade.' from public.questions q where q.public_code = 'PPCE-DA-000219';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Culpa do particular.'),
  ('c', 'Incorreta. Retirada por mérito.'),
  ('d', 'Incorreta. Retirada por vício.'),
  ('e', 'Incorreta. Retirada por lei nova.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000219';

-- -----------------------------------------------------------------------------
-- QUESTÃO 220: AGENTES PÚBLICOS (ESTATUTO CEARÁ - PAD)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000220', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Agentes Públicos', 'Estatuto dos Servidores do Ceará', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'No Ceará, o Processo Administrativo Disciplinar (PAD) deve ser concluído no prazo de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '90 dias, prorrogáveis por mais 30.', 1),
  ('b', 'B', '60 dias, improrrogáveis.', 2),
  ('c', 'C', '30 dias.', 3),
  ('d', 'D', '1 ano.', 4),
  ('e', 'E', '120 dias.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000220';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000220' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Prazo do PAD (Ceará).', 'O Estatuto do Ceará prevê 90 dias + 30 dias de prorrogação.', 'Dica: Importante não confundir com o prazo da Lei 8.112 (Federal), que é 60+60.' from public.questions q where q.public_code = 'PPCE-DA-000220';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Prazo federal.'),
  ('c', 'Incorreta. Prazo comum de sindicância.'),
  ('d', 'Incorreta. Prazo muito longo.'),
  ('e', 'Incorreta. Prazo total possível em outros regimes.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000220';

-- -----------------------------------------------------------------------------
-- QUESTÃO 221: PODERES ADMINISTRATIVOS (PODER DE POLÍCIA - ATRIBUTOS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000221', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes administrativos', 'Poder de polícia', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Qual atributo do Poder de Polícia permite que a Administração utilize a força física (se necessário) para compelir o particular a cumprir uma ordem, sem precisar de ordem judicial?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Coercibilidade.', 1),
  ('b', 'B', 'Discricionariedade.', 2),
  ('c', 'C', 'Tipicidade.', 3),
  ('d', 'D', 'Impessoalidade.', 4),
  ('e', 'E', 'Moralidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000221';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000221' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Coercibilidade.', 'Coercibilidade é a possibilidade de uso da força (coação física).', 'Dica: A Autoexecutoriedade é o gênero que permite agir sem juiz. A Coercibilidade é a face "forçada" desse poder.' from public.questions q where q.public_code = 'PPCE-DA-000221';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Margem de escolha da administração.'),
  ('c', 'Incorreta. Previsão em lei (mais ligada ao direito penal).'),
  ('d', 'Incorreta. Princípio constitucional.'),
  ('e', 'Incorreta. Princípio constitucional.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000221';

-- -----------------------------------------------------------------------------
-- QUESTÃO 222: IMPROBIDADE ADMINISTRATIVA (LITISPENDÊNCIA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000222', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Controle e responsabilização da administração', 'Lei de Improbidade Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Se um fato de improbidade também for processado na Lei Anticorrupção (Lei 12.846), a Lei 8.429/92 veda:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A bis in idem nas sanções (não se pode aplicar a mesma punição duas vezes pelo mesmo fato).', 1),
  ('b', 'B', 'Que o processo de improbidade ocorra.', 2),
  ('c', 'C', 'Que o Ministério Público atue.', 3),
  ('d', 'D', 'O ressarcimento ao erário.', 4),
  ('e', 'E', 'A condenação criminal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000222';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000222' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Vedação ao Bis in Idem.', 'A nova lei de improbidade proíbe expressamente que se aplique a mesma sanção por leis diferentes sobre o mesmo fato.', 'Dica: Deve haver compensação entre as penas.' from public.questions q where q.public_code = 'PPCE-DA-000222';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O processo pode ocorrer, mas as penas devem ser coordenadas.'),
  ('c', 'Incorreta. O MP é o autor legítimo.'),
  ('d', 'Incorreta. O ressarcimento é sempre devido.'),
  ('e', 'Incorreta. Esferas independentes.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000222';

-- -----------------------------------------------------------------------------
-- QUESTÃO 223: ORGANIZAÇÃO ADMINISTRATIVA (ADMINISTRAÇÃO DIRETA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000223', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Organização Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A Secretaria de Administração Penitenciária (SAP) do Ceará é um exemplo de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Órgão da Administração Direta.', 1),
  ('b', 'B', 'Autarquia de regime especial.', 2),
  ('c', 'C', 'Fundação Pública.', 3),
  ('d', 'D', 'Entidade Paraestatal.', 4),
  ('e', 'E', 'Empresa de Economia Mista.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000223';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000223' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Órgão Público.', 'Secretarias e Ministérios são órgãos (sem personalidade jurídica própria), integrantes da Administração Direta.', 'Dica: A Polícia Penal está inserida na estrutura da SAP.' from public.questions q where q.public_code = 'PPCE-DA-000223';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Autarquias têm CNPJ próprio e autonomia.'),
  ('c', 'Incorreta. Fundações têm patrimônio personalizado.'),
  ('d', 'Incorreta. Terceiro setor.'),
  ('e', 'Incorreta. Estatais.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000223';

-- -----------------------------------------------------------------------------
-- QUESTÃO 224: LICITAÇÕES (INEXIGIBILIDADE - ARTISTAS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000224', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Licitações', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A contratação de profissional do setor artístico, diretamente ou por meio de empresário exclusivo, desde que consagrado pela crítica especializada ou pela opinião pública, é caso de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Inexigibilidade de licitação.', 1),
  ('b', 'B', 'Dispensa de licitação por valor.', 2),
  ('c', 'C', 'Licitação dispensada.', 3),
  ('d', 'D', 'Pregão eletrônico obrigatório.', 4),
  ('e', 'E', 'Chamamento público.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000224';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000224' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Inexigibilidade.', 'Inexigibilidade = Inviabilidade de competição. Como o artista é único, não há como comparar preços de forma objetiva.', 'Dica: O empresário deve ser EXCLUSIVO (não pode ser apenas para aquele evento).' from public.questions q where q.public_code = 'PPCE-DA-000224';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Dispensa é para quando a competição é possível, mas a lei autoriza não fazer.'),
  ('c', 'Incorreta. Reservado para alienação de bens.'),
  ('d', 'Incorreta. Incompatível com serviços singulares.'),
  ('e', 'Incorreta. Procedimento de seleção, não contratação direta.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000224';

-- -----------------------------------------------------------------------------
-- QUESTÃO 225: ATOS ADMINISTRATIVOS (ATO COMPOSTO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000225', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Atos administrativos simples, complexos e compostos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O ato administrativo que resulta da manifestação de um único órgão, mas cuja exequibilidade depende da aprovação ou homologação de um superior (ato instrumental), é classificado como:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ato Composto.', 1),
  ('b', 'B', 'Ato Complexo.', 2),
  ('c', 'C', 'Ato Simples.', 3),
  ('d', 'D', 'Ato Plúrimo.', 4),
  ('e', 'E', 'Ato Colegiado.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000225';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000225' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Ato Composto.', 'Ato Composto = 1 órgão + 1 órgão que ratifica (vontade principal + vontade acessória).', 'Dica: Ato Complexo = 2 ou mais órgãos se fundem para criar um único ato (vontades no mesmo nível). Ex: Aposentadoria (Órgão de origem + TCU).' from public.questions q where q.public_code = 'PPCE-DA-000225';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Exige fusão de vontades de órgãos diferentes para formar o ato.'),
  ('c', 'Incorreta. Um só órgão basta.'),
  ('d', 'Incorreta. Vários destinatários.'),
  ('e', 'Incorreta. Decidido por um conselho.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000225';


-- -----------------------------------------------------------------------------
-- QUESTÃO 226: LICITAÇÕES (REGISTRO DE PREÇOS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000226', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Licitações', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O procedimento auxiliar que visa registrar preços para contratações futuras, permitindo que a Administração adquira bens ou serviços sem obrigatoriedade de compra imediata, denomina-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sistema de Registro de Preços (SRP).', 1),
  ('b', 'B', 'Credenciamento.', 2),
  ('c', 'C', 'Pré-qualificação.', 3),
  ('d', 'D', 'Catálogo Eletrônico.', 4),
  ('e', 'E', 'Leilão reverso.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000226';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000226' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Sistema de Registro de Preços.', 'O SRP resulta na "Ata de Registro de Preços", que tem validade de até 1 ano (prorrogável por mais 1 na nova lei).', 'Dica: Muito usado para compras repetitivas de materiais de escritório ou alimentação.' from public.questions q where q.public_code = 'PPCE-DA-000226';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Seleção de prestadores para serviços paralelos (ex: médicos).'),
  ('c', 'Incorreta. Verificação prévia de requisitos técnicos.'),
  ('d', 'Incorreta. Ferramenta de consulta.'),
  ('e', 'Incorreta. Fase do pregão.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000226';

-- -----------------------------------------------------------------------------
-- QUESTÃO 227: CONTRATOS ADMINISTRATIVOS (REAJUSTE vs REVISÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000227', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Contratos administrativos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A recomposição do equilíbrio econômico-financeiro do contrato em razão de fatos imprevisíveis ou previsíveis de consequências incalculáveis (Teoria da Imprevisão) denomina-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Revisão (ou Realinhamento).', 1),
  ('b', 'B', 'Reajuste em sentido estrito.', 2),
  ('c', 'C', 'Atualização monetária.', 3),
  ('d', 'D', 'Repactuação.', 4),
  ('e', 'E', 'Aditamento unilateral.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000227';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000227' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Revisão Contratual.', 'A Revisão decorre de fatos extraordinários (ex: pandemia, guerra). O Reajuste decorre da inflação comum (índices previstos no edital).', 'Dica: Reajuste é automático (anual); Revisão exige prova do desequilíbrio.' from public.questions q where q.public_code = 'PPCE-DA-000227';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Para variação de custos ordinários/inflação.'),
  ('c', 'Incorreta. Apenas correção de valor nominal.'),
  ('d', 'Incorreta. Modalidade de reajuste para serviços de mão de obra exclusiva.'),
  ('e', 'Incorreta. Alteração de objeto ou valor pelo Estado.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000227';

-- -----------------------------------------------------------------------------
-- QUESTÃO 228: AGENTES PÚBLICOS (ACUMULAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000228', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Agentes Públicos', 'Acumulação de cargos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Um Policial Penal do Ceará, aprovado em concurso para Professor da Universidade Estadual, poderá acumular os dois cargos?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, desde que haja compatibilidade de horários, por ser o cargo de policial penal considerado técnico/científico.', 1),
  ('b', 'B', 'Não, pois a atividade policial exige dedicação exclusiva absoluta.', 2),
  ('c', 'C', 'Sim, mas deve abrir mão de um dos salários.', 3),
  ('d', 'D', 'Apenas se o cargo de professor for em escola de ensino fundamental.', 4),
  ('e', 'E', 'Apenas se houver autorização expressa do Governador.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000228';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000228' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Acumulação de Cargos.', 'Cargos técnicos ou científicos (como os policiais) podem ser acumulados com um de professor (Art. 37, XVI, b da CF).', 'Dica: A compatibilidade de horários é requisito indispensável.' from public.questions q where q.public_code = 'PPCE-DA-000228';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A dedicação exclusiva não impede a acumulação constitucionalmente permitida.'),
  ('c', 'Incorreta. Pode receber os dois, respeitado o teto constitucional.'),
  ('d', 'Incorreta. Pode ser em qualquer nível de ensino.'),
  ('e', 'Incorreta. A lei/constituição já autoriza.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000228';

-- -----------------------------------------------------------------------------
-- QUESTÃO 229: PODERES ADMINISTRATIVOS (ABUSO - DESVIO DE FINALIDADE)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000229', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes administrativos', 'Uso e abuso do poder', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Quando um superior remove um subordinado de uma unidade para outra apenas como forma de punição pessoal, sem motivação de interesse público real, ocorre:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Desvio de Finalidade (vício no elemento finalidade).', 1),
  ('b', 'B', 'Excesso de Poder (vício no elemento competência).', 2),
  ('c', 'C', 'Exercício regular do poder hierárquico.', 3),
  ('d', 'D', 'Vício de forma insanável.', 4),
  ('e', 'E', 'Crime de abuso de autoridade, mas ato administrativo válido.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000229';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000229' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Desvio de Finalidade.', 'O superior tem competência para remover, mas usou o ato para fim diverso do interesse público (punição não é finalidade de remoção).', 'Dica: Remoção-punição é o exemplo clássico de desvio de finalidade.' from public.questions q where q.public_code = 'PPCE-DA-000229';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Excesso é quando o agente NÃO tem competência para o ato.'),
  ('c', 'Incorreta. O poder hierárquico não autoriza perseguições.'),
  ('d', 'Incorreta. O vício é no objetivo/fim.'),
  ('e', 'Incorreta. O ato é NULO (vício de legalidade).')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000229';

-- -----------------------------------------------------------------------------
-- QUESTÃO 230: RESPONSABILIDADE CIVIL (CULPA DA VÍTIMA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000230', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Responsabilidade civil do State', 'Responsabilidade Civil do Estado', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Um viatura policial em perseguição atinge um pedestre que atravessou a rua fora da faixa e com o sinal fechado para ele, de forma súbita e imprevisível. Nesse caso, a responsabilidade do Estado será:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Excluída, por se tratar de culpa exclusiva da vítima.', 1),
  ('b', 'B', 'Objetiva e integral, devendo indenizar de qualquer forma.', 2),
  ('c', 'C', 'Atenuada, com repartição do dano (culpa concorrente).', 3),
  ('d', 'D', 'Subjetiva, exigindo prova de que o policial queria atropelar.', 4),
  ('e', 'E', 'Transferida para o policial pessoalmente.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000230';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000230' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Culpa Exclusiva da Vítima.', 'A Teoria do Risco Administrativo admite excludentes. Se a vítima causou sozinha o dano, o Estado não paga.', 'Dica: Se ambos erraram, a responsabilidade é atenuada (dividida).' from public.questions q where q.public_code = 'PPCE-DA-000230';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Risco Integral não é a regra geral no Brasil.'),
  ('c', 'Incorreta. O enunciado descreve culpa exclusiva (pedestre atravessou no vermelho e fora da faixa).'),
  ('d', 'Incorreta. A regra permanece objetiva, mas a excludente remove o dever de indenizar.'),
  ('e', 'Incorreta. O Estado é quem figura no polo passivo inicialmente.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000230';

-- -----------------------------------------------------------------------------
-- QUESTÃO 231: ORGANIZAÇÃO ADMINISTRATIVA (CONSÓRCIOS PÚBLICOS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000231', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Organização Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Quando dois ou mais entes federados (ex: Estado do Ceará e Município de Fortaleza) se unem para gerir serviços públicos comuns, criando uma nova pessoa jurídica, temos um:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Consórcio Público.', 1),
  ('b', 'B', 'Convênio Administrativo.', 2),
  ('c', 'C', 'Parceria Público-Privada (PPP).', 3),
  ('d', 'D', 'Contrato de Rateio.', 4),
  ('e', 'E', 'Acordo de Cooperação Técnica.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000231';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000231' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Consórcio Público.', 'O consórcio (Lei 11.107) cria uma associação pública (autarquia) ou pessoa de direito privado para gestão comum.', 'Dica: Convênio não cria nova pessoa jurídica; consórcio sim.' from public.questions q where q.public_code = 'PPCE-DA-000231';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Cooperação mútua sem criar nova entidade.'),
  ('c', 'Incorreta. Entre o Estado e uma empresa privada.'),
  ('d', 'Incorreta. Instrumento financeiro do consórcio.'),
  ('e', 'Incorreta. Instrumento de troca de conhecimento.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000231';

-- -----------------------------------------------------------------------------
-- QUESTÃO 232: AGENTES PÚBLICOS (ESTÁGIO PROBATÓRIO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000232', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Agentes Públicos', 'Estatuto dos Servidores do Ceará', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O período de Estágio Probatório do servidor público no Ceará, segundo a Constituição Federal e o entendimento atual, é de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '3 anos.', 1),
  ('b', 'B', '2 anos.', 2),
  ('c', 'C', '5 anos.', 3),
  ('d', 'D', '1 ano.', 4),
  ('e', 'E', '6 meses.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000232';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000232' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Estágio Probatório.', 'Embora alguns estatutos antigos falem em 2 anos, a CF/88 (após EC 19/98) fixou em 3 anos para a estabilidade, e o STF unificou o estágio probatório nesse mesmo prazo.', 'Dica: No estágio avalia-se assiduidade, disciplina, capacidade e produtividade.' from public.questions q where q.public_code = 'PPCE-DA-000232';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Era o prazo original na CF/88.'),
  ('c', 'Incorreta. Prazo muito longo.'),
  ('d', 'Incorreta. Prazo muito curto.'),
  ('e', 'Incorreta. Prazo muito curto.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000232';

-- -----------------------------------------------------------------------------
-- QUESTÃO 233: ATOS ADMINISTRATIVOS (IMPERATIVIDADE)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000233', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Validade, eficácia e autoexecutoriedade do ato administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O atributo do ato administrativo que impõe a obrigação ao particular independentemente da concordância deste denomina-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Imperatividade.', 1),
  ('b', 'B', 'Presunção de Legitimidade.', 2),
  ('c', 'C', 'Autoexecutoriedade.', 3),
  ('d', 'D', 'Tipicidade.', 4),
  ('e', 'E', 'Moralidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000233';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000233' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Imperatividade.', 'Imperatividade = O Estado manda e você obedece (soberania).', 'Dica: Nem todos os atos são imperativos (ex: atos enunciativos ou de consentimento).' from public.questions q where q.public_code = 'PPCE-DA-000233';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Presume-se que o ato é verdadeiro e legal até prova em contrário.'),
  ('c', 'Incorreta. Execução sem juiz.'),
  ('d', 'Incorreta. Previsão legal do ato.'),
  ('e', 'Incorreta. Princípio ético.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000233';

-- -----------------------------------------------------------------------------
-- QUESTÃO 234: SERVIÇOS PÚBLICOS (CONCESSÃO vs PERMISSÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000234', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Delegação de serviços públicos a terceiros', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A delegação de serviço público formalizada por um ATO ADMINISTRATIVO UNILATERAL, discricionário e precário, denomina-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Permissão de serviço público.', 1),
  ('b', 'B', 'Concessão de serviço público.', 2),
  ('c', 'C', 'Parceria Público-Privada.', 3),
  ('d', 'D', 'Autorização de serviço público.', 4),
  ('e', 'E', 'Convênio.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000234';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000234' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Permissão.', 'A Permissão é formalizada por ato (embora a doutrina moderna e a lei exijam contrato de adesão após licitação, na teoria clássica ela é ato unilateral).', 'Dica: Concessão é sempre por CONTRATO.' from public.questions q where q.public_code = 'PPCE-DA-000234';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Concessão é contrato bilateral.'),
  ('c', 'Incorreta. Contrato complexo.'),
  ('d', 'Incorreta. Focada em interesses do particular, precária.'),
  ('e', 'Incorreta. Acordo de cooperação.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000234';

-- -----------------------------------------------------------------------------
-- QUESTÃO 235: LICITAÇÕES (CREDENCIAMENTO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000235', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Licitações', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O procedimento auxiliar no qual a Administração convoca todos os interessados que preencham requisitos para prestar um serviço (ex: laboratórios de exames), contratando todos os habilitados sem exclusão, é o:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Credenciamento.', 1),
  ('b', 'B', 'Registro de Preços.', 2),
  ('c', 'C', 'Diálogo Competitivo.', 3),
  ('d', 'D', 'Concurso.', 4),
  ('e', 'E', 'Leilão.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000235';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000235' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Credenciamento.', 'Credenciamento é para quando a Administração quer "quem quiser fazer pelo preço fixado". Não há disputa entre eles.', 'Dica: Muito comum na saúde e serviços técnicos repetitivos.' from public.questions q where q.public_code = 'PPCE-DA-000235';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Para registrar preços para compras futuras.'),
  ('c', 'Incorreta. Modalidade de licitação com disputa.'),
  ('d', 'Incorreta. Para trabalhos artísticos.'),
  ('e', 'Incorreta. Para venda de bens.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000235';

-- -----------------------------------------------------------------------------
-- QUESTÃO 236: CONTRATOS ADMINISTRATIVOS (RESCISÃO UNILATERAL)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000236', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Contratos administrativos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A cláusula exorbitante que permite à Administração encerrar o contrato antes do prazo por razões de interesse público, devidamente justificado, sem culpa do contratado, denomina-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Rescisão Unilateral por Razões de Interesse Público.', 1),
  ('b', 'B', 'Rescisão por Sanção.', 2),
  ('c', 'C', 'Distrato consensual.', 3),
  ('d', 'D', 'Exceção do Contrato não Cumprido.', 4),
  ('e', 'E', 'Caducidade contratual.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000236';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000236' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Rescisão Unilateral.', 'O Estado pode encerrar o contrato se for melhor para o povo, mas deve indenizar o contratado pelos danos sofridos.', 'Dica: É uma manifestação da supremacia do interesse público.' from public.questions q where q.public_code = 'PPCE-DA-000236';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Quando a empresa erra.'),
  ('c', 'Incorreta. Acordo de ambas as partes.'),
  ('d', 'Incorreta. Direito de não cumprir se o outro não cumpre (limitado no setor público).'),
  ('e', 'Incorreta. Extinção da concessão por erro da empresa.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000236';

-- -----------------------------------------------------------------------------
-- QUESTÃO 237: AGENTES PÚBLICOS (POLÍCIA PENAL - REQUISITOS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000237', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Agentes Públicos', 'Estatuto dos Servidores do Ceará', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Conforme a Lei Estadual 14.852/2009 (com redação atual), o cargo de Policial Penal do Ceará exige:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Nível Superior de escolaridade.', 1),
  ('b', 'B', 'Nível Médio apenas.', 2),
  ('c', 'C', 'Nível Fundamental.', 3),
  ('d', 'D', 'Apenas CNH categoria D.', 4),
  ('e', 'E', 'Idade mínima de 25 anos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000237';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000237' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Escolaridade Policial Penal.', 'A carreira foi reestruturada para exigir nível superior completo.', 'Dica: Importante estar atento às leis estaduais recentes de valorização da carreira.' from public.questions q where q.public_code = 'PPCE-DA-000237';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Era a exigência antiga.'),
  ('c', 'Incorreta. Incompatível.'),
  ('d', 'Incorreta. CNH geralmente é exigida (Cat B), mas nível superior é a base.'),
  ('e', 'Incorreta. Idade mínima geral é 18 anos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000237';

-- -----------------------------------------------------------------------------
-- QUESTÃO 238: PODERES ADMINISTRATIVOS (PODER REGULAMENTAR)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000238', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes administrativos', 'Poder regulamentar', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O decreto expedido pelo Chefe do Executivo que visa dar fiel execução à lei, não podendo criar direitos ou obrigações novos, é um exemplo de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Decreto Regulamentar (ou de Execução).', 1),
  ('b', 'B', 'Decreto Autônomo.', 2),
  ('c', 'C', 'Medida Provisória.', 3),
  ('d', 'D', 'Lei Delegada.', 4),
  ('e', 'E', 'Instrução Normativa.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000238';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000238' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Decreto Regulamentar.', 'O Decreto Regulamentar é subordinado à lei. Ele serve para detalhar como a lei será cumprida.', 'Dica: Se o decreto for além da lei, ele é ilegal (excesso de poder regulamentar).' from public.questions q where q.public_code = 'PPCE-DA-000238';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Age no silêncio da lei (só para organização interna e extinção de cargos vagos).'),
  ('c', 'Incorreta. Tem força de lei.'),
  ('d', 'Incorreta. Elaborada pelo executivo com autorização legislativa.'),
  ('e', 'Incorreta. Expedida por ministros/secretários, não pelo chefe do executivo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000238';

-- -----------------------------------------------------------------------------
-- QUESTÃO 239: RESPONSABILIDADE CIVIL (DANO POR OMISSÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000239', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Responsabilidade civil do State', 'Responsabilidade Civil do Estado', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Como regra geral defendida pela doutrina majoritária e STJ, a responsabilidade civil do Estado por danos decorrentes de OMISSÃO GENÉRICA (ex: falta de policiamento que permitiu um furto comum) é:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Subjetiva (Teoria da Culpa do Serviço - Faute du Service).', 1),
  ('b', 'B', 'Objetiva (Teoria do Risco Administrativo).', 2),
  ('c', 'C', 'Integral (Sem excludentes).', 3),
  ('d', 'D', 'Inexistente em qualquer hipótese.', 4),
  ('e', 'E', 'Solidária com o criminoso.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000239';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000239' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Omissão Administrativa.', 'Na omissão genérica, deve-se provar que o Estado falhou no dever de agir (negligência, imprudência ou imperícia do serviço).', 'Dica: Se a omissão for ESPECÍFICA (o Estado tinha o dever legal de evitar aquele dano exato, ex: morte sob custódia), a responsabilidade é objetiva.' from public.questions q where q.public_code = 'PPCE-DA-000239';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Reservada para atos comissivos ou omissões específicas.'),
  ('c', 'Incorreta. Apenas danos nucleares/ambientais.'),
  ('d', 'Incorreta. Existe se provada a falha.'),
  ('e', 'Incorreta. O Estado responde sozinho se o serviço falhou.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000239';

-- -----------------------------------------------------------------------------
-- QUESTÃO 240: ORGANIZAÇÃO ADMINISTRATIVA (AUTARQUIAS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000240', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Organização Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Sobre as Autarquias, assinale a alternativa correta:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'São criadas por lei específica e possuem personalidade jurídica de direito público.', 1),
  ('b', 'B', 'São autorizadas por lei e possuem personalidade jurídica de direito privado.', 2),
  ('c', 'C', 'Não possuem autonomia financeira, dependendo do orçamento do ente instituidor.', 3),
  ('d', 'D', 'Seus bens são penhoráveis para pagamento de dívidas.', 4),
  ('e', 'E', 'Subordinam-se hierarquicamente ao Ministério ou Secretaria correspondente.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000240';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000240' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Características da Autarquia.', 'As autarquias são o "Estado em miniatura" (Direito Público, Bens Impenhoráveis, Criadas por Lei).', 'Dica: Ex: DETRAN, INSS, Universidades Públicas.' from public.questions q where q.public_code = 'PPCE-DA-000240';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Definição de Empresa Pública/SEM.'),
  ('c', 'Incorreta. Possuem patrimônio e orçamento próprios.'),
  ('d', 'Incorreta. Seus bens são públicos e impenhoráveis.'),
  ('e', 'Incorreta. Não há hierarquia, apenas vinculação (controle finalístico).')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000240';

-- -----------------------------------------------------------------------------
-- QUESTÃO 241: ESTATUTO CEARÁ (SUBSTITUIÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000241', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Agentes Públicos', 'Estatuto dos Servidores do Ceará', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'No Estatuto do Ceará, quando um funcionário é designado para exercer cargo de chefia em substituição ao titular ausente, ele terá direito ao vencimento do cargo substituído se a substituição for superior a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '10 dias.', 1),
  ('b', 'B', '30 dias.', 2),
  ('c', 'C', '5 dias.', 3),
  ('d', 'D', '2 dias.', 4),
  ('e', 'E', '15 dias.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000241';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000241' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Substituição Remunerada.', 'A lei 9.826 garante a diferença salarial se a substituição passar de 10 dias.', 'Dica: Importante para cargos de confiança na estrutura prisional.' from public.questions q where q.public_code = 'PPCE-DA-000241';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Prazo comum de férias.'),
  ('c', 'Incorreta. Prazo para curtos afastamentos.'),
  ('d', 'Incorreta. Muito curto.'),
  ('e', 'Incorreta. Prazo intermediário.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000241';

-- -----------------------------------------------------------------------------
-- QUESTÃO 242: ATOS ADMINISTRATIVOS (ATOS DE GESTÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000242', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Conceitos, requisitos, elementos, pressupostos e classification', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Atos praticados pela Administração em situação de igualdade com o particular, regidos predominantemente pelo Direito Privado (ex: locação de imóvel particular pelo Estado), são chamados de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Atos de Gestão.', 1),
  ('b', 'B', 'Atos de Império.', 2),
  ('c', 'C', 'Atos de Expediente.', 3),
  ('d', 'D', 'Atos Vinculados.', 4),
  ('e', 'E', 'Atos Discricionários.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000242';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000242' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Atos de Gestão.', 'Atos de Gestão = Estado "desce" ao nível do particular. Atos de Império = Estado age com soberania (vertical).', 'Dica: Atos de gestão não possuem as prerrogativas de supremacia (ex: não são autoexecutáveis).' from public.questions q where q.public_code = 'PPCE-DA-000242';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Atos com supremacia pública.'),
  ('c', 'Incorreta. Atos burocráticos internos.'),
  ('d', 'Incorreta. Classificação quanto à liberdade de ação.'),
  ('e', 'Incorreta. Classificação quanto à liberdade de ação.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000242';

-- -----------------------------------------------------------------------------
-- QUESTÃO 243: SERVIÇOS PÚBLICOS (PRINCÍPIO DA CONTINUIDADE)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000243', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Natureza, fins e princípios', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O princípio que veda a interrupção abrupta dos serviços essenciais, permitindo até que o Estado assuma a execução de um contrato de concessão em crise, é o da:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Continuidade do Serviço Público.', 1),
  ('b', 'B', 'Mutabilidade do regime jurídico.', 2),
  ('c', 'C', 'Modicidade das tarifas.', 3),
  ('d', 'D', 'Generalidade.', 4),
  ('e', 'E', 'Impessoalidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000243';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000243' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Continuidade do Serviço.', 'Serviço público não pode parar. Por isso o direito de greve do servidor é limitado e a exceção do contrato não cumprido é restrita contra o Estado.', 'Dica: A interrupção só é lícita em casos de emergência ou por falta de pagamento (após aviso prévio).' from public.questions q where q.public_code = 'PPCE-DA-000243';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Permite mudar regras para adaptar ao interesse público.'),
  ('c', 'Incorreta. Tarifas devem ser baratas/justas.'),
  ('d', 'Incorreta. Serviço deve atender a todos.'),
  ('e', 'Incorreta. Sem favoritismos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000243';

-- -----------------------------------------------------------------------------
-- QUESTÃO 244: LICITAÇÕES (DURAÇÃO DOS CONTRATOS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000244', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Contratos administrativos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Na Lei 14.133/2021, os contratos de serviços contínuos (ex: vigilância, limpeza) podem ter duração inicial de até 5 anos, prorrogáveis sucessivamente até o limite de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '10 anos.', 1),
  ('b', 'B', '5 anos.', 2),
  ('c', 'C', '20 anos.', 3),
  ('d', 'D', 'Indeterminado.', 4),
  ('e', 'E', '15 anos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000244';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000244' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Duração de Contratos Contínuos.', 'A nova lei ampliou o prazo para até 10 anos (5+5 ou outras combinações).', 'Dica: Antigamente (Lei 8.666) o limite era 60 meses + 12 meses excepcionais.' from public.questions q where q.public_code = 'PPCE-DA-000244';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Prazo inicial sugerido pela lei.'),
  ('c', 'Incorreta. Reservado para contratos de eficiência ou parcerias específicas.'),
  ('d', 'Incorreta. Vedado no setor público.'),
  ('e', 'Incorreta. Não previsto como limite padrão.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000244';

-- -----------------------------------------------------------------------------
-- QUESTÃO 245: IMPROBIDADE ADMINISTRATIVA (INTERROMPER PRESCRIÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000245', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Controle e responsabilização da administração', 'Lei de Improbidade Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Qual dos marcos abaixo INTERROMPE o prazo de prescrição na ação de improbidade?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O ajuizamento da ação de improbidade.', 1),
  ('b', 'B', 'A notificação extrajudicial para prestar contas.', 2),
  ('c', 'C', 'A abertura de sindicância investigativa.', 3),
  ('d', 'D', 'O parecer do Tribunal de Contas.', 4),
  ('e', 'E', 'A denúncia anônima.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000245';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000245' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Interrupção da Prescrição.', 'Apenas atos judiciais (ajuizamento, sentença, acórdão) interrompem a prescrição na nova LIA.', 'Dica: Atos administrativos (como o PAD) suspendem a prescrição por no máximo 180 dias, mas NÃO interrompem.' from public.questions q where q.public_code = 'PPCE-DA-000245';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Ato extrajudicial não interrompe.'),
  ('c', 'Incorreta. PAD apenas suspende (por tempo limitado).'),
  ('d', 'Incorreta. Órgão de controle externo não interrompe prescrição judicial.'),
  ('e', 'Incorreta. Fato sem força jurídica de interrupção.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000245';

-- -----------------------------------------------------------------------------
-- QUESTÃO 246: ESTATUTO CEARÁ (VENCIMENTO vs REMUNERAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000246', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Agentes Públicos', 'Estatuto dos Servidores do Ceará', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'No Estatuto do Ceará, a retribuição paga ao funcionário pelo efetivo exercício do cargo, correspondente ao padrão fixado em lei, denomina-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Vencimento.', 1),
  ('b', 'B', 'Remuneração.', 2),
  ('c', 'C', 'Subsídio.', 3),
  ('d', 'D', 'Provento.', 4),
  ('e', 'E', 'Vantagem pecuniária.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000246';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000246' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Vencimento.', 'Vencimento (singular) é a base. Remuneração (plural) é Vencimento + Vantagens.', 'Dica: O vencimento é irredutível.' from public.questions q where q.public_code = 'PPCE-DA-000246';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Soma do vencimento com as vantagens.'),
  ('c', 'Incorreta. Parcela única paga a certas carreiras (ex: Juízes, Delegados).'),
  ('d', 'Incorreta. Nome dado ao pagamento do aposentado.'),
  ('e', 'Incorreta. Adicionais e gratificações.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000246';

-- -----------------------------------------------------------------------------
-- QUESTÃO 247: ATOS ADMINISTRATIVOS (MÉRITO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000247', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Mérito do ato administrativo, discricionariedade', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O mérito administrativo, campo onde a Administração possui margem de escolha para decidir o que é melhor para o interesse público, recai sobre quais elementos do ato?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Motivo e Objeto.', 1),
  ('b', 'B', 'Competência e Finalidade.', 2),
  ('c', 'C', 'Forma e Objeto.', 3),
  ('d', 'D', 'Competência e Motivo.', 4),
  ('e', 'E', 'Finalidade e Forma.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000247';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000247' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Elementos do Mérito.', 'O mérito é a conveniência (motivo) e a oportunidade (objeto) do ato.', 'Dica: Competência, Finalidade e Forma são SEMPRE vinculados (regidos estritamente pela lei).' from public.questions q where q.public_code = 'PPCE-DA-000247';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. São elementos vinculados.'),
  ('c', 'Incorreta. Forma é vinculada.'),
  ('d', 'Incorreta. Competência é vinculada.'),
  ('e', 'Incorreta. Ambos são vinculados.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000247';

-- -----------------------------------------------------------------------------
-- QUESTÃO 248: SERVIÇOS PÚBLICOS (CLASSIFICAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000248', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Inovações introduzidas pela Constituição de 1988', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Serviços públicos que visam satisfazer as necessidades coletivas básicas (ex: saúde, segurança) e que devem ser prestados de forma igualitária a todos, são classificados como:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Serviços Uti Universi (Gerais).', 1),
  ('b', 'B', 'Serviços Uti Singuli (Individuais).', 2),
  ('c', 'C', 'Serviços de Gestão Privada.', 3),
  ('d', 'D', 'Serviços Comerciais.', 4),
  ('e', 'E', 'Serviços de Interesse Pessoal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000248';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000248' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Serviços Gerais.', 'Uti Universi = Para o universo de pessoas (indivisíveis). Financiados por IMPOSTOS.', 'Dica: Uti Singuli = Individuais (divisíveis, ex: luz, água). Financiados por TAXAS ou TARIFAS.' from public.questions q where q.public_code = 'PPCE-DA-000248';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Serviços para usuários identificados.'),
  ('c', 'Incorreta. Atividades de mercado.'),
  ('d', 'Incorreta. Focam no lucro.'),
  ('e', 'Incorreta. Não são serviços públicos por definição.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000248';

-- -----------------------------------------------------------------------------
-- QUESTÃO 249: LICITAÇÕES (PRÉ-QUALIFICAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000249', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Licitações', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O procedimento auxiliar que permite à Administração realizar uma análise prévia e permanente de licitantes ou de bens para certificar que cumprem exigências técnicas antes de uma licitação futura, denomina-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Pré-qualificação.', 1),
  ('b', 'B', 'Habilitação antecipada.', 2),
  ('c', 'C', 'Registro de Licitantes.', 3),
  ('d', 'D', 'Credenciamento.', 4),
  ('e', 'E', 'Análise de Conformidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000249';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000249' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Pré-qualificação.', 'A pré-qualificação agiliza licitações futuras, pois os interessados já estão "aprovados" tecnicamente.', 'Dica: Pode ser feita para licitantes (capacidade) ou para objetos (marcas/modelos).' from public.questions q where q.public_code = 'PPCE-DA-000249';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Termo não técnico da lei.'),
  ('c', 'Incorreta. Refere-se ao SICAF.'),
  ('d', 'Incorreta. Para contratar todos os que quiserem prestar o serviço.'),
  ('e', 'Incorreta. Parte de um processo de compras.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000249';

-- -----------------------------------------------------------------------------
-- QUESTÃO 250: CONTROLE DA ADMINISTRAÇÃO (CONTRADITÓRIO E AMPLA DEFESA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000250', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Processo administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Segundo a Súmula Vinculante nº 3 do STF, nos processos perante o Tribunal de Contas, é OBRIGATÓRIA a observância do contraditório e da ampla defesa quando da decisão puder resultar anulação ou revogação de ato administrativo que beneficie o interessado, EXCETO na hipótese de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Apreciação da legalidade do ato de concessão inicial de aposentadoria, reforma e pensão.', 1),
  ('b', 'B', 'Aplicação de multa pecuniária.', 2),
  ('c', 'C', 'Demissão de servidor estável.', 3),
  ('d', 'D', 'Suspensão de pagamentos de contratos de obras.', 4),
  ('e', 'E', 'Anulação de concurso público já homologado.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000250';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000250' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Súmula Vinculante nº 3.', 'A concessão inicial de aposentadoria é ato complexo; enquanto o TCU não julga, o ato não está perfeito. Por isso, não exige contraditório nessa fase inicial.', 'Dica: Se o TCU demorar mais de 5 anos para julgar, aí o contraditório passa a ser obrigatório por segurança jurídica.' from public.questions q where q.public_code = 'PPCE-DA-000250';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Exige ampla defesa.'),
  ('c', 'Incorreta. Exige PAD com defesa.'),
  ('d', 'Incorreta. Exige contraditório.'),
  ('e', 'Incorreta. Exige contraditório.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000250';

