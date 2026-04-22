-- =============================================================================
-- BATCH: QUESTÕES 401 A 500
-- ASSUNTO: DIREITO CONSTITUCIONAL (AVANÇADO E ORDEM SOCIAL)
-- ARQUIVO: questoes401ate500.sql
-- =============================================================================

-- -----------------------------------------------------------------------------
-- QUESTÃO 401: SISTEMA TRIBUTÁRIO (PRINCÍPIOS - ART. 145)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000401', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Sistema Tributário Nacional', 'Princípios Gerais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Sempre que possível, os impostos terão caráter pessoal e serão graduados segundo a capacidade econômica do contribuinte, facultado à administração tributária, especialmente para conferir efetividade a esses objetivos, identificar, respeitados os direitos individuais e nos termos da lei, o patrimônio, os rendimentos e as atividades econômicas do contribuinte. Este texto refere-se ao princípio da:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Capacidade Contributiva.', 1),
  ('b', 'B', 'Irretroatividade Tributária.', 2),
  ('c', 'C', 'Legalidade Estrita.', 3),
  ('d', 'D', 'Não Confisco.', 4),
  ('e', 'E', 'Anterioridade Nonagesimal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000401';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000401' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Princípio da Capacidade Contributiva.', 'O texto literal do Art. 145, § 1º define que impostos devem ser graduados pela riqueza do contribuinte.', 'Dica: É o princípio que fundamenta a progressividade do IR.' from public.questions q where q.public_code = 'PPCE-DC-000401';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Irretroatividade impede cobrar tributo sobre fatos passados.'),
  ('c', 'Incorreta. Legalidade exige lei para criar tributo.'),
  ('d', 'Incorreta. Não confisco impede que o tributo absorva a propriedade.'),
  ('e', 'Incorreta. Anterioridade trata do tempo para início da cobrança.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000401';

-- -----------------------------------------------------------------------------
-- QUESTÃO 402: SISTEMA TRIBUTÁRIO (ESPÉCIES TRIBUTÁRIAS - ART. 145)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000402', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Sistema Tributário Nacional', 'Espécies Tributárias', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A União, os Estados, o Distrito Federal e os Municípios poderão instituir os seguintes tributos, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Doações compulsórias para campanhas eleitorais.', 1),
  ('b', 'B', 'Impostos.', 2),
  ('c', 'C', 'Taxas, em razão do exercício do poder de polícia.', 3),
  ('d', 'D', 'Taxas, pela utilização de serviços públicos específicos e divisíveis.', 4),
  ('e', 'E', 'Contribuição de melhoria, decorrente de obras públicas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000402';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000402' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Espécies Tributárias (Art. 145).', 'Doações eleitorais não são tributos.', 'Dica: O rol do Art. 145 é tripartite: Impostos, Taxas e Contribuição de Melhoria.' from public.questions q where q.public_code = 'PPCE-DC-000402';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Impostos são tributos previstos.'),
  ('c', 'Incorreta. Taxa de polícia é tributo previsto.'),
  ('d', 'Incorreta. Taxa de serviço é tributo previsto.'),
  ('e', 'Incorreta. Contribuição de melhoria é tributo previsto.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000402';

-- -----------------------------------------------------------------------------
-- QUESTÃO 403: SISTEMA TRIBUTÁRIO (LIMITAÇÕES AO PODER DE TRIBUTAR - ART. 150)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000403', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Sistema Tributário Nacional', 'Limitações e Imunidades', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'É vedado à União, aos Estados, ao DF e aos Municípios instituir impostos sobre:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Livros, jornais, periódicos e o papel destinado a sua impressão.', 1),
  ('b', 'B', 'Consumo de energia elétrica por órgãos públicos.', 2),
  ('c', 'C', 'Venda de produtos de luxo importados.', 3),
  ('d', 'D', 'Salários de servidores públicos de alto escalão.', 4),
  ('e', 'E', 'Lucros de empresas multinacionais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000403';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000403' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Imunidade Objetiva ou Cultural.', 'Livros e jornais gozam de imunidade de IMPOSTOS (Art. 150, VI, d).', 'Dica: A imunidade não alcança taxas, apenas impostos.' from public.questions q where q.public_code = 'PPCE-DC-000403';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Órgãos públicos podem ter imunidade recíproca, mas a questão foca na imunidade de bens culturais específica.'),
  ('c', 'Incorreta. Produtos de luxo são tributados normalmente.'),
  ('d', 'Incorreta. Servidores pagam IR normalmente.'),
  ('e', 'Incorreta. Empresas pagam impostos sobre o lucro.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000403';

-- -----------------------------------------------------------------------------
-- QUESTÃO 404: ORDEM FINANCEIRA (ORÇAMENTO - ART. 165)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000404', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Finanças Públicas', 'Orçamento', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Leis de iniciativa do Poder Executivo estabelecerão o plano plurianual, as diretrizes orçamentárias e os orçamentos anuais. A lei que compreenderá as metas e prioridades da administração pública federal é a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Lei de Diretrizes Orçamentárias (LDO).', 1),
  ('b', 'B', 'Plano Plurianual (PPA).', 2),
  ('c', 'C', 'Lei Orçamentária Anual (LOA).', 3),
  ('d', 'D', 'Lei de Responsabilidade Fiscal.', 4),
  ('e', 'E', 'Constituição Federal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000404';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000404' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'LDO (Art. 165, § 2º).', 'A LDO define metas e prioridades e orienta a elaboração da LOA.', 'Dica: O PPA é para 4 anos (estratégico), a LDO é o elo, e a LOA é a execução anual.' from public.questions q where q.public_code = 'PPCE-DC-000404';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O PPA estabelece diretrizes, objetivos e metas para despesas de capital (longo prazo).'),
  ('c', 'Incorreta. A LOA prevê receitas e fixa despesas.'),
  ('d', 'Incorreta. A LRF é uma lei complementar de controle, não uma peça orçamentária anual.'),
  ('e', 'Incorreta. A CF dá o fundamento, não é a lei de metas específica.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000404';

-- -----------------------------------------------------------------------------
-- QUESTÃO 405: FINANÇAS PÚBLICAS (VEDAÇÕES ORÇAMENTÁRIAS - ART. 167)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000405', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Finanças Públicas', 'Vedações Constitucionais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'É vedado o início de programas ou projetos não incluídos na:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Lei orçamentária anual.', 1),
  ('b', 'B', 'Constituição Estadual.', 2),
  ('c', 'C', 'Lei de diretrizes orçamentárias.', 3),
  ('d', 'D', 'Agenda 2030 da ONU.', 4),
  ('e', 'E', 'Portaria do Ministério da Fazenda.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000405';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000405' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Vedações (Art. 167, I).', 'Nenhum gasto pode ser feito sem previsão na LOA.', 'Dica: O orçamento é a lei da legalidade financeira.' from public.questions q where q.public_code = 'PPCE-DC-000405';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Programas são administrativos/orçamentários, não de texto constitucional direto.'),
  ('c', 'Incorreta. A LDO orienta, mas a inclusão para execução é na LOA.'),
  ('d', 'Incorreta. Agenda externa não obriga gasto interno sem lei.'),
  ('e', 'Incorreta. Portaria não substitui a lei orçamentária.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000405';

-- -----------------------------------------------------------------------------
-- QUESTÃO 406: SISTEMA TRIBUTÁRIO (IMPOSTOS DA UNIÃO - ART. 153)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000406', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Sistema Tributário Nacional', 'Competência da União', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Compete à União instituir impostos sobre:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Importação de produtos estrangeiros.', 1),
  ('b', 'B', 'Propriedade de veículos automotores.', 2),
  ('c', 'C', 'Transmissão causa mortis e doação de bens.', 3),
  ('d', 'D', 'Serviços de qualquer natureza.', 4),
  ('e', 'E', 'Propriedade predial e territorial urbana.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000406';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000406' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Impostos da União (II).', 'O Imposto de Importação (II) é de competência federal (Art. 153, I).', 'Dica: Outros federais: IE, IR, IPI, IOF, ITR, IGF.' from public.questions q where q.public_code = 'PPCE-DC-000406';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. IPVA é do Estado.'),
  ('c', 'Incorreta. ITCMD é do Estado.'),
  ('d', 'Incorreta. ISS é do Município.'),
  ('e', 'Incorreta. IPTU é do Município.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000406';

-- -----------------------------------------------------------------------------
-- QUESTÃO 407: SISTEMA TRIBUTÁRIO (IMPOSTOS DOS ESTADOS - ART. 155)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000407', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Sistema Tributário Nacional', 'Competência dos Estados', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Compete aos Estados e ao Distrito Federal instituir impostos sobre:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Operações relativas à circulação de mercadorias (ICMS).', 1),
  ('b', 'B', 'Grandes fortunas.', 2),
  ('c', 'C', 'Renda e proventos de qualquer natureza.', 3),
  ('d', 'D', 'Transmissão inter vivos de bens imóveis (ITBI).', 4),
  ('e', 'E', 'Exportação de produtos nacionais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000407';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000407' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'ICMS (Art. 155, II).', 'O ICMS é o principal imposto estadual.', 'Dica: Os 3 impostos estaduais são ITCMD, ICMS e IPVA.' from public.questions q where q.public_code = 'PPCE-DC-000407';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. IGF é da União.'),
  ('c', 'Incorreta. IR é da União.'),
  ('d', 'Incorreta. ITBI é do Município.'),
  ('e', 'Incorreta. IE é da União.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000407';

-- -----------------------------------------------------------------------------
-- QUESTÃO 408: SISTEMA TRIBUTÁRIO (IMPOSTOS DOS MUNICÍPIOS - ART. 156)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000408', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Sistema Tributário Nacional', 'Competência dos Municípios', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Compete aos Municípios instituir impostos sobre:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Transmissão inter vivos, a qualquer título, por ato oneroso, de bens imóveis (ITBI).', 1),
  ('b', 'B', 'Operações de crédito e câmbio.', 2),
  ('c', 'C', 'Produtos industrializados.', 3),
  ('d', 'D', 'Propriedade territorial rural.', 4),
  ('e', 'E', 'Heranças e doações.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000408';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000408' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'ITBI (Art. 156, II).', 'O ITBI é municipal quando a transmissão é inter vivos e onerosa.', 'Dica: Se for causa mortis (herança), o imposto é o ITCMD (Estadual).' from public.questions q where q.public_code = 'PPCE-DC-000408';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. IOF é da União.'),
  ('c', 'Incorreta. IPI é da União.'),
  ('d', 'Incorreta. ITR é da União.'),
  ('e', 'Incorreta. ITCMD é do Estado.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000408';

-- -----------------------------------------------------------------------------
-- QUESTÃO 409: ORDEM SOCIAL (SEGURIDADE SOCIAL - ART. 194)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000409', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Seguridade Social', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A seguridade social compreende um conjunto integrado de ações de iniciativa dos Poderes Públicos e da sociedade, destinadas a assegurar os direitos relativos à:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Saúde, previdência e assistência social.', 1),
  ('b', 'B', 'Educação, moradia e transporte.', 2),
  ('c', 'C', 'Segurança pública e defesa civil.', 3),
  ('d', 'D', 'Lazer e cultura.', 4),
  ('e', 'E', 'Emprego e renda.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000409';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000409' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Tripé da Seguridade (Art. 194).', 'Mnemônico: PAS (Previdência, Assistência, Saúde).', 'Dica: Apenas a Previdência é contributiva.' from public.questions q where q.public_code = 'PPCE-DC-000409';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. São direitos sociais (Art. 6º), mas não compõem a seguridade stricto sensu.'),
  ('c', 'Incorreta. Outras áreas de atuação estatal.'),
  ('d', 'Incorreta. Direitos sociais fora do tripé da seguridade.'),
  ('e', 'Incorreta. Embora relacionados, não são o tripé constitucional definido no Art. 194.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000409';

-- -----------------------------------------------------------------------------
-- QUESTÃO 410: ORDEM SOCIAL (SAÚDE - ART. 198)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000410', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Saúde', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'As ações e serviços públicos de saúde integram uma rede regionalizada e hierarquizada e constituem um sistema único, organizado de acordo com as seguintes diretrizes, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Centralização político-administrativa em cada esfera de governo.', 1),
  ('b', 'B', 'Descentralização, com direção única em cada esfera de governo.', 2),
  ('c', 'C', 'Atendimento integral, com prioridade para as atividades preventivas.', 3),
  ('d', 'D', 'Participação da comunidade.', 4),
  ('e', 'E', 'Acesso universal e igualitário.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000410';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000410' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Diretrizes do SUS (Art. 198).', 'A diretriz correta é a DESCENTRALIZAÇÃO, não a centralização.', 'Dica: O SUS é gerido de forma descentralizada para Municípios, Estados e União.' from public.questions q where q.public_code = 'PPCE-DC-000410';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É diretriz expressa (Art. 198, I).'),
  ('c', 'Incorreta. É diretriz expressa (Art. 198, II).'),
  ('d', 'Incorreta. É diretriz expressa (Art. 198, III).'),
  ('e', 'Incorreta. É princípio fundamental da saúde (Art. 196).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000410';

-- -----------------------------------------------------------------------------
-- QUESTÃO 411: ORDEM SOCIAL (ASSISTÊNCIA SOCIAL - ART. 203)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000411', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Assistência Social', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A assistência social será prestada a quem dela necessitar, independentemente de contribuição à seguridade social, e tem por objetivos, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Pagamento de aposentadoria por tempo de serviço.', 1),
  ('b', 'B', 'Proteção à família, à maternidade, à infância, à adolescência e à velhice.', 2),
  ('c', 'C', 'Amparo às crianças e adolescentes carentes.', 3),
  ('d', 'D', 'Promoção da integração ao mercado de trabalho.', 4),
  ('e', 'E', 'Habilitação e reabilitação das pessoas com deficiência.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000411';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000411' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Objetivos da Assistência Social.', 'Aposentadoria é benefício da PREVIDÊNCIA (exige contribuição).', 'Dica: Assistência Social é para quem precisa, sem pagar.' from public.questions q where q.public_code = 'PPCE-DC-000411';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É objetivo expresso (Art. 203, I).'),
  ('c', 'Incorreta. É objetivo expresso (Art. 203, II).'),
  ('d', 'Incorreta. É objetivo expresso (Art. 203, III).'),
  ('e', 'Incorreta. É objetivo expresso (Art. 203, IV).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000411';

-- -----------------------------------------------------------------------------
-- QUESTÃO 412: ORDEM SOCIAL (EDUCAÇÃO - ART. 206)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000412', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Educação', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O ensino será ministrado com base nos seguintes princípios, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Unicidade de concepções pedagógicas e ideológicas.', 1),
  ('b', 'B', 'Igualdade de condições para o acesso e permanência na escola.', 2),
  ('c', 'C', 'Liberdade de aprender, ensinar, pesquisar e divulgar o pensamento.', 3),
  ('d', 'D', 'Pluralismo de ideias e de concepções pedagógicas.', 4),
  ('e', 'E', 'Gratuidade do ensino público em estabelecimentos oficiais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000412';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000412' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Princípios do Ensino (Art. 206).', 'O princípio correto é o PLURALISMO, não a unicidade.', 'Dica: A CF protege a diversidade de ideias no ambiente escolar.' from public.questions q where q.public_code = 'PPCE-DC-000412';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É princípio fundamental (Art. 206, I).'),
  ('c', 'Incorreta. É princípio fundamental (Art. 206, II).'),
  ('d', 'Incorreta. É princípio fundamental (Art. 206, III).'),
  ('e', 'Incorreta. É princípio fundamental (Art. 206, IV).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000412';

-- -----------------------------------------------------------------------------
-- QUESTÃO 413: ORDEM SOCIAL (CULTURA E DESPORTO - ART. 215/217)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000413', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Cultura e Desporto', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'É dever do Estado fomentar práticas desportivas formais e não formais, como direito de cada um, observados:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A autonomia das entidades desportivas dirigentes e associações.', 1),
  ('b', 'B', 'A subordinação obrigatória dos clubes ao Ministério do Esporte.', 2),
  ('c', 'C', 'A proibição de patrocínios privados.', 3),
  ('d', 'D', 'O controle estatal sobre os regulamentos das competições.', 4),
  ('e', 'E', 'A cobrança obrigatória de ingressos em todos os eventos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000413';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000413' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direito ao Desporto (Art. 217).', 'A CF garante autonomia às entidades desportivas (Art. 217, I).', 'Dica: O Estado apoia, mas não manda na organização interna dos clubes.' from public.questions q where q.public_code = 'PPCE-DC-000413';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. As entidades têm autonomia.'),
  ('c', 'Incorreta. Patrocínios são permitidos e incentivados.'),
  ('d', 'Incorreta. Fere a autonomia constitucional.'),
  ('e', 'Incorreta. Não existe tal exigência na CF.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000413';

-- -----------------------------------------------------------------------------
-- QUESTÃO 414: ORDEM SOCIAL (FAMÍLIA E IDOSO - ART. 226/230)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000414', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Família, Criança, Adolescente e Idoso', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Aos maiores de sessenta e cinco anos é garantida a gratuidade dos transportes coletivos:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Urbanos.', 1),
  ('b', 'B', 'Aéreos internacionais.', 2),
  ('c', 'C', 'Interestaduais de luxo.', 3),
  ('d', 'D', 'Marítimos de cruzeiro.', 4),
  ('e', 'E', 'Particulares de aplicativo.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000414';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000414' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direito do Idoso (Art. 230, § 2º).', 'A gratuidade constitucional é para transportes coletivos URBANOS aos maiores de 65 anos.', 'Dica: Cuidado, o Estatuto do Idoso fala em 60 anos para algumas leis, mas a CF crava 65 para o transporte urbano.' from public.questions q where q.public_code = 'PPCE-DC-000414';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Não existe tal previsão.'),
  ('c', 'Incorreta. A gratuidade interestadual segue regras de vagas específicas, não é ilimitada como no urbano.'),
  ('d', 'Incorreta. Transporte de lazer não entra na regra social básica.'),
  ('e', 'Incorreta. Vale apenas para transporte público coletivo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000414';

-- -----------------------------------------------------------------------------
-- QUESTÃO 415: CONTROLE DE CONSTITUCIONALIDADE (CONCEITOS GERAIS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000415', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Controle de Constitucionalidade', 'Conceitos e Espécies', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O controle de constitucionalidade realizado por qualquer juiz ou tribunal, diante de um caso concreto, é denominado controle:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Difuso.', 1),
  ('b', 'B', 'Concentrado.', 2),
  ('c', 'C', 'Abstrato.', 3),
  ('d', 'D', 'Político.', 4),
  ('e', 'E', 'Prévio.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000415';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000415' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Controle Difuso.', 'No controle difuso, qualquer magistrado pode afastar a aplicação de uma lei inconstitucional no caso que está julgando.', 'Dica: Também chamado de modelo aberto ou americano.' from public.questions q where q.public_code = 'PPCE-DC-000415';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O concentrado é feito apenas pelo tribunal de cúpula (STF ou TJ).'),
  ('c', 'Incorreta. Abstrato foca na lei em tese, não no caso concreto.'),
  ('d', 'Incorreta. Controle político é feito pelo Legislativo ou Executivo (ex: veto).'),
  ('e', 'Incorreta. Prévio ocorre antes da lei entrar em vigor.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000415';

-- -----------------------------------------------------------------------------
-- QUESTÃO 416: CONTROLE DE CONSTITUCIONALIDADE (LEGITIMADOS - ART. 103)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000416', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Controle de Constitucionalidade', 'Ação Direta de Inconstitucionalidade', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Podem propor a ação direta de inconstitucionalidade e a ação declaratória de constitucionalidade, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O Conselho Federal da Ordem dos Advogados do Brasil.', 1),
  ('b', 'B', 'O Presidente da República.', 2),
  ('c', 'C', 'O Governador de Estado ou do Distrito Federal.', 3),
  ('d', 'D', 'O Procurador-Geral da República.', 4),
  ('e', 'E', 'O Defensor Público-Geral Federal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000416';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000416' and q.id = qo.question_id and qo.option_key = 'e';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Legitimados da ADI/ADC (Art. 103).', 'A Defensoria Pública não consta no rol taxativo do Art. 103 da CF para propor ADI/ADC.', 'Dica: Mnemônico: 3 Mesas, 3 Autoridades, 3 Entidades.' from public.questions q where q.public_code = 'PPCE-DC-000416';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('a', 'Incorreta. O CFOAB é legitimado universal (Art. 103, VII).'),
  ('b', 'Incorreta. O Presidente é legitimado universal (Art. 103, I).'),
  ('c', 'Incorreta. O Governador é legitimado especial (precisa de pertinência temática, Art. 103, V).'),
  ('d', 'Incorreta. O PGR é legitimado universal (Art. 103, VI).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000416';

-- -----------------------------------------------------------------------------
-- QUESTÃO 417: CONTROLE DE CONSTITUCIONALIDADE (ADPF - ART. 102, § 1º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000417', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Controle de Constitucionalidade', 'ADPF', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A arguição de descumprimento de preceito fundamental, decorrente desta Constituição, será apreciada pelo:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Supremo Tribunal Federal.', 1),
  ('b', 'B', 'Superior Tribunal de Justiça.', 2),
  ('c', 'C', 'Senado Federal.', 3),
  ('d', 'D', 'Tribunal Superior Eleitoral.', 4),
  ('e', 'E', 'Congresso Nacional.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000417';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000417' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'ADPF (Art. 102, § 1º).', 'O STF é o guardião da CF e julga as ações de controle concentrado.', 'Dica: A ADPF tem caráter subsidiário (usada quando não cabe ADI/ADC).' from public.questions q where q.public_code = 'PPCE-DC-000417';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O STJ julga infrações penais comuns e conflitos infraconstitucionais.'),
  ('c', 'Incorreta. O Senado legisla e julga crimes de responsabilidade do PR.'),
  ('d', 'Incorreta. O TSE cuida da matéria eleitoral.'),
  ('e', 'Incorreta. O Congresso é órgão legislativo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000417';

-- -----------------------------------------------------------------------------
-- QUESTÃO 418: DIREITOS SOCIAIS (TRABALHO - ART. 7º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000418', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Sociais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São direitos dos trabalhadores urbanos e rurais, além de outros que visem à melhoria de sua condição social, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Jornada de oito horas para o trabalho realizado em turnos ininterruptos de revezamento.', 1),
  ('b', 'B', 'Seguro-desemprego, em caso de desemprego involuntário.', 2),
  ('c', 'C', 'Fundo de garantia do tempo de serviço.', 3),
  ('d', 'D', 'Salário mínimo, fixado em lei.', 4),
  ('e', 'E', 'Décimo terceiro salário com base na remuneração integral.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000418';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000418' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direitos dos Trabalhadores (Art. 7º, XIV).', 'A jornada para turnos ininterruptos é de SEIS horas, salvo negociação coletiva.', 'Dica: Pegadinha clássica de prova de tribunais e polícias.' from public.questions q where q.public_code = 'PPCE-DC-000418';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É direito do Art. 7º, II.'),
  ('c', 'Incorreta. É direito do Art. 7º, III.'),
  ('d', 'Incorreta. É direito do Art. 7º, IV.'),
  ('e', 'Incorreta. É direito do Art. 7º, VIII.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000418';

-- -----------------------------------------------------------------------------
-- QUESTÃO 419: DIREITOS SOCIAIS (ESTABILIDADE DA GESTANTE - ADCT ART. 10)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000419', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Sociais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Fica vedada a dispensa arbitrária ou sem justa causa da empregada gestante, desde a confirmação da gravidez até:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Cinco meses após o parto.', 1),
  ('b', 'B', 'O momento do nascimento.', 2),
  ('c', 'C', 'Três meses após o parto.', 3),
  ('d', 'D', 'O término da licença-maternidade.', 4),
  ('e', 'E', 'Um ano após o nascimento.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000419';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000419' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Estabilidade Gestante (ADCT).', 'A proteção vai da confirmação até 5 meses após o parto.', 'Dica: Não confunda o prazo de licença (120 dias) com o de estabilidade (5 meses).' from public.questions q where q.public_code = 'PPCE-DC-000419';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A proteção continua após o nascimento.'),
  ('c', 'Incorreta. O prazo é de 5 meses.'),
  ('d', 'Incorreta. São prazos distintos.'),
  ('e', 'Incorreta. Prazo muito longo, não previsto constitucionalmente.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000419';

-- -----------------------------------------------------------------------------
-- QUESTÃO 420: DEFESA DO ESTADO (FORÇAS ARMADAS - ART. 142)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000420', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Forças Armadas', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'As Forças Armadas, constituídas pela Marinha, pelo Exército e pela Aeronáutica, são instituições nacionais permanentes e regulares, organizadas com base na hierarquia e na disciplina, sob a autoridade suprema do:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Presidente da República.', 1),
  ('b', 'B', 'Ministro da Defesa.', 2),
  ('c', 'C', 'Comandante das Forças Armadas.', 3),
  ('d', 'D', 'Presidente do Congresso Nacional.', 4),
  ('e', 'E', 'Chefe do Estado-Maior Conjunto.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000420';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000420' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Comando das Forças Armadas.', 'O PR é o Comandante Supremo das Forças Armadas (Art. 142 caput).', 'Dica: Embora o Ministro da Defesa coordene, a autoridade suprema é o PR.' from public.questions q where q.public_code = 'PPCE-DC-000420';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O Ministro é autoridade administrativa subordinada ao PR.'),
  ('c', 'Incorreta. Cada força tem seu comandante, mas o "Supremo" é o PR.'),
  ('d', 'Incorreta. O Legislativo não comanda as forças armadas.'),
  ('e', 'Incorreta. Órgão técnico-militar.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000420';

-- -----------------------------------------------------------------------------
-- QUESTÃO 421: ORDEM ECONÔMICA (PRINCÍPIOS - ART. 170)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000421', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Econômica e Financeira', 'Princípios Gerais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A ordem econômica, fundada na valorização do trabalho humano e na livre iniciativa, tem por fim assegurar a todos existência digna, conforme os ditames da justiça social, observados os seguintes princípios, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Estatização de todos os meios de produção.', 1),
  ('b', 'B', 'Soberania nacional.', 2),
  ('c', 'C', 'Propriedade privada.', 4),
  ('d', 'D', 'Função social da propriedade.', 5),
  ('e', 'E', 'Livre concorrência.', 6)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000421';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000421' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Princípios da Ordem Econômica.', 'O Brasil adota o modelo de economia de mercado (capitalismo), protegendo a livre iniciativa e a propriedade privada.', 'Dica: A intervenção do Estado é exceção (subsidiariedade).' from public.questions q where q.public_code = 'PPCE-DC-000421';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É princípio expresso (Art. 170, I).'),
  ('c', 'Incorreta. É princípio expresso (Art. 170, II).'),
  ('d', 'Incorreta. É princípio expresso (Art. 170, III).'),
  ('e', 'Incorreta. É princípio expresso (Art. 170, IV).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000421';

-- -----------------------------------------------------------------------------
-- QUESTÃO 422: ORDEM ECONÔMICA (INTERVENÇÃO DO ESTADO - ART. 173)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000422', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Econômica e Financeira', 'Atividade Econômica', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Ressalvados os casos previstos nesta Constituição, a exploração direta de atividade econômica pelo Estado só será permitida quando necessária:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Aos imperativos da segurança nacional ou a relevante interesse coletivo.', 1),
  ('b', 'B', 'Ao aumento da arrecadação de impostos sobre o lucro.', 2),
  ('c', 'C', 'À eliminação total da concorrência privada.', 3),
  ('d', 'D', 'Ao financiamento de partidos políticos aliados.', 4),
  ('e', 'E', 'À criação de cargos de confiança para aliados.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000422';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000422' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Intervenção Direta do Estado.', 'O Estado só entra no mercado como empresário em casos excepcionais (Art. 173).', 'Dica: Ex: Petrobras, Banco do Brasil, Caixa Econômica.' from public.questions q where q.public_code = 'PPCE-DC-000422';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Lucro não justifica a intervenção direta como finalidade constitucional.'),
  ('c', 'Incorreta. A livre concorrência deve ser preservada.'),
  ('d', 'Incorreta. Desvio de finalidade.'),
  ('e', 'Incorreta. Desvio de finalidade e fere a impessoalidade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000422';

-- -----------------------------------------------------------------------------
-- QUESTÃO 423: MEIO AMBIENTE (PROTEÇÃO À FAUNA - ART. 225, § 1º, VII)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000423', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Meio Ambiente', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Para assegurar a efetividade do direito ao meio ambiente, incumbe ao Poder Público proteger a fauna e a flora, vedadas, na forma da lei, as práticas que:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Submetam os animais a crueldade.', 1),
  ('b', 'B', 'Permitam a criação de animais domésticos.', 2),
  ('c', 'C', 'Utilizem cães para guarda de presídios.', 3),
  ('d', 'D', 'Promovam a reintrodução de espécies nativas.', 4),
  ('e', 'E', 'Regulamentem a pesca artesanal de subsistência.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000423';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000423' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Vedação à Crueldade Animal.', 'A CF proíbe expressamente a crueldade contra animais (Art. 225, § 1º, VII).', 'Dica: Cuidado com a EC 96/2017 que não considera cruéis as manifestações culturais registradas como patrimônio (ex: vaquejada).' from public.questions q where q.public_code = 'PPCE-DC-000423';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Permitido.'),
  ('c', 'Incorreta. Permitido, desde que respeitados os limites de maus-tratos.'),
  ('d', 'Incorreta. É dever do Estado.'),
  ('e', 'Incorreta. Atividade lícita e regulamentada.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000423';

-- -----------------------------------------------------------------------------
-- QUESTÃO 424: ÍNDIOS (TERRAS INDÍGENAS - ART. 231)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000424', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Índios', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'As terras tradicionalmente ocupadas pelos índios destinam-se a sua posse permanente, cabendo-lhes o usufruto exclusivo das riquezas do solo, dos rios e dos lagos nelas existentes. Estas terras são bens:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Da União.', 1),
  ('b', 'B', 'Dos próprios índios como proprietários plenos.', 2),
  ('c', 'C', 'Dos Estados onde se localizam.', 3),
  ('d', 'D', 'Dos Municípios.', 4),
  ('e', 'E', 'Res nullius (de ninguém).', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000424';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000424' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Propriedade das Terras Indígenas.', 'As terras indígenas pertencem à UNIÃO (Art. 20, XI). Os índios têm a posse e o usufruto.', 'Dica: Eles não podem vender a terra, pois não são os donos, são usufrutuários.' from public.questions q where q.public_code = 'PPCE-DC-000424';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Eles têm posse e usufruto, mas a propriedade é da União.'),
  ('c', 'Incorreta. Bens da União não se confundem com estaduais.'),
  ('d', 'Incorreta. Não são bens municipais.'),
  ('e', 'Incorreta. Têm dono definido (União).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000424';

-- -----------------------------------------------------------------------------
-- QUESTÃO 425: FAMÍLIA E CRIANÇA (DEVER DE ASSISTÊNCIA - ART. 229)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000425', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Família, Criança, Adolescente, Jovem e Idoso', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'De acordo com a Constituição Federal, os pais têm o dever de assistir, criar e educar os filhos menores, e os filhos maiores têm o dever de ajudar e amparar os pais na:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Velhice, carência ou enfermidade.', 1),
  ('b', 'B', 'Compra de bens de luxo.', 2),
  ('c', 'C', 'Realização de viagens internacionais.', 3),
  ('d', 'D', 'Quitação de dívidas de jogo.', 4),
  ('e', 'E', 'Manutenção de vícios.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000425';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000425' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Dever de Solidariedade Familiar.', 'O Art. 229 estabelece a reciprocidade do dever de amparo.', 'Dica: É o fundamento constitucional para a pensão alimentícia de filhos para pais.' from public.questions q where q.public_code = 'PPCE-DC-000425';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Fora da finalidade social.'),
  ('c', 'Incorreta. Fora da finalidade social.'),
  ('d', 'Incorreta. Fora da finalidade social.'),
  ('e', 'Incorreta. Contrário ao direito.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000425';

-- -----------------------------------------------------------------------------
-- QUESTÃO 426: CONTROLE DE CONSTITUCIONALIDADE (ADO - ART. 103, § 2º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000426', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Controle de Constitucionalidade', 'Ação Direta de Inconstitucionalidade por Omissão', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Declarada a inconstitucionalidade por omissão de medida para tornar efetiva norma constitucional, será dada ciência ao Poder competente para a adoção das providências necessárias e, em se tratando de órgão administrativo, para fazê-lo em:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Trinta dias.', 1),
  ('b', 'B', 'Dez dias.', 2),
  ('c', 'C', 'Sessenta dias.', 3),
  ('d', 'D', 'Imediatamente.', 4),
  ('e', 'E', 'Um ano.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000426';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000426' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'ADO (Art. 103, § 2º).', 'Para órgãos administrativos, a CF fixa o prazo de 30 dias para suprir a omissão.', 'Dica: Se for o Poder Legislativo, a ciência não tem prazo obrigatório (pela independência dos poderes).' from public.questions q where q.public_code = 'PPCE-DC-000426';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Prazo é de 30 dias.'),
  ('c', 'Incorreta. Prazo é de 30 dias.'),
  ('d', 'Incorreta. Prazo é de 30 dias.'),
  ('e', 'Incorreta. Prazo é de 30 dias.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000426';

-- -----------------------------------------------------------------------------
-- QUESTÃO 427: CONTROLE DE CONSTITUCIONALIDADE (SÚMULA VINCULANTE - ART. 103-A)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000427', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Controle de Constitucionalidade', 'Súmula Vinculante', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Supremo Tribunal Federal poderá, de ofício ou por provocação, mediante decisão de dois terços dos seus membros, após reiteradas decisões sobre matéria constitucional, aprovar súmula que terá efeito vinculante em relação:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Aos demais órgãos do Poder Judiciário e à administração pública direta e indireta.', 1),
  ('b', 'B', 'Ao próprio STF e ao Poder Legislativo em sua função legiferante.', 2),
  ('c', 'C', 'Apenas aos juízes federais de primeira instância.', 3),
  ('d', 'D', 'Exclusivamente às polícias penais estaduais.', 4),
  ('e', 'E', 'Aos cidadãos em suas relações privadas de consumo.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000427';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000427' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Súmula Vinculante (Art. 103-A).', 'A Súmula Vinculante obriga o Judiciário e a Administração Pública.', 'Dica: Ela NÃO vincula o Legislativo na função de criar leis (para não engessar o sistema).' from public.questions q where q.public_code = 'PPCE-DC-000427';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Não vincula o Legislativo em sua função típica (legislar).'),
  ('c', 'Incorreta. Vincula todo o Judiciário (exceto o próprio STF).'),
  ('d', 'Incorreta. Vincula toda a Administração, não apenas um órgão.'),
  ('e', 'Incorreta. Vincula o poder público, não as relações privadas diretamente.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000427';

-- -----------------------------------------------------------------------------
-- QUESTÃO 428: SEGURANÇA PÚBLICA (POLÍCIA PENAL - ART. 144, VI)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000428', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Às polícias penais, vinculadas ao órgão administrador do sistema penal da unidade federativa a que pertencem, cabe a segurança dos:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Estabelecimentos penais.', 1),
  ('b', 'B', 'Tribunais de justiça.', 2),
  ('c', 'C', 'Bancos centrais.', 3),
  ('d', 'D', 'Prédios das assembleias legislativas.', 4),
  ('e', 'E', 'Aeroportos internacionais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000428';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000428' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Atribuição da Polícia Penal.', 'A Polícia Penal cuida especificamente da segurança dos presídios (EC 104/2019).', 'Dica: Antes era exercida por agentes penitenciários, hoje são policiais constitucionais.' from public.questions q where q.public_code = 'PPCE-DC-000428';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Segurança de tribunais é feita por policiais judiciários ou convênios.'),
  ('c', 'Incorreta. Atribuição da Polícia Federal.'),
  ('d', 'Incorreta. Segurança institucional própria.'),
  ('e', 'Incorreta. Atribuição da Polícia Federal.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000428';

-- -----------------------------------------------------------------------------
-- QUESTÃO 429: SEGURANÇA PÚBLICA (POLÍCIA CIVIL - ART. 144, § 4º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000429', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Às polícias civis, dirigidas por delegados de polícia de carreira, incumbem, ressalvada a competência da União, as funções de polícia judiciária e a apuração de infrações penais, EXCETO as:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Militares.', 1),
  ('b', 'B', 'Estaduais contra o patrimônio.', 2),
  ('c', 'C', 'Ambientais locais.', 3),
  ('d', 'D', 'Crimes contra a vida de civis.', 4),
  ('e', 'E', 'Contra a administração municipal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000429';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000429' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Atribuição da Polícia Civil.', 'Infrações militares são apuradas pela própria polícia militar (ou forças armadas).', 'Dica: PC investiga quase tudo, menos crimes militares e os de competência da PF.' from public.questions q where q.public_code = 'PPCE-DC-000429';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É competência da PC.'),
  ('c', 'Incorreta. É competência da PC.'),
  ('d', 'Incorreta. É competência da PC.'),
  ('e', 'Incorreta. É competência da PC.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000429';

-- -----------------------------------------------------------------------------
-- QUESTÃO 430: SEGURANÇA PÚBLICA (GUARDAS MUNICIPAIS - ART. 144, § 8º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000430', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Os Municípios poderão constituir guardas municipais destinadas à proteção de seus:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Bens, serviços e instalações.', 1),
  ('b', 'B', 'Bancos comerciais locais.', 2),
  ('c', 'C', 'Fronteiras municipais terrestres.', 3),
  ('d', 'D', 'Interesses políticos do prefeito.', 4),
  ('e', 'E', 'Cidadãos em suas residências particulares.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000430';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000430' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Guardas Municipais (BSI).', 'Mnemônico: BSI (Bens, Serviços, Instalações).', 'Dica: Embora o STF reconheça a GM como integrante da segurança pública, sua atribuição constitucional literal é o BSI.' from public.questions q where q.public_code = 'PPCE-DC-000430';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Fora da atribuição constitucional.'),
  ('c', 'Incorreta. Fronteiras são da PF.'),
  ('d', 'Incorreta. Desvio de finalidade.'),
  ('e', 'Incorreta. Inviolabilidade do domicílio é protegida por forças policiais e garantias individuais.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000430';

-- -----------------------------------------------------------------------------
-- QUESTÃO 431: ORDEM SOCIAL (EDUCAÇÃO - ART. 208)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000431', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Educação', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O dever do Estado com a educação será efetivado mediante a garantia de educação básica obrigatória e gratuita dos:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '4 (quatro) aos 17 (dezessete) anos de idade.', 1),
  ('b', 'B', '0 (zero) aos 6 (seis) anos de idade.', 2),
  ('c', 'C', '7 (sete) aos 14 (quatorze) anos de idade.', 3),
  ('d', 'D', '6 (seis) aos 18 (dezoito) anos de idade.', 4),
  ('e', 'E', '5 (cinco) aos 15 (quinze) anos de idade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000431';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000431' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Educação Básica Obrigatória.', 'A CF (Art. 208, I) define a obrigatoriedade dos 4 aos 17 anos.', 'Dica: Inclui pré-escola, ensino fundamental e ensino médio.' from public.questions q where q.public_code = 'PPCE-DC-000431';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Período de creche/pré-escola inicial (não obrigatório em sua totalidade).'),
  ('c', 'Incorreta. Regra antiga do ensino fundamental.'),
  ('d', 'Incorreta. Idade limite é 17 anos.'),
  ('e', 'Incorreta. Idade inicial é 4 anos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000431';

-- -----------------------------------------------------------------------------
-- QUESTÃO 432: ORDEM SOCIAL (CULTURA - ART. 216)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000432', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Cultura', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Constituem patrimônio cultural brasileiro os bens de natureza material e imaterial, portadores de referência à identidade, à ação, à memória dos diferentes grupos formadores da sociedade brasileira, nos quais se incluem, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'As patentes de invenções industriais recentes de empresas privadas estrangeiras.', 1),
  ('b', 'B', 'As formas de expressão.', 2),
  ('c', 'C', 'Os modos de criar, fazer e viver.', 3),
  ('d', 'D', 'As criações científicas, artísticas e tecnológicas.', 4),
  ('e', 'E', 'Os conjuntos urbanos e sítios de valor histórico.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000432';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000432' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Patrimônio Cultural (Art. 216).', 'Patentes industriais privadas estrangeiras não são patrimônio cultural brasileiro.', 'Dica: O patrimônio foca na identidade e memória do povo brasileiro.' from public.questions q where q.public_code = 'PPCE-DC-000432';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É patrimônio imaterial (Art. 216, I).'),
  ('c', 'Incorreta. É patrimônio imaterial (Art. 216, II).'),
  ('d', 'Incorreta. É patrimônio material/imaterial (Art. 216, III).'),
  ('e', 'Incorreta. É patrimônio material (Art. 216, V).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000432';

-- -----------------------------------------------------------------------------
-- QUESTÃO 433: ORDEM SOCIAL (CIÊNCIA E TECNOLOGIA - ART. 218)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000433', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Ciência, Tecnologia e Inovação', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Estado promoverá e incentivará o desenvolvimento científico, a pesquisa, a capacitação científica e tecnológica e a inovação. A pesquisa científica básica e tecnológica receberá tratamento prioritário do Estado, tendo em vista:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O bem público e o progresso da ciência e do País.', 1),
  ('b', 'B', 'O lucro exclusivo das empresas estatais.', 2),
  ('c', 'C', 'A substituição total da mão de obra humana por máquinas.', 3),
  ('d', 'D', 'O sigilo absoluto de todas as descobertas científicas.', 4),
  ('e', 'E', 'A exportação de cérebros para outros países.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000433';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000433' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Ciência e Tecnologia (Art. 218).', 'O objetivo é o bem público e o progresso nacional.', 'Dica: A CF incentiva a inovação como motor do desenvolvimento.' from public.questions q where q.public_code = 'PPCE-DC-000433';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O foco é o bem público geral.'),
  ('c', 'Incorreta. A valorização do trabalho humano é princípio da ordem econômica.'),
  ('d', 'Incorreta. A publicidade e a transparência são a regra na ciência pública.'),
  ('e', 'Incorreta. O Estado deve incentivar a fixação de pesquisadores no País.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000433';

-- -----------------------------------------------------------------------------
-- QUESTÃO 434: ORDEM SOCIAL (COMUNICAÇÃO SOCIAL - ART. 222)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000434', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Comunicação Social', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A propriedade de empresa de radiodifusão sonora e de sons e imagens é privativa de brasileiros natos ou naturalizados há mais de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Dez anos.', 1),
  ('b', 'B', 'Cinco anos.', 2),
  ('c', 'C', 'Um ano.', 3),
  ('d', 'D', 'Quinze anos.', 4),
  ('e', 'E', 'Vinte anos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000434';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000434' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Propriedade de Mídia (Art. 222).', 'A CF exige 10 anos de naturalização para ser dono de empresa de radiodifusão.', 'Dica: Também se aplica a pessoas jurídicas constituídas sob leis brasileiras.' from public.questions q where q.public_code = 'PPCE-DC-000434';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Prazo é de 10 anos.'),
  ('c', 'Incorreta. Prazo é de 10 anos.'),
  ('d', 'Incorreta. Prazo é de 10 anos.'),
  ('e', 'Incorreta. Prazo é de 10 anos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000434';

-- -----------------------------------------------------------------------------
-- QUESTÃO 435: ORDEM SOCIAL (FAMÍLIA - ART. 226, § 3º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000435', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Família', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Para efeito da proteção do Estado, é reconhecida a união estável entre o homem e a mulher como entidade familiar, devendo a lei facilitar sua conversão em:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Casamento.', 1),
  ('b', 'B', 'Contrato de prestação de serviços.', 2),
  ('c', 'C', 'Parceria público-privada.', 3),
  ('d', 'D', 'Sociedade por cotas.', 4),
  ('e', 'E', 'Adoção internacional.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000435';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000435' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'União Estável (Art. 226, § 3º).', 'A CF incentiva a conversão em casamento.', 'Dica: O STF estendeu este conceito para uniões homoafetivas.' from public.questions q where q.public_code = 'PPCE-DC-000435';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Relação familiar não é mercantil.'),
  ('c', 'Incorreta. PPP é contrato administrativo.'),
  ('d', 'Incorreta. Família não é empresa.'),
  ('e', 'Incorreta. São institutos diferentes.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000435';

-- -----------------------------------------------------------------------------
-- QUESTÃO 436: MEIO AMBIENTE (USINAS NUCLEARES - ART. 225, § 6º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000436', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Meio Ambiente', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'As usinas que operem com reator nuclear deverão ter sua localização definida em:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Lei federal, sem o que não poderão ser instaladas.', 1),
  ('b', 'B', 'Decreto do Presidente da República.', 2),
  ('c', 'C', 'Resolução do Conselho Nacional do Meio Ambiente.', 3),
  ('d', 'D', 'Lei estadual do local da instalação.', 4),
  ('e', 'E', 'Portaria do Ministério de Minas e Energia.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000436';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000436' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Energia Nuclear (Art. 225, § 6º).', 'A localização de usinas nucleares exige LEI FEDERAL específica.', 'Dica: É uma garantia de controle legislativo sobre atividades de alto risco.' from public.questions q where q.public_code = 'PPCE-DC-000436';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Exige-se lei, não apenas ato do executivo.'),
  ('c', 'Incorreta. CONAMA não tem poder de definir localização por lei.'),
  ('d', 'Incorreta. A matéria nuclear é competência privativa da União.'),
  ('e', 'Incorreta. Portaria é insuficiente.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000436';

-- -----------------------------------------------------------------------------
-- QUESTÃO 437: ÍNDIOS (LÍNGUAS E COSTUMES - ART. 231)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000437', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Índios', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São reconhecidos aos índios sua organização social, costumes, línguas, crenças e tradições, e os direitos originários sobre as terras que tradicionalmente ocupam, competindo à União:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Demarcá-las, proteger e fazer respeitar todos os seus bens.', 1),
  ('b', 'B', 'Vendê-las para exploração de minério internacional.', 2),
  ('c', 'C', 'Extinguir as línguas nativas em favor do português.', 3),
  ('d', 'D', 'Forçar a integração urbana de todas as aldeias.', 4),
  ('e', 'E', 'Cobrar impostos sobre a produção de subsistência indígena.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000437';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000437' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direitos Indígenas (Art. 231).', 'A União tem o dever de demarcar e proteger as terras.', 'Dica: Os direitos dos índios sobre as terras são originários (existem antes da CF).' from public.questions q where q.public_code = 'PPCE-DC-000437';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Terras indígenas são inalienáveis e indisponíveis.'),
  ('c', 'Incorreta. A CF protege o bilinguismo e as línguas nativas.'),
  ('d', 'Incorreta. A CF protege o modo de vida tradicional.'),
  ('e', 'Incorreta. Atividades de subsistência não são foco de tributação arrecadatória.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000437';

-- -----------------------------------------------------------------------------
-- QUESTÃO 438: DIREITOS SOCIAIS (LAZER E MORADIA - ART. 6º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000438', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Sociais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São direitos sociais expressos no caput do Art. 6º da Constituição Federal, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Propriedade de aeronaves privadas.', 1),
  ('b', 'B', 'Educação e saúde.', 2),
  ('c', 'C', 'Alimentação e trabalho.', 3),
  ('d', 'D', 'Moradia e lazer.', 4),
  ('e', 'E', 'Segurança e proteção à maternidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000438';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000438' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direitos Sociais (Art. 6º).', 'Propriedade de aeronaves não é um direito social básico.', 'Dica: Mnemônico: EDU MORA ALI, SAU TRABALHA LA, ASSIS PRO SEGURA TRANS.' from public.questions q where q.public_code = 'PPCE-DC-000438';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Estão previstos.'),
  ('c', 'Incorreta. Estão previstos.'),
  ('d', 'Incorreta. Estão previstos.'),
  ('e', 'Incorreta. Estão previstos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000438';

-- -----------------------------------------------------------------------------
-- QUESTÃO 439: ADMINISTRAÇÃO PÚBLICA (TETO REMUNERATÓRIO - ART. 37, XI)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000439', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Disposições Gerais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O teto remuneratório geral aplicado aos agentes públicos em âmbito federal tem como parâmetro o subsídio mensal, em espécie, dos:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ministros do Supremo Tribunal Federal.', 1),
  ('b', 'B', 'Presidente da República.', 2),
  ('c', 'C', 'Presidente do Senado Federal.', 3),
  ('d', 'D', 'Ministros do Superior Tribunal de Justiça.', 4),
  ('e', 'E', 'Governadores de Estado.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000439';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000439' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Teto Salarial (Art. 37, XI).', 'O subsídio dos Ministros do STF é o teto máximo de todo o funcionalismo público.', 'Dica: Estados e Municípios têm sub-tetos específicos (Prefeito e Governador).' from public.questions q where q.public_code = 'PPCE-DC-000439';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O PR recebe menos que o teto do STF.'),
  ('c', 'Incorreta. Segue o teto do STF.'),
  ('d', 'Incorreta. Segue o teto do STF.'),
  ('e', 'Incorreta. É parâmetro apenas para o Poder Executivo estadual.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000439';

-- -----------------------------------------------------------------------------
-- QUESTÃO 440: CONTROLE DE CONSTITUCIONALIDADE (MEDIDA CAUTELAR)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000440', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Controle de Constitucionalidade', 'Processo e Julgamento', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Salvo no período de recesso, a medida cautelar na ação direta de inconstitucionalidade será concedida por decisão de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Maioria absoluta dos membros do Supremo Tribunal Federal.', 1),
  ('b', 'B', 'Decisão monocrática do Relator em qualquer hipótese.', 2),
  ('c', 'C', 'Maioria simples dos presentes na sessão.', 3),
  ('d', 'D', 'Dois terços dos membros do Tribunal.', 4),
  ('e', 'E', 'Unanimidade dos presentes.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000440';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000440' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Medida Cautelar em ADI.', 'Regra geral: exige-se maioria absoluta (6 ministros).', 'Dica: Só em casos de extrema urgência ou recesso o Relator decide sozinho (ad referendum).' from public.questions q where q.public_code = 'PPCE-DC-000440';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O relator só decide sozinho em casos excepcionais (recesso ou urgência extrema).'),
  ('c', 'Incorreta. Exige-se maioria qualificada (absoluta).'),
  ('d', 'Incorreta. 2/3 é para aprovar Súmula Vinculante.'),
  ('e', 'Incorreta. Não se exige unanimidade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000440';

-- -----------------------------------------------------------------------------
-- QUESTÃO 441: CONTROLE DE CONSTITUCIONALIDADE (MODULAÇÃO DE EFEITOS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000441', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Controle de Constitucionalidade', 'Efeitos da Declaração', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Ao declarar a inconstitucionalidade de lei ou ato normativo, e tendo em vista razões de segurança jurídica ou de excepcional interesse social, poderá o Supremo Tribunal Federal, por maioria de dois terços de seus membros, restringir os efeitos daquela declaração ou decidir que ela só tenha eficácia a partir de seu trânsito em julgado ou de outro momento que venha a ser fixado. Este fenômeno é conhecido como:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Modulação dos efeitos temporais.', 1),
  ('b', 'B', 'Efeito ex tunc automático.', 2),
  ('c', 'C', 'Repristinação constitucional.', 3),
  ('d', 'D', 'Mutação constitucional.', 4),
  ('e', 'E', 'Inconstitucionalidade superveniente.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000441';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000441' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Modulação de Efeitos.', 'A modulação permite ao STF mudar o efeito retroativo (ex tunc) para prospectivo (ex nunc) ou futuro.', 'Dica: Exige quórum alto: 2/3 (8 ministros).' from public.questions q where q.public_code = 'PPCE-DC-000441';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Ex tunc é a regra (retroage), a modulação é a exceção.'),
  ('c', 'Incorreta. Repristinação é a volta da vigência de lei anterior (em regra não permitida no Brasil).'),
  ('d', 'Incorreta. Mutação é alteração de sentido sem mudar o texto.'),
  ('e', 'Incorreta. O Brasil não admite inconstitucionalidade superveniente (lei que era válida e deixa de ser pela mudança da CF).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000441';

-- -----------------------------------------------------------------------------
-- QUESTÃO 442: DIREITOS POLÍTICOS (PERDA E SUSPENSÃO - ART. 15)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000442', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Direitos Políticos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'É vedada a cassação de direitos políticos, cuja perda ou suspensão só se dará nos casos de, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Divergência ideológica com o partido majoritário.', 1),
  ('b', 'B', 'Cancelamento da naturalização por sentença transitada em julgado.', 2),
  ('c', 'C', 'Incapacidade civil absoluta.', 3),
  ('d', 'D', 'Condenação criminal transitada em julgado, enquanto durarem seus efeitos.', 4),
  ('e', 'E', 'Improbidade administrativa.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000442';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000442' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Perda/Suspensão de Direitos Políticos.', 'Não se retiram direitos por ideologia. Cassação é proibida no Brasil.', 'Dica: Casos do Art. 15: Cancelamento naturalização, Incapacidade absoluta, Condenação criminal, Escusa de consciência, Improbidade.' from public.questions q where q.public_code = 'PPCE-DC-000442';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Caso de PERDA (Art. 15, I).'),
  ('c', 'Incorreta. Caso de SUSPENSÃO (Art. 15, II).'),
  ('d', 'Incorreta. Caso de SUSPENSÃO (Art. 15, III).'),
  ('e', 'Incorreta. Caso de SUSPENSÃO (Art. 15, V).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000442';

-- -----------------------------------------------------------------------------
-- QUESTÃO 443: ORGANIZAÇÃO DO ESTADO (TERRITÓRIOS FEDERAIS - ART. 33)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000443', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização do Estado', 'Territórios Federais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A lei disporá sobre a organização administrativa e judiciária dos Territórios. Os Territórios Federais integram a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'União.', 1),
  ('b', 'B', 'Estrutura dos Estados vizinhos.', 2),
  ('c', 'C', 'Autonomia municipal plena.', 3),
  ('d', 'D', 'Confederação Latino-Americana.', 4),
  ('e', 'E', 'Personalidade jurídica de direito privado.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000443';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000443' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Territórios Federais (Art. 18, § 2º).', 'Territórios não têm autonomia política; são autarquias territoriais da UNIÃO.', 'Dica: Atualmente o Brasil não possui territórios federais.' from public.questions q where q.public_code = 'PPCE-DC-000443';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Eles são federais, não estaduais.'),
  ('c', 'Incorreta. Podem ser divididos em municípios, mas o território em si é da União.'),
  ('d', 'Incorreta. Pertencem ao Brasil.'),
  ('e', 'Incorreta. São pessoas jurídicas de direito público.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000443';

-- -----------------------------------------------------------------------------
-- QUESTÃO 444: DEFESA DO ESTADO (CONSELHO DA REPÚBLICA - ART. 89)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000444', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Conselhos e Defesa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O Conselho da República é órgão superior de consulta do Presidente da República, e dele participam, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O Presidente do Supremo Tribunal Federal.', 1),
  ('b', 'B', 'O Vice-Presidente da República.', 2),
  ('c', 'C', 'O Presidente da Câmara dos Deputados.', 3),
  ('d', 'D', 'O Presidente do Senado Federal.', 4),
  ('e', 'E', 'O Ministro da Justiça.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000444';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000444' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Conselho da República.', 'O Presidente do STF NÃO participa do Conselho da República.', 'Dica: Participam o Vice-PR, os presidentes da Câmara/Senado, líderes da maioria/minoria e cidadãos.' from public.questions q where q.public_code = 'PPCE-DC-000444';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É membro nato (Art. 89, I).'),
  ('c', 'Incorreta. É membro nato (Art. 89, II).'),
  ('d', 'Incorreta. É membro nato (Art. 89, III).'),
  ('e', 'Incorreta. É membro nato (Art. 89, VII).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000444';

-- -----------------------------------------------------------------------------
-- QUESTÃO 445: DEFESA DO ESTADO (SEGURANÇA VIÁRIA - ART. 144, § 10)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000445', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A segurança viária, exercida para a preservação da ordem pública e da incolumidade das pessoas e do seu patrimônio nas vias públicas, compreende:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A educação, engenharia e fiscalização de trânsito.', 1),
  ('b', 'B', 'O patrulhamento ostensivo das rodovias federais apenas.', 2),
  ('c', 'C', 'A escolta de presos de alta periculosidade.', 3),
  ('d', 'D', 'O controle de imigração nos aeroportos.', 4),
  ('e', 'E', 'A perícia criminal em acidentes aéreos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000445';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000445' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Segurança Viária (Art. 144, § 10).', 'Tripé da segurança viária: Educação, Engenharia e Fiscalização.', 'Dica: Compete aos Estados, DF e Municípios.' from public.questions q where q.public_code = 'PPCE-DC-000445';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O patrulhamento de rodovias é da PRF, que é apenas uma parte da segurança viária federal.'),
  ('c', 'Incorreta. Atribuição da Polícia Penal/Civil/Militar.'),
  ('d', 'Incorreta. Atribuição da Polícia Federal.'),
  ('e', 'Incorreta. Atribuição do CENIPA (militar).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000445';

-- -----------------------------------------------------------------------------
-- QUESTÃO 446: PODER JUDICIÁRIO (ÓRGÃOS - ART. 92)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000446', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'Órgãos do Poder Judiciário', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São órgãos do Poder Judiciário, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ministério Público.', 1),
  ('b', 'B', 'Supremo Tribunal Federal.', 2),
  ('c', 'C', 'Conselho Nacional de Justiça.', 3),
  ('d', 'D', 'Superior Tribunal de Justiça.', 4),
  ('e', 'E', 'Tribunais Regionais Federais e Juízes Federais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000446';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000446' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Órgãos do Judiciário.', 'O Ministério Público é uma Função Essencial à Justiça, não órgão do Judiciário.', 'Dica: O CNJ faz parte do Judiciário (órgão de controle administrativo).' from public.questions q where q.public_code = 'PPCE-DC-000446';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É o órgão de cúpula (Art. 92, I).'),
  ('c', 'Incorreta. Faz parte do Judiciário (Art. 92, I-A).'),
  ('d', 'Incorreta. É órgão do Judiciário (Art. 92, II).'),
  ('e', 'Incorreta. São órgãos do Judiciário (Art. 92, III).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000446';

-- -----------------------------------------------------------------------------
-- QUESTÃO 447: PODER JUDICIÁRIO (QUINTO CONSTITUCIONAL - ART. 94)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000447', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'Composição dos Tribunais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Um quinto dos lugares dos Tribunais Regionais Federais, dos Tribunais dos Estados, e do Distrito Federal e Territórios será composto de membros do Ministério Público e de advogados. No caso dos advogados, exige-se, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Pelo menos cinco anos de efetiva atividade profissional.', 1),
  ('b', 'B', 'Mais de dez anos de efetiva atividade profissional.', 2),
  ('c', 'C', 'Notável saber jurídico.', 3),
  ('d', 'D', 'Reputação ilibada.', 4),
  ('e', 'E', 'Indicação em lista sêxtupla pelo órgão de classe.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000447';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000447' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Quinto Constitucional.', 'A exigência correta é de MAIS DE DEZ ANOS de atividade, não cinco.', 'Dica: O MP também exige mais de 10 anos de carreira.' from public.questions q where q.public_code = 'PPCE-DC-000447';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É requisito constitucional (Art. 94).'),
  ('c', 'Incorreta. É requisito constitucional.'),
  ('d', 'Incorreta. É requisito constitucional.'),
  ('e', 'Incorreta. É o procedimento correto.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000447';

-- -----------------------------------------------------------------------------
-- QUESTÃO 448: PODER JUDICIÁRIO (VITALICIEDADE - ART. 95, I)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000448', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'Garantias da Magistratura', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A vitaliciedade, no primeiro grau, será adquirida pelo juiz após:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Dois anos de exercício.', 1),
  ('b', 'B', 'Três anos de exercício.', 2),
  ('c', 'C', 'Cinco anos de exercício.', 3),
  ('d', 'D', 'Um ano de exercício.', 4),
  ('e', 'E', 'Dez anos de exercício.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000448';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000448' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Garantias: Vitaliciedade.', 'Magistrados e MP adquirem vitaliciedade em 2 anos.', 'Dica: Servidores comuns adquirem estabilidade em 3 anos. Não confunda!' from public.questions q where q.public_code = 'PPCE-DC-000448';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. 3 anos é o prazo da estabilidade do servidor comum.'),
  ('c', 'Incorreta. Prazo excessivo.'),
  ('d', 'Incorreta. Prazo insuficiente.'),
  ('e', 'Incorreta. Prazo excessivo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000448';

-- -----------------------------------------------------------------------------
-- QUESTÃO 449: CONTROLE DE CONSTITUCIONALIDADE (PARÂMETRO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000449', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Controle de Constitucionalidade', 'Parâmetro de Controle', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Podem servir como paradigma (parâmetro) no controle concentrado de constitucionalidade perante o Supremo Tribunal Federal, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Lei ordinária federal posterior à Constituição.', 1),
  ('b', 'B', 'Normas do texto constitucional originário.', 2),
  ('c', 'C', 'Emendas Constitucionais.', 3),
  ('d', 'D', 'Tratados internacionais de direitos humanos aprovados pelo rito do Art. 5º, § 3º.', 4),
  ('e', 'E', 'Princípios constitucionais implícitos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000449';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000449' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Parâmetro de Controle.', 'Uma lei ordinária é o OBJETO do controle, não o PARÂMETRO (norma de referência).', 'Dica: O parâmetro deve ter status constitucional.' from public.questions q where q.public_code = 'PPCE-DC-000449';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O texto da CF é o parâmetro principal.'),
  ('c', 'Incorreta. ECs integram a CF e servem de parâmetro.'),
  ('d', 'Incorreta. Têm status de emenda e servem de parâmetro.'),
  ('e', 'Incorreta. Princípios fazem parte do bloco de constitucionalidade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000449';

-- -----------------------------------------------------------------------------
-- QUESTÃO 450: REVISÃO (CONCEITO DE CONSTITUIÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000450', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Teoria da Constituição', 'Conceitos e Classificações', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A Constituição que é imposta unilateralmente pelo detentor do poder, sem a participação popular, é classificada como:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Outorgada.', 1),
  ('b', 'B', 'Promulgada.', 2),
  ('c', 'C', 'Cesarista.', 3),
  ('d', 'D', 'Pactuada.', 4),
  ('e', 'E', 'Rígida.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000450';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000450' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Origem das Constituições.', 'Outorgada = Ditadura/Imposição. Promulgada = Democrática/Votação.', 'Dica: A CF/88 é Promulgada.' from public.questions q where q.public_code = 'PPCE-DC-000450';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Promulgada exige Assembleia Constituinte eleita.'),
  ('c', 'Incorreta. Cesarista é outorgada com referendo posterior meramente formal.'),
  ('d', 'Incorreta. Pactuada resulta de acordo entre monarca e burguesia.'),
  ('e', 'Incorreta. Rígida refere-se à dificuldade de alteração, não à origem.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000450';

-- -----------------------------------------------------------------------------
-- QUESTÃO 451: CONTROLE DE CONSTITUCIONALIDADE (SUBSIDIARIEDADE DA ADPF)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000451', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Controle de Constitucionalidade', 'ADPF', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O princípio que determina que a arguição de descumprimento de preceito fundamental (ADPF) só será admitida se não houver outro meio eficaz de sanar a lesividade é o princípio da:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Subsidiariedade.', 1),
  ('b', 'B', 'Supremacia da Constituição.', 2),
  ('c', 'C', 'Simetria Constitucional.', 3),
  ('d', 'D', 'Presunção de constitucionalidade.', 4),
  ('e', 'E', 'Inafastabilidade da jurisdição.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000451';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000451' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'ADPF: Subsidiariedade.', 'A ADPF é a última ratio. Se couber ADI, não cabe ADPF.', 'Dica: Previsto no Art. 4º, § 1º da Lei 9.882/99.' from public.questions q where q.public_code = 'PPCE-DC-000451';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É o fundamento de todo o controle, mas não a regra específica da ADPF.'),
  ('c', 'Incorreta. Trata da reprodução obrigatória de normas federais pelos Estados.'),
  ('d', 'Incorreta. Trata da validade inicial das leis.'),
  ('e', 'Incorreta. Trata do direito de acesso ao Judiciário.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000451';

-- -----------------------------------------------------------------------------
-- QUESTÃO 452: PODER JUDICIÁRIO (VEDAÇÕES AOS MAGISTRADOS - ART. 95, PARÁGRAFO ÚNICO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000452', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'Estatuto da Magistratura', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Aos juízes é vedado, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Exercer o magistério (ser professor), ainda que em disponibilidade.', 1),
  ('b', 'B', 'Exercer, ainda que em disponibilidade, outro cargo ou função, salvo uma de magistério.', 2),
  ('c', 'C', 'Receber, a qualquer título ou pretexto, custas ou participação em processo.', 3),
  ('d', 'D', 'Dedicar-se à atividade político-partidária.', 4),
  ('e', 'E', 'Exercer a advocacia no juízo ou tribunal do qual se afastou, antes de decorridos três anos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000452';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000452' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Vedações (Art. 95, Parágrafo Único).', 'A única função que o juiz PODE acumular é a de professor (magistério).', 'Dica: A alternativa A está errada ao dizer que é vedado ser professor; na verdade é a exceção permitida.' from public.questions q where q.public_code = 'PPCE-DC-000452';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É vedado exercer outro cargo (regra geral).'),
  ('c', 'Incorreta. É vedado receber custas.'),
  ('d', 'Incorreta. É vedado atuar em partido.'),
  ('e', 'Incorreta. É a "quarentena de saída", vedação expressa (Art. 95, V).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000452';

-- -----------------------------------------------------------------------------
-- QUESTÃO 453: PODER JUDICIÁRIO (CNJ - ART. 103-B)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000453', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'CNJ', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Conselho Nacional de Justiça compõe-se de 15 (quinze) membros com mandato de dois anos, admitida uma recondução. O CNJ é presidido pelo:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Presidente do Supremo Tribunal Federal.', 1),
  ('b', 'B', 'Ministro mais antigo do Superior Tribunal de Justiça.', 2),
  ('c', 'C', 'Procurador-Geral da República.', 3),
  ('d', 'D', 'Presidente do Conselho Federal da OAB.', 4),
  ('e', 'E', 'Ministro da Justiça e Segurança Pública.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000453';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000453' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Presidência do CNJ.', 'O Presidente do STF preside automaticamente o CNJ.', 'Dica: O CNJ controla a parte administrativa e financeira do Judiciário.' from public.questions q where q.public_code = 'PPCE-DC-000453';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O Ministro do STJ é o Corregedor Nacional de Justiça.'),
  ('c', 'Incorreta. O PGR é membro, mas não preside.'),
  ('d', 'Incorreta. A OAB tem assento, mas não preside.'),
  ('e', 'Incorreta. O Executivo não interfere na presidência do CNJ.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000453';

-- -----------------------------------------------------------------------------
-- QUESTÃO 454: FUNÇÕES ESSENCIAIS À JUSTIÇA (MINISTÉRIO PÚBLICO - ART. 127)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000454', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Funções Essenciais à Justiça', 'Ministério Público', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O Ministério Público é instituição permanente, essencial à função jurisdicional do Estado, incumbindo-lhe a defesa da ordem jurídica, do regime democrático e dos interesses sociais e individuais indisponíveis. São princípios institucionais do Ministério Público:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Unidade, indivisibilidade e independência funcional.', 1),
  ('b', 'B', 'Hierarquia, disciplina e obediência cega.', 2),
  ('c', 'C', 'Publicidade, oralidade e celeridade.', 3),
  ('d', 'D', 'Livre iniciativa e concorrência.', 4),
  ('e', 'E', 'Anterioridade e irretroatividade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000454';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000454' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Princípios do MP.', 'Mnemônico: UII (Unidade, Indivisibilidade, Independência Funcional).', 'Dica: O MP não possui hierarquia funcional (cada promotor decide conforme sua consciência e a lei).' from public.questions q where q.public_code = 'PPCE-DC-000454';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Hierarquia e disciplina são de órgãos militares e policiais.'),
  ('c', 'Incorreta. São princípios processuais.'),
  ('d', 'Incorreta. São princípios da ordem econômica.'),
  ('e', 'Incorreta. São princípios tributários/penais.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000454';

-- -----------------------------------------------------------------------------
-- QUESTÃO 455: FUNÇÕES ESSENCIAIS À JUSTIÇA (ADVOCACIA PÚBLICA - ART. 131)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000455', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Funções Essenciais à Justiça', 'Advocacia Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A instituição que, diretamente ou através de órgão vinculado, representa a União, judicial e extrajudicialmente, cabendo-lhe, nos termos da lei complementar, as atividades de consultoria e assessoramento jurídico do Poder Executivo, é a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Advocacia-Geral da União (AGU).', 1),
  ('b', 'B', 'Procuradoria-Geral da República (PGR).', 2),
  ('c', 'C', 'Defensoria Pública da União (DPU).', 3),
  ('d', 'D', 'Controladoria-Geral da União (CGU).', 4),
  ('e', 'E', 'Ordem dos Advogados do Brasil (OAB).', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000455';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000455' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Advocacia Pública: AGU.', 'A AGU defende os interesses da União (Governo).', 'Dica: O chefe da AGU é o Advogado-Geral da União, de livre nomeação pelo PR.' from public.questions q where q.public_code = 'PPCE-DC-000455';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A PGR chefia o Ministério Público (defesa da lei).'),
  ('c', 'Incorreta. A DPU defende os necessitados.'),
  ('d', 'Incorreta. A CGU faz o controle interno e auditoria.'),
  ('e', 'Incorreta. A OAB é entidade de classe dos advogados privados.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000455';

-- -----------------------------------------------------------------------------
-- QUESTÃO 456: FUNÇÕES ESSENCIAIS À JUSTIÇA (DEFENSORIA PÚBLICA - ART. 134)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000456', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Funções Essenciais à Justiça', 'Defensoria Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A Defensoria Pública é instituição permanente, essencial à função jurisdicional do Estado, incumbindo-lhe, como expressão e instrumento do regime democrático, fundamentalmente, a orientação jurídica, a promoção dos direitos humanos e a defesa, em todos os graus, judicial e extrajudicial, dos direitos individuais e coletivos, de forma integral e gratuita, aos:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Necessitados.', 1),
  ('b', 'B', 'Grandes empresários.', 2),
  ('c', 'C', 'Agentes públicos de alto escalão exclusivamente.', 3),
  ('d', 'D', 'Estrangeiros em trânsito com alto poder aquisitivo.', 4),
  ('e', 'E', 'Partidos políticos em disputas eleitorais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000456';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000456' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Defensoria Pública: Necessitados.', 'A DPU/DPE atua para quem não tem recursos para pagar advogado.', 'Dica: A autonomia das Defensorias é prevista constitucionalmente.' from public.questions q where q.public_code = 'PPCE-DC-000456';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Quem tem recursos deve contratar advogado privado.'),
  ('c', 'Incorreta. Atua para o cidadão necessitado.'),
  ('d', 'Incorreta. Foca na carência de recursos.'),
  ('e', 'Incorreta. Partidos têm fundos próprios.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000456';

-- -----------------------------------------------------------------------------
-- QUESTÃO 457: PODER JUDICIÁRIO (STF - COMPETÊNCIA PENAL - ART. 102, I, b)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000457', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'Supremo Tribunal Federal', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Compete ao Supremo Tribunal Federal, precipuamente, a guarda da Constituição, cabendo-lhe processar e julgar, originariamente, nas infrações penais comuns:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O Presidente da República, o Vice-Presidente, os membros do Congresso Nacional, seus próprios ministros e o Procurador-Geral da República.', 1),
  ('b', 'B', 'Os Governadores de Estado e do Distrito Federal.', 2),
  ('c', 'C', 'Os Prefeitos de capitais estaduais.', 3),
  ('d', 'D', 'Os Juízes Federais e os membros dos Tribunais Regionais Eleitorais.', 4),
  ('e', 'E', 'Os cidadãos que cometam crimes hediondos contra o patrimônio da União.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000457';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000457' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Competência Originária do STF.', 'O STF julga as maiores autoridades da República em crimes comuns.', 'Dica: Se o crime for de RESPONSABILIDADE, o PR é julgado pelo SENADO.' from public.questions q where q.public_code = 'PPCE-DC-000457';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Governadores são julgados pelo STJ em crimes comuns.'),
  ('c', 'Incorreta. Prefeitos são julgados pelo Tribunal de Justiça (TJ) ou TRF.'),
  ('d', 'Incorreta. São julgados pelo TRF ou STJ, conforme o caso.'),
  ('e', 'Incorreta. Cidadãos comuns são julgados por juízes de 1º grau.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000457';

-- -----------------------------------------------------------------------------
-- QUESTÃO 458: PODER JUDICIÁRIO (STJ - COMPETÊNCIA - ART. 105, I, a)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000458', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'Superior Tribunal de Justiça', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Compete ao Superior Tribunal de Justiça processar e julgar, originariamente, nos crimes comuns:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Os Governadores dos Estados e do Distrito Federal.', 1),
  ('b', 'B', 'Os Ministros de Estado.', 2),
  ('c', 'C', 'Os Senadores da República.', 3),
  ('d', 'D', 'O Vice-Presidente da República.', 4),
  ('e', 'E', 'Os Juízes de Direito dos Estados.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000458';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000458' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Competência Originária do STJ.', 'O STJ julga Governadores em crimes comuns.', 'Dica: Em crimes de responsabilidade, Governadores são julgados por Tribunal Especial.' from public.questions q where q.public_code = 'PPCE-DC-000458';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Ministros de Estado são julgados pelo STF em crimes comuns.'),
  ('c', 'Incorreta. Senadores são julgados pelo STF.'),
  ('d', 'Incorreta. Vice-PR é julgado pelo STF.'),
  ('e', 'Incorreta. Juízes de Direito são julgados pelo TJ local.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000458';

-- -----------------------------------------------------------------------------
-- QUESTÃO 459: PODER JUDICIÁRIO (ESTRUTURA: JUSTIÇA FEDERAL - ART. 106)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000459', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'Justiça Federal', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'São órgãos da Justiça Federal:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Os Tribunais Regionais Federais e os Juízes Federais.', 1),
  ('b', 'B', 'Os Tribunais de Justiça e os Juízes de Direito.', 2),
  ('c', 'C', 'O Tribunal Superior do Trabalho e as Juntas de Conciliação.', 3),
  ('d', 'D', 'O Superior Tribunal Militar e os Conselhos de Justiça.', 4),
  ('e', 'E', 'O Tribunal Superior Eleitoral e as Juntas Eleitorais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000459';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000459' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Justiça Federal (Art. 106).', 'TRFs e Juízes Federais compõem a Justiça Federal comum.', 'Dica: A Justiça Federal julga casos onde a União ou autarquias federais são interessadas.' from public.questions q where q.public_code = 'PPCE-DC-000459';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Integram a Justiça Estadual.'),
  ('c', 'Incorreta. Integram a Justiça do Trabalho.'),
  ('d', 'Incorreta. Integram a Justiça Militar.'),
  ('e', 'Incorreta. Integram a Justiça Eleitoral.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000459';

-- -----------------------------------------------------------------------------
-- QUESTÃO 460: PODER JUDICIÁRIO (CONSELHO NACIONAL DE JUSTIÇA - ATRIBUIÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000460', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'CNJ', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Compete ao Conselho Nacional de Justiça o controle da atuação administrativa e financeira do Poder Judiciário e do cumprimento dos deveres funcionais dos juízes, cabendo-lhe, entre outras atribuições, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Anular decisões jurisdicionais de tribunais em casos de homicídio.', 1),
  ('b', 'B', 'Zelar pela autonomia do Poder Judiciário e pelo cumprimento do Estatuto da Magistratura.', 2),
  ('c', 'C', 'Receber e conhecer das reclamações contra membros ou órgãos do Poder Judiciário.', 3),
  ('d', 'D', 'Representar ao Ministério Público, no caso de crime contra a administração pública.', 4),
  ('e', 'E', 'Zelar pelo cumprimento do princípio da eficiência administrativa no Judiciário.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000460';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000460' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Atribuição do CNJ (Art. 103-B).', 'O CNJ NÃO tem função jurisdicional. Ele não julga processos ou anula sentenças de mérito.', 'Dica: O CNJ é órgão de fiscalização administrativa e disciplinar.' from public.questions q where q.public_code = 'PPCE-DC-000460';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É atribuição do CNJ (Art. 103-B, § 4º, I).'),
  ('c', 'Incorreta. É atribuição do CNJ (Art. 103-B, § 4º, III).'),
  ('d', 'Incorreta. É atribuição do CNJ (Art. 103-B, § 4º, VI).'),
  ('e', 'Incorreta. É dever do CNJ zelar pela legalidade e eficiência.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000460';

-- -----------------------------------------------------------------------------
-- QUESTÃO 461: DEFESA DO ESTADO (ESTADO DE DEFESA - ART. 136)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000461', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Estado de Defesa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Presidente da República pode, ouvidos o Conselho da República e o Conselho de Defesa Nacional, decretar estado de defesa para preservar ou prontamente restabelecer, em locais restritos e determinados, a ordem pública ou a paz social ameaçadas por grave e iminente instabilidade institucional ou atingidas por calamidades de grandes proporções na natureza. O tempo de duração do estado de defesa não será superior a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Trinta dias, podendo ser prorrogado uma vez, por igual período.', 1),
  ('b', 'B', 'Sessenta dias, sem possibilidade de prorrogação.', 2),
  ('c', 'C', 'Quinze dias, renováveis por quanto tempo durar a crise.', 3),
  ('d', 'D', 'Noventa dias, prorrogáveis por mais noventa.', 4),
  ('e', 'E', 'Um ano, com autorização do Senado Federal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000461';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000461' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Estado de Defesa (Art. 136, § 2º).', 'Duração: 30 dias + 30 dias (uma prorrogação).', 'Dica: O PR decreta primeiro e o Congresso aprova depois (em 24h).' from public.questions q where q.public_code = 'PPCE-DC-000461';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Admite uma prorrogação de 30 dias.'),
  ('c', 'Incorreta. O prazo inicial é de 30 dias.'),
  ('d', 'Incorreta. Prazo máximo é 30+30.'),
  ('e', 'Incorreta. Prazo muito superior ao constitucional.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000461';

-- -----------------------------------------------------------------------------
-- QUESTÃO 462: DEFESA DO ESTADO (ESTADO DE SÍTIO - ART. 137)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000462', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Estado de Sítio', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Presidente da República pode, ouvidos o Conselho da República e o Conselho de Defesa Nacional, solicitar ao Congresso Nacional autorização para decretar o estado de sítio nos casos de, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Aumento da inflação acima de dois dígitos.', 1),
  ('b', 'B', 'Comoção grave de repercussão nacional.', 2),
  ('c', 'C', 'Ocorrência de fatos que comprovem a ineficácia de medida tomada durante o estado de defesa.', 3),
  ('d', 'D', 'Declaração de estado de guerra.', 4),
  ('e', 'E', 'Resposta a agressão armada estrangeira.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000462';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000462' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Estado de Sítio: Hipóteses.', 'Crise econômica ou inflação não justificam estado de sítio.', 'Dica: O estado de sítio exige autorização PRÉVIA do Congresso.' from public.questions q where q.public_code = 'PPCE-DC-000462';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Hipótese do Art. 137, I.'),
  ('c', 'Incorreta. Hipótese do Art. 137, I.'),
  ('d', 'Incorreta. Hipótese do Art. 137, II.'),
  ('e', 'Incorreta. Hipótese do Art. 137, II.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000462';

-- -----------------------------------------------------------------------------
-- QUESTÃO 463: SEGURANÇA PÚBLICA (POLÍCIA FEDERAL - ART. 144, § 1º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000463', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A Polícia Federal, instituída por lei como órgão permanente, organizado e mantido pela União e estruturado em carreira, destina-se a, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Exercer, com exclusividade, as funções de polícia ostensiva estadual.', 1),
  ('b', 'B', 'Apurar infrações penais contra a ordem política e social.', 2),
  ('c', 'C', 'Prevenir e reprimir o tráfico ilícito de entorpecentes e drogas afins.', 3),
  ('d', 'D', 'Exercer as funções de polícia marítima, aeroportuária e de fronteiras.', 4),
  ('e', 'E', 'Exercer, com exclusividade, as funções de polícia judiciária da União.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000463';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000463' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Polícia Federal: Atribuições.', 'Polícia ostensiva estadual é atribuição da POLÍCIA MILITAR.', 'Dica: A PF é polícia judiciária da União.' from public.questions q where q.public_code = 'PPCE-DC-000463';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Atribuição prevista no Art. 144, § 1º, I.'),
  ('c', 'Incorreta. Atribuição prevista no Art. 144, § 1º, II.'),
  ('d', 'Incorreta. Atribuição prevista no Art. 144, § 1º, III.'),
  ('e', 'Incorreta. Atribuição prevista no Art. 144, § 1º, IV.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000463';

-- -----------------------------------------------------------------------------
-- QUESTÃO 464: SISTEMA TRIBUTÁRIO (TAXAS - ART. 145, II)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000464', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Sistema Tributário Nacional', 'Espécies Tributárias', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'As taxas não poderão ter base de cálculo própria de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Impostos.', 1),
  ('b', 'B', 'Empréstimos compulsórios.', 2),
  ('c', 'C', 'Contribuições de melhoria.', 3),
  ('d', 'D', 'Preços públicos.', 4),
  ('e', 'E', 'Tarifas de pedágio.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000464';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000464' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Base de Cálculo das Taxas.', 'A taxa não pode incidir sobre a mesma base de um imposto (Art. 145, § 2º).', 'Dica: A taxa é contraprestacional, o imposto não.' from public.questions q where q.public_code = 'PPCE-DC-000464';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A vedação é específica em relação a impostos.'),
  ('c', 'Incorreta. A vedação é específica em relação a impostos.'),
  ('d', 'Incorreta. Preço público é receita originária, não tributo.'),
  ('e', 'Incorreta. Pedágio pode ter natureza tributária ou de preço, mas não é a vedação do Art. 145.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000464';

-- -----------------------------------------------------------------------------
-- QUESTÃO 465: FINANÇAS PÚBLICAS (RECEITAS CORRENTES LÍQUIDAS - ART. 163-A)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000465', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Finanças Públicas', 'Disposições Gerais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A União, os Estados, o Distrito Federal e os Municípios disponibilizarão suas informações e dados contábeis, orçamentários e fiscais, conforme periodicidade, formato e sistema estabelecidos pelo órgão central de contabilidade da União, de forma a garantir:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A transparência e a comparabilidade dos dados.', 1),
  ('b', 'B', 'O sigilo dos gastos com publicidade institucional.', 2),
  ('c', 'C', 'A exclusividade de acesso aos parlamentares da base aliada.', 3),
  ('d', 'D', 'O aumento da carga tributária sem necessidade de lei.', 4),
  ('e', 'E', 'A ocultação de déficits orçamentários temporários.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000465';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000465' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Transparência Fiscal (Art. 163-A).', 'O objetivo é a transparência e a consolidação das contas nacionais.', 'Dica: É o fundamento do Portal da Transparência.' from public.questions q where q.public_code = 'PPCE-DC-000465';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Publicidade deve ser transparente.'),
  ('c', 'Incorreta. O acesso deve ser público e universal.'),
  ('d', 'Incorreta. Fere a legalidade tributária.'),
  ('e', 'Incorreta. Fere a responsabilidade fiscal.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000465';

-- -----------------------------------------------------------------------------
-- QUESTÃO 466: CONTROLE DE CONSTITUCIONALIDADE (INCONSTITUCIONALIDADE POR ARRASTAMENTO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000466', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Controle de Constitucionalidade', 'Efeitos da Declaração', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Quando a declaração de inconstitucionalidade de uma norma principal acaba por atingir outras normas que dependiam dela ou que estavam a ela vinculadas, ocorre o que a doutrina chama de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Inconstitucionalidade por arrastamento (ou reverberação).', 1),
  ('b', 'B', 'Inconstitucionalidade progressiva.', 2),
  ('c', 'C', 'Declaração parcial de inconstitucionalidade sem redução de texto.', 3),
  ('d', 'D', 'Interpretação conforme a Constituição.', 4),
  ('e', 'E', 'Nulidade parcial com redução de texto.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000466';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000466' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Inconstitucionalidade por Arrastamento.', 'Acontece quando a invalidade da norma principal "contamina" a norma acessória.', 'Dica: Muito comum em anexos de leis ou decretos regulamentadores.' from public.questions q where q.public_code = 'PPCE-DC-000466';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Ocorre quando a norma é constitucional no momento, mas está se tornando inconstitucional.'),
  ('c', 'Incorreta. Muda-se o sentido sem excluir o texto.'),
  ('d', 'Incorreta. Técnica de manutenção da lei no ordenamento.'),
  ('e', 'Incorreta. Exclui-se apenas a palavra ou expressão inválida.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000466';

-- -----------------------------------------------------------------------------
-- QUESTÃO 467: PODER JUDICIÁRIO (TRE - COMPOSIÇÃO - ART. 120)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000467', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'Justiça Eleitoral', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Haverá um Tribunal Regional Eleitoral na Capital de cada Estado e no Distrito Federal. Os TREs compõem-se, mediante eleição, pelo voto secreto, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'De dois juízes indicados pelo Presidente da República.', 1),
  ('b', 'B', 'De dois juízes dentre os desembargadores do Tribunal de Justiça.', 2),
  ('c', 'C', 'De dois juízes dentre juízes de direito, escolhidos pelo Tribunal de Justiça.', 3),
  ('d', 'D', 'De um juiz do Tribunal Regional Federal sede.', 4),
  ('e', 'E', 'De dois advogados de notável saber jurídico e idoneidade moral.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000467';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000467' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Composição dos TREs.', 'O Presidente da República nomeia os advogados da lista sêxtupla, mas não "indica" juízes livremente.', 'Dica: A Justiça Eleitoral não possui magistratura própria; seus membros são "emprestados" de outros órgãos.' from public.questions q where q.public_code = 'PPCE-DC-000467';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É membro nato (Art. 120, I, a).'),
  ('c', 'Incorreta. É membro nato (Art. 120, I, b).'),
  ('d', 'Incorreta. É membro nato (Art. 120, II).'),
  ('e', 'Incorreta. É membro nato (Art. 120, III).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000467';

-- -----------------------------------------------------------------------------
-- QUESTÃO 468: PODER JUDICIÁRIO (VOTO DE LIDERANÇA - ART. 93, IX)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000468', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'Disposições Gerais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Todos os julgamentos dos órgãos do Poder Judiciário serão públicos, e fundamentadas todas as decisões, sob pena de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Nulidade.', 1),
  ('b', 'B', 'Multa administrativa ao juiz.', 2),
  ('c', 'C', 'Demissão sumária do magistrado.', 3),
  ('d', 'D', 'Prisão do escrevente.', 4),
  ('e', 'E', 'Redução do tempo de vitaliciedade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000468';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000468' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Fundamentação das Decisões.', 'Decisão sem fundamentação é nula de pleno direito (Art. 93, IX).', 'Dica: A fundamentação é uma garantia contra o arbítrio.' from public.questions q where q.public_code = 'PPCE-DC-000468';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A sanção é processual (nulidade).'),
  ('c', 'Incorreta. Exige processo administrativo disciplinar.'),
  ('d', 'Incorreta. O erro não gera prisão automática.'),
  ('e', 'Incorreta. A vitaliciedade não é elástica.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000468';

-- -----------------------------------------------------------------------------
-- QUESTÃO 469: ORGANIZAÇÃO DO ESTADO (INTERVENÇÃO FEDERAL - ART. 34)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000469', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização do Estado', 'Intervenção', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A União não intervirá nos Estados nem no Distrito Federal, exceto para, entre outras hipóteses:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Manter a integridade nacional.', 1),
  ('b', 'B', 'Aumentar o valor das passagens de ônibus municipais.', 2),
  ('c', 'C', 'Substituir o governador por um interventor de partido diferente.', 3),
  ('d', 'D', 'Impedir a construção de escolas estaduais.', 4),
  ('e', 'E', 'Garantir o lucro de empresas federais em solo estadual.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000469';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000469' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Intervenção Federal (Art. 34).', 'A integridade nacional é a primeira hipótese de intervenção.', 'Dica: A intervenção é medida excepcional que rompe temporariamente a autonomia do Estado.' from public.questions q where q.public_code = 'PPCE-DC-000469';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Fora das hipóteses taxativas.'),
  ('c', 'Incorreta. Desvio de finalidade política.'),
  ('d', 'Incorreta. Educação é dever do Estado.'),
  ('e', 'Incorreta. Não justifica intervenção.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000469';

-- -----------------------------------------------------------------------------
-- QUESTÃO 470: ORDEM SOCIAL (SEGURIDADE SOCIAL: FINANCIAMENTO - ART. 195)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000470', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Seguridade Social', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A seguridade social será financiada por toda a sociedade, de forma direta e indireta, mediante recursos provenientes dos orçamentos da União, dos Estados, do Distrito Federal e dos Municípios, e de contribuições sociais. As receitas dos Estados destinadas à seguridade social constarão dos respectivos orçamentos, não integrando o orçamento da:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'União.', 1),
  ('b', 'B', 'Secretaria de Saúde local.', 2),
  ('c', 'C', 'Própria unidade federativa.', 3),
  ('d', 'D', 'Previdência estadual.', 4),
  ('e', 'E', 'Assembleia Legislativa.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000470';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000470' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Financiamento da Seguridade (Art. 195, § 1º).', 'As receitas estaduais e municipais não se misturam no orçamento da União.', 'Dica: Cada ente cuida do seu orçamento de seguridade.' from public.questions q where q.public_code = 'PPCE-DC-000470';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Elas integram o orçamento da saúde do próprio ente.'),
  ('c', 'Incorreta. Elas integram o orçamento do ente.'),
  ('d', 'Incorreta. Integram o orçamento previdenciário do ente.'),
  ('e', 'Incorreta. A Assembleia aprova o orçamento que as contém.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000470';

-- -----------------------------------------------------------------------------
-- QUESTÃO 471: CONTROLE DE CONSTITUCIONALIDADE (ADO vs MI)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000471', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Controle de Constitucionalidade', 'Instrumentos de Controle', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A ação do controle concentrado que visa combater a inércia do legislador em regulamentar norma constitucional de eficácia limitada, produzindo efeitos erga omnes, é a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ação Direta de Inconstitucionalidade por Omissão (ADO).', 1),
  ('b', 'B', 'Mandado de Injunção (MI).', 2),
  ('c', 'C', 'Habeas Data.', 3),
  ('d', 'D', 'Ação Civil Pública.', 4),
  ('e', 'E', 'Ação Popular.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000471';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000471' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'ADO vs Mandado de Injunção.', 'A ADO é controle CONCENTRADO (erga omnes). O MI é controle DIFUSO (caso concreto/individual).', 'Dica: Ambas combatem a omissão legislativa, mas em planos diferentes.' from public.questions q where q.public_code = 'PPCE-DC-000471';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O MI é remédio constitucional para o caso concreto.'),
  ('c', 'Incorreta. Serve para acesso a informações pessoais.'),
  ('d', 'Incorreta. Protege interesses difusos e coletivos, mas não é controle de constitucionalidade.'),
  ('e', 'Incorreta. Visa anular ato lesivo ao patrimônio público.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000471';

-- -----------------------------------------------------------------------------
-- QUESTÃO 472: PODER JUDICIÁRIO (JUSTIÇA DO TRABALHO - ART. 111)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000472', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'Justiça do Trabalho', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São órgãos da Justiça do Trabalho:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O Tribunal Superior do Trabalho, os Tribunais Regionais do Trabalho e os Juízes do Trabalho.', 1),
  ('b', 'B', 'O Conselho Superior da Justiça Federal.', 2),
  ('c', 'C', 'As Delegacias Regionais do Trabalho.', 3),
  ('d', 'D', 'Os Sindicatos patronais e laborais.', 4),
  ('e', 'E', 'O Ministério do Trabalho e Emprego.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000472';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000472' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Órgãos da Justiça do Trabalho.', 'TST, TRTs e Juízes do Trabalho compõem a estrutura (Art. 111).', 'Dica: Cuidado, as Juntas de Conciliação e Julgamento não existem mais (foram substituídas por juízes singulares).' from public.questions q where q.public_code = 'PPCE-DC-000472';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O CSJT é o órgão de controle, mas não a base da jurisdição.'),
  ('c', 'Incorreta. São órgãos do Poder Executivo.'),
  ('d', 'Incorreta. São entidades associativas privadas.'),
  ('e', 'Incorreta. É órgão do Poder Executivo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000472';

-- -----------------------------------------------------------------------------
-- QUESTÃO 473: PODER JUDICIÁRIO (TST: COMPOSIÇÃO - ART. 111-A)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000473', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'Justiça do Trabalho', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O Tribunal Superior do Trabalho compor-se-á de vinte e sete Ministros, escolhidos dentre brasileiros com mais de trinta e cinco e menos de setenta anos de idade, nomeados pelo Presidente da República após aprovação pela maioria absoluta do:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Senado Federal.', 1),
  ('b', 'B', 'Câmara dos Deputados.', 2),
  ('c', 'C', 'Congresso Nacional.', 3),
  ('d', 'D', 'Supremo Tribunal Federal.', 4),
  ('e', 'E', 'Conselho Nacional de Justiça.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000473';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000473' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Composição do TST.', 'A aprovação de ministros de tribunais superiores é competência do SENADO.', 'Dica: Mnemônico para o número de ministros: TST = Trinta Sem Três (27).' from public.questions q where q.public_code = 'PPCE-DC-000473';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A Câmara não aprova ministros.'),
  ('c', 'Incorreta. É função exclusiva do Senado.'),
  ('d', 'Incorreta. O STF pode participar da lista, mas não da sabatina.'),
  ('e', 'Incorreta. O CNJ não aprova nomeações.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000473';

-- -----------------------------------------------------------------------------
-- QUESTÃO 474: PODER JUDICIÁRIO (JUSTIÇA MILITAR - ART. 122)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000474', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'Justiça Militar', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'São órgãos da Justiça Militar:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O Superior Tribunal Militar e os Tribunais e Juízes Militares instituídos por lei.', 1),
  ('b', 'B', 'O Conselho de Defesa Nacional.', 2),
  ('c', 'C', 'O Ministério da Defesa.', 3),
  ('d', 'D', 'O Estado-Maior das Forças Armadas.', 4),
  ('e', 'E', 'A Polícia do Exército e a Marinha.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000474';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000474' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Justiça Militar (Art. 122).', 'A JM compõe-se do STM e dos tribunais/juízes inferiores.', 'Dica: O STM tem 15 ministros (Mnemônico: "Somos Todos Moças" - 15 anos/ministros, brincadeira jurídica comum).' from public.questions q where q.public_code = 'PPCE-DC-000474';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Órgão de consulta do PR.'),
  ('c', 'Incorreta. Órgão do Executivo.'),
  ('d', 'Incorreta. Órgão técnico-militar.'),
  ('e', 'Incorreta. São instituições das Forças Armadas, não judiciárias.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000474';

-- -----------------------------------------------------------------------------
-- QUESTÃO 475: PODER JUDICIÁRIO (PRECEDENTES E RECLAMAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000475', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Controle de Constitucionalidade', 'Reclamação Constitucional', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Contra a omissão ou ato da administração pública que contrarie enunciado de súmula vinculante, caberá:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Reclamação ao Supremo Tribunal Federal.', 1),
  ('b', 'B', 'Recurso Extraordinário ao STF.', 2),
  ('c', 'C', 'Mandado de Segurança ao Tribunal de Justiça local.', 3),
  ('d', 'D', 'Habeas Corpus preventivo.', 4),
  ('e', 'E', 'Ação Direta de Inconstitucionalidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000475';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000475' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Reclamação Constitucional.', 'A reclamação é o instrumento para garantir a autoridade das decisões do STF e das Súmulas Vinculantes.', 'Dica: Prevista no Art. 103-A, § 3º.' from public.questions q where q.public_code = 'PPCE-DC-000475';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Recurso Extraordinário é para reformar sentenças judiciais.'),
  ('c', 'Incorreta. Embora caiba MS em alguns casos, a Reclamação ao STF é o meio específico previsto no Art. 103-A.'),
  ('d', 'Incorreta. HC protege a liberdade de locomoção.'),
  ('e', 'Incorreta. ADI é para o controle da lei em tese, não do ato administrativo específico.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000475';

-- -----------------------------------------------------------------------------
-- QUESTÃO 476: ORGANIZAÇÃO DO ESTADO (FORMAÇÃO DE ESTADOS - ART. 18, § 3º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000476', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Organização do Estado', 'Formação de Estados', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Os Estados podem incorporar-se entre si, subdividir-se ou desmembrar-se para se anexarem a outros, ou formarem novos Estados ou Territórios Federais, mediante aprovação da população diretamente interessada, através de plebiscito, e do:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Congresso Nacional, por lei complementar.', 1),
  ('b', 'B', 'Presidente da República, por decreto-lei.', 2),
  ('c', 'C', 'Supremo Tribunal Federal, por decisão plenária.', 3),
  ('d', 'D', 'Senado Federal apenas, por resolução.', 4),
  ('e', 'E', 'Governador do Estado, por decreto legislativo.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000476';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000476' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Formação de Estados.', 'Exige-se: 1) Plebiscito e 2) Lei Complementar do Congresso.', 'Dica: O plebiscito é vinculante (se o povo disser não, o processo para).' from public.questions q where q.public_code = 'PPCE-DC-000476';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Decreto-lei não existe mais na CF/88 para este fim.'),
  ('c', 'Incorreta. O STF não cria estados.'),
  ('d', 'Incorreta. Exige-se o Congresso (Câmara + Senado) e por lei complementar.'),
  ('e', 'Incorreta. Compete ao nível federal.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000476';

-- -----------------------------------------------------------------------------
-- QUESTÃO 477: PODER LEGISLATIVO (COMISSÕES PARLAMENTARES DE INQUÉRITO - ART. 58, § 3º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000477', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Legislativo', 'Comissões', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'As comissões parlamentares de inquérito, que terão poderes de investigação próprios das autoridades judiciais, além de outros previstos nos regimentos das respectivas Casas, serão criadas pela Câmara dos Deputados e pelo Senado Federal, em conjunto ou separadamente, mediante requerimento de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Um terço de seus membros.', 1),
  ('b', 'B', 'Metade mais um de seus membros.', 2),
  ('c', 'C', 'Dois terços de seus membros.', 3),
  ('d', 'D', 'Maioria absoluta de seus membros.', 4),
  ('e', 'E', 'Líderes de todos os partidos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000477';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000477' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'CPI (Art. 58, § 3º).', 'Quórum de criação: 1/3 (minorias parlamentares).', 'Dica: A CPI não pode prender (exceto flagrante), nem julgar, nem determinar interceptação telefônica.' from public.questions q where q.public_code = 'PPCE-DC-000477';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. 1/3 é o quórum de proteção à minoria.'),
  ('c', 'Incorreta. Quórum de emenda constitucional.'),
  ('d', 'Incorreta. Quórum de aprovação de leis complementares.'),
  ('e', 'Incorreta. Requerimento por membros individuais.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000477';

-- -----------------------------------------------------------------------------
-- QUESTÃO 478: PODER EXECUTIVO (SUBSTITUIÇÃO DO PRESIDENTE - ART. 80)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000478', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Executivo', 'Substituição e Sucessão', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Em caso de impedimento do Presidente e do Vice-Presidente, ou vacância dos respectivos cargos, serão sucessivamente chamados ao exercício da Presidência:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O Presidente da Câmara dos Deputados, o do Senado Federal e o do Supremo Tribunal Federal.', 1),
  ('b', 'B', 'O Presidente do STF, o do Senado e o da Câmara.', 2),
  ('c', 'C', 'O Ministro da Justiça, o das Relações Exteriores e o da Defesa.', 3),
  ('d', 'D', 'O Procurador-Geral da República e o Advogado-Geral da União.', 4),
  ('e', 'E', 'O Comandante do Exército, o da Marinha e o da Aeronáutica.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000478';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000478' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Linha de Sucessão (Art. 80).', 'Ordem: Câmara -> Senado -> STF.', 'Dica: Esses substitutos exercem a presidência temporariamente até novas eleições.' from public.questions q where q.public_code = 'PPCE-DC-000478';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Ordem invertida.'),
  ('c', 'Incorreta. Ministros não estão na linha de sucessão direta constitucional.'),
  ('d', 'Incorreta. Chefes de funções essenciais não sucedem o PR.'),
  ('e', 'Incorreta. Forças Armadas não sucedem o PR.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000478';

-- -----------------------------------------------------------------------------
-- QUESTÃO 479: CONTROLE DE CONSTITUCIONALIDADE (FORMAL vs MATERIAL)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000479', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Controle de Constitucionalidade', 'Espécies de Inconstitucionalidade', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Quando uma lei é aprovada sem observar o quórum de votação exigido pela Constituição ou por vício de iniciativa (ex: deputado propondo lei de competência do PR), diz-se que há uma inconstitucionalidade:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Formal (nomodinâmica).', 1),
  ('b', 'B', 'Material (nomoestática).', 2),
  ('c', 'C', 'Por omissão total.', 3),
  ('d', 'D', 'Superveniente.', 4),
  ('e', 'E', 'Indireta ou reflexa.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000479';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000479' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Inconstitucionalidade Formal.', 'Refere-se ao erro no processo de criação da lei (forma).', 'Dica: Se o erro for no CONTEÚDO (texto fere direito), a inconstitucionalidade é MATERIAL.' from public.questions q where q.public_code = 'PPCE-DC-000479';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Material refere-se ao conteúdo da lei.'),
  ('c', 'Incorreta. Omissão é quando a lei não existe.'),
  ('d', 'Incorreta. Ocorre quando a norma nasce válida e a CF muda (não aceito no Brasil).'),
  ('e', 'Incorreta. Ocorre quando a lei fere um decreto que fere a CF (crise de legalidade).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000479';

-- -----------------------------------------------------------------------------
-- QUESTÃO 480: ADMINISTRAÇÃO PÚBLICA (ESTABILIDADE - ART. 41)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000480', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Administração Pública', 'Servidores Públicos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'São estáveis após três anos de efetivo exercício os servidores nomeados para cargo de provimento efetivo em virtude de concurso público. O servidor público estável só perderá o cargo, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Por ato unilateral do chefe imediato motivado por antipatia.', 1),
  ('b', 'B', 'Em virtude de sentença judicial transitada em julgado.', 2),
  ('c', 'C', 'Mediante processo administrativo em que lhe seja assegurada ampla defesa.', 3),
  ('d', 'D', 'Mediante procedimento de avaliação periódica de desempenho.', 4),
  ('e', 'E', 'Para cumprimento de limites de despesa com pessoal previstos na LRF.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000480';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000480' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Perda do Cargo (Art. 41, § 1º).', 'A estabilidade protege o servidor contra demissões arbitrárias por perseguição.', 'Dica: A avaliação de desempenho deve ser feita por lei complementar.' from public.questions q where q.public_code = 'PPCE-DC-000480';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Hipótese do Art. 41, § 1º, I.'),
  ('c', 'Incorreta. Hipótese do Art. 41, § 1º, II.'),
  ('d', 'Incorreta. Hipótese do Art. 41, § 1º, III.'),
  ('e', 'Incorreta. Hipótese de corte de gastos (Art. 169).')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000480';

-- -----------------------------------------------------------------------------
-- QUESTÃO 481: CONTROLE DE CONSTITUCIONALIDADE (CLAUSULA DE RESERVA DE PLENÁRIO - ART. 97)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000481', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Controle de Constitucionalidade', 'Reserva de Plenário', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Somente pelo voto da maioria absoluta de seus membros ou dos membros do respectivo órgão especial poderão os tribunais declarar a inconstitucionalidade de lei ou ato normativo do Poder Público. Esta regra é conhecida como:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Cláusula de reserva de plenário (Full Bench Rule).', 1),
  ('b', 'B', 'Cláusula de irrecorribilidade das decisões do STF.', 2),
  ('c', 'C', 'Princípio da colegialidade obrigatória.', 3),
  ('d', 'D', 'Efeito vinculante horizontal.', 4),
  ('e', 'E', 'Quórum de modulação.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000481';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000481' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Reserva de Plenário (Art. 97).', 'Turmas ou órgãos fracionários de tribunais não podem declarar lei inconstitucional sozinhos; precisam levar ao Pleno ou Órgão Especial.', 'Dica: Súmula Vinculante nº 10 reforça que violar esta regra é inconstitucional.' from public.questions q where q.public_code = 'PPCE-DC-000481';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Nome não condiz com a regra do Art. 97.'),
  ('c', 'Incorreta. Embora envolva colegiado, o nome técnico é Reserva de Plenário.'),
  ('d', 'Incorreta. Trata da vinculação a outros órgãos.'),
  ('e', 'Incorreta. Trata do tempo dos efeitos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000481';

-- -----------------------------------------------------------------------------
-- QUESTÃO 482: PODER JUDICIÁRIO (CNJ - COMPOSIÇÃO: ADVOGADOS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000482', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'CNJ', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Quantos advogados, indicados pelo Conselho Federal da Ordem dos Advogados do Brasil, compõem o Conselho Nacional de Justiça?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Dois.', 1),
  ('b', 'B', 'Um.', 2),
  ('c', 'C', 'Três.', 3),
  ('d', 'D', 'Quatro.', 4),
  ('e', 'E', 'Cinco.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000482';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000482' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Membros da OAB no CNJ.', 'A OAB indica 2 advogados para o CNJ (Art. 103-B, XII).', 'Dica: O CNJ também tem 2 cidadãos e 2 membros do MP.' from public.questions q where q.public_code = 'PPCE-DC-000482';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. São 2 membros.'),
  ('c', 'Incorreta. São 2 membros.'),
  ('d', 'Incorreta. São 2 membros.'),
  ('e', 'Incorreta. São 2 membros.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000482';

-- -----------------------------------------------------------------------------
-- QUESTÃO 483: FUNÇÕES ESSENCIAIS À JUSTIÇA (PGR - NOMEAÇÃO - ART. 128)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000483', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Funções Essenciais à Justiça', 'Ministério Público', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Ministério Público da União tem por chefe o Procurador-Geral da República, nomeado pelo Presidente da República dentre integrantes da carreira, maiores de trinta e cinco anos, após a aprovação de seu nome pela maioria absoluta dos membros do Senado Federal, para mandato de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Dois anos, permitida a recondução.', 1),
  ('b', 'B', 'Quatro anos, vedada a recondução.', 2),
  ('c', 'C', 'Cinco anos, renováveis uma única vez.', 3),
  ('d', 'D', 'Vitalício.', 4),
  ('e', 'E', 'Oito anos, sem recondução.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000483';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000483' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Mandato do PGR (Art. 128, § 1º).', 'Mandato de 2 anos, podendo ser reconduzido (não há limite expresso de reconduções na CF).', 'Dica: Cuidado, os PGJs (estaduais) só permitem UMA recondução.' from public.questions q where q.public_code = 'PPCE-DC-000483';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Prazo é de 2 anos e permite recondução.'),
  ('c', 'Incorreta. Prazo é de 2 anos.'),
  ('d', 'Incorreta. O cargo de chefia é temporário.'),
  ('e', 'Incorreta. Prazo muito longo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000483';

-- -----------------------------------------------------------------------------
-- QUESTÃO 484: SEGURANÇA PÚBLICA (POLÍCIA RODOVIÁRIA FEDERAL - ART. 144, § 2º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000484', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A Polícia Rodoviária Federal, órgão permanente, organizado e mantido pela União e estruturado em carreira, destina-se, na forma da lei, ao:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Patrulhamento ostensivo das rodovias federais.', 1),
  ('b', 'B', 'Policiamento preventivo dos rios e lagos.', 2),
  ('c', 'C', 'Investigação de crimes eleitorais.', 3),
  ('d', 'D', 'Controle da emissão de passaportes.', 4),
  ('e', 'E', 'Segurança pessoal de diplomatas estrangeiros.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000484';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000484' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'PRF (Art. 144, § 2º).', 'A PRF faz o patrulhamento ostensivo nas rodovias federais (BRs).', 'Dica: É polícia ostensiva, diferentemente da PF que é judiciária.' from public.questions q where q.public_code = 'PPCE-DC-000484';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Atribuição da Polícia Ferroviária (vias férreas) ou outros órgãos.'),
  ('c', 'Incorreta. Atribuição da PF.'),
  ('d', 'Incorreta. Atribuição da PF.'),
  ('e', 'Incorreta. Atribuição da PF.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000484';

-- -----------------------------------------------------------------------------
-- QUESTÃO 485: ORDEM SOCIAL (ASSISTÊNCIA SOCIAL - BPC - ART. 203, V)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000485', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Ordem Social', 'Assistência Social', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A garantia de um salário mínimo de benefício mensal à pessoa com deficiência e ao idoso que comprovem não possuir meios de prover à própria manutenção ou de tê-la provida por sua família, conforme dispuser a lei, é assegurada por qual área da seguridade social?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Assistência Social.', 1),
  ('b', 'B', 'Previdência Social.', 2),
  ('c', 'C', 'Saúde Pública.', 3),
  ('d', 'D', 'Seguro de Acidentes de Trabalho.', 4),
  ('e', 'E', 'Fundo de Amparo ao Trabalhador.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000485';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000485' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'BPC/LOAS (Art. 203, V).', 'O BPC é um benefício ASSISTENCIAL (não exige contribuição).', 'Dica: Pagos pelo INSS, mas a verba é da Assistência Social.' from public.questions q where q.public_code = 'PPCE-DC-000485';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Previdência exige contribuição prévia.'),
  ('c', 'Incorreta. Saúde oferece serviços e ações, não renda direta mensal desta natureza.'),
  ('d', 'Incorreta. Benefício previdenciário específico.'),
  ('e', 'Incorreta. Destinado ao seguro-desemprego e abono.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000485';

-- -----------------------------------------------------------------------------
-- QUESTÃO 486: CONTROLE DE CONSTITUCIONALIDADE (ADC - ART. 102, § 2º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000486', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Controle de Constitucionalidade', 'Ação Declaratória de Constitucionalidade', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'As decisões definitivas de mérito, proferidas pelo Supremo Tribunal Federal, nas ações declaratórias de constitucionalidade, produzirão eficácia contra todos e efeito vinculante em relação:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Aos demais órgãos do Poder Judiciário e à administração pública direta e indireta.', 1),
  ('b', 'B', 'Ao Poder Legislativo em sua função típica de criar leis.', 2),
  ('c', 'C', 'Exclusivamente às partes envolvidas no processo.', 3),
  ('d', 'D', 'Apenas aos Tribunais de Justiça estaduais.', 4),
  ('e', 'E', 'Aos órgãos de controle externo apenas (TRIBUNAIS DE CONTAS).', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000486';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000486' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Efeitos da ADC (Art. 102, § 2º).', 'A ADC tem efeito erga omnes e vinculante.', 'Dica: Funciona como uma ADI "ao contrário", confirmando a validade da lei.' from public.questions q where q.public_code = 'PPCE-DC-000486';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Não vincula o Legislativo na função legiferante.'),
  ('c', 'Incorreta. Tem efeito contra todos (erga omnes).'),
  ('d', 'Incorreta. Vincula todo o Judiciário e Administração.'),
  ('e', 'Incorreta. Vincula todo o poder público.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000486';

-- -----------------------------------------------------------------------------
-- QUESTÃO 487: PODER JUDICIÁRIO (MP NO CNJ)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000487', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'CNJ', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Quem indica o membro do Ministério Público Estadual que irá compor o Conselho Nacional de Justiça?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O Procurador-Geral da República, após escolha pelo colégio de procuradores-gerais.', 1),
  ('b', 'B', 'O Governador do Estado onde o membro atua.', 2),
  ('c', 'C', 'O Presidente do respectivo Tribunal de Justiça.', 3),
  ('d', 'D', 'O Conselho Nacional do Ministério Público (CNMP).', 4),
  ('e', 'E', 'O Presidente do Supremo Tribunal Federal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000487';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000487' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MP no CNJ.', 'A indicação é do PGR (Art. 103-B, XI).', 'Dica: O membro deve ser do MP estadual escolhido entre os indicados.' from public.questions q where q.public_code = 'PPCE-DC-000487';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O Executivo não indica membros do MP para o CNJ.'),
  ('c', 'Incorreta. O TJ não tem essa atribuição.'),
  ('d', 'Incorreta. O CNMP indica membros para si mesmo, não para o CNJ.'),
  ('e', 'Incorreta. O Presidente do STF preside o CNJ, mas não indica os membros do MP.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000487';

-- -----------------------------------------------------------------------------
-- QUESTÃO 488: REVISÃO (PODER CONSTITUINTE DERIVADO REVISOR)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000488', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Teoria da Constituição', 'Poder Constituinte', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A revisão constitucional prevista no Ato das Disposições Constitucionais Transitórias (ADCT) ocorreu uma única vez, cinco anos após a promulgação da CF, mediante voto de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Maioria absoluta dos membros do Congresso Nacional, em sessão unicameral.', 1),
  ('b', 'B', 'Três quintos dos membros de cada Casa, em dois turnos.', 2),
  ('c', 'C', 'Maioria simples dos presentes.', 3),
  ('d', 'D', 'Unanimidade do Senado Federal.', 4),
  ('e', 'E', 'Aprovação por plebiscito nacional.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000488';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000488' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Revisão Constitucional (ADCT Art. 3).', 'A revisão foi mais simples que a emenda: maioria absoluta e sessão unicameral (Câmara e Senado juntos).', 'Dica: Gerou as Emendas Constitucionais de Revisão (ECR).' from public.questions q where q.public_code = 'PPCE-DC-000488';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Este é o rito da Emenda Constitucional comum (Poder Reformador).'),
  ('c', 'Incorreta. Quórum insuficiente.'),
  ('d', 'Incorreta. Quórum não previsto.'),
  ('e', 'Incorreta. O plebiscito foi para a forma e sistema de governo, não para a revisão em si.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000488';

-- -----------------------------------------------------------------------------
-- QUESTÃO 489: SEGURANÇA PÚBLICA (POLÍCIA MILITAR - ART. 144, § 5º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000489', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Às polícias militares cabem a polícia ostensiva e a preservação da ordem pública; aos corpos de bombeiros militares, além das atribuições definidas em lei, incumbe a execução de atividades de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Defesa civil.', 1),
  ('b', 'B', 'Polícia judiciária estadual.', 2),
  ('c', 'C', 'Guarda de presídios federais.', 3),
  ('d', 'D', 'Fiscalização de impostos estaduais.', 4),
  ('e', 'E', 'Segurança de portos e aeroportos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000489';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000489' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Bombeiros Militares (Art. 144, § 5º).', 'A função típica dos Bombeiros é a DEFESA CIVIL.', 'Dica: Eles são forças auxiliares e reserva do Exército.' from public.questions q where q.public_code = 'PPCE-DC-000489';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Atribuição da Polícia Civil.'),
  ('c', 'Incorreta. Atribuição da Polícia Penal.'),
  ('d', 'Incorreta. Atribuição da SEFAZ.'),
  ('e', 'Incorreta. Atribuição da Polícia Federal.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000489';

-- -----------------------------------------------------------------------------
-- QUESTÃO 490: PODER JUDICIÁRIO (CNJ - MEMBROS DO CIDADÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000490', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'CNJ', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Os dois cidadãos, de notável saber jurídico e reputação ilibada, que compõem o Conselho Nacional de Justiça são indicados, um por cada uma das seguintes casas:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Câmara dos Deputados e Senado Federal.', 1),
  ('b', 'B', 'Supremo Tribunal Federal e Superior Tribunal de Justiça.', 2),
  ('c', 'C', 'Presidência da República e Vice-Presidência.', 3),
  ('d', 'D', 'OAB e Ministério Público.', 4),
  ('e', 'E', 'Conselho da República e Conselho de Defesa.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000490';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000490' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Cidadãos no CNJ (Art. 103-B, XIII).', 'O Legislativo indica os 2 cidadãos (um pela Câmara e um pelo Senado).', 'Dica: É a participação direta da sociedade no controle do Judiciário via seus representantes.' from public.questions q where q.public_code = 'PPCE-DC-000490';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Tribunais indicam juízes/ministros.'),
  ('c', 'Incorreta. O Executivo não indica cidadãos para o CNJ.'),
  ('d', 'Incorreta. Indicam seus próprios membros.'),
  ('e', 'Incorreta. Não possuem esta função.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000490';

-- -----------------------------------------------------------------------------
-- QUESTÃO 491: PODER JUDICIÁRIO (CNMP - ART. 130-A)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000491', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Funções Essenciais à Justiça', 'Ministério Público', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Conselho Nacional do Ministério Público compõe-se de quatorze membros nomeados pelo Presidente da República, após a aprovação pela maioria absoluta do Senado Federal, para um mandato de dois anos, admitida uma recondução. O CNMP é presidido pelo:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Procurador-Geral da República.', 1),
  ('b', 'B', 'Ministro da Justiça.', 2),
  ('c', 'C', 'Presidente do Supremo Tribunal Federal.', 3),
  ('d', 'D', 'Membro mais antigo do MP Estadual.', 4),
  ('e', 'E', 'Presidente da OAB.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000491';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000491' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Presidência do CNMP.', 'O PGR preside o CNMP (Art. 130-A).', 'Dica: O CNMP tem 14 membros (um a menos que o CNJ).' from public.questions q where q.public_code = 'PPCE-DC-000491';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Executivo não preside.'),
  ('c', 'Incorreta. O Presidente do STF preside o CNJ.'),
  ('d', 'Incorreta. Critério não previsto.'),
  ('e', 'Incorreta. OAB tem assento, mas não preside.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000491';

-- -----------------------------------------------------------------------------
-- QUESTÃO 492: DIREITO CONSTITUCIONAL (NORMAS CONSTITUCIONAIS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000492', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Teoria da Constituição', 'Eficácia das Normas', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'As normas constitucionais que dependem de lei integradora para produzir todos os seus efeitos, mas que já possuem um efeito negativo (impedir leis contrárias), são classificadas como de eficácia:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Limitada.', 1),
  ('b', 'B', 'Plena.', 2),
  ('c', 'C', 'Contida.', 3),
  ('d', 'D', 'Exaurida.', 4),
  ('e', 'E', 'Supra-constitucional.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000492';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000492' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Eficácia Limitada.', 'Normas de eficácia limitada não produzem efeitos plenos de imediato, exigindo lei complementar ou ordinária.', 'Dica: Ex: Direito de greve do servidor público.' from public.questions q where q.public_code = 'PPCE-DC-000492';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Produz efeitos imediatos e integrais.'),
  ('c', 'Incorreta. Produz efeitos imediatos, mas pode ser restringida por lei posterior.'),
  ('d', 'Incorreta. Normas que já cumpriram seu papel (ex: ADCT).'),
  ('e', 'Incorreta. Conceito inexistente na classificação clássica de José Afonso da Silva.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000492';

-- -----------------------------------------------------------------------------
-- QUESTÃO 493: PODER JUDICIÁRIO (QUINTA CONSTITUCIONAL NO TST - ART. 111-A, I)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000493', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'Justiça do Trabalho', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'No Tribunal Superior do Trabalho (TST), um quinto das vagas é destinado a advogados e membros do Ministério Público do Trabalho. A indicação para estas vagas ocorre mediante:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Lista sêxtupla enviada pelos órgãos de representação das respectivas classes.', 1),
  ('b', 'B', 'Escolha direta do Presidente do STF.', 2),
  ('c', 'C', 'Concurso público de provas e títulos exclusivo.', 3),
  ('d', 'D', 'Eleição direta entre os pares.', 4),
  ('e', 'E', 'Indicação exclusiva do Conselho Nacional de Justiça.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000493';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000493' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Quinto no TST.', 'Segue a regra geral do Quinto: classe indica 6 nomes -> tribunal reduz para 3 -> PR escolhe 1.', 'Dica: No TST os nomes do MP devem vir do MPT (Trabalho).' from public.questions q where q.public_code = 'PPCE-DC-000493';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Fere o processo do Art. 94/111-A.'),
  ('c', 'Incorreta. O Quinto é vaga de indicação, não concurso.'),
  ('d', 'Incorreta. A escolha final é do PR.'),
  ('e', 'Incorreta. O CNJ não faz a lista sêxtupla.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000493';

-- -----------------------------------------------------------------------------
-- QUESTÃO 494: SEGURANÇA PÚBLICA (POLÍCIA PENAL FEDERAL - ART. 144, § 5º-A)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000494', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A polícia penal federal é vinculada ao órgão administrador do:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sistema penal federal.', 1),
  ('b', 'B', 'Governo do Distrito Federal.', 2),
  ('c', 'C', 'Conselho Nacional de Justiça.', 3),
  ('d', 'D', 'Ministério Público da União.', 4),
  ('e', 'E', 'Supremo Tribunal Federal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000494';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000494' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Polícia Penal Federal (Art. 144, § 5º-A).', 'A PPF cuida dos presídios federais e é vinculada à União (DEPEN/MJSP).', 'Dica: Criada pela EC 104/2019.' from public.questions q where q.public_code = 'PPCE-DC-000494';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Existe a polícia penal do DF específica.'),
  ('c', 'Incorreta. Órgão de controle, não administrativo executivo.'),
  ('d', 'Incorreta. Função essencial, não segurança.'),
  ('e', 'Incorreta. Órgão judiciário.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000494';

-- -----------------------------------------------------------------------------
-- QUESTÃO 495: DIREITOS FUNDAMENTAIS (REMÉDIOS: MANDADO DE INJUNÇÃO COLETIVO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000495', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Remédios Constitucionais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Podem propor Mandado de Injunção Coletivo, de acordo com a Lei 13.300/2016 e a jurisprudência constitucional, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Cidadão individual em nome próprio para defesa de direito difuso.', 1),
  ('b', 'B', 'Ministério Público.', 2),
  ('c', 'C', 'Partido político com representação no Congresso Nacional.', 3),
  ('d', 'D', 'Organização sindical, entidade de classe ou associação legalmente constituída.', 4),
  ('e', 'E', 'Defensoria Pública.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000495';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000495' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'MI Coletivo.', 'O cidadão individual só propõe MI INDIVIDUAL. Para o coletivo, exige-se legitimidade especial.', 'Dica: O rol é similar ao do MS Coletivo.' from public.questions q where q.public_code = 'PPCE-DC-000495';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É legitimado (Lei 13.300/16).'),
  ('c', 'Incorreta. É legitimado.'),
  ('d', 'Incorreta. É legitimado.'),
  ('e', 'Incorreta. É legitimada.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000495';

-- -----------------------------------------------------------------------------
-- QUESTÃO 496: PODER JUDICIÁRIO (CNJ - MEMBROS DO STJ)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000496', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Poder Judiciário', 'CNJ', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Quantos Ministros do Superior Tribunal de Justiça (STJ) compõem o Conselho Nacional de Justiça?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Um.', 1),
  ('b', 'B', 'Dois.', 2),
  ('c', 'C', 'Três.', 3),
  ('d', 'D', 'Nenhum.', 4),
  ('e', 'E', 'Todos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000496';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000496' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Ministros do STJ no CNJ.', 'Apenas 1 Ministro do STJ compõe o CNJ, exercendo a função de Corregedor Nacional.', 'Dica: O STF também tem apenas 1 (o Presidente).' from public.questions q where q.public_code = 'PPCE-DC-000496';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É apenas 1.'),
  ('c', 'Incorreta. É apenas 1.'),
  ('d', 'Incorreta. O STJ tem assento garantido.'),
  ('e', 'Incorreta. Seria impossível operacionalmente.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000496';

-- -----------------------------------------------------------------------------
-- QUESTÃO 497: REVISÃO (MANDADO DE SEGURANÇA CONTRA ATO JUDICIAL)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000497', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Direitos e Garantias Fundamentais', 'Remédios Constitucionais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'De acordo com a Lei 12.016/2009 e a jurisprudência sumulada do STF, NÃO se concederá mandado de segurança quando se tratar:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'De decisão judicial da qual caiba recurso com efeito suspensivo.', 1),
  ('b', 'B', 'De ato praticado por autoridade policial no exercício de suas funções.', 2),
  ('c', 'C', 'De omissão de autoridade administrativa em concurso público.', 3),
  ('d', 'D', 'De ato de gestão comercial praticado por empresa pública.', 4),
  ('e', 'E', 'De negativa de acesso a certidões.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000497';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000497' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Vedações ao MS.', 'O MS não substitui recurso que tenha efeito suspensivo (Súmula 267 STF).', 'Dica: MS é residual.' from public.questions q where q.public_code = 'PPCE-DC-000497';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Cabe MS se houver direito líquido e certo.'),
  ('c', 'Incorreta. Caso clássico de MS.'),
  ('d', 'Incorreta. Cabe se houver autoridade pública envolvida (embora discutível, a vedação da letra A é absoluta e sumulada).'),
  ('e', 'Incorreta. Cabe HD ou MS.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000497';

-- -----------------------------------------------------------------------------
-- QUESTÃO 498: SEGURANÇA PÚBLICA (POLÍCIA PENAL - REQUISITOS - ART. 144, § 6º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000498', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Defesa do Estado e das Instituições Democráticas', 'Segurança Pública', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O preenchimento do quadro de servidores das polícias penais será feito, exclusivamente, por meio de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Concurso público.', 1),
  ('b', 'B', 'Livre nomeação pelo Governador.', 2),
  ('c', 'C', 'Terceirização de mão de obra.', 3),
  ('d', 'D', 'Aproveitamento de cargos de assessoria política.', 4),
  ('e', 'E', 'Convênio com empresas de segurança privada.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000498';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000498' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Ingresso na Polícia Penal.', 'Art. 144, § 5º-A e § 6º exigem concurso público.', 'Dica: Vedada a transformação de cargos administrativos em policiais sem concurso.' from public.questions q where q.public_code = 'PPCE-DC-000498';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Fere o princípio do concurso público.'),
  ('c', 'Incorreta. Atividade policial é típica de Estado e indelegável.'),
  ('d', 'Incorreta. Desvio de finalidade.'),
  ('e', 'Incorreta. Fere a natureza da segurança pública constitucional.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000498';

-- -----------------------------------------------------------------------------
-- QUESTÃO 499: REVISÃO (CLÁUSULAS PÉTREAS - ART. 60, § 4º)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000499', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Teoria da Constituição', 'Emenda Constitucional', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Não será objeto de deliberação a proposta de emenda tendente a abolir, EXCETO:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O regime presidencialista de governo.', 1),
  ('b', 'B', 'A forma federativa de Estado.', 2),
  ('c', 'C', 'O voto direto, secreto, universal e periódico.', 3),
  ('d', 'D', 'A separação dos Poderes.', 4),
  ('e', 'E', 'Os direitos e garantias individuais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000499';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000499' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Cláusulas Pétreas (Art. 60, § 4º).', 'O presidencialismo NÃO é cláusula pétrea (pode ser mudado por emenda, em tese).', 'Dica: Mnemônico: FO VE SE DI (Forma federativa, Voto, Separação, Direitos).' from public.questions q where q.public_code = 'PPCE-DC-000499';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É cláusula pétrea expressa.'),
  ('c', 'Incorreta. É cláusula pétrea expressa.'),
  ('d', 'Incorreta. É cláusula pétrea expressa.'),
  ('e', 'Incorreta. É cláusula pétrea expressa.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000499';

-- -----------------------------------------------------------------------------
-- QUESTÃO 500: REVISÃO FINAL (SUPREMACIA CONSTITUCIONAL)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DC-000500', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO CONSTITUCIONAL', 'Teoria da Constituição', 'Conceitos Fundamentais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A ideia de que a Constituição situa-se no topo do ordenamento jurídico, servindo de fundamento de validade para todas as demais normas, é representada pela metáfora da:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Pirâmide de Kelsen.', 1),
  ('b', 'B', 'Ampulheta do tempo legislativo.', 2),
  ('c', 'C', 'Teia de aranha institucional.', 3),
  ('d', 'D', 'Espiral do silêncio social.', 4),
  ('e', 'E', 'Balança da justiça cega.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DC-000500';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DC-000500' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Supremacia da Constituição.', 'Hans Kelsen criou a teoria da pirâmide normativa.', 'Dica: No topo está a CF, abaixo as leis e por fim os atos administrativos.' from public.questions q where q.public_code = 'PPCE-DC-000500';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Nome fictício.'),
  ('c', 'Incorreta. Nome fictício.'),
  ('d', 'Incorreta. Teoria da sociologia da comunicação.'),
  ('e', 'Incorreta. Símbolo do Judiciário, não da hierarquia normativa.')
) as v(option_key, reason) where q.public_code = 'PPCE-DC-000500';
