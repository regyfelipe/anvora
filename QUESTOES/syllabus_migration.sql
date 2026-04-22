-- MIGRATION: PPCE SYLLABUS
-- Source: GRADE.md

create table if not exists public.exam_syllabus (
  id uuid primary key default gen_random_uuid(),
  category text not null,
  subject text not null,
  topic text not null,
  sort_order integer not null,
  created_at timestamptz not null default now()
);

-- LÍNGUA PORTUGUESA
insert into public.exam_syllabus (category, subject, topic, sort_order) values
('CONHECIMENTOS GERAIS', 'LÍNGUA PORTUGUESA', '1. Compreensão e interpretação de textos de gêneros variados. Reconhecimento de tipos e gêneros textuais.', 10),
('CONHECIMENTOS GERAIS', 'LÍNGUA PORTUGUESA', '2. Domínio da ortografia oficial: Emprego das letras; Emprego da acentuação gráfica.', 20),
('CONHECIMENTOS GERAIS', 'LÍNGUA PORTUGUESA', '3. Domínio dos mecanismos de coesão textual: Emprego de elementos de referenciação, substituição e repetição, de conectores e outros elementos de sequenciação textual; Emprego/correlação de tempos e modos verbais.', 30),
('CONHECIMENTOS GERAIS', 'LÍNGUA PORTUGUESA', '4. Domínio da estrutura morfossintática do período: relações de coordenação entre orações e entre termos da oração; relações de subordinação entre orações e entre termos da oração; emprego dos sinais de pontuação; concordância verbal e nominal; emprego do sinal indicativo de crase; colocação dos pronomes átonos.', 40),
('CONHECIMENTOS GERAIS', 'LÍNGUA PORTUGUESA', '5. Reescritura', 50);

-- NOÇÕES DE INFORMÁTICA
insert into public.exam_syllabus (category, subject, topic, sort_order) values
('CONHECIMENTOS GERAIS', 'NOÇÕES DE INFORMÁTICA', '1. Sistema Operacional: Windows/Linux: conceito de pastas, diretórios, arquivos e atalhos, área de trabalho, área de transferência, manipulação de arquivos e pastas, uso dos menus, programas e aplicativos, interação com o conjunto de aplicativos.', 60),
('CONHECIMENTOS GERAIS', 'NOÇÕES DE INFORMÁTICA', '2. LibreOffice/Apache OpenOffice – Writer: estrutura básica dos documentos, edição e formatação de textos, cabeçalhos, parágrafos, fontes, colunas, marcadores simbólicos e numéricos, tabelas, impressão, controle de quebras e numeração de páginas, legendas, índices, inserção de objetos, campos predefinidos, caixas de texto.', 70),
('CONHECIMENTOS GERAIS', 'NOÇÕES DE INFORMÁTICA', '3. LibreOffice/Apache OpenOffice – Calc: estrutura básica das planilhas, conceitos de células, linhas, colunas, pastas e gráficos, elaboração de tabelas e gráficos, uso de fórmulas, funções e macros, impressão, inserção de objetos, campos predefinidos, controle de quebras e numeração de páginas, obtenção de dados externos, classificação de dados.', 80),
('CONHECIMENTOS GERAIS', 'NOÇÕES DE INFORMÁTICA', '4. LibreOffice/Apache OpenOffice – Impress: estrutura básica das apresentações, conceitos de slides, anotações, régua, guias, cabeçalhos e rodapés, noções de edição e formatação de apresentações, inserção de objetos, numeração de páginas, botões de ação, animação e transição entre slides.', 90),
('CONHECIMENTOS GERAIS', 'NOÇÕES DE INFORMÁTICA', '5. Internet: Intranet, Extranet, Protocolo e Serviço, Sítios de Busca e Pesquisa na internet, nuvem e redes sociais.', 100),
('CONHECIMENTOS GERAIS', 'NOÇÕES DE INFORMÁTICA', '6. Navegadores - Mozilla Firefox/Google Chrome – Internet: Navegação Internet, conceitos de URL, links, sites, busca e impressão de páginas.', 110),
('CONHECIMENTOS GERAIS', 'NOÇÕES DE INFORMÁTICA', '7. Redes sociais.', 120),
('CONHECIMENTOS GERAIS', 'NOÇÕES DE INFORMÁTICA', '8. Tecnologia da informação e segurança de dados.', 130),
('CONHECIMENTOS GERAIS', 'NOÇÕES DE INFORMÁTICA', '9. Segurança da Informação: Princípios de Segurança, Confidencialidade e Assinatura digital.', 140),
('CONHECIMENTOS GERAIS', 'NOÇÕES DE INFORMÁTICA', '10. Extensão e Arquivos.', 150),
('CONHECIMENTOS GERAIS', 'NOÇÕES DE INFORMÁTICA', '11. Hardware: dispositivos de armazenamento, memórias e periféricos.', 160);

-- RACIOCÍNIO LÓGICO
insert into public.exam_syllabus (category, subject, topic, sort_order) values
('CONHECIMENTOS GERAIS', 'RACIOCÍNIO LÓGICO', '1. Estrutura lógica de relações arbitrárias entre pessoas, lugares, objetos ou eventos fictícios; dedução de novas informações das relações fornecidas e avaliação das condições usadas para estabelecer a estrutura daquelas relações.', 170),
('CONHECIMENTOS GERAIS', 'RACIOCÍNIO LÓGICO', '2. Compreensão e análise da lógica de uma situação, utilizando as funções intelectuais: raciocínio verbal, raciocínio matemático, raciocínio sequencial, orientação espacial e temporal, formação de conceitos, discriminação de elementos.', 180),
('CONHECIMENTOS GERAIS', 'RACIOCÍNIO LÓGICO', '3. Operações com conjuntos.', 190),
('CONHECIMENTOS GERAIS', 'RACIOCÍNIO LÓGICO', '4. Raciocínio lógico envolvendo problemas aritméticos, geométricos e matriciais.', 200);

-- ADMINISTRAÇÃO PÚBLICA E ÉTICA
insert into public.exam_syllabus (category, subject, topic, sort_order) values
('CONHECIMENTOS GERAIS', 'ADMINISTRAÇÃO PÚBLICA E ÉTICA', '1. Processo organizacional: planejamento, direção, comunicação, controle e avaliação.', 210),
('CONHECIMENTOS GERAIS', 'ADMINISTRAÇÃO PÚBLICA E ÉTICA', '2. Organização administrativa: centralização, descentralização, concentração e desconcentração; organização administrativa da União; administração direta e indireta; agências executivas e reguladoras.', 220),
('CONHECIMENTOS GERAIS', 'ADMINISTRAÇÃO PÚBLICA E ÉTICA', '3. Gestão de processos.', 230),
('CONHECIMENTOS GERAIS', 'ADMINISTRAÇÃO PÚBLICA E ÉTICA', '4. Gestão de contratos.', 240),
('CONHECIMENTOS GERAIS', 'ADMINISTRAÇÃO PÚBLICA E ÉTICA', '5. Planejamento estratégico.', 250),
('CONHECIMENTOS GERAIS', 'ADMINISTRAÇÃO PÚBLICA E ÉTICA', '6. Princípios da Administração Pública.', 260),
('CONHECIMENTOS GERAIS', 'ADMINISTRAÇÃO PÚBLICA E ÉTICA', '7. Inovações introduzidas pela Constituição de 1988: agências executivas; serviços essencialmente públicos e serviços de utilidade pública; delegação de serviços públicos a terceiros.', 270),
('CONHECIMENTOS GERAIS', 'ADMINISTRAÇÃO PÚBLICA E ÉTICA', '8. Relações Humanas no Trabalho.', 280),
('CONHECIMENTOS GERAIS', 'ADMINISTRAÇÃO PÚBLICA E ÉTICA', '9. Ética: Ética e cidadania, Ética e moral, Ética, princípios e valores, Ética e função pública, Ética no setor público.', 290),
('CONHECIMENTOS GERAIS', 'ADMINISTRAÇÃO PÚBLICA E ÉTICA', '10. Lei No 12.527/2011 (Lei de acesso à informação).', 300),
('CONHECIMENTOS GERAIS', 'ADMINISTRAÇÃO PÚBLICA E ÉTICA', '11. Lei No 13.709/2018 (Lei geral de proteção de dados pessoais).', 310),
('CONHECIMENTOS GERAIS', 'ADMINISTRAÇÃO PÚBLICA E ÉTICA', '12. Decreto No 31.198/2013 (Código de Ética e Conduta da Administração Pública Estadual).', 320);

-- LEGISLAÇÃO ESPECÍFICA
insert into public.exam_syllabus (category, subject, topic, sort_order) values
('CONHECIMENTOS GERAIS', 'LEGISLAÇÃO ESPECÍFICA', '1. Constituição do Estado do Ceará: da segurança pública e da defesa civil.', 330),
('CONHECIMENTOS GERAIS', 'LEGISLAÇÃO ESPECÍFICA', '2. Lei Estadual no 9.826, de 14 de maio de 1974 (Estatuto dos Servidores Públicos Civis do Estado do Ceará).', 340),
('CONHECIMENTOS GERAIS', 'LEGISLAÇÃO ESPECÍFICA', '3. Lei Estadual no 14.852, de 21 de dezembro de 2009 (redenomina a carreira guarda penitenciária, e dá outras providências) e alterações.', 350),
('CONHECIMENTOS GERAIS', 'LEGISLAÇÃO ESPECÍFICA', '4. Lei Complementar No 258/2021 (regime disciplinar dos policiais penais).', 360),
('CONHECIMENTOS GERAIS', 'LEGISLAÇÃO ESPECÍFICA', '5. Lei Complementar No 261/2021 (altera a Lei Complementar No 258/2021).', 370),
('CONHECIMENTOS GERAIS', 'LEGISLAÇÃO ESPECÍFICA', '6. Lei No 16.063/2016 (abono especial por esforço operacional) e alterações.', 380),
('CONHECIMENTOS GERAIS', 'LEGISLAÇÃO ESPECÍFICA', '7. Decreto No 31.997/2016 (regulamenta a Lei No 16.063/2016) e alterações.', 390),
('CONHECIMENTOS GERAIS', 'LEGISLAÇÃO ESPECÍFICA', '8. Legislação Especial da SAP/CE (Instruções Normativas e Portarias).', 400);

-- NOÇÕES DE DIREITO ADMINISTRATIVO
insert into public.exam_syllabus (category, subject, topic, sort_order) values
('CONHECIMENTOS ESPECÍFICOS', 'DIREITO ADMINISTRATIVO', '1. Estado, Governo e Administração Pública: Conceitos, elementos, poderes e organização; Natureza, fins e princípios; Eficiência, eficácia e efetividade; Governança e accountability.', 410),
('CONHECIMENTOS ESPECÍFICOS', 'DIREITO ADMINISTRATIVO', '2. Atos administrativos: Conceitos, requisitos, elementos, classificação; Revogação, anulação e convalidação; Teoria dos motivos determinantes.', 420),
('CONHECIMENTOS ESPECÍFICOS', 'DIREITO ADMINISTRATIVO', '3. Contratos administrativos e noções de licitações públicas.', 430),
('CONHECIMENTOS ESPECÍFICOS', 'DIREITO ADMINISTRATIVO', '4. Poderes administrativos: Hierárquico, disciplinar, regulamentar e de polícia; Uso e abuso do poder.', 440),
('CONHECIMENTOS ESPECÍFICOS', 'DIREITO ADMINISTRATIVO', '5. Controle e responsabilização da administração: Administrativo, judicial e legislativo.', 450),
('CONHECIMENTOS ESPECÍFICOS', 'DIREITO ADMINISTRATIVO', '6. Responsabilidade civil do Estado: Evolução doutrinária; Atos comissivos ou omissivos; Excludentes.', 460);

-- NOÇÕES DE DIREITO CONSTITUCIONAL
insert into public.exam_syllabus (category, subject, topic, sort_order) values
('CONHECIMENTOS ESPECÍFICOS', 'DIREITO CONSTITUCIONAL', '1. Estado e Constituição: Conceito, conteúdo, objeto e classificação.', 470),
('CONHECIMENTOS ESPECÍFICOS', 'DIREITO CONSTITUCIONAL', '2. Constituição da República Federativa do Brasil de 1988: Princípios fundamentais e Dignidade da pessoa humana.', 480),
('CONHECIMENTOS ESPECÍFICOS', 'DIREITO CONSTITUCIONAL', '3. Direitos e garantias fundamentais: Individuais, coletivos, sociais, nacionalidade e políticos.', 490),
('CONHECIMENTOS ESPECÍFICOS', 'DIREITO CONSTITUCIONAL', '4. Remédios constitucionais: HD, HC, MS, AP e MI.', 500),
('CONHECIMENTOS ESPECÍFICOS', 'DIREITO CONSTITUCIONAL', '5. Organização político-administrativa do Estado: União, Estados, DF, Municípios e Territórios.', 510),
('CONHECIMENTOS ESPECÍFICOS', 'DIREITO CONSTITUCIONAL', '6. Administração pública: Disposições gerais e servidores públicos.', 520),
('CONHECIMENTOS ESPECÍFICOS', 'DIREITO CONSTITUCIONAL', '7. Funções essenciais à Justiça: Advocacia, MP, Advocacia Pública e Defensoria Pública.', 530),
('CONHECIMENTOS ESPECÍFICOS', 'DIREITO CONSTITUCIONAL', '8. Defesa do Estado e das instituições democráticas: Segurança pública e sua organização.', 540),
('CONHECIMENTOS ESPECÍFICOS', 'DIREITO CONSTITUCIONAL', '9. Da Ordem Social: Base, objetivos, seguridade, meio ambiente, família e índio.', 550);

-- NOÇÕES DE DIREITOS HUMANOS
insert into public.exam_syllabus (category, subject, topic, sort_order) values
('CONHECIMENTOS ESPECÍFICOS', 'DIREITOS HUMANOS', '1. Direitos humanos e direitos fundamentais na CF/88 (arts. 5o ao 15).', 560),
('CONHECIMENTOS ESPECÍFICOS', 'DIREITOS HUMANOS', '2. Decreto no 7.037/2009 (Programa Nacional de Direitos Humanos).', 570),
('CONHECIMENTOS ESPECÍFICOS', 'DIREITOS HUMANOS', '3. Declaração Universal dos Direitos Humanos (ONU, 1948).', 580),
('CONHECIMENTOS ESPECÍFICOS', 'DIREITOS HUMANOS', '4. Regras de Nelson Mandela (Tratamento de Reclusos).', 590),
('CONHECIMENTOS ESPECÍFICOS', 'DIREITOS HUMANOS', '5. Pacto de San José da Costa Rica (Convenção Americana).', 600),
('CONHECIMENTOS ESPECÍFICOS', 'DIREITOS HUMANOS', '6. Regras de Bangkok (Tratamento de Mulheres Presas).', 610);

-- NOÇÕES DE DIREITO PENAL
insert into public.exam_syllabus (category, subject, topic, sort_order) values
('CONHECIMENTOS ESPECÍFICOS', 'DIREITO PENAL', '1. Aplicação da lei penal: Princípios, tempo, lugar, territorialidade e irretroatividade.', 620),
('CONHECIMENTOS ESPECÍFICOS', 'DIREITO PENAL', '2. Teoria geral do crime: Infração penal, sujeitos e evolução doutrinária.', 630),
('CONHECIMENTOS ESPECÍFICOS', 'DIREITO PENAL', '3. O fato típico e seus elementos: Consumação, tentativa, ilicitude e culpabilidade.', 640),
('CONHECIMENTOS ESPECÍFICOS', 'DIREITO PENAL', '4. Crimes em espécie: Contra a pessoa, patrimônio, dignidade sexual, paz e fé pública.', 650),
('CONHECIMENTOS ESPECÍFICOS', 'DIREITO PENAL', '5. Crimes contra a administração pública.', 660);

-- LEGISLAÇÃO EXTRAVAGANTE
insert into public.exam_syllabus (category, subject, topic, sort_order) values
('LEGISLAÇÃO EXTRAVAGANTE', 'LEGISLAÇÃO EXTRAVAGANTE', '1. Lei no 9.455/1997 (Antitortura).', 670),
('LEGISLAÇÃO EXTRAVAGANTE', 'LEGISLAÇÃO EXTRAVAGANTE', '2. Lei 10.826/2003 (Estatuto do Desarmamento).', 680),
('LEGISLAÇÃO EXTRAVAGANTE', 'LEGISLAÇÃO EXTRAVAGANTE', '3. Lei no 12.846/2013 (Anticorrupção).', 690),
('LEGISLAÇÃO EXTRAVAGANTE', 'LEGISLAÇÃO EXTRAVAGANTE', '4. Lei no 12.850/2013 (Organizações Criminosas).', 700),
('LEGISLAÇÃO EXTRAVAGANTE', 'LEGISLAÇÃO EXTRAVAGANTE', '5. Lei no 13.964/2019 (Pacote Anticrime).', 710),
('LEGISLAÇÃO EXTRAVAGANTE', 'LEGISLAÇÃO EXTRAVAGANTE', '6. Lei no 7.210/1984 (Lei de Execução Penal).', 720),
('LEGISLAÇÃO EXTRAVAGANTE', 'LEGISLAÇÃO EXTRAVAGANTE', '7. Lei No 13.869/2019 (Abuso de Autoridade).', 730),
('LEGISLAÇÃO EXTRAVAGANTE', 'LEGISLAÇÃO EXTRAVAGANTE', '8. Lei No 8.072/1990 (Crimes Hediondos).', 740),
('LEGISLAÇÃO EXTRAVAGANTE', 'LEGISLAÇÃO EXTRAVAGANTE', '9. Lei No 11.343/2006 (Drogas).', 750),
('LEGISLAÇÃO EXTRAVAGANTE', 'LEGISLAÇÃO EXTRAVAGANTE', '10. Lei no 8.429/1992 (Improbidade Administrativa).', 760),
('LEGISLAÇÃO EXTRAVAGANTE', 'LEGISLAÇÃO EXTRAVAGANTE', '11. Lei no 13.675/2018 (SUSP).', 770),
('LEGISLAÇÃO EXTRAVAGANTE', 'LEGISLAÇÃO EXTRAVAGANTE', '12. Portarias e Resoluções sobre saúde e educação no sistema prisional.', 780);
