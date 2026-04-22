-- =============================================================================
-- BANCO DE QUESTÕES ANVORA LAW - DIREITO ADMINISTRATIVO
-- LOTE 101-200
-- =============================================================================

-- -----------------------------------------------------------------------------
-- QUESTÃO 101: ATOS ADMINISTRATIVOS (CLASSIFICAÇÃO - ATOS COMPOSTOS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000101', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Atos administrativos simples, complexos e compostos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O ato administrativo que resulta da manifestação de vontade de um único órgão, mas que depende da aprovação ou ratificação de outro órgão para produzir efeitos, é classificado como:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ato Composto.', 1),
  ('b', 'B', 'Ato Complexo.', 2),
  ('c', 'C', 'Ato Simples.', 3),
  ('d', 'D', 'Ato Plúrimo.', 4),
  ('e', 'E', 'Ato Coletivo.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000101';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000101' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Atos Compostos.', 'O ato COMPOSTO é um ato único de um órgão, mas cuja exequibilidade depende de um ato acessório (homologação, visto, aprovação) de outro órgão.', 'Dica: Composto = 1 vontade principal + 1 vontade acessória. Complexo = 2 vontades para formar 1 único ato.' from public.questions q where q.public_code = 'PPCE-DA-000101';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. No ato complexo, as vontades se fundem para formar o ato (Ex: aposentadoria).'),
  ('c', 'Incorreta. Ato simples exige apenas uma manifestação de vontade.'),
  ('d', 'Incorreta. Ato plúrimo é aquele com vários sujeitos mas um único objeto.'),
  ('e', 'Incorreta. Ato coletivo é manifestação de órgão colegiado.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000101';

-- -----------------------------------------------------------------------------
-- QUESTÃO 102: LICITAÇÕES (PRINCÍPIOS - LEI 14.133/2021)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000102', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Licitações', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'De acordo com a Nova Lei de Licitações (Lei 14.133/2021), o princípio que veda a criação de exigências que frustrem o caráter competitivo do certame é o da:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Competitividade (ou Seleção da Proposta mais Vantajosa).', 1),
  ('b', 'B', 'Segregação de Funções.', 2),
  ('c', 'C', 'Planejamento.', 3),
  ('d', 'D', 'Desenvolvimento Nacional Sustentável.', 4),
  ('e', 'E', 'Legalidade estrita.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000102';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000102' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Princípio da Competitividade.', 'O objetivo da licitação é selecionar a proposta mais vantajosa através da ampla concorrência.', 'Dica: A lei 14.133 trouxe uma lista extensa de princípios no Art. 5º.' from public.questions q where q.public_code = 'PPCE-DA-000102';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Segregação de funções evita que a mesma pessoa execute e fiscalize.'),
  ('c', 'Incorreta. Planejamento é a fase preparatória.'),
  ('d', 'Incorreta. Sustentabilidade é um dos objetivos, não o foco na vedação de restrições.'),
  ('e', 'Incorreta. Legalidade é princípio geral.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000102';

-- -----------------------------------------------------------------------------
-- QUESTÃO 103: AGENTES PÚBLICOS (ESTATUTO CEARÁ - LEI 9.826/74)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000103', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Agentes Públicos', 'Estatuto dos Servidores do Ceará', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Nos termos do Estatuto dos Funcionários Públicos Civis do Estado do Ceará (Lei 9.826/74), a investidura em cargo público ocorre com:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A posse.', 1),
  ('b', 'B', 'A nomeação.', 2),
  ('c', 'C', 'O exercício.', 3),
  ('d', 'D', 'A aprovação no concurso.', 4),
  ('e', 'E', 'A publicação do edital.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000103';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000103' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Investidura.', 'Tanto no regime federal quanto no estadual do Ceará, a investidura ocorre com a POSSE.', 'Dica: Nomeação é provimento, Posse é investidura, Exercício é o trabalho de fato.' from public.questions q where q.public_code = 'PPCE-DA-000103';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Nomeação é apenas o chamamento.'),
  ('c', 'Incorreta. Exercício é o início das atividades.'),
  ('d', 'Incorreta. Aprovação gera expectativa de direito.'),
  ('e', 'Incorreta. Edital é a regra do jogo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000103';

-- -----------------------------------------------------------------------------
-- QUESTÃO 104: RESPONSABILIDADE CIVIL (TEORIA DO RISCO ADMINISTRATIVO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000104', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Responsabilidade civil do Estado', 'Evolução doutrinária', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A teoria que fundamenta a responsabilidade civil objetiva do Estado no Brasil, permitindo a exclusão ou atenuação do nexo causal em casos de culpa da vítima, é a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Teoria do Risco Administrativo.', 1),
  ('b', 'B', 'Teoria do Risco Integral.', 2),
  ('c', 'C', 'Teoria da Culpa Administrativa (ou do Serviço).', 4),
  ('d', 'D', 'Teoria da Irresponsabilidade.', 3),
  ('e', 'E', 'Teoria do Risco Social.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000104';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000104' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Teoria do Risco Administrativo.', 'O Risco Administrativo é a regra no Brasil (Art. 37, §6º CF). É objetiva, mas admite EXCLUDENTES (Caso fortuito, força maior e culpa exclusiva da vítima).', 'Dica: Risco Integral NÃO admite excludentes (usada em danos nucleares).' from public.questions q where q.public_code = 'PPCE-DA-000104';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Risco integral não admite excludentes.'),
  ('c', 'Incorreta. Culpa administrativa é subjetiva (falta do serviço).'),
  ('d', 'Incorreta. Ultrapassada (O Rei não erra).'),
  ('e', 'Incorreta. Não é termo técnico da evolução clássica.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000104';

-- -----------------------------------------------------------------------------
-- QUESTÃO 105: PODERES ADMINISTRATIVOS (PODER DE POLÍCIA - DISCRICIONARIEDADE)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000105', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes administrativos', 'Poder de polícia', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O atributo do poder de polícia que permite à Administração escolher a melhor sanção ou medida a ser aplicada, dentro dos limites legais, denomina-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Discricionariedade.', 1),
  ('b', 'B', 'Autoexecutoriedade.', 2),
  ('c', 'C', 'Coercibilidade.', 3),
  ('d', 'D', 'Imperatividade.', 4),
  ('e', 'E', 'Tipicidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000105';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000105' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Atributos do Poder de Polícia.', 'A discricionariedade permite margem de escolha na aplicação (Ex: valor da multa).', 'Dica: Nem todo poder de polícia é discricionário (Ex: licença é vinculado).' from public.questions q where q.public_code = 'PPCE-DA-000105';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Autoexecutoriedade é agir sem ordem judicial.'),
  ('c', 'Incorreta. Coercibilidade é o uso da força se necessário.'),
  ('d', 'Incorreta. Imperatividade é a imposição a terceiros.'),
  ('e', 'Incorreta. Tipicidade é estar previsto em lei.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000105';

-- -----------------------------------------------------------------------------
-- QUESTÃO 106: PROCESSO ADMINISTRATIVO (DIREITOS DOS ADMINISTRADOS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000106', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Processo administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'No âmbito do processo administrativo (Lei 9.784/99), é um direito do administrado:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ter ciência da tramitação dos processos em que tenha a condição de interessado.', 1),
  ('b', 'B', 'Ser tratado com descortesia pelos servidores.', 2),
  ('c', 'C', 'Omitir fatos que sejam de seu conhecimento.', 3),
  ('d', 'D', 'Exigir a decisão sempre em seu favor.', 4),
  ('e', 'E', 'Não ser ouvido antes da decisão final.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000106';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000106' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direitos do Administrado.', 'O direito à ciência e vista dos autos é fundamental para o contraditório.', 'Dica: O administrado também tem DEVERES (proceder com lealdade, não agir de má-fé).' from public.questions q where q.public_code = 'PPCE-DA-000106';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O servidor deve tratar com urbanidade.'),
  ('c', 'Incorreta. O administrado tem o dever de expor os fatos conforme a verdade.'),
  ('d', 'Incorreta. O direito é ao devido processo, não ao resultado favorável.'),
  ('e', 'Incorreta. A ampla defesa exige que seja ouvido.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000106';

-- -----------------------------------------------------------------------------
-- QUESTÃO 107: IMPROBIDADE ADMINISTRATIVA (LEI 8.429/92 - PREJUÍZO AO ERÁRIO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000107', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Controle e responsabilização da administração', 'Lei de Improbidade Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Após as alterações da Lei 14.230/2021, para a configuração de ato de improbidade administrativa que causa prejuízo ao erário (Art. 10), é indispensável a comprovação de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Dolo específico.', 1),
  ('b', 'B', 'Culpa grave.', 2),
  ('c', 'C', 'Dolo genérico.', 3),
  ('d', 'D', 'Mero erro administrativo.', 4),
  ('e', 'E', 'Culpa leve.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000107';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000107' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Dolo na Improbidade.', 'A nova LIA extinguiu a modalidade culposa. Agora, todos os atos de improbidade exigem DOLO.', 'Dica: O dolo deve ser a vontade livre e consciente de alcançar o resultado ilícito.' from public.questions q where q.public_code = 'PPCE-DA-000107';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Culpa não gera mais improbidade.'),
  ('c', 'Incorreta. Exige-se dolo específico (vontade do resultado).'),
  ('d', 'Incorreta. Erro sem má-fé não é improbidade.'),
  ('e', 'Incorreta. Culpa não gera mais improbidade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000107';

-- -----------------------------------------------------------------------------
-- QUESTÃO 108: LICITAÇÕES (MODALIDADES - LEI 14.133/2021)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000108', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Licitações', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Qual modalidade de licitação foi EXTINTA pela Nova Lei de Licitações (Lei 14.133/2021)?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Tomada de Preços.', 1),
  ('b', 'B', 'Pregão.', 2),
  ('c', 'C', 'Concorrência.', 3),
  ('d', 'D', 'Concurso.', 4),
  ('e', 'E', 'Leilão.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000108';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000108' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Modalidades Extintas.', 'A Lei 14.133 extinguiu a Tomada de Preços e o Convite.', 'Dica: As modalidades atuais são: Pregão, Concorrência, Concurso, Leilão e Diálogo Competitivo.' from public.questions q where q.public_code = 'PPCE-DA-000108';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O pregão foi mantido e é a regra para bens comuns.'),
  ('c', 'Incorreta. Mantida para bens especiais.'),
  ('d', 'Incorreta. Mantida para trabalhos técnicos/artísticos.'),
  ('e', 'Incorreta. Mantida para alienação de bens.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000108';

-- -----------------------------------------------------------------------------
-- QUESTÃO 109: ATOS ADMINISTRATIVOS (INVALIDAÇÃO - CADUCIDADE)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000109', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Revogação e anulação', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A extinção de um ato administrativo em decorrência de uma norma jurídica superveniente que torna inviável a manutenção do ato anteriormente praticado denomina-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Caducidade.', 1),
  ('b', 'B', 'Cassação.', 2),
  ('c', 'C', 'Contraposição.', 3),
  ('d', 'D', 'Revogação.', 4),
  ('e', 'E', 'Anulação.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000109';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000109' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Caducidade.', 'Caducidade ocorre quando uma LEI NOVA impede a permanência do ato (Ex: lei que proíbe jogos de azar extingue licenças de cassinos).', 'Dica: Lei nova = Caducidade.' from public.questions q where q.public_code = 'PPCE-DA-000109';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Cassação é por descumprimento do beneficiário.'),
  ('c', 'Incorreta. Contraposição é por ato novo incompatível.'),
  ('d', 'Incorreta. Revogação é por conveniência/oportunidade.'),
  ('e', 'Incorreta. Anulação é por ilegalidade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000109';

-- -----------------------------------------------------------------------------
-- QUESTÃO 110: AGENTES PÚBLICOS (CLASSIFICAÇÃO - AGENTES HONORÍFICOS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000110', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Agentes Públicos', 'Natureza, fins e princípios', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Cidadãos convocados para prestar serviços públicos relevantes e transitórios, sem vínculo empregatício e geralmente sem remuneração, como os jurados e mesários, são classificados como:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Agentes Honoríficos.', 1),
  ('b', 'B', 'Agentes Políticos.', 2),
  ('c', 'C', 'Servidores Públicos.', 3),
  ('d', 'D', 'Agentes Delegados.', 4),
  ('e', 'E', 'Agentes Credenciados.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000110';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000110' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Agentes Honoríficos.', 'São cidadãos que prestam serviço ao Estado em razão de sua honra ou dever cívico.', 'Dica: Respondem penalmente como funcionários públicos durante o exercício.' from public.questions q where q.public_code = 'PPCE-DA-000110';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Políticos são os chefes de Poder e Ministros.'),
  ('c', 'Incorreta. Servidores têm vínculo estatutário ou celetista.'),
  ('d', 'Incorreta. Delegados são os concessionários/permissionários.'),
  ('e', 'Incorreta. Credenciados representam o Estado em missões específicas.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000110';

-- -----------------------------------------------------------------------------
-- QUESTÃO 111: PODERES ADMINISTRATIVOS (USO E ABUSO - DESVIO DE FINALIDADE)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000111', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes administrativos', 'Uso e abuso do poder', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Quando o agente público atua dentro de sua competência legal, mas visando a uma finalidade diversa daquela prevista na lei ou no interesse público, ocorre a figura do:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Desvio de Finalidade (ou Desvio de Poder).', 1),
  ('b', 'B', 'Excesso de Poder.', 2),
  ('c', 'C', 'Omissão Administrativa.', 3),
  ('d', 'D', 'Poder Hierárquico.', 4),
  ('e', 'E', 'Discricionariedade legítima.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000111';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000111' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Abuso de Poder.', 'Abuso de Poder é o gênero que se divide em: EXCESSO (vício de competência) e DESVIO (vício de finalidade).', 'Dica: Remoção de servidor como castigo é o exemplo clássico de desvio de finalidade.' from public.questions q where q.public_code = 'PPCE-DA-000111';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Excesso é quando o agente não tem competência.'),
  ('c', 'Incorreta. Omissão é não agir quando se deve.'),
  ('d', 'Incorreta. Hierárquico é para ordenar/fiscalizar.'),
  ('e', 'Incorreta. Discricionariedade não permite desviar da finalidade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000111';

-- -----------------------------------------------------------------------------
-- QUESTÃO 112: ORGANIZAÇÃO ADMINISTRATIVA (ADMINISTRAÇÃO INDIRETA - PUBLICIZAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000112', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Organização Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Entidades de direito privado, sem fins lucrativos, que colaboram com o Estado mediante a celebração de "Contrato de Gestão", sendo qualificadas pelo Poder Executivo, são as:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Organizações Sociais (OS).', 1),
  ('b', 'B', 'Organizações da Sociedade Civil de Interesse Público (OSCIP).', 2),
  ('c', 'C', 'Fundações Públicas.', 3),
  ('d', 'D', 'Empresas Públicas.', 4),
  ('e', 'E', 'Serviços Sociais Autônomos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000112';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000112' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Terceiro Setor - OS.', 'As Organizações Sociais (OS) celebram CONTRATO DE GESTÃO.', 'Dica: OSCIP celebra TERMO DE PARCERIA. Não confunda!' from public.questions q where q.public_code = 'PPCE-DA-000112';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. OSCIP usa Termo de Parceria.'),
  ('c', 'Incorreta. Fundações compõem a administração indireta.'),
  ('d', 'Incorreta. Empresas Públicas compõem a administração indireta.'),
  ('e', 'Incorreta. Serviços Sociais (S) não celebram contrato de gestão nesses moldes.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000112';

-- -----------------------------------------------------------------------------
-- QUESTÃO 113: PRINCÍPIOS DA ADMINISTRAÇÃO (AUTOTUTELA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000113', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Princípios', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O poder-dever da Administração Pública de rever seus próprios atos, anulando os ilegais e revogando os inconvenientes ou inoportunos, independentemente de provocação do Judiciário, fundamenta-se no princípio da:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Autotutela.', 1),
  ('b', 'B', 'Tutela (ou Controle Finalístico).', 2),
  ('c', 'C', 'Hierarquia.', 3),
  ('d', 'D', 'Legalidade.', 4),
  ('e', 'E', 'Publicidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000113';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000113' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Princípio da Autotutela.', 'A Administração controla a si mesma. Súmulas 346 e 473 do STF.', 'Dica: Autotutela = Administração sobre si. Tutela = Administração Direta sobre a Indireta.' from public.questions q where q.public_code = 'PPCE-DA-000113';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Tutela é o controle externo sobre entidades da indireta.'),
  ('c', 'Incorreta. Hierarquia existe dentro da mesma pessoa jurídica.'),
  ('d', 'Incorreta. Legalidade é a base, mas a revisão própria é autotutela.'),
  ('e', 'Incorreta. Publicidade é transparência.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000113';

-- -----------------------------------------------------------------------------
-- QUESTÃO 114: ATOS ADMINISTRATIVOS (ATRIBUTOS - TIPICIDADE)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000114', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Validade, eficácia e autoexecutoriedade do ato administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O atributo do ato administrativo que exige que o ato esteja previamente definido em lei para produzir determinados efeitos, evitando condutas arbitrárias da Administração, é a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Tipicidade.', 1),
  ('b', 'B', 'Presunção de Legitimidade.', 2),
  ('c', 'C', 'Imperatividade.', 3),
  ('d', 'D', 'Autoexecutoriedade.', 4),
  ('e', 'E', 'Exequibilidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000114';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000114' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Atributos - Tipicidade.', 'Tipicidade (conforme Maria Sylvia Di Pietro) impede atos inominados (sem base legal).', 'Dica: A Tipicidade NÃO existe em atos bilaterais (contratos).' from public.questions q where q.public_code = 'PPCE-DA-000114';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Presunção é que o ato é verdadeiro até prova em contrário.'),
  ('c', 'Incorreta. Imperatividade é a força de imposição.'),
  ('d', 'Incorreta. Autoexecutoriedade é execução sem juiz.'),
  ('e', 'Incorreta. Exequibilidade é a aptidão para produzir efeitos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000114';

-- -----------------------------------------------------------------------------
-- QUESTÃO 115: LICITAÇÕES (CONTRATAÇÃO DIRETA - INEXIGIBILIDADE)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000115', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Licitações', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Ocorre a inexigibilidade de licitação quando:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Há inviabilidade de competição.', 1),
  ('b', 'B', 'O valor da contratação é baixo (dispensa em razão do valor).', 2),
  ('c', 'C', 'Há situação de emergência ou calamidade pública.', 3),
  ('d', 'D', 'Não aparecem interessados na licitação anterior (licitação deserta).', 4),
  ('e', 'E', 'A União precisa intervir no domínio econômico.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000115';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000115' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Inexigibilidade.', 'Inexigibilidade (Art. 74) = Impossibilidade de competir (Fornecedor exclusivo, artista consagrado, serviço técnico especializado).', 'Dica: Dispensa (Art. 75) = A competição é possível, mas a lei desobriga.' from public.questions q where q.public_code = 'PPCE-DA-000115';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Hipótese de dispensa.'),
  ('c', 'Incorreta. Hipótese de dispensa.'),
  ('d', 'Incorreta. Hipótese de dispensa.'),
  ('e', 'Incorreta. Hipótese de dispensa.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000115';

-- -----------------------------------------------------------------------------
-- QUESTÃO 116: AGENTES PÚBLICOS (ESTATUTO CEARÁ - PENALIDADES)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000116', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Agentes Públicos', 'Estatuto dos Servidores do Ceará', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'De acordo com a Lei 9.826/74 (Estatuto do Ceará), a pena de DEMISSÃO será aplicada nos casos de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Abandono do cargo (ausência injustificada por mais de 30 dias consecutivos).', 1),
  ('b', 'B', 'Ofensa física a colega, em qualquer circunstância.', 2),
  ('c', 'C', 'Falta de urbanidade no trato com o público.', 3),
  ('d', 'D', 'Insubordinação leve.', 4),
  ('e', 'E', 'Atrasos frequentes ao serviço.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000116';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000116' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Demissão no Estatuto CE.', 'Abandono de cargo e inassiduidade habitual são causas clássicas de demissão.', 'Dica: Ofensa física só gera demissão se em serviço (salvo legítima defesa).' from public.questions q where q.public_code = 'PPCE-DA-000116';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Se for fora do serviço e sem relação com a função, pode não gerar demissão administrativa direta.'),
  ('c', 'Incorreta. Geralmente gera advertência ou suspensão.'),
  ('d', 'Incorreta. Insubordinação GRAVE gera demissão, leve não.'),
  ('e', 'Incorreta. Gera advertência ou suspensão.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000116';

-- -----------------------------------------------------------------------------
-- QUESTÃO 117: RESPONSABILIDADE CIVIL (DIREITO DE REGRESSO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000117', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Responsabilidade civil do Estado', 'Atos comissivos ou omissivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Estado, após indenizar a vítima por dano causado por seu agente, poderá ajuizar ação de regresso contra este. Para que o agente seja condenado a ressarcir o Estado, é necessário comprovar que ele agiu com:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Dolo ou culpa.', 1),
  ('b', 'B', 'Dolo apenas.', 2),
  ('c', 'C', 'Culpa grave apenas.', 3),
  ('d', 'D', 'Independentemente de dolo ou culpa (responsabilidade objetiva do agente).', 4),
  ('e', 'E', 'Apenas se houver condenação criminal transitada em julgado.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000117';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000117' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Direito de Regresso.', 'A responsabilidade do Estado perante o terceiro é OBJETIVA. A responsabilidade do agente perante o Estado (regresso) é SUBJETIVA (exige dolo ou culpa).', 'Dica: Art. 37, §6º da CF.' from public.questions q where q.public_code = 'PPCE-DA-000117';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Culpa também gera regresso.'),
  ('c', 'Incorreta. Qualquer grau de culpa (leve, média ou grave) permite o regresso.'),
  ('d', 'Incorreta. No Brasil não existe responsabilidade objetiva do agente público.'),
  ('e', 'Incorreta. As instâncias são independentes.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000117';

-- -----------------------------------------------------------------------------
-- QUESTÃO 118: PODERES ADMINISTRATIVOS (PODER HIERÁRQUICO - DELEGAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000118', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes administrativos', 'Poder hierárquico', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Sobre a delegação de competência no Direito Administrativo, é correto afirmar que:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'É revogável a qualquer tempo pela autoridade delegante.', 1),
  ('b', 'B', 'Transfere a titularidade do cargo ao delegado.', 2),
  ('c', 'C', 'Só pode ocorrer entre órgãos com relação de hierarquia.', 3),
  ('d', 'D', 'Pode abranger a edição de atos de caráter normativo.', 4),
  ('e', 'E', 'Não exige publicação em meio oficial.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000118';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000118' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Delegação de Competência.', 'A delegação é precária (revogável a qualquer tempo) e transfere apenas a EXECUÇÃO, não a titularidade.', 'Dica: NÃO se delega: Atos normativos, Recursos Administrativos e Competência Exclusiva.' from public.questions q where q.public_code = 'PPCE-DA-000118';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Transfere apenas o exercício temporário.'),
  ('c', 'Incorreta. Pode ocorrer entre órgãos sem hierarquia (delegação horizontal).'),
  ('d', 'Incorreta. Vedado pelo Art. 13 da Lei 9.784/99.'),
  ('e', 'Incorreta. Exige publicação oficial.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000118';

-- -----------------------------------------------------------------------------
-- QUESTÃO 119: ORGANIZAÇÃO ADMINISTRATIVA (AUTARQUIAS - CARACTERÍSTICAS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000119', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Organização Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'As Autarquias são entidades da Administração Indireta que possuem personalidade jurídica de direito:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Público.', 1),
  ('b', 'B', 'Privado.', 2),
  ('c', 'C', 'Misto.', 3),
  ('d', 'D', 'Internacional.', 4),
  ('e', 'E', 'Difuso.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000119';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000119' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Autarquias.', 'Autarquias são extensões do Estado, criadas por lei, com personalidade de DIREITO PÚBLICO.', 'Dica: Bens de autarquia são impenhoráveis e seguem regime de precatórios.' from public.questions q where q.public_code = 'PPCE-DA-000119';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Empresas Públicas e SEM têm direito privado.'),
  ('c', 'Incorreta. Termo não aplicado a personalidades jurídicas estatais.'),
  ('d', 'Incorreta. Aplicado a outros países/organismos.'),
  ('e', 'Incorreta. Aplicado a interesses de grupos indeterminados.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000119';

-- -----------------------------------------------------------------------------
-- QUESTÃO 120: ATOS ADMINISTRATIVOS (FORMAÇÃO - ATO COMPLEXO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000120', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Atos administrativos simples, complexos e compostos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O ato de APOSENTADORIA do servidor público, que exige a manifestação de vontade do órgão de origem e o registro pelo Tribunal de Contas para se aperfeiçoar, é classificado pela doutrina e jurisprudência majoritárias como:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ato Complexo.', 1),
  ('b', 'B', 'Ato Composto.', 2),
  ('c', 'C', 'Ato Simples.', 3),
  ('d', 'D', 'Ato Inexistente.', 4),
  ('e', 'E', 'Ato de Império.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000120';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000120' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Aposentadoria - Ato Complexo.', 'O STF consolidou que a aposentadoria é ato complexo: só está formado quando o Tribunal de Contas o registra.', 'Dica: Lembre-se: Complexo = Sexo (fusão de vontades para gerar 1 vida/ato).' from public.questions q where q.public_code = 'PPCE-DA-000120';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. No composto, o ato já existe, mas o segundo apenas ratifica.'),
  ('c', 'Incorreta. Exige duas vontades autônomas.'),
  ('d', 'Incorreta. O ato existe, mas sua formação é demorada.'),
  ('e', 'Incorreta. Classificação antiga para atos de autoridade superior.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000120';

-- -----------------------------------------------------------------------------
-- QUESTÃO 121: CONTRATOS ADMINISTRATIVOS (CLÁUSULAS EXORBITANTES)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000121', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Contratos Administrativos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'As cláusulas que conferem à Administração prerrogativas de direito público, como a alteração unilateral do contrato, são denominadas:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Cláusulas Exorbitantes.', 1),
  ('b', 'B', 'Cláusulas Pétreas.', 2),
  ('c', 'C', 'Cláusulas de Barreira.', 3),
  ('d', 'D', 'Cláusulas de Equilíbrio Econômico.', 4),
  ('e', 'E', 'Cláusulas Privadas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000121';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000121' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Cláusulas Exorbitantes.', 'São cláusulas que seriam ilícitas em contratos privados, mas são permitidas no setor público para garantir o interesse coletivo.', 'Dica: Exemplo: rescisão unilateral, aplicação de sanções.' from public.questions q where q.public_code = 'PPCE-DA-000121';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Termo constitucional (não podem ser abolidas).'),
  ('c', 'Incorreta. Termo eleitoral.'),
  ('d', 'Incorreta. Visam manter o lucro do particular, não são prerrogativas do Estado.'),
  ('e', 'Incorreta. Baseadas na igualdade das partes.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000121';

-- -----------------------------------------------------------------------------
-- QUESTÃO 122: CONTROLE DA ADMINISTRAÇÃO (CONTROLE LEGISLATIVO - SUSTAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000122', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Controle e responsabilização da administração', 'Controle legislativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Compete ao Poder Legislativo sustar os atos normativos do Poder Executivo que exorbitem do poder regulamentar. Esta sustação é feita por meio de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Decreto Legislativo.', 1),
  ('b', 'B', 'Lei Ordinária.', 2),
  ('c', 'C', 'Lei Complementar.', 3),
  ('d', 'D', 'Medida Provisória.', 4),
  ('e', 'E', 'Portaria Normativa.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000122';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000122' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Controle Legislativo.', 'O Art. 49, V da CF prevê o Decreto Legislativo para sustar atos que exorbitam o poder regulamentar.', 'Dica: Não exige sanção do Presidente/Governador.' from public.questions q where q.public_code = 'PPCE-DA-000122';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Lei exige sanção do executivo.'),
  ('c', 'Incorreta. Lei exige sanção do executivo.'),
  ('d', 'Incorreta. MP é ato do próprio executivo.'),
  ('e', 'Incorreta. Ato infralegal.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000122';

-- -----------------------------------------------------------------------------
-- QUESTÃO 123: RESPONSABILIDADE CIVIL (OMISSÃO DO ESTADO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000123', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Responsabilidade civil do Estado', 'Atos comissivos ou omissivos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Em regra, a responsabilidade civil do Estado por OMISSÃO genérica (falta do serviço) é classificada como:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Subjetiva (exige prova de dolo ou culpa).', 1),
  ('b', 'B', 'Objetiva (independe de dolo ou culpa).', 2),
  ('c', 'C', 'Integral (não admite excludentes).', 3),
  ('d', 'D', 'Irresponsabilidade total.', 4),
  ('e', 'E', 'Subsidiária apenas.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000123';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000123' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Omissão do Estado.', 'A omissão genérica segue a Teoria da Culpa do Serviço (Faute du Service), sendo SUBJETIVA.', 'Dica: Atenção! Na omissão ESPECÍFICA (custódia de presos/alunos), a responsabilidade é OBJETIVA.' from public.questions q where q.public_code = 'PPCE-DA-000123';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Só é objetiva na omissão específica (dever de guarda).'),
  ('c', 'Incorreta. Muito restrito.'),
  ('d', 'Incorreta. Ultrapassada.'),
  ('e', 'Incorreta. Subsidiária é quando um paga se o outro não puder.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000123';

-- -----------------------------------------------------------------------------
-- QUESTÃO 124: PODERES ADMINISTRATIVOS (PODER REGULAMENTAR - LIMITES)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000124', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes administrativos', 'Poder regulamentar', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Poder Regulamentar permite ao Chefe do Executivo editar decretos para fiel execução da lei. No entanto, o regulamento NÃO pode:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Criar direitos ou obrigações não previstos em lei.', 1),
  ('b', 'B', 'Explicitar termos técnicos da lei.', 2),
  ('c', 'C', 'Organizar a estrutura interna dos órgãos.', 3),
  ('d', 'D', 'Dar fiel execução ao texto legal.', 4),
  ('e', 'E', 'Ser editado pelo Governador.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000124';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000124' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Limites do Poder Regulamentar.', 'O regulamento é ato secundário. Ele não pode inovar no ordenamento jurídico criando obrigações (Princípio da Reserva Legal).', 'Dica: O único que pode inovar é o Decreto Autônomo (matéria restrita).' from public.questions q where q.public_code = 'PPCE-DA-000124';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É função do regulamento explicar a lei.'),
  ('c', 'Incorreta. Pode, via decreto autônomo ou regulamentar.'),
  ('d', 'Incorreta. É o objetivo principal.'),
  ('e', 'Incorreta. O Governador tem essa competência no estado.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000124';

-- -----------------------------------------------------------------------------
-- QUESTÃO 125: ATOS ADMINISTRATIVOS (MÉRITO ADMINISTRATIVO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000125', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Mérito do ato administrativo, discricionariedade', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O mérito administrativo, presente nos atos discricionários, é composto pelos elementos:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Motivo e Objeto.', 1),
  ('b', 'B', 'Competência e Forma.', 2),
  ('c', 'C', 'Finalidade e Motivo.', 3),
  ('d', 'D', 'Forma e Objeto.', 4),
  ('e', 'E', 'Competência e Finalidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000125';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000125' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Mérito Administrativo.', 'Mérito = Conveniência e Oportunidade. Estes conceitos se manifestam na escolha do MOTIVO e do OBJETO do ato.', 'Dica: COM-FI-FOR são sempre vinculados. MO-OB podem ser discricionários.' from public.questions q where q.public_code = 'PPCE-DA-000125';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. São elementos sempre vinculados.'),
  ('c', 'Incorreta. Finalidade é sempre vinculada.'),
  ('d', 'Incorreta. Forma é sempre vinculada.'),
  ('e', 'Incorreta. Ambos são sempre vinculados.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000125';

-- -----------------------------------------------------------------------------
-- QUESTÃO 126: LICITAÇÕES (FASE PREPARATÓRIA - ETP)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000126', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Licitações', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Na fase preparatória da licitação (Lei 14.133/2021), o documento que caracteriza o interesse público envolvido e a melhor solução para o problema a ser resolvido denomina-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Estudo Técnico Preliminar (ETP).', 1),
  ('b', 'B', 'Termo de Referência (TR).', 2),
  ('c', 'C', 'Projeto Básico.', 3),
  ('d', 'D', 'Projeto Executivo.', 4),
  ('e', 'E', 'Matriz de Riscos.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000126';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000126' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Fase Preparatória.', 'O ETP é a base de tudo. Ele justifica a necessidade e avalia a viabilidade.', 'Dica: O Termo de Referência (TR) vem DEPOIS do ETP.' from public.questions q where q.public_code = 'PPCE-DA-000126';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O TR detalha o objeto após a escolha da solução.'),
  ('c', 'Incorreta. Conjunto de elementos necessários para obras/serviços.'),
  ('d', 'Incorreta. Detalhamento máximo para execução de obras.'),
  ('e', 'Incorreta. Define a repartição de responsabilidades entre as partes.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000126';

-- -----------------------------------------------------------------------------
-- QUESTÃO 127: AGENTES PÚBLICOS (ESTATUTO CEARÁ - ESTÁGIO PROBATÓRIO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000127', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Agentes Públicos', 'Estatuto dos Servidores do Ceará', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Conforme a Constituição Federal, aplicada subsidiariamente ao Estado do Ceará, o prazo do estágio probatório para a aquisição da estabilidade no serviço público é de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '3 anos.', 1),
  ('b', 'B', '2 anos.', 2),
  ('c', 'C', '5 anos.', 3),
  ('d', 'D', '1 ano.', 4),
  ('e', 'E', 'Não há prazo fixo.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000127';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000127' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Estágio Probatório.', 'Após a EC 19/98, o prazo de estabilidade passou a ser de 3 anos de efetivo exercício.', 'Dica: O Estatuto do Ceará ainda menciona 2 anos em alguns trechos antigos, mas a CF prevalece (3 anos).' from public.questions q where q.public_code = 'PPCE-DA-000127';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Prazo anterior à EC 19/98.'),
  ('c', 'Incorreta. Prazo de prescrição de algumas sanções.'),
  ('d', 'Incorreta. Muito curto.'),
  ('e', 'Incorreta. O prazo é constitucional.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000127';

-- -----------------------------------------------------------------------------
-- QUESTÃO 128: ATOS ADMINISTRATIVOS (INVALIDAÇÃO - CONVALIDAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000128', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Revogação, anulação e convalidação do ato administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A correção de um ato administrativo que apresente vício sanável, com efeitos retroativos à data da prática do ato original, denomina-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Convalidação.', 1),
  ('b', 'B', 'Ratificação externa.', 2),
  ('c', 'C', 'Revisão forçada.', 3),
  ('d', 'D', 'Conversão punitiva.', 4),
  ('e', 'E', 'Anulação parcial.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000128';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000128' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Convalidação.', 'Convalidação aproveita atos com vícios de COMPETÊNCIA (não exclusiva) e FORMA (não essencial). Tem efeito ex tunc (retroativo).', 'Dica: Vícios de Motivo e Objeto geralmente NÃO permitem convalidação.' from public.questions q where q.public_code = 'PPCE-DA-000128';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Termo não utilizado para correção de vícios sanáveis dessa forma.'),
  ('c', 'Incorreta. Inventado.'),
  ('d', 'Incorreta. Inventado.'),
  ('e', 'Incorreta. Anulação retira o ato do mundo jurídico por ilegalidade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000128';

-- -----------------------------------------------------------------------------
-- QUESTÃO 129: PODERES ADMINISTRATIVOS (PODER DISCIPLINAR - VÍNCULO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000129', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes administrativos', 'Poder disciplinar', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O Poder Disciplinar permite à Administração aplicar sanções a quem possua vínculo especial com o Estado. No caso de uma empresa privada contratada para fornecer alimentação em um presídio, a aplicação de uma multa por descumprimento do contrato é exercício do:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Poder Disciplinar.', 1),
  ('b', 'B', 'Poder de Polícia.', 2),
  ('c', 'C', 'Poder Hierárquico.', 3),
  ('d', 'D', 'Poder Regulamentar.', 4),
  ('e', 'E', 'Poder Constituinte.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000129';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000129' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Poder Disciplinar.', 'Sanções decorrentes de contrato administrativo (vínculo especial) são fruto do poder disciplinar.', 'Dica: Se a sanção fosse a um particular sem vínculo (ex: multa de trânsito), seria Poder de Polícia.' from public.questions q where q.public_code = 'PPCE-DA-000129';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Polícia é para quem não tem vínculo prévio específico.'),
  ('c', 'Incorreta. Hierarquia só existe entre órgãos e servidores internos.'),
  ('d', 'Incorreta. Criar decretos/normas.'),
  ('e', 'Incorreta. Criar/alterar a Constituição.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000129';

-- -----------------------------------------------------------------------------
-- QUESTÃO 130: CONTROLE DA ADMINISTRAÇÃO (CONTROLE JUDICIAL - MÉRITO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000130', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Controle e responsabilização da administração', 'Controle judicial', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Sobre o controle exercido pelo Poder Judiciário sobre os atos administrativos, é correto afirmar que o juiz:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Pode anular atos ilegais, mas não pode revogar atos por conveniência e oportunidade.', 1),
  ('b', 'B', 'Pode revogar atos por serem inoportunos ao interesse público.', 2),
  ('c', 'C', 'Está impedido de analisar a razoabilidade da sanção aplicada.', 3),
  ('d', 'D', 'Substitui a vontade do administrador em todos os casos.', 4),
  ('e', 'E', 'Não pode anular atos discricionários.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000130';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000130' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Limites do Controle Judicial.', 'O Judiciário só controla a LEGALIDADE. Revogação (mérito) é exclusividade da própria Administração.', 'Dica: Se o ato discricionário for desproporcional, ele se torna ILEGAL e pode ser anulado.' from public.questions q where q.public_code = 'PPCE-DA-000130';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Revogação é interna (autotutela).'),
  ('c', 'Incorreta. Razoabilidade é parâmetro de legalidade hoje em dia.'),
  ('d', 'Incorreta. O juiz não administra, apenas julga a lei.'),
  ('e', 'Incorreta. Pode anular se houver desvio de finalidade ou falta de motivo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000130';

-- -----------------------------------------------------------------------------
-- QUESTÃO 131: RESPONSABILIDADE CIVIL (EXCLUDENTES - CULPA EXCLUSIVA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000131', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Responsabilidade civil do Estado', 'Causas excludentes e nexo de causalidade', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Quando o dano sofrido por um particular decorre unicamente de sua própria conduta imprudente, rompendo o nexo causal com a atividade estatal, ocorre a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Culpa exclusiva da vítima.', 1),
  ('b', 'B', 'Culpa concorrente.', 2),
  ('c', 'C', 'Força maior.', 3),
  ('d', 'D', 'Caso fortuito.', 4),
  ('e', 'E', 'Responsabilidade objetiva integral.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000131';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000131' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Excludentes de Responsabilidade.', 'A culpa exclusiva da vítima retira o dever de indenizar do Estado por quebrar o nexo de causalidade.', 'Dica: Na culpa CONCORRENTE, a indenização é apenas REDUZIDA.' from public.questions q where q.public_code = 'PPCE-DA-000131';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Aqui ambos erram, o Estado paga metade.'),
  ('c', 'Incorreta. Evento da natureza (raio, inundação).'),
  ('d', 'Incorreta. Evento humano imprevisível (motim, atentado).'),
  ('e', 'Incorreta. Esta teoria não aceita excludentes.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000131';

-- -----------------------------------------------------------------------------
-- QUESTÃO 132: LICITAÇÕES (CRITÉRIOS DE JULGAMENTO - LEI 14.133/2021)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000132', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Licitações', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Qual critério de julgamento foi INTRODUZIDO pela Nova Lei de Licitações (Lei 14.133/2021)?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Maior Retorno Econômico.', 1),
  ('b', 'B', 'Menor Preço.', 2),
  ('c', 'C', 'Melhor Técnica ou Conteúdo Artístico.', 3),
  ('d', 'D', 'Maior Lance.', 4),
  ('e', 'E', 'Técnica e Preço.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000132';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000132' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Critérios de Julgamento.', 'O "Maior Retorno Econômico" é a novidade da 14.133, focado em contratos de eficiência.', 'Dica: Substituiu o termo "Tipos de Licitação" da lei antiga.' from public.questions q where q.public_code = 'PPCE-DA-000132';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Já existia (é o mais comum).'),
  ('c', 'Incorreta. Já existia.'),
  ('d', 'Incorreta. Já existia (usado em leilões).'),
  ('e', 'Incorreta. Já existia.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000132';

-- -----------------------------------------------------------------------------
-- QUESTÃO 133: AGENTES PÚBLICOS (ESTATUTO CEARÁ - ACUMULAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000133', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Agentes Públicos', 'Estatuto dos Servidores do Ceará', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A regra constitucional de vedação à acumulação remunerada de cargos públicos, aplicada aos servidores do Ceará, admite como exceção (desde que haja compatibilidade de horários):', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Dois cargos de professor.', 1),
  ('b', 'B', 'Dois cargos técnicos.', 2),
  ('c', 'C', 'Um cargo de Policial Penal e um de Policial Militar.', 3),
  ('d', 'D', 'Três cargos de médico.', 4),
  ('e', 'E', 'Um cargo de Secretário e um de Diretor de Presídio.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000133';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000133' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Acumulação de Cargos.', 'As exceções são: 2 de professor; 1 professor + 1 técnico/científico; 2 da saúde (profissão regulamentada).', 'Dica: Compatibilidade de horários é requisito SEMPRE.' from public.questions q where q.public_code = 'PPCE-DA-000133';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Dois técnicos não pode.'),
  ('c', 'Incorreta. Dois cargos policiais de carreira não pode acumular.'),
  ('d', 'Incorreta. No máximo dois.'),
  ('e', 'Incorreta. Cargos em comissão de chefia não acumulam remuneração de forma plena geralmente.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000133';

-- -----------------------------------------------------------------------------
-- QUESTÃO 134: ATOS ADMINISTRATIVOS (MÉRITO - RAZOABILIDADE)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000134', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Mérito do ato administrativo, discricionariedade', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A aplicação de uma sanção de demissão a um servidor por uma falta leve, passível de advertência, configura uma violação direta ao princípio da:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Proporcionalidade.', 1),
  ('b', 'B', 'Publicidade.', 2),
  ('c', 'C', 'Hierarquia.', 3),
  ('d', 'D', 'Impessoalidade.', 4),
  ('e', 'E', 'Continuidade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000134';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000134' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Proporcionalidade.', 'O ato administrativo deve guardar relação de equilíbrio entre os meios e os fins.', 'Dica: Falta de proporcionalidade torna o ato ILEGAL, passível de anulação pelo Judiciário.' from public.questions q where q.public_code = 'PPCE-DA-000134';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Refere-se à transparência.'),
  ('c', 'Incorreta. Refere-se à estrutura de comando.'),
  ('d', 'Incorreta. Refere-se à igualdade.'),
  ('e', 'Incorreta. Refere-se à não interrupção do serviço.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000134';

-- -----------------------------------------------------------------------------
-- QUESTÃO 135: PODERES ADMINISTRATIVOS (PODER DE POLÍCIA - FASES)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000135', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes administrativos', 'Poder de polícia', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O Ciclo do Poder de Polícia é composto por quatro fases. Qual dessas fases NÃO pode ser delegada a pessoas jurídicas de direito privado, segundo a jurisprudência clássica (embora o STF tenha mitigado em alguns casos de trânsito)?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Legislação (ou Ordem de Polícia).', 1),
  ('b', 'B', 'Consentimento de Polícia.', 2),
  ('c', 'C', 'Fiscalização de Polícia.', 3),
  ('d', 'D', 'Sanção de Polícia.', 4),
  ('e', 'E', 'Nenhuma fase pode ser delegada.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000135';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000135' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Ciclo de Polícia.', 'A ORDEM de polícia (legislar) é indelegável por envolver coerção e império estatal puro.', 'Dica: O STF (RE 633.782) permitiu delegar Fiscalização e Sanção para empresas públicas/SEM, mas a Ordem permanece com o Estado.' from public.questions q where q.public_code = 'PPCE-DA-000135';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Pode ser delegada (ex: emissão de licenças por órgãos técnicos).'),
  ('c', 'Incorreta. É a fase mais delegada (ex: radares de empresas privadas).'),
  ('d', 'Incorreta. Pode ser delegada a entes da administração indireta de direito privado.'),
  ('e', 'Incorreta. A doutrina e o STF admitem delegações parciais.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000135';

-- -----------------------------------------------------------------------------
-- QUESTÃO 136: ORGANIZAÇÃO ADMINISTRATIVA (ADMINISTRAÇÃO INDIRETA - SEM vs EP)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000136', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Organização Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A principal diferença estrutural entre uma Empresa Pública (EP) e uma Sociedade de Economia Mista (SEM) reside em:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A composição do capital (100% público na EP; público e privado na SEM).', 1),
  ('b', 'B', 'O regime jurídico (público na EP; privado na SEM).', 2),
  ('c', 'C', 'A necessidade de concurso público (apenas na EP).', 3),
  ('d', 'D', 'A forma de criação (lei para EP; decreto para SEM).', 4),
  ('e', 'E', 'O foro judicial (justiça comum para ambas sempre).', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000136';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000136' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'EP vs SEM.', 'Empresa Pública = Capital 100% público. Sociedade de Economia Mista = Capital maioria público, mas com participação privada.', 'Dica: SEM deve ser sempre S/A. EP pode ser qualquer forma jurídica.' from public.questions q where q.public_code = 'PPCE-DA-000136';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Ambas possuem regime predominantemente privado (híbrido).'),
  ('c', 'Incorreta. Ambas exigem concurso para seus empregados.'),
  ('d', 'Incorreta. Ambas têm criação AUTORIZADA por lei e efetivada por registro.'),
  ('e', 'Incorreta. EP Federal vai para Justiça Federal; SEM Federal vai para Justiça Estadual.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000136';

-- -----------------------------------------------------------------------------
-- QUESTÃO 137: ATOS ADMINISTRATIVOS (INVALIDAÇÃO - REVOGAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000137', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Revogação e anulação', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A revogação de um ato administrativo produz efeitos:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Ex Nunc (não retroativos).', 1),
  ('b', 'B', 'Ex Tunc (retroativos).', 2),
  ('c', 'C', 'Imediata e absoluta em relação ao passado.', 3),
  ('d', 'D', 'Apenas após decisão judicial.', 4),
  ('e', 'E', 'Apenas para atos vinculados.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000137';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000137' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Efeitos da Revogação.', 'A revogação atinge um ato que era VÁLIDO. Por isso, os efeitos passados são preservados. Efeito Ex Nunc (daqui para frente).', 'Dica: ANULAÇÃO tem efeito Ex Tunc (bate na nuca e cai para trás - volta ao início).' from public.questions q where q.public_code = 'PPCE-DA-000137';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Efeito da anulação.'),
  ('c', 'Incorreta. Efeito da anulação.'),
  ('d', 'Incorreta. Revogação é ato da própria administração.'),
  ('e', 'Incorreta. Atos vinculados NÃO podem ser revogados (apenas anulados).')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000137';

-- -----------------------------------------------------------------------------
-- QUESTÃO 138: LICITAÇÕES (DISPENSA DE LICITAÇÃO - VALORES)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000138', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Licitações', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Na Lei 14.133/2021, o limite para dispensa de licitação em razão do valor para a contratação de OBRAS E SERVIÇOS DE ENGENHARIA (ou serviços de manutenção de veículos automotores) é de até:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'R$ 100.000,00 (ajustado anualmente).', 1),
  ('b', 'B', 'R$ 50.000,00 (ajustado anualmente).', 2),
  ('c', 'C', 'R$ 17.600,00.', 3),
  ('d', 'D', 'R$ 33.000,00.', 4),
  ('e', 'E', 'R$ 150.000,00.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000138';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000138' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Dispensa por Valor.', 'A Nova Lei subiu os valores: 100k para obras/engenharia e 50k para outros bens/serviços.', 'Dica: Estes valores são duplicados para agências reguladoras e consórcios públicos.' from public.questions q where q.public_code = 'PPCE-DA-000138';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Este é o valor para outros bens e serviços comuns.'),
  ('c', 'Incorreta. Valor defasado da lei 8.666/93.'),
  ('d', 'Incorreta. Valor defasado da lei 8.666/93.'),
  ('e', 'Incorreta. Não previsto como limite geral de dispensa.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000138';

-- -----------------------------------------------------------------------------
-- QUESTÃO 139: AGENTES PÚBLICOS (ESTATUTO CEARÁ - VANTAGENS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000139', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Agentes Públicos', 'Estatuto dos Servidores do Ceará', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'De acordo com o Estatuto do Ceará (Lei 9.826/74), a gratificação concedida ao funcionário que se encontrar no exercício de cargo de provimento em comissão denomina-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Gratificação de Representação.', 1),
  ('b', 'B', 'Adicional de Insalubridade.', 2),
  ('c', 'C', 'Gratificação de Estímulo.', 3),
  ('d', 'D', 'Adicional por Tempo de Serviço.', 4),
  ('e', 'E', 'Auxílio-Chefia.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000139';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000139' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Vantagens Pecuniárias.', 'No Ceará, o exercício de cargos comissionados gera a gratificação de representação.', 'Dica: Importante para cargos de confiança na estrutura prisional.' from public.questions q where q.public_code = 'PPCE-DA-000139';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Devido a condições perigosas ou nocivas.'),
  ('c', 'Incorreta. Nome genérico para incentivos produtivos.'),
  ('d', 'Incorreta. Devido ao tempo de casa.'),
  ('e', 'Incorreta. Termo não utilizado no estatuto.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000139';

-- -----------------------------------------------------------------------------
-- QUESTÃO 140: ATOS ADMINISTRATIVOS (TEORIA DOS MOTIVOS DETERMINANTES)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000140', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Teoria dos motivos determinantes', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A Teoria dos Motivos Determinantes sustenta que:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A validade do ato administrativo está vinculada à veracidade dos motivos alegados para sua prática.', 1),
  ('b', 'B', 'Os motivos do ato são sempre irrelevantes para sua validade.', 2),
  ('c', 'C', 'Apenas os atos vinculados devem ser motivados.', 3),
  ('d', 'D', 'O motivo é o mesmo que a finalidade do ato.', 4),
  ('e', 'E', 'A Administração pode mudar os motivos do ato após sua prática para salvá-lo.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000140';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000140' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Teoria dos Motivos Determinantes.', 'Se o administrador motiva um ato (mesmo que a lei não obrigue), ele fica PRESO a essa motivação. Se o motivo for falso, o ato é nulo.', 'Dica: Exemplo: Exoneração ad nutum justificada por falta de verba. Se houver verba, o ato é nulo.' from public.questions q where q.public_code = 'PPCE-DA-000140';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. São fundamentais para o controle de legalidade.'),
  ('c', 'Incorreta. Atos discricionários também devem ser motivados (regra geral da transparência).'),
  ('d', 'Incorreta. Motivo é o porquê (fato). Finalidade é para que (objetivo).'),
  ('e', 'Incorreta. Os motivos são imutáveis após a prática do ato para fins de validade original.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000140';

-- -----------------------------------------------------------------------------
-- QUESTÃO 141: PODERES ADMINISTRATIVOS (PODER DE POLÍCIA - COERCIBILIDADE)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000141', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes administrativos', 'Poder de polícia', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O atributo do Poder de Polícia que autoriza o uso da força pública para compelir o administrado ao cumprimento da obrigação, caso haja resistência, é a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Coercibilidade.', 1),
  ('b', 'B', 'Imperatividade.', 2),
  ('c', 'C', 'Autoexecutoriedade.', 3),
  ('d', 'D', 'Tipicidade.', 4),
  ('e', 'E', 'Discricionariedade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000141';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000141' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Atributos - Coercibilidade.', 'Coercibilidade é a possibilidade de uso da força (meios diretos de coação).', 'Dica: Difere da Imperatividade (que é apenas a imposição do dever).' from public.questions q where q.public_code = 'PPCE-DA-000141';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Imperatividade é a imposição, não necessariamente o uso da força física.'),
  ('c', 'Incorreta. Autoexecutoriedade é a execução sem judiciário (meios indiretos e diretos).'),
  ('d', 'Incorreta. Tipicidade é a base legal.'),
  ('e', 'Incorreta. Discricionariedade é a margem de escolha.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000141';

-- -----------------------------------------------------------------------------
-- QUESTÃO 142: ORGANIZAÇÃO ADMINISTRATIVA (ADMINISTRAÇÃO DIRETA - ÓRGÃOS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000142', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Organização Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A Secretaria de Administração Penitenciária do Ceará (SAP), como unidade integrante da estrutura do Estado, é classificada como um(a):', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Órgão Público.', 1),
  ('b', 'B', 'Autarquia Estadual.', 2),
  ('c', 'C', 'Fundação Pública.', 3),
  ('d', 'D', 'Empresa Pública.', 4),
  ('e', 'E', 'Entidade Paraestatal.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000142';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000142' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Órgãos Públicos.', 'Secretarias e Ministérios são órgãos (desconcentração) e não possuem personalidade jurídica própria.', 'Dica: Quem responde por um ato da SAP é o Estado do Ceará.' from public.questions q where q.public_code = 'PPCE-DA-000142';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Autarquias têm personalidade própria.'),
  ('c', 'Incorreta. Fundações têm personalidade própria.'),
  ('d', 'Incorreta. Empresas Públicas têm personalidade própria.'),
  ('e', 'Incorreta. São entidades de apoio (terceiro setor).')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000142';

-- -----------------------------------------------------------------------------
-- QUESTÃO 143: ATOS ADMINISTRATIVOS (INVALIDAÇÃO - ANULAÇÃO vs REVOGAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000143', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Revogação e anulação', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Um ato administrativo que contenha vício de ILEGALIDADE insanável deve ser:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Anulado.', 1),
  ('b', 'B', 'Revogado.', 2),
  ('c', 'C', 'Convalidado.', 3),
  ('d', 'D', 'Sustado temporariamente.', 4),
  ('e', 'E', 'Mantido por segurança jurídica.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000143';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000143' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Anulação.', 'Ilegalidade gera anulação. Tem efeito retroativo (ex tunc).', 'Dica: Se o vício for sanável, caberia convalidação.' from public.questions q where q.public_code = 'PPCE-DA-000143';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Revogação é para atos LEGAIS, mas inoportunos.'),
  ('c', 'Incorreta. Vício insanável não permite convalidação.'),
  ('d', 'Incorreta. Sustação é medida cautelar ou legislativa específica.'),
  ('e', 'Incorreta. Só se aplica em casos excepcionalíssimos de estabilização de efeitos, não como regra para ilegalidades insanáveis.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000143';

-- -----------------------------------------------------------------------------
-- QUESTÃO 144: LICITAÇÕES (MODALIDADES - DIÁLOGO COMPETITIVO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000144', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Licitações', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A modalidade de licitação destinada a contratações que envolvam inovação tecnológica ou técnica, onde a Administração não consegue definir a solução de forma isolada, é o:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Diálogo Competitivo.', 1),
  ('b', 'B', 'Concurso.', 2),
  ('c', 'C', 'Pregão Eletrônico.', 3),
  ('d', 'D', 'RDC (Regime Diferenciado de Contratações).', 4),
  ('e', 'E', 'Leilão reverso.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000144';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000144' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Diálogo Competitivo.', 'Grande novidade da Lei 14.133. Permite debater com licitantes antes de fechar o edital.', 'Dica: Inspirado no direito europeu.' from public.questions q where q.public_code = 'PPCE-DA-000144';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Para trabalhos intelectuais ou artísticos.'),
  ('c', 'Incorreta. Para bens e serviços comuns.'),
  ('d', 'Incorreta. Lei específica que está sendo absorvida pela 14.133.'),
  ('e', 'Incorreta. Não é modalidade técnica.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000144';

-- -----------------------------------------------------------------------------
-- QUESTÃO 145: AGENTES PÚBLICOS (ESTATUTO CEARÁ - ESTABILIDADE)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000145', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Agentes Públicos', 'Estatuto dos Servidores do Ceará', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O servidor público estável só perderá o cargo em virtude de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sentença judicial transitada em julgado.', 1),
  ('b', 'B', 'Decisão administrativa sem direito a defesa.', 2),
  ('c', 'C', 'Mudança de Governador.', 3),
  ('d', 'D', 'Extinção do cargo sem pagamento de indenização.', 4),
  ('e', 'E', 'Aposentadoria de colega mais antigo.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000145';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000145' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Perda do Cargo.', 'Causas: 1. Sentença judicial (trânsito em julgado); 2. Processo administrativo (ampla defesa); 3. Avaliação periódica de desempenho; 4. Excesso de gastos (Art. 169 CF).', 'Dica: Estabilidade NÃO é vitaliciedade.' from public.questions q where q.public_code = 'PPCE-DA-000145';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Ampla defesa é obrigatória.'),
  ('c', 'Incorreta. Servidor é do Estado, não do Governo.'),
  ('d', 'Incorreta. Se o cargo for extinto, o servidor estável fica em disponibilidade.'),
  ('e', 'Incorreta. Absurdo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000145';

-- -----------------------------------------------------------------------------
-- QUESTÃO 146: RESPONSABILIDADE CIVIL (DANO POR TERCEIRO - PRESO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000146', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Responsabilidade civil do State', 'Responsabilidade Civil do Estado', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O STF decidiu (Tema 362) que o Estado responde objetivamente pelo dano causado por preso foragido quando:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Houver nexo causal direto entre a fuga e o crime praticado logo em seguida.', 1),
  ('b', 'B', 'O crime ocorrer muitos meses após a fuga.', 2),
  ('c', 'C', 'O preso for considerado perigoso pela mídia.', 3),
  ('d', 'D', 'Independentemente do tempo decorrido da fuga.', 4),
  ('e', 'E', 'O Estado não responde por atos de presos foragidos nunca.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000146';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000146' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Responsabilidade por Preso Foragido.', 'Para haver responsabilidade, o crime deve ocorrer durante a fuga ou logo após, mantendo o nexo com a falha na custódia.', 'Dica: Se o preso foge hoje e comete crime daqui a 1 ano, o nexo está rompido.' from public.questions q where q.public_code = 'PPCE-DA-000146';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Rompe o nexo causal.'),
  ('c', 'Incorreta. A periculosidade não define o nexo jurídico por si só.'),
  ('d', 'Incorreta. O tempo é fator crucial para o nexo.'),
  ('e', 'Incorreta. Responde se houver nexo direto.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000146';

-- -----------------------------------------------------------------------------
-- QUESTÃO 147: PODERES ADMINISTRATIVOS (PODER HIERÁRQUICO - AVOCAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000147', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes administrativos', 'Poder hierárquico', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A avocação de competência, ato pelo qual o superior chama para si a execução de tarefa originalmente do subordinado, deve ser:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Excepcional, por motivos relevantes e tempo determinado.', 1),
  ('b', 'B', 'A regra no serviço público.', 2),
  ('c', 'C', 'Sempre definitiva.', 3),
  ('d', 'D', 'Praticada apenas entre órgãos de mesma hierarquia.', 4),
  ('e', 'E', 'Vedada em qualquer hipótese.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000147';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000147' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Avocação de Competência.', 'Diferente da delegação, a avocação exige hierarquia e deve ser EXCEPCIONAL.', 'Dica: Não se avoca competência exclusiva do subordinado.' from public.questions q where q.public_code = 'PPCE-DA-000147';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A regra é respeitar a competência originária.'),
  ('c', 'Incorreta. É sempre temporária.'),
  ('d', 'Incorreta. Avocação exige verticalidade (superior chama do inferior).'),
  ('e', 'Incorreta. É permitida legalmente (Lei 9.784/99).')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000147';

-- -----------------------------------------------------------------------------
-- QUESTÃO 148: ORGANIZAÇÃO ADMINISTRATIVA (CONSÓRCIOS PÚBLICOS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000148', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Organização Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Os Consórcios Públicos com personalidade jurídica de DIREITO PÚBLICO integram:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A Administração Indireta de todos os entes federados consorciados.', 1),
  ('b', 'B', 'Apenas a Administração Direta do ente líder.', 2),
  ('c', 'C', 'O Terceiro Setor.', 3),
  ('d', 'D', 'A Administração Direta da União sempre.', 4),
  ('e', 'E', 'Não integram a administração pública.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000148';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000148' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Consórcios Públicos.', 'Se tiver direito público, chama-se Associação Pública e faz parte da administração indireta de todos que assinaram.', 'Dica: Lei 11.107/2005.' from public.questions q where q.public_code = 'PPCE-DA-000148';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Pertence a todos.'),
  ('c', 'Incorreta. Se tem direito público, é Estado.'),
  ('d', 'Incorreta. Depende de quem se consorciou.'),
  ('e', 'Incorreta. Integram sim.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000148';

-- -----------------------------------------------------------------------------
-- QUESTÃO 149: ATOS ADMINISTRATIVOS (INVALIDAÇÃO - SILÊNCIO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000149', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'O silêncio no direito administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'No Direito Administrativo brasileiro, o silêncio da Administração Pública em relação a um pedido do administrado:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Não produz efeitos jurídicos como ato administrativo, salvo se a lei dispuser o contrário.', 1),
  ('b', 'B', 'Equivale sempre ao deferimento (aceite) do pedido.', 2),
  ('c', 'C', 'Equivale sempre ao indeferimento (recusa) do pedido.', 3),
  ('d', 'D', 'É considerado um ato administrativo tácito e inquestionável.', 4),
  ('e', 'E', 'Impede o acesso ao Poder Judiciário.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000149';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000149' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Silêncio Administrativo.', 'O silêncio é um FATO jurídico. Para gerar efeitos de ato (deferimento ou indeferimento), a lei deve prever expressamente.', 'Dica: O silêncio gera o direito de ir ao juiz para obrigar a administração a decidir.' from public.questions q where q.public_code = 'PPCE-DA-000149';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Só se a lei disser.'),
  ('c', 'Incorreta. Só se a lei disser.'),
  ('d', 'Incorreta. Não é ato propriamente dito.'),
  ('e', 'Incorreta. Permite o controle judicial por omissão.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000149';

-- -----------------------------------------------------------------------------
-- QUESTÃO 150: LICITAÇÕES (CONTRATAÇÃO DIRETA - DISPENSA LICITADA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000150', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Licitações', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A hipótese de contratação direta em que a licitação anterior foi frustrada por falta de interessados (licitação deserta), e a repetição do certame traria prejuízos à Administração, é caso de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Licitação Dispensável.', 1),
  ('b', 'B', 'Inexigibilidade de Licitação.', 2),
  ('c', 'C', 'Licitação Dispensada.', 3),
  ('d', 'D', 'Licitação Obrigatória por pregão.', 4),
  ('e', 'E', 'Convite simplificado.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000150';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000150' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Licitação Dispensável.', 'É dispensável (Art. 75, III) quando a licitação deserta ocorre e não pode ser repetida sem prejuízo.', 'Dica: Licitação FRACASSADA (todos desclassificados) também pode gerar dispensa se mantidas as condições do edital.' from public.questions q where q.public_code = 'PPCE-DA-000150';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Inexigibilidade é por falta de competição viável.'),
  ('c', 'Incorreta. Dispensada é para alienação de bens (Art. 76).'),
  ('d', 'Incorreta. Aqui a lei autoriza a não licitar.'),
  ('e', 'Incorreta. Extinto.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000150';

-- -----------------------------------------------------------------------------
-- QUESTÃO 151: LICITAÇÕES (CONTRATOS - CLÁUSULAS EXORBITANTES)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000151', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Contratos administrativos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'As cláusulas que conferem à Administração Pública prerrogativas que não seriam comuns em contratos entre particulares, como a alteração unilateral do contrato, denominam-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Cláusulas Exorbitantes.', 1),
  ('b', 'B', 'Cláusulas de Barreira.', 2),
  ('c', 'C', 'Cláusulas Pétreas.', 3),
  ('d', 'D', 'Cláusulas de Reajuste Automático.', 4),
  ('e', 'E', 'Cláusulas de Rescisão Bilateral.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000151';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000151' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Cláusulas Exorbitantes.', 'São cláusulas que colocam a Administração em posição de supremacia sobre o particular.', 'Dica: Exemplos incluem alteração unilateral, rescisão unilateral e fiscalização.' from public.questions q where q.public_code = 'PPCE-DA-000151';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Termo usado em contextos eleitorais ou de concorrência.'),
  ('c', 'Incorreta. Termo constitucional para normas imutáveis.'),
  ('d', 'Incorreta. Reajuste é para manutenção do equilíbrio econômico.'),
  ('e', 'Incorreta. Rescisão bilateral é comum em contratos privados também.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000151';

-- -----------------------------------------------------------------------------
-- QUESTÃO 152: AGENTES PÚBLICOS (ESTATUTO CEARÁ - REMOÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000152', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Agentes Públicos', 'Estatuto dos Servidores do Ceará', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O deslocamento do funcionário, a pedido ou de ofício, no âmbito do mesmo quadro, com ou sem mudança de sede, denomina-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Remoção.', 1),
  ('b', 'B', 'Redistribuição.', 2),
  ('c', 'C', 'Reintegração.', 3),
  ('d', 'D', 'Reaproveitamento.', 4),
  ('e', 'E', 'Readaptação.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000152';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000152' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Remoção.', 'Remoção é o deslocamento do servidor. Redistribuição é o deslocamento do CARGO.', 'Dica: No Ceará, a remoção pode ser feita para atender conveniência do serviço ou pedido do servidor.' from public.questions q where q.public_code = 'PPCE-DA-000152';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Move o cargo para outro órgão.'),
  ('c', 'Incorreta. Retorno de servidor demitido ilegalmente.'),
  ('d', 'Incorreta. Retorno de quem estava em disponibilidade.'),
  ('e', 'Incorreta. Mudança de cargo por limitação física/mental.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000152';

-- -----------------------------------------------------------------------------
-- QUESTÃO 153: SERVIÇOS PÚBLICOS (CONCESSÃO - LEI 8.987/95)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000153', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Serviços públicos', 'Concessão, permissão, autorização e delegação', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A delegação da prestação de serviço público, feita pelo poder concedente, mediante licitação, na modalidade de concorrência, a PESSOA JURÍDICA ou CONSÓRCIO DE EMPRESAS, denomina-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Concessão de Serviço Público.', 1),
  ('b', 'B', 'Permissão de Serviço Público.', 2),
  ('c', 'C', 'Autorização de Serviço Público.', 3),
  ('d', 'D', 'Parceria Público-Privada (PPP).', 4),
  ('e', 'E', 'Privatização direta.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000153';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000153' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Concessão.', 'A concessão exige concorrência (regra geral) e pode ser para consórcios.', 'Dica: Permissão pode ser para PESSOA FÍSICA também.' from public.questions q where q.public_code = 'PPCE-DA-000153';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Permissão pode ser para pessoa física e qualquer modalidade de licitação.'),
  ('c', 'Incorreta. Autorização é ato unilateral e precário.'),
  ('d', 'Incorreta. É um tipo especial de concessão (patrocinada ou administrativa).'),
  ('e', 'Incorreta. Privatização retira o serviço do Estado permanentemente.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000153';

-- -----------------------------------------------------------------------------
-- QUESTÃO 154: ATOS ADMINISTRATIVOS (EXTINÇÃO - CASSAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000154', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Extinção do ato administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A extinção de um ato administrativo porque o beneficiário descumpriu as condições que permitiam sua manutenção denomina-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Cassação.', 1),
  ('b', 'B', 'Caducidade.', 2),
  ('c', 'C', 'Contraposição.', 3),
  ('d', 'D', 'Anulação.', 4),
  ('e', 'E', 'Revogação.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000154';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000154' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Cassação.', 'Cassação é a "punição" pelo descumprimento das regras do ato (ex: cassar licença de hotel que vira prostíbulo).', 'Dica: Caducidade é por mudança de lei posterior.' from public.questions q where q.public_code = 'PPCE-DA-000154';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Extinção por lei nova incompatível.'),
  ('c', 'Incorreta. Extinção por ato novo com efeitos opostos (ex: exoneração extingue nomeação).'),
  ('d', 'Incorreta. Por ilegalidade na origem.'),
  ('e', 'Incorreta. Por conveniência e oportunidade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000154';

-- -----------------------------------------------------------------------------
-- QUESTÃO 155: CONTROLE DA ADMINISTRAÇÃO (TRIBUNAL DE CONTAS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000155', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Controle e responsabilização da administração', 'Controle externo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'As decisões do Tribunal de Contas (TCE-CE) que resultem em imputação de débito ou multa têm natureza de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Título executivo extrajudicial.', 1),
  ('b', 'B', 'Sentença judicial transitada em julgado.', 2),
  ('c', 'C', 'Recomendação não vinculante.', 3),
  ('d', 'D', 'Projeto de Lei.', 4),
  ('e', 'E', 'Ato meramente opinativo.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000155';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000155' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Decisões do TCE.', 'As multas e débitos do TCE podem ser cobrados diretamente via execução fiscal, sem precisar discutir o mérito de novo no juiz.', 'Dica: Art. 71, §3º da CF.' from public.questions q where q.public_code = 'PPCE-DA-000155';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. TCE não é poder judiciário.'),
  ('c', 'Incorreta. São vinculantes e executáveis.'),
  ('d', 'Incorreta. Não é função legislativa.'),
  ('e', 'Incorreta. Opinativo é apenas o parecer prévio das contas do Governador/Prefeito.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000155';

-- -----------------------------------------------------------------------------
-- QUESTÃO 156: LICITAÇÕES (CONTRATOS - EQUILÍBRIO ECONÔMICO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000156', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Contratos administrativos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A ocorrência de fatos imprevisíveis (ou previsíveis de consequências incalculáveis) que tornam a execução do contrato excessivamente onerosa para o contratado autoriza o:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Reequilíbrio econômico-financeiro (Álea Extraordinária).', 1),
  ('b', 'B', 'Reajuste anual por índices de preços.', 2),
  ('c', 'C', 'Cancelamento do contrato sem indenização.', 3),
  ('d', 'D', 'Aumento de impostos sobre o lucro da empresa.', 4),
  ('e', 'E', 'Confisco dos bens da empresa pelo Estado.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000156';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000156' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Equilíbrio Contratual.', 'Fatos imprevisíveis enquadram-se na Teoria da Imprevisão (álea extraordinária).', 'Dica: O reajuste anual lida com a inflação (álea ordinária).' from public.questions q where q.public_code = 'PPCE-DA-000156';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Lida com variações previsíveis de preços.'),
  ('c', 'Incorreta. Gera direito à indenização ou revisão.'),
  ('d', 'Incorreta. Impostos sobre lucro não geram reequilíbrio geral (exceto se criarem novos tributos diretos).'),
  ('e', 'Incorreta. Absurdo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000156';

-- -----------------------------------------------------------------------------
-- QUESTÃO 157: AGENTES PÚBLICOS (ESTATUTO CEARÁ - PENALIDADES)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000157', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Agentes Públicos', 'Estatuto dos Servidores do Ceará', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Segundo a Lei 9.826/74 (Ceará), a penalidade de SUSPENSÃO não poderá exceder:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '90 dias.', 1),
  ('b', 'B', '30 dias.', 2),
  ('c', 'C', '60 dias.', 3),
  ('d', 'D', '120 dias.', 4),
  ('e', 'E', '1 ano.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000157';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000157' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Suspensão no Ceará.', 'O limite máximo é de 90 dias, assim como na Lei Federal 8.112.', 'Dica: Durante a suspensão, o servidor não recebe remuneração.' from public.questions q where q.public_code = 'PPCE-DA-000157';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Prazo comum para advertências em alguns estatutos municipais.'),
  ('c', 'Incorreta. Valor intermediário sem previsão.'),
  ('d', 'Incorreta. Excede o limite legal.'),
  ('e', 'Incorreta. Excede o limite legal.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000157';

-- -----------------------------------------------------------------------------
-- QUESTÃO 158: ESTADO, GOVERNO E ADMINISTRAÇÃO (ÓRGÃOS - CLASSIFICAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000158', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Organização Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Quanto à posição estatal, a Governadoria do Estado do Ceará é classificada como um órgão:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Independente.', 1),
  ('b', 'B', 'Autônomo.', 2),
  ('c', 'C', 'Superior.', 3),
  ('d', 'D', 'Subordinado.', 4),
  ('e', 'E', 'Vicário.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000158';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000158' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Classificação de Órgãos.', 'Órgãos Independentes são os de cúpula (Governadoria, Assembleia, Tribunais). Não têm subordinados hierárquicos acima deles.', 'Dica: Secretarias são Autônomos.' from public.questions q where q.public_code = 'PPCE-DA-000158';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. São os logo abaixo dos independentes (Secretarias).'),
  ('c', 'Incorreta. Têm poder de decisão, mas subordinados a outros (Coordenadorias).'),
  ('d', 'Incorreta. Meros executores (Seções de serviço).'),
  ('e', 'Incorreta. Inventado.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000158';

-- -----------------------------------------------------------------------------
-- QUESTÃO 159: ATOS ADMINISTRATIVOS (INVALIDAÇÃO - CONVERSÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000159', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Revogação, anulação e convalidação do ato administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Quando a Administração retira um ato inválido e, no mesmo momento, aproveita os seus elementos para criar um novo ato válido de espécie diferente, ocorre a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Conversão.', 1),
  ('b', 'B', 'Ratificação.', 2),
  ('c', 'C', 'Reforma.', 3),
  ('d', 'D', 'Substituição punitiva.', 4),
  ('e', 'E', 'Insubsistência.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000159';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000159' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Conversão do Ato.', 'A conversão aproveita o ato nulo transformando-o em outro (ex: uma licença nula que vira autorização válida).', 'Dica: É uma forma de saneamento do ato.' from public.questions q where q.public_code = 'PPCE-DA-000159';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É o mesmo que convalidação por autoridade superior.'),
  ('c', 'Incorreta. Retira a parte inválida e mantém a válida (mesma espécie).'),
  ('d', 'Incorreta. Inventado.'),
  ('e', 'Incorreta. Perda de efeito por fato superveniente.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000159';

-- -----------------------------------------------------------------------------
-- QUESTÃO 160: SERVIÇOS PÚBLICOS (PRINCÍPIOS - MODERNIDADE)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000160', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Serviços públicos', 'Serviço adequado', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'O princípio que exige que o serviço público seja prestado utilizando as técnicas e equipamentos mais atuais e eficientes denomina-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Princípio da Atualidade (ou Modernidade).', 1),
  ('b', 'B', 'Princípio da Modicidade das Tarifas.', 2),
  ('c', 'C', 'Princípio da Cortesia.', 3),
  ('d', 'D', 'Princípio da Generalidade.', 4),
  ('e', 'E', 'Princípio da Segurança.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000160';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000160' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Princípio da Atualidade.', 'O serviço deve evoluir com a tecnologia.', 'Dica: Está previsto na Lei 8.987/95.' from public.questions q where q.public_code = 'PPCE-DA-000160';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Refere-se a preços baixos/acessíveis.'),
  ('c', 'Incorreta. Bom atendimento.'),
  ('d', 'Incorreta. Atendimento a todos (universalidade).'),
  ('e', 'Incorreta. Prestação sem riscos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000160';

-- -----------------------------------------------------------------------------
-- QUESTÃO 161: PODERES ADMINISTRATIVOS (PODER DE POLÍCIA - TAXA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000161', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes administrativos', 'Poder de polícia', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A atividade do Poder de Polícia pode ser remunerada mediante a cobrança de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Taxa.', 1),
  ('b', 'B', 'Imposto.', 2),
  ('c', 'C', 'Tarifa.', 3),
  ('d', 'D', 'Contribuição de Melhoria.', 4),
  ('e', 'E', 'Empréstimo compulsório.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000161';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000161' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Remuneração da Polícia.', 'O exercício do poder de polícia é fato gerador de TAXA (tributo vinculado).', 'Dica: Imposto não pode ser vinculado a uma contraprestação estatal específica.' from public.questions q where q.public_code = 'PPCE-DA-000161';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Imposto é para serviços gerais (não específicos).'),
  ('c', 'Incorreta. Tarifa é preço público (contratual).'),
  ('d', 'Incorreta. Devido à valorização de imóvel por obra pública.'),
  ('e', 'Incorreta. Caso de urgência/guerra.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000161';

-- -----------------------------------------------------------------------------
-- QUESTÃO 162: LICITAÇÕES (CONTRATOS - GARANTIAS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000162', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Contratos administrativos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Quem escolhe a modalidade de garantia a ser prestada no contrato administrativo (caução, seguro-garantia ou fiança bancária) é:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'O contratado.', 1),
  ('b', 'B', 'A Administração Pública.', 2),
  ('c', 'C', 'O Tribunal de Contas.', 3),
  ('d', 'D', 'O Banco Central.', 4),
  ('e', 'E', 'O edital, sem possibilidade de escolha pelo licitante.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000162';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000162' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Garantias Contratuais.', 'A Administração exige a garantia, mas o contratado escolhe QUAL das formas previstas na lei ele vai usar.', 'Dica: Art. 96 da Lei 14.133.' from public.questions q where q.public_code = 'PPCE-DA-000162';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Ela exige, mas não escolhe o tipo para o particular.'),
  ('c', 'Incorreta. Fiscaliza apenas.'),
  ('d', 'Incorreta. Sem relação direta.'),
  ('e', 'Incorreta. A lei garante a opção ao contratado.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000162';

-- -----------------------------------------------------------------------------
-- QUESTÃO 163: AGENTES PÚBLICOS (ESTATUTO CEARÁ - ABANDONO DE CARGO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000163', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Agentes Públicos', 'Estatuto dos Servidores do Ceará', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Configura abandono de cargo a ausência injustificada do funcionário por mais de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '30 dias consecutivos.', 1),
  ('b', 'B', '60 dias intercalados no ano.', 2),
  ('c', 'C', '15 dias consecutivos.', 3),
  ('d', 'D', '45 dias consecutivos.', 4),
  ('e', 'E', '10 dias úteis.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000163';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000163' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Abandono de Cargo.', '30 dias consecutivos = Abandono. 60 dias intercalados em 12 meses = Inassiduidade habitual.', 'Dica: Gera demissão.' from public.questions q where q.public_code = 'PPCE-DA-000163';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Esta é a inassiduidade habitual.'),
  ('c', 'Incorreta. Metade do prazo.'),
  ('d', 'Incorreta. Prazo inventado.'),
  ('e', 'Incorreta. Muito curto.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000163';

-- -----------------------------------------------------------------------------
-- QUESTÃO 164: ATOS ADMINISTRATIVOS (INVALIDAÇÃO - CONVALIDAÇÃO - COMPETÊNCIA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000164', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Revogação, anulação e convalidação do ato administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Um ato administrativo com vício de COMPETÊNCIA pode ser convalidado, DESDE QUE:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A competência não seja exclusiva.', 1),
  ('b', 'B', 'O vício seja no motivo do ato.', 2),
  ('c', 'C', 'O ato seja discricionário.', 3),
  ('d', 'D', 'Haja concordância do Ministério Público.', 4),
  ('e', 'E', 'O vício seja na finalidade do ato.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000164';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000164' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Convalidação de Competência.', 'Se a competência for EXCLUSIVA, o vício é insanável. Se não for, a autoridade correta pode ratificar (convalidar) o ato.', 'Dica: Convalidação é o gênero; ratificação é a espécie para competência.' from public.questions q where q.public_code = 'PPCE-DA-000164';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Vício de motivo é geralmente insanável.'),
  ('c', 'Incorreta. Independe de ser vinculado ou discricionário.'),
  ('d', 'Incorreta. Não é requisito legal.'),
  ('e', 'Incorreta. Vício de finalidade (desvio de poder) é insanável.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000164';

-- -----------------------------------------------------------------------------
-- QUESTÃO 165: RESPONSABILIDADE CIVIL (DANO POR OMISSÃO - TEORIA SUBJETIVA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000165', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Responsabilidade civil do State', 'Responsabilidade Civil do Estado', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Em regra, a responsabilidade civil do Estado por danos decorrentes de OMISSÃO GENÉRICA (falta do serviço - faute du service) fundamenta-se na:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Teoria Subjetiva (necessidade de provar culpa ou dolo).', 1),
  ('b', 'B', 'Teoria Objetiva (independe de culpa).', 2),
  ('c', 'C', 'Teoria do Risco Integral.', 3),
  ('d', 'D', 'Teoria da Imprevisão.', 4),
  ('e', 'E', 'Inexistência de responsabilidade em casos de omissão.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000165';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000165' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Omissão Genérica.', 'Na omissão genérica, deve-se provar que o Estado tinha o dever de agir e foi negligente. Por isso é subjetiva.', 'Dica: Na omissão ESPECÍFICA (preso sob custódia), a responsabilidade é OBJETIVA.' from public.questions q where q.public_code = 'PPCE-DA-000165';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Aplicada para condutas comissivas (atos positivos).'),
  ('c', 'Incorreta. Não admite excludentes (ex: dano nuclear).'),
  ('d', 'Incorreta. Termo de contratos administrativos.'),
  ('e', 'Incorreta. O Estado responde sim.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000165';

-- -----------------------------------------------------------------------------
-- QUESTÃO 166: LICITAÇÕES (CONTRATOS - PRAZO DE DURAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000166', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Contratos administrativos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Na Lei 14.133/2021, os contratos de SERVIÇOS E FORNECIMENTOS CONTÍNUOS poderão ser prorrogados sucessivamente por até:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '10 anos.', 1),
  ('b', 'B', '5 anos.', 2),
  ('c', 'C', '2 anos.', 3),
  ('d', 'D', '15 anos.', 4),
  ('e', 'E', 'Não há limite de prorrogação.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000166';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000166' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Prazos Contratuais.', 'A Nova Lei permite contratos contínuos de até 5 anos, prorrogáveis até o limite de 10 anos.', 'Dica: Na lei antiga era 60 meses + 12 meses.' from public.questions q where q.public_code = 'PPCE-DA-000166';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Este é o prazo inicial máximo para serviços contínuos.'),
  ('c', 'Incorreta. Prazo comum para dispensas de pequena monta.'),
  ('d', 'Incorreta. Excede o limite para serviços contínuos.'),
  ('e', 'Incorreta. O limite é de 10 anos.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000166';

-- -----------------------------------------------------------------------------
-- QUESTÃO 167: AGENTES PÚBLICOS (ESTATUTO CEARÁ - LICENÇA PRÊMIO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000167', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Agentes Públicos', 'Estatuto dos Servidores do Ceará', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A licença concedida ao funcionário estável do Ceará, após cada quinquênio de serviço, com todos os direitos e vantagens do cargo, denomina-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Licença Especial (Prêmio).', 1),
  ('b', 'B', 'Licença para Tratar de Interesses Particulares.', 2),
  ('c', 'C', 'Licença Capacitação.', 3),
  ('d', 'D', 'Licença por Motivo de Doença em Pessoa da Família.', 4),
  ('e', 'E', 'Licença Sabática.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000167';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000167' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Licença Especial.', 'No Ceará, o servidor ainda faz jus à licença prêmio (3 meses a cada 5 anos).', 'Dica: Na esfera federal, ela foi substituída pela licença-capacitação.' from public.questions q where q.public_code = 'PPCE-DA-000167';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Não é remunerada.'),
  ('c', 'Incorreta. Nome federal para o que era a licença prêmio.'),
  ('d', 'Incorreta. Finalidade diversa.'),
  ('e', 'Incorreta. Termo acadêmico.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000167';

-- -----------------------------------------------------------------------------
-- QUESTÃO 168: ESTADO, GOVERNO E ADMINISTRAÇÃO (TERCEIRO SETOR - OS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000168', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Organização Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'As Organizações Sociais (OS) celebram com o Poder Público um instrumento específico para a gestão de serviços públicos, denominado:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Contrato de Gestão.', 1),
  ('b', 'B', 'Termo de Parceria.', 2),
  ('c', 'C', 'Convênio Administrativo.', 3),
  ('d', 'D', 'Contrato de Empreitada.', 4),
  ('e', 'E', 'Termo de Fomento.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000168';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000168' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'OS - Contrato de Gestão.', 'Organização Social (OS) -> Contrato de Gestão. OSCIP -> Termo de Parceria.', 'Dica: Lembrar da sigla OS-CG (Organização Social - Contrato Gestão).' from public.questions q where q.public_code = 'PPCE-DA-000168';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Usado pelas OSCIPs.'),
  ('c', 'Incorreta. Para cooperação sem fins lucrativos gerais.'),
  ('d', 'Incorreta. Contrato de obra comum.'),
  ('e', 'Incorreta. Usado por organizações da sociedade civil em geral (MROSC).')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000168';

-- -----------------------------------------------------------------------------
-- QUESTÃO 169: ATOS ADMINISTRATIVOS (INVALIDAÇÃO - RETIRADA - CADUCIDADE)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000169', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Extinção do ato administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A extinção do ato administrativo por motivo de norma jurídica superveniente que torna inadmissível a situação antes permitida pelo ato é a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Caducidade.', 1),
  ('b', 'B', 'Cassação.', 2),
  ('c', 'C', 'Contraposição.', 3),
  ('d', 'D', 'Renúncia.', 4),
  ('e', 'E', 'Preclusão.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000169';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000169' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Caducidade.', 'A lei mudou e "derrubou" o ato antigo.', 'Dica: Exemplo: Licença para banca de jornal em local que vira área de segurança máxima por lei nova.' from public.questions q where q.public_code = 'PPCE-DA-000169';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Por culpa do beneficiário.'),
  ('c', 'Incorreta. Por ato administrativo oposto.'),
  ('d', 'Incorreta. O beneficiário abre mão do direito.'),
  ('e', 'Incorreta. Perda de prazo processual.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000169';

-- -----------------------------------------------------------------------------
-- QUESTÃO 170: SERVIÇOS PÚBLICOS (EXTINÇÃO DA CONCESSÃO - ENCAMPAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000170', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Serviços públicos', 'Concessão, permissão, autorização e delegação', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A retomada do serviço pelo poder concedente durante o prazo da concessão, por motivo de interesse público, mediante lei autorizativa específica e após prévio pagamento de indenização, denomina-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Encampação (ou Resgate).', 1),
  ('b', 'B', 'Caducidade.', 2),
  ('c', 'C', 'Rescisão judicial.', 3),
  ('d', 'D', 'Reversão.', 4),
  ('e', 'E', 'Anulação.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000170';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000170' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Encampação.', 'Encampação = Interesse Público + Lei + Indenização Prévia.', 'Dica: Caducidade na concessão é quando a empresa pisa na bola (falta contratual).' from public.questions q where q.public_code = 'PPCE-DA-000170';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Extinção por inadimplemento da concessionária.'),
  ('c', 'Incorreta. Quando a empresa pede na justiça a quebra do contrato por culpa do Estado.'),
  ('d', 'Incorreta. Retorno dos bens ao Estado ao final do contrato.'),
  ('e', 'Incorreta. Por ilegalidade no contrato.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000170';

-- -----------------------------------------------------------------------------
-- QUESTÃO 171: PODERES ADMINISTRATIVOS (PODER REGULAMENTAR)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000171', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes administrativos', 'Poder regulamentar', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O decreto expedido pelo Chefe do Poder Executivo para fiel execução da lei, sem criar direitos ou obrigações novos, é exercício do:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Poder Regulamentar (Decreto de Execução).', 1),
  ('b', 'B', 'Poder Legislativo Originário.', 2),
  ('c', 'C', 'Poder de Polícia Judiciária.', 3),
  ('d', 'D', 'Poder Disciplinar Interno.', 4),
  ('e', 'E', 'Poder Moderador.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000171';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000171' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Poder Regulamentar.', 'O decreto de execução serve para dar "fiel execução" à lei.', 'Dica: Existe também o Decreto Autônomo (este cria normas originais em casos restritos).' from public.questions q where q.public_code = 'PPCE-DA-000171';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Criar a própria lei.'),
  ('c', 'Incorreta. Investigação de crimes.'),
  ('d', 'Incorreta. Punição de servidores.'),
  ('e', 'Incorreta. Não existe no Brasil atual.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000171';

-- -----------------------------------------------------------------------------
-- QUESTÃO 172: LICITAÇÕES (MODALIDADES - LEILÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000172', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Licitações', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A modalidade de licitação para a ALIENAÇÃO (venda) de bens móveis inservíveis ou produtos legalmente apreendidos é o:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Leilão.', 1),
  ('b', 'B', 'Pregão.', 2),
  ('c', 'C', 'Concurso.', 3),
  ('d', 'D', 'Concorrência.', 4),
  ('e', 'E', 'Tomada de Preços.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000172';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000172' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Leilão.', 'Leilão é para vender. O critério é o Maior Lance.', 'Dica: Na lei 14.133, o leilão também pode ser usado para vender imóveis.' from public.questions q where q.public_code = 'PPCE-DA-000172';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Para comprar bens comuns.'),
  ('c', 'Incorreta. Para prêmios.'),
  ('d', 'Incorreta. Para grandes compras.'),
  ('e', 'Incorreta. Extinta na lei nova.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000172';

-- -----------------------------------------------------------------------------
-- QUESTÃO 173: AGENTES PÚBLICOS (ESTATUTO CEARÁ - READAPTAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000173', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Agentes Públicos', 'Estatuto dos Servidores do Ceará', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A investidura do funcionário em cargo de atribuições e responsabilidades compatíveis com a limitação que tenha sofrido em sua capacidade física ou mental é a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Readaptação.', 1),
  ('b', 'B', 'Reversão.', 2),
  ('c', 'C', 'Aproveitamento.', 3),
  ('d', 'D', 'Promoção.', 4),
  ('e', 'E', 'Readmissão.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000173';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000173' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Readaptação.', 'Readaptação = Limitação de saúde.', 'Dica: Se ficar totalmente incapaz, é aposentado por invalidez.' from public.questions q where q.public_code = 'PPCE-DA-000173';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Retorno do aposentado.'),
  ('c', 'Incorreta. Retorno do disponível.'),
  ('d', 'Incorreta. Elevação na carreira.'),
  ('e', 'Incorreta. Termo proibido hoje em dia (antiga volta sem concurso).')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000173';

-- -----------------------------------------------------------------------------
-- QUESTÃO 174: ATOS ADMINISTRATIVOS (INVALIDAÇÃO - CONVALIZAÇÃO - FORMA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000174', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Revogação, anulação e convalidação do ato administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Um vício de FORMA no ato administrativo permite a convalidação se a forma não for:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Essencial à validade do ato.', 1),
  ('b', 'B', 'Escrita.', 2),
  ('c', 'C', 'Pública.', 3),
  ('d', 'D', 'Complexa.', 4),
  ('e', 'E', 'Eletrônica.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000174';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000174' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Vício de Forma.', 'Se a lei exige uma forma específica como requisito de validade (ex: escritura pública para alienar imóvel), o vício é insanável. Se for forma comum, pode convalidar.', 'Dica: Forma e Competência são os dois elementos "convalidáveis" em regra.' from public.questions q where q.public_code = 'PPCE-DA-000174';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Quase todos são escritos, mas isso não define a convalidação.'),
  ('c', 'Incorreta. Publicidade é princípio.'),
  ('d', 'Incorreta. Atos complexos exigem duas vontades.'),
  ('e', 'Incorreta. Meio tecnológico.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000174';

-- -----------------------------------------------------------------------------
-- QUESTÃO 175: LICITAÇÕES (CONTRATAÇÃO DIRETA - INEXIGIBILIDADE - NOTÓRIA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000175', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Licitações', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A contratação de profissional do setor artístico, diretamente ou através de empresário exclusivo, desde que consagrado pela crítica especializada ou pela opinião pública, é caso de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Inexigibilidade de Licitação.', 1),
  ('b', 'B', 'Dispensa de Licitação.', 2),
  ('c', 'C', 'Licitação Dispensada.', 3),
  ('d', 'D', 'Concurso de Talentos.', 4),
  ('e', 'E', 'Diálogo Competitivo.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000175';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000175' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Inexigibilidade Artística.', 'Artistas consagrados = Inexigibilidade (não há como comparar objetivamente um artista com outro).', 'Dica: Art. 74, II da Lei 14.133.' from public.questions q where q.public_code = 'PPCE-DA-000175';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Dispensa é para casos onde a competição É possível, mas a lei prefere não licitar.'),
  ('c', 'Incorreta. Para venda de bens.'),
  ('d', 'Incorreta. Concurso é modalidade para prêmios, não contratação direta artística.'),
  ('e', 'Incorreta. Modalidade de debate técnico.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000175';


-- -----------------------------------------------------------------------------
-- QUESTÃO 176: PROCESSO ADMINISTRATIVO (RECURSOS - REFORMATIO IN PEJUS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000176', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Processo administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'No processo administrativo federal (Lei 9.784/99), caso o recurso resulte em agravamento da sanção (reformatio in pejus) pela autoridade superior, o recorrente:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Deve ser intimado para formular suas alegações antes da decisão.', 1),
  ('b', 'B', 'Não pode ter sua pena agravada em nenhuma hipótese.', 2),
  ('c', 'C', 'Terá o processo anulado automaticamente.', 3),
  ('d', 'D', 'Deve aceitar a decisão, pois não cabe defesa contra agravamento.', 4),
  ('e', 'E', 'Será processado criminalmente por litigância de má-fé.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000176';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000176' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Reformatio in Pejus.', 'A Lei 9.784 admite o agravamento, mas exige que o interessado seja ouvido antes (contraditório).', 'Dica: Diferente do processo penal, no administrativo o agravamento é possível se houver intimação prévia.' from public.questions q where q.public_code = 'PPCE-DA-000176';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. O agravamento é permitido se respeitado o contraditório.'),
  ('c', 'Incorreta. O processo segue válido se houver a intimação.'),
  ('d', 'Incorreta. Cabe ampla defesa sim.'),
  ('e', 'Incorreta. Recorrer é um direito, não má-fé.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000176';

-- -----------------------------------------------------------------------------
-- QUESTÃO 177: IMPROBIDADE ADMINISTRATIVA (PRESCRIÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000177', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Controle e responsabilização da administração', 'Lei de Improbidade Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'De acordo com a Lei 8.429/92 (alterada pela Lei 14.230/21), o prazo de prescrição para o sistema de improbidade administrativa é de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '8 anos, contados da ocorrência do fato.', 1),
  ('b', 'B', '5 anos, contados do término do mandato.', 2),
  ('c', 'C', '10 anos, contados do conhecimento do fato.', 3),
  ('d', 'D', 'Imprescritível em todos os casos.', 4),
  ('e', 'E', '2 anos, contados do ajuizamento da ação.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000177';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000177' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Prescrição na LIA.', 'A nova lei unificou o prazo em 8 anos contados do fato.', 'Dica: Existe também a prescrição intercorrente (4 anos entre marcos processuais).' from public.questions q where q.public_code = 'PPCE-DA-000177';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Esta era a regra da lei antiga.'),
  ('c', 'Incorreta. Prazo comum de prescrição civil geral.'),
  ('d', 'Incorreta. Apenas o ressarcimento ao erário por dolo é imprescritível segundo o STF.'),
  ('e', 'Incorreta. Prazo muito curto.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000177';

-- -----------------------------------------------------------------------------
-- QUESTÃO 178: RESPONSABILIDADE CIVIL (AÇÃO DE REGRESSO - PRESCRIÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000178', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Responsabilidade civil do State', 'Responsabilidade Civil do Estado', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O prazo para o Estado ajuizar ação de regresso contra o servidor público que causou dano por dolo ou culpa prescreve em:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '5 anos (conforme o Decreto 20.910/32).', 1),
  ('b', 'B', '3 anos (conforme o Código Civil).', 2),
  ('c', 'C', '10 anos (regra geral).', 3),
  ('d', 'D', 'É imprescritível.', 4),
  ('e', 'E', '1 ano.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000178';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000178' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Prescrição do Regresso.', 'O STJ entende que o prazo é de 5 anos, seguindo a lógica do prazo que o particular tem contra o Estado.', 'Dica: A imprescritibilidade do ressarcimento ao erário (Art. 37, §5º CF) só vale para atos de IMPROBIDADE DOLOSOS, não para ilícitos civis comuns.' from public.questions q where q.public_code = 'PPCE-DA-000178';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Aplica-se ao direito privado.'),
  ('c', 'Incorreta. Prazo residual.'),
  ('d', 'Incorreta. Só se for improbidade dolosa.'),
  ('e', 'Incorreta. Muito curto.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000178';

-- -----------------------------------------------------------------------------
-- QUESTÃO 179: PODERES ADMINISTRATIVOS (POLÍCIA vs JUDICIÁRIA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000179', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes administrativos', 'Poder de polícia', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A principal distinção entre a Polícia Administrativa e a Polícia Judiciária é que a primeira:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Recai sobre atividades, bens e direitos, tendo caráter predominantemente preventivo.', 1),
  ('b', 'B', 'Recai sobre pessoas e visa a investigação de crimes já ocorridos.', 2),
  ('c', 'C', 'É exercida exclusivamente pela Polícia Federal.', 3),
  ('d', 'D', 'Não possui o atributo da coercibilidade.', 4),
  ('e', 'E', 'Só pode ser exercida por ordem judicial.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000179';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000179' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Polícia Administrativa vs Judiciária.', 'P. Administrativa: Bens/Direitos/Atividades. Preventiva. P. Judiciária: Pessoas. Repressiva (investiga crimes).', 'Dica: A Polícia Penal exerce Poder de Polícia Administrativa dentro dos presídios.' from public.questions q where q.public_code = 'PPCE-DA-000179';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Definição de Polícia Judiciária.'),
  ('c', 'Incorreta. Diversos órgãos exercem (SAP, Vigilância Sanitária, etc).'),
  ('d', 'Incorreta. Possui sim coercibilidade.'),
  ('e', 'Incorreta. É autoexecutável.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000179';

-- -----------------------------------------------------------------------------
-- QUESTÃO 180: AGENTES PÚBLICOS (ESTATUTO CEARÁ - REVERSÃO vs REINTEGRAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000180', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Agentes Públicos', 'Estatuto dos Servidores do Ceará', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'No Estatuto do Ceará (Lei 9.826/74), o retorno ao serviço do funcionário aposentado por invalidez, quando cessados os motivos da aposentadoria, é a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Reversão.', 1),
  ('b', 'B', 'Reintegração.', 2),
  ('c', 'C', 'Reaproveitamento.', 3),
  ('d', 'D', 'Recondução.', 4),
  ('e', 'E', 'Redistribuição.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000180';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000180' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Reversão.', 'Reversão = Retorno do Velhinho (aposentado).', 'Dica: Lembrar do "V" de Reversão e de Velhinho/Aposentado.' from public.questions q where q.public_code = 'PPCE-DA-000180';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Retorno do demitido ilegalmente.'),
  ('c', 'Incorreta. Retorno do disponível.'),
  ('d', 'Incorreta. Retorno do estável ao cargo anterior.'),
  ('e', 'Incorreta. Deslocamento do cargo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000180';

-- -----------------------------------------------------------------------------
-- QUESTÃO 181: ATOS ADMINISTRATIVOS (PRAZO DE ANULAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000181', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Revogação, anulação e convalidação do ato administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'O direito da Administração de anular os atos administrativos de que decorram efeitos favoráveis para os destinatários decai em:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', '5 anos, salvo comprovada má-fé.', 1),
  ('b', 'B', '2 anos.', 2),
  ('c', 'C', '10 anos.', 3),
  ('d', 'D', 'É perpétuo, pois a ilegalidade nunca se cura.', 4),
  ('e', 'E', '1 ano.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000181';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000181' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Decadência Administrativa.', 'Regra dos 5 anos (Art. 54 da Lei 9.784/99). Visa a segurança jurídica.', 'Dica: Se houver MÁ-FÉ, a administração pode anular a qualquer tempo.' from public.questions q where q.public_code = 'PPCE-DA-000181';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Prazo curto.'),
  ('c', 'Incorreta. Prazo de prescrição civil residual.'),
  ('d', 'Incorreta. A segurança jurídica impõe limites ao poder de anular.'),
  ('e', 'Incorreta. Prazo curto.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000181';

-- -----------------------------------------------------------------------------
-- QUESTÃO 182: LICITAÇÕES (CONTRATAÇÃO DIRETA - LICITAÇÃO DESERTA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000182', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Licitações', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Quando a Administração realiza uma licitação e nenhum interessado comparece, denomina-se "licitação deserta". Para contratar diretamente por dispensa nesse caso, é necessário que:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'As condições do edital sejam mantidas e a repetição cause prejuízo.', 1),
  ('b', 'B', 'O valor seja aumentado para atrair interessados.', 2),
  ('c', 'C', 'Seja contratada obrigatoriamente uma empresa estatal.', 3),
  ('d', 'D', 'O Ministério Público autorize a contratação.', 4),
  ('e', 'E', 'A licitação tenha sido na modalidade Leilão.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000182';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000182' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Licitação Deserta.', 'Na deserta (ninguém apareceu), pode dispensar se manter as condições e provar prejuízo na demora.', 'Dica: Na licitação FRACASSADA (apareceram, mas todos foram inabilitados), a regra é dar prazo para correção.' from public.questions q where q.public_code = 'PPCE-DA-000182';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Mudar condições exige nova licitação.'),
  ('c', 'Incorreta. Não há essa obrigatoriedade.'),
  ('d', 'Incorreta. O MP não autoriza contratos, fiscaliza a lei.'),
  ('e', 'Incorreta. Vale para qualquer modalidade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000182';

-- -----------------------------------------------------------------------------
-- QUESTÃO 183: ORGANIZAÇÃO ADMINISTRATIVA (AGÊNCIAS REGULADORAS - QUARENTENA)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000183', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Organização Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'O período de impedimento imposto aos ex-dirigentes de agências reguladoras para atuar no setor que fiscalizavam, visando evitar o uso de informações privilegiadas, denomina-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Quarentena.', 1),
  ('b', 'B', 'Interstício.', 2),
  ('c', 'C', 'Vacância.', 3),
  ('d', 'D', 'Disponibilidade remunerada.', 4),
  ('e', 'E', 'Afastamento preventivo.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000183';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000183' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Quarentena.', 'É o prazo (geralmente 6 meses) em que o ex-gestor não pode trabalhar para empresas do setor regulado.', 'Dica: Durante esse tempo, ele continua recebendo salário da agência.' from public.questions q where q.public_code = 'PPCE-DA-000183';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Tempo entre promoções na carreira.'),
  ('c', 'Incorreta. Cargo vago.'),
  ('d', 'Incorreta. Situação de servidor cujo cargo foi extinto.'),
  ('e', 'Incorreta. Medida durante processo disciplinar.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000183';

-- -----------------------------------------------------------------------------
-- QUESTÃO 184: IMPROBIDADE ADMINISTRATIVA (AFASTAMENTO CAUTELAR)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000184', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Controle e responsabilização da administração', 'Lei de Improbidade Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Na ação de improbidade administrativa, a autoridade judicial poderá determinar o afastamento do agente público do cargo, sem prejuízo de sua remuneração, quando:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'A medida for necessária à instrução processual ou para evitar danos.', 1),
  ('b', 'B', 'Houver condenação em primeira instância.', 2),
  ('c', 'C', 'O Ministério Público assim o desejar, sem necessidade de fundamentação.', 3),
  ('d', 'D', 'O agente for reincidente em faltas disciplinares leves.', 4),
  ('e', 'E', 'O crime for hediondo.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000184';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000184' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Afastamento Cautelar.', 'É medida excepcional para evitar que o agente atrapalhe as investigações.', 'Dica: O afastamento NÃO pode ser por tempo indeterminado e mantém o salário.' from public.questions q where q.public_code = 'PPCE-DA-000184';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A perda do cargo só ocorre com o trânsito em julgado.'),
  ('c', 'Incorreta. Toda decisão judicial deve ser fundamentada.'),
  ('d', 'Incorreta. Falta leve não justifica medida tão gravosa.'),
  ('e', 'Incorreta. Improbidade não é crime, é ilícito civil (embora possa haver crime em paralelo).')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000184';

-- -----------------------------------------------------------------------------
-- QUESTÃO 185: PROCESSO ADMINISTRATIVO (IMPEDIMENTO vs SUSPEIÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000185', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Processo administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'No processo administrativo, a situação em que a autoridade possui amizade íntima ou inimizade notória com algum dos interessados configura:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Suspeição.', 1),
  ('b', 'B', 'Impedimento.', 2),
  ('c', 'C', 'Incompetência absoluta.', 3),
  ('d', 'D', 'Preclusão consumativa.', 4),
  ('e', 'E', 'Litispendência.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000185';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000185' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Suspeição.', 'Suspeição = Motivos subjetivos (amizade/inimizade). Impedimento = Motivos objetivos (participou como perito, é parente, tem interesse direto).', 'Dica: O impedimento deve ser declarado de ofício pela autoridade sob pena de falta grave.' from public.questions q where q.public_code = 'PPCE-DA-000185';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Impedimento é para vínculos mais fortes e objetivos.'),
  ('c', 'Incorreta. Refere-se à falta de poder legal.'),
  ('d', 'Incorreta. Perda do direito de agir no processo.'),
  ('e', 'Incorreta. Dois processos iguais ao mesmo tempo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000185';

-- -----------------------------------------------------------------------------
-- QUESTÃO 186: RESPONSABILIDADE CIVIL (DANO AMBIENTAL - RISCO INTEGRAL)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000186', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Responsabilidade civil do State', 'Responsabilidade Civil do Estado', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A teoria da responsabilidade civil que não admite excludentes (como caso fortuito ou força maior) e é aplicada no Brasil em casos de DANOS NUCLEARES e DANOS AMBIENTAIS é a:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Teoria do Risco Integral.', 1),
  ('b', 'B', 'Teoria do Risco Administrativo.', 2),
  ('c', 'C', 'Teoria da Culpa do Serviço.', 3),
  ('d', 'D', 'Teoria da Irresponsabilidade.', 4),
  ('e', 'E', 'Teoria da Causalidade Direta.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000186';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000186' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Teoria do Risco Integral.', 'Risco Integral = Sem excludentes. É a forma mais agressiva de proteção à vítima.', 'Dica: No Brasil, a regra geral é o Risco Administrativo (que admite excludentes).' from public.questions q where q.public_code = 'PPCE-DA-000186';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Admite excludentes.'),
  ('c', 'Incorreta. Exige prova de falta do Estado.'),
  ('d', 'Incorreta. Não existe no direito moderno.'),
  ('e', 'Incorreta. Refere-se à delimitação do nexo causal.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000186';

-- -----------------------------------------------------------------------------
-- QUESTÃO 187: PODERES ADMINISTRATIVOS (ABUSO - OMISSÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000187', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes administrativos', 'Uso e abuso do poder', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'A omissão do administrador público que, tendo o dever legal de agir para evitar um dano ou cumprir a lei, mantém-se inerte, configura:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Abuso de Poder por Omissão.', 1),
  ('b', 'B', 'Exercício legítimo da discricionariedade.', 2),
  ('c', 'C', 'Excesso de Poder positivo.', 3),
  ('d', 'D', 'Poder Regulamentar tácito.', 4),
  ('e', 'E', 'Ato inexistente por falta de vontade.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000187';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000187' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Omissão Administrativa.', 'O abuso de poder pode ser comissivo (fazer algo ilegal) ou omissivo (não fazer o que a lei manda).', 'Dica: A omissão pode gerar responsabilidade civil e administrativa.' from public.questions q where q.public_code = 'PPCE-DA-000187';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Discricionariedade não autoriza descumprir deveres legais.'),
  ('c', 'Incorreta. Excesso de poder é agir ALÉM da competência.'),
  ('d', 'Incorreta. Não existe poder regulamentar de não agir.'),
  ('e', 'Incorreta. É um fato jurídico com relevância para o direito.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000187';

-- -----------------------------------------------------------------------------
-- QUESTÃO 188: AGENTES PÚBLICOS (ESTATUTO CEARÁ - DEVERES)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000188', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Agentes Públicos', 'Estatuto dos Servidores do Ceará', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'Segundo a Lei 9.826/74, é dever do funcionário público do Ceará:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Cumprir as ordens superiores, salvo quando manifestamente ilegais.', 1),
  ('b', 'B', 'Levar ao conhecimento da autoridade apenas fatos que lhe tragam benefício.', 2),
  ('c', 'C', 'Ausentar-se do serviço sem prévia autorização.', 3),
  ('d', 'D', 'Atender com prioridade amigos e familiares.', 4),
  ('e', 'E', 'Ignorar as normas de segurança do presídio.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000188';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000188' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Deveres do Servidor.', 'A obediência hierárquica é dever, mas a ilegalidade MANIFESTA deve ser combatida.', 'Dica: Se a ordem for ilegal, o servidor deve representar contra o superior.' from public.questions q where q.public_code = 'PPCE-DA-000188';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Deve levar todos os fatos irregulares ao conhecimento.'),
  ('c', 'Incorreta. Isso é falta disciplinar.'),
  ('d', 'Incorreta. Viola a impessoalidade.'),
  ('e', 'Incorreta. Viola o dever de zelo.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000188';

-- -----------------------------------------------------------------------------
-- QUESTÃO 189: ATOS ADMINISTRATIVOS (AUTOEXECUTORIEDADE - EXCEÇÕES)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000189', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Validade, eficácia e autoexecutoriedade do ato administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A autoexecutoriedade permite que a Administração execute seus atos sem ordem judicial prévia. No entanto, qual das medidas abaixo NÃO é dotada de autoexecutoriedade plena, exigindo o Judiciário para cobrança forçada?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Cobrança de multa pecuniária.', 1),
  ('b', 'B', 'Interdição de estabelecimento comercial insalubre.', 2),
  ('c', 'C', 'Apreensão de mercadorias contrabandeadas.', 3),
  ('d', 'D', 'Demolição de obra em risco de desabamento.', 4),
  ('e', 'E', 'Dissolução de manifestação violenta.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000189';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000189' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Exceção à Autoexecutoriedade.', 'O Estado pode IMPOR a multa (imperatividade), mas se o particular não pagar, o Estado não pode "tirar do bolso" dele à força; deve ajuizar Execução Fiscal.', 'Dica: Multa = Exigibilidade (meio indireto). Apreensão = Executoriedade (meio direto).' from public.questions q where q.public_code = 'PPCE-DA-000189';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É autoexecutável para proteção da saúde.'),
  ('c', 'Incorreta. É autoexecutável.'),
  ('d', 'Incorreta. É autoexecutável por urgência.'),
  ('e', 'Incorreta. É autoexecutável para manter a ordem.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000189';

-- -----------------------------------------------------------------------------
-- QUESTÃO 190: LICITAÇÕES (MODALIDADE CONCURSO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000190', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Licitações', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A modalidade de licitação para escolha de trabalho técnico, científico ou artístico, mediante a instituição de prêmios ou remuneração aos vencedores, é o:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Concurso.', 1),
  ('b', 'B', 'Concorrência.', 2),
  ('c', 'C', 'Pregão.', 3),
  ('d', 'D', 'Diálogo Competitivo.', 4),
  ('e', 'E', 'Leilão.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000190';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000190' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Modalidade Concurso.', 'Concurso (licitação) não deve ser confundido com concurso público (seleção de pessoal).', 'Dica: Exemplo: concurso para escolher o projeto arquitetônico de uma nova sede da SAP.' from public.questions q where q.public_code = 'PPCE-DA-000190';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Para grandes contratações.'),
  ('c', 'Incorreta. Para bens comuns.'),
  ('d', 'Incorreta. Para soluções complexas.'),
  ('e', 'Incorreta. Para venda de bens.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000190';

-- -----------------------------------------------------------------------------
-- QUESTÃO 191: ORGANIZAÇÃO ADMINISTRATIVA (EP - LEI 13.303/16)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000191', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Organização Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'As Empresas Públicas e Sociedades de Economia Mista possuem estatuto jurídico próprio (Lei 13.303/2016). Sobre suas licitações, é correto afirmar que:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Seguem as regras de licitação previstas na própria Lei 13.303/16, não na Lei 14.133/21.', 1),
  ('b', 'B', 'São obrigadas a usar a Lei 14.133/21 para todas as compras.', 2),
  ('c', 'C', 'Não precisam licitar em nenhuma hipótese por terem natureza privada.', 3),
  ('d', 'D', 'Suas licitações são julgadas pelo Tribunal de Justiça obrigatoriamente.', 4),
  ('e', 'E', 'Podem contratar qualquer empresa sem processo competitivo por serem estatais.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000191';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000191' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Estatuto das Estatais.', 'A Lei 13.303 trouxe um regime licitatório simplificado para as estatais competirem no mercado.', 'Dica: A Lei 14.133 NÃO se aplica às estatais (salvo crimes licitatórios).' from public.questions q where q.public_code = 'PPCE-DA-000191';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A lei das estatais é a 13.303.'),
  ('c', 'Incorreta. Devem licitar sim (Art. 173, §1º CF).'),
  ('d', 'Incorreta. Tribunal de Contas fiscaliza, não julga o edital rotineiramente.'),
  ('e', 'Incorreta. Viola o princípio da competitividade.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000191';

-- -----------------------------------------------------------------------------
-- QUESTÃO 192: IMPROBIDADE ADMINISTRATIVA (SUCESSOR)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000192', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Controle e responsabilização da administração', 'Lei de Improbidade Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'No caso de falecimento do agente que praticou ato de improbidade, o sucessor (herdeiro):', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Responde pela reparação do dano até o limite do valor da herança.', 1),
  ('b', 'B', 'Assume todas as penas, inclusive a suspensão de direitos políticos.', 2),
  ('c', 'C', 'Fica isento de qualquer obrigação, pois a pena não passa da pessoa do infrator.', 3),
  ('d', 'D', 'Deve cumprir pena de prisão no lugar do falecido.', 4),
  ('e', 'E', 'Responde integralmente, mesmo que a dívida supere a herança.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000192';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000192' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Sucessor na LIA.', 'Apenas a reparação do dano e o perdimento de bens passam aos herdeiros, limitados à herança.', 'Dica: Multa civil e suspensão de direitos políticos são penas pessoais e NÃO passam aos herdeiros.' from public.questions q where q.public_code = 'PPCE-DA-000192';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Penas pessoais são intransmissíveis.'),
  ('c', 'Incorreta. A reparação do patrimônio público é obrigação patrimonial.'),
  ('d', 'Incorreta. Absurdo.'),
  ('e', 'Incorreta. O limite é a herança (benefício de inventário).')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000192';

-- -----------------------------------------------------------------------------
-- QUESTÃO 193: PROCESSO ADMINISTRATIVO (MOTIVAÇÃO ALIUNDE)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000193', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Processo administrativo', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'A técnica de motivação em que a autoridade apenas concorda com os fundamentos de um parecer anterior, adotando-os como razões de decidir, denomina-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Motivação Aliunde (ou por Referência).', 1),
  ('b', 'B', 'Motivação Contextual.', 2),
  ('c', 'C', 'Decisão Inaudita Altera Pars.', 3),
  ('d', 'D', 'Delegação motivada.', 4),
  ('e', 'E', 'Silêncio qualificado.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000193';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000193' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Motivação Aliunde.', 'É válida e comum. A autoridade diz: "Decido conforme o parecer nº X".', 'Dica: Prevista no Art. 50, §1º da Lei 9.784/99.' from public.questions q where q.public_code = 'PPCE-DA-000193';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Nome não usual.'),
  ('c', 'Incorreta. Termo processual para decisão sem ouvir a outra parte.'),
  ('d', 'Incorreta. Delegação é transferência de competência.'),
  ('e', 'Incorreta. Refere-se à omissão com efeito de aceite.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000193';

-- -----------------------------------------------------------------------------
-- QUESTÃO 194: RESPONSABILIDADE CIVIL (CARTÓRIOS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000194', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Responsabilidade civil do State', 'Responsabilidade Civil do Estado', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Segundo o entendimento do STF (Tema 777), a responsabilidade civil do Estado por danos causados por Tabeliães e Registradores (cartórios) é:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Direta e Objetiva.', 1),
  ('b', 'B', 'Subsidiária e Subjetiva.', 2),
  ('c', 'C', 'Solidária entre Estado e Cartório.', 3),
  ('d', 'D', 'Exclusiva do Tabelião, sem participação do Estado.', 4),
  ('e', 'E', 'Inexistente.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000194';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000194' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Responsabilidade de Cartórios.', 'O Estado responde diretamente pelos atos dos delegatários (cartórios). O Estado tem direito de regresso contra o tabelião se este agiu com dolo/culpa.', 'Dica: O particular processa o ESTADO, não o cartório diretamente.' from public.questions q where q.public_code = 'PPCE-DA-000194';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É direta perante o terceiro.'),
  ('c', 'Incorreta. Não há solidariedade passiva direta nesse caso segundo o STF.'),
  ('d', 'Incorreta. O serviço é público e delegado.'),
  ('e', 'Incorreta. Viola o Art. 37, §6º.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000194';

-- -----------------------------------------------------------------------------
-- QUESTÃO 195: PODERES ADMINISTRATIVOS (POLÍCIA - DELEGAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000195', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Poderes administrativos', 'Poder de polícia', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'É possível a delegação de atos de SANÇÃO do Poder de Polícia a pessoas jurídicas de direito privado?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Sim, desde que integrem a Administração Indireta e prestem serviço público em regime não concorrencial.', 1),
  ('b', 'B', 'Sim, para qualquer empresa privada contratada por licitação.', 2),
  ('c', 'C', 'Não, em nenhuma hipótese, por ser função típica de Estado.', 3),
  ('d', 'D', 'Apenas se houver autorização do Congresso Nacional.', 4),
  ('e', 'E', 'Apenas para empresas de vigilância patrimonial.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000195';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000195' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Delegação de Sanção.', 'O STF mudou o entendimento: empresas públicas e SEM podem multar se forem do Estado e não visarem lucro de mercado puro.', 'Dica: Exemplo: Empresa de trânsito municipal (que é SEM) pode aplicar multas.' from public.questions q where q.public_code = 'PPCE-DA-000195';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Para empresas privadas "puras" não pode delegar sanção.'),
  ('c', 'Incorreta. Entendimento superado parcialmente pelo STF.'),
  ('d', 'Incorreta. Não exige ato do congresso, mas lei autorizativa do ente.'),
  ('e', 'Incorreta. Vigilância não exerce poder de polícia punitivo estatal.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000195';

-- -----------------------------------------------------------------------------
-- QUESTÃO 196: AGENTES PÚBLICOS (ESTATUTO CEARÁ - PROIBIÇÕES)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000196', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Agentes Públicos', 'Estatuto dos Servidores do Ceará', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'De acordo com a Lei 9.826/74, ao funcionário público do Ceará é proibido:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Exercer o comércio, exceto como acionista, quotista ou comanditário.', 1),
  ('b', 'B', 'Filiar-se a partido político.', 2),
  ('c', 'C', 'Ter residência em cidade diversa da repartição, se houver transporte.', 3),
  ('d', 'D', 'Trabalhar em feriados e finais de semana.', 4),
  ('e', 'E', 'Receber gratificação por tempo de serviço.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000196';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000196' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Proibições ao Servidor.', 'O servidor pode investir (ser sócio), mas não pode GERENCIAR empresas.', 'Dica: Regra clássica de moralidade administrativa.' from public.questions q where q.public_code = 'PPCE-DA-000196';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É direito político garantido.'),
  ('c', 'Incorreta. Pode morar onde quiser, desde que chegue ao trabalho.'),
  ('d', 'Incorreta. Policiais penais trabalham por escala.'),
  ('e', 'Incorreta. É um direito/vantagem.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000196';

-- -----------------------------------------------------------------------------
-- QUESTÃO 197: ATOS ADMINISTRATIVOS (UNILATERAL vs BILATERAL)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000197', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Atos administrativos', 'Atos administrativos unilaterais, bilaterais e multilaterais', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'medium', 'Qual dos exemplos abaixo é considerado um ato administrativo BILATERAL?', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Contrato administrativo de prestação de serviços.', 1),
  ('b', 'B', 'Exoneração a pedido.', 2),
  ('c', 'C', 'Multa de trânsito.', 3),
  ('d', 'D', 'Interdição de fábrica.', 4),
  ('e', 'E', 'Nomeação para cargo efetivo.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000197';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000197' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Atos Bilaterais.', 'Atos bilaterais exigem o acordo de vontades (contratos).', 'Dica: A maioria dos atos administrativos puros são UNILATERAIS (impostos pelo Estado).' from public.questions q where q.public_code = 'PPCE-DA-000197';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. É unilateral, embora dependa de um pedido inicial.'),
  ('c', 'Incorreta. Imposição soberana.'),
  ('d', 'Incorreta. Imposição soberana.'),
  ('e', 'Incorreta. Ato unilateral do Estado (embora dependa da aceitação/posse).')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000197';

-- -----------------------------------------------------------------------------
-- QUESTÃO 198: LICITAÇÕES (STEP-IN RIGHTS)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000198', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Contratos administrativos e noções de licitações públicas', 'Contratos administrativos', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Na Lei 14.133/2021, a cláusula que permite à seguradora assumir a execução do contrato em caso de inadimplemento da empresa contratada denomina-se:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Cláusula de Retomada (ou Step-in rights).', 1),
  ('b', 'B', 'Cláusula de Solidariedade Ativa.', 2),
  ('c', 'C', 'Direito de Preferência Segurada.', 3),
  ('d', 'D', 'Cláusula de Barreira Securitária.', 4),
  ('e', 'E', 'Sub-rogação obrigatória.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000198';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000198' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Cláusula de Retomada.', 'Inovação da nova lei para garantir que grandes obras não parem.', 'Dica: A seguradora assume o contrato para terminá-lo em vez de apenas pagar a multa.' from public.questions q where q.public_code = 'PPCE-DA-000198';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Solidariedade é regime de obrigações.'),
  ('c', 'Incorreta. Nome inexistente na lei.'),
  ('d', 'Incorreta. Inventado.'),
  ('e', 'Incorreta. É uma forma de sub-rogação, mas o nome técnico na lei foca na retomada.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000198';

-- -----------------------------------------------------------------------------
-- QUESTÃO 199: ORGANIZAÇÃO ADMINISTRATIVA (DESCONCENTRAÇÃO vs DESCENTRALIZAÇÃO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000199', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Estado, Governo e Administração Pública', 'Organização Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'easy', 'A criação de uma Autarquia para prestar serviço de trânsito é um exemplo de:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Descentralização por serviços (outorga).', 1),
  ('b', 'B', 'Desconcentração hierárquica.', 2),
  ('c', 'C', 'Concentração administrativa.', 3),
  ('d', 'D', 'Descentralização política.', 4),
  ('e', 'E', 'Privatização indireta.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000199';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000199' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Descentralização.', 'Descentralização envolve a criação de outra PESSOA JURÍDICA. Desconcentração é criação de ÓRGÃO.', 'Dica: Descentralização = Entidades (Indireta). Desconcentração = Órgãos (Direta ou Indireta interna).' from public.questions q where q.public_code = 'PPCE-DA-000199';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. Desconcentração não cria nova pessoa.'),
  ('c', 'Incorreta. É o oposto (extinguir órgãos).'),
  ('d', 'Incorreta. Criar novos entes federados (Estados/Municípios).'),
  ('e', 'Incorreta. Autarquia é pública, não privatizada.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000199';

-- -----------------------------------------------------------------------------
-- QUESTÃO 200: IMPROBIDADE ADMINISTRATIVA (DOLO ESPECÍFICO)
-- -----------------------------------------------------------------------------
insert into public.questions (public_code, exam_name, exam_slug, subject, topic, subtopic, career, institution_name, board_name, exam_year, source_type, difficulty, stem, has_essay_commentary)
values ('PPCE-DA-000200', 'POLÍCIA PENAL DO CEARÁ', 'policia-penal-do-ceara', 'DIREITO ADMINISTRATIVO', 'Controle e responsabilização da administração', 'Lei de Improbidade Administrativa', 'Carreiras Policiais', 'Polícia Penal do Ceará', 'Banca Própria', 2026, 'original', 'hard', 'Considere que um agente público cometeu um erro administrativo grave que gerou prejuízo ao erário, mas sem a intenção de beneficiar a si ou a terceiros, agindo apenas por imperícia. Segundo a Lei 8.429/92 atualizada, tal conduta:', false);

insert into public.question_options (question_id, option_key, letter, text, sort_order)
select q.id, v.option_key, v.letter, v.text, v.sort_order from public.questions q cross join (values 
  ('a', 'A', 'Não configura ato de improbidade administrativa por falta de dolo.', 1),
  ('b', 'B', 'Configura ato de improbidade administrativa culposa.', 2),
  ('c', 'C', 'Configura ato de improbidade, mas a pena é reduzida pela metade.', 3),
  ('d', 'D', 'Gera demissão automática, embora não seja improbidade.', 4),
  ('e', 'E', 'É considerada improbidade presumida.', 5)
) as v(option_key, letter, text, sort_order) where q.public_code = 'PPCE-DA-000200';

update public.questions q set correct_option_id = qo.id from public.question_options qo where q.public_code = 'PPCE-DA-000200' and q.id = qo.question_id and qo.option_key = 'a';

insert into public.question_explanations (question_id, summary, why_correct, teacher_note)
select q.id, 'Dolo na Improbidade.', 'A Lei 14.230/21 acabou com a improbidade culposa. Sem dolo (vontade livre e consciente do resultado ilícito), não há improbidade.', 'Dica: O agente ainda pode responder civilmente (reparação do dano) e administrativamente, mas não pelas penas da LIA.' from public.questions q where q.public_code = 'PPCE-DA-000200';

insert into public.question_explanation_incorrect_items (explanation_id, option_key, reason)
select qe.id, v.option_key, v.reason from public.question_explanations qe join public.questions q on q.id = qe.question_id cross join (values
  ('b', 'Incorreta. A modalidade culposa foi extinta.'),
  ('c', 'Incorreta. Sem dolo é atípico para improbidade.'),
  ('d', 'Incorreta. Demissão depende de processo disciplinar com provas de infração estatutária.'),
  ('e', 'Incorreta. Não existe improbidade presumida sem dolo comprovado.')
) as v(option_key, reason) where q.public_code = 'PPCE-DA-000200';

