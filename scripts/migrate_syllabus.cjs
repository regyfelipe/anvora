const { createClient } = require('@supabase/supabase-js')
const dotenv = require('dotenv')
const path = require('path')

// Carregar variáveis do .env.local
dotenv.config({ path: path.resolve(process.cwd(), '.env.local') })

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL
const supabaseKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY // Usando anon key, se tiver RLS de insert liberado, ou service role se tivesse

async function migrate() {
  if (!supabaseUrl || !supabaseKey) {
    console.error("Variáveis de ambiente do Supabase não encontradas.")
    return
  }

  const supabase = createClient(supabaseUrl, supabaseKey)

  console.log("Iniciando migração da grade PPCE...")

  const syllabus = [
    { category: 'CONHECIMENTOS GERAIS', subject: 'LÍNGUA PORTUGUESA', topic: '1. Compreensão e interpretação de textos de gêneros variados. Reconhecimento de tipos e gêneros textuais.', sort_order: 10 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'LÍNGUA PORTUGUESA', topic: '2. Domínio da ortografia oficial: Emprego das letras; Emprego da acentuação gráfica.', sort_order: 20 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'LÍNGUA PORTUGUESA', topic: '3. Domínio dos mecanismos de coesão textual: Emprego de elementos de referenciação, substituição e repetição, de conectores e outros elementos de sequenciação textual; Emprego/correlação de tempos e modos verbais.', sort_order: 30 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'LÍNGUA PORTUGUESA', topic: '4. Domínio da estrutura morfossintática do período: relações de coordenação entre orações e entre termos da oração; relações de subordinação entre orações e entre termos da oração; emprego dos sinais de pontuação; concordância verbal e nominal; emprego do sinal indicativo de crase; colocação dos pronomes átonos.', sort_order: 40 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'LÍNGUA PORTUGUESA', topic: '5. Reescritura', sort_order: 50 },
    
    { category: 'CONHECIMENTOS GERAIS', subject: 'NOÇÕES DE INFORMÁTICA', topic: '1. Sistema Operacional: Windows/Linux: conceito de pastas, diretórios, arquivos e atalhos, área de trabalho, área de transferência, manipulação de arquivos e pastas, uso dos menus, programas e aplicativos, interação com o conjunto de aplicativos.', sort_order: 60 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'NOÇÕES DE INFORMÁTICA', topic: '2. LibreOffice/Apache OpenOffice – Writer: estrutura básica dos documentos, edição e formatação de textos, cabeçalhos, parágrafos, fontes, colunas, marcadores simbólicos e numéricos, tabelas, impressão, controle de quebras e numeração de páginas, legendas, índices, inserção de objetos, campos predefinidos, caixas de texto.', sort_order: 70 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'NOÇÕES DE INFORMÁTICA', topic: '3. LibreOffice/Apache OpenOffice – Calc: estrutura básica das planilhas, conceitos de células, linhas, colunas, pastas e gráficos, elaboração de tabelas e gráficos, uso de fórmulas, funções e macros, impressão, inserção de objetos, campos predefinidos, controle de quebras e numeração de páginas, obtenção de dados externos, classificação de dados.', sort_order: 80 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'NOÇÕES DE INFORMÁTICA', topic: '4. LibreOffice/Apache OpenOffice – Impress: estrutura básica das apresentações, conceitos de slides, anotações, régua, guias, cabeçalhos e rodapés, noções de edição e formatação de apresentações, inserção de objetos, numeração de páginas, botões de ação, animação e transição entre slides.', sort_order: 90 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'NOÇÕES DE INFORMÁTICA', topic: '5. Internet: Intranet, Extranet, Protocolo e Serviço, Sítios de Busca e Pesquisa na internet, nuvem e redes sociais.', sort_order: 100 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'NOÇÕES DE INFORMÁTICA', topic: '6. Navegadores - Mozilla Firefox/Google Chrome – Internet: Navegação Internet, conceitos de URL, links, sites, busca e impressão de páginas.', sort_order: 110 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'NOÇÕES DE INFORMÁTICA', topic: '7. Redes sociais.', sort_order: 120 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'NOÇÕES DE INFORMÁTICA', topic: '8. Tecnologia da informação e segurança de dados.', sort_order: 130 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'NOÇÕES DE INFORMÁTICA', topic: '9. Segurança da Informação: Princípios de Segurança, Confidencialidade e Assinatura digital.', sort_order: 140 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'NOÇÕES DE INFORMÁTICA', topic: '10. Extensão e Arquivos.', sort_order: 150 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'NOÇÕES DE INFORMÁTICA', topic: '11. Hardware: dispositivos de armazenamento, memórias e periféricos.', sort_order: 160 },

    { category: 'CONHECIMENTOS GERAIS', subject: 'RACIOCÍNIO LÓGICO', topic: '1. Estrutura lógica de relações arbitrárias entre pessoas, lugares, objetos ou eventos fictícios; dedução de novas informações das relações fornecidas e avaliação das condições usadas para estabelecer a estrutura daquelas relações.', sort_order: 170 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'RACIOCÍNIO LÓGICO', topic: '2. Compreensão e análise da lógica de uma situação, utilizando as funções intelectuais: raciocínio verbal, raciocínio matemático, raciocínio sequencial, orientação espacial e temporal, formação de conceitos, discriminação de elementos.', sort_order: 180 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'RACIOCÍNIO LÓGICO', topic: '3. Operações com conjuntos.', sort_order: 190 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'RACIOCÍNIO LÓGICO', topic: '4. Raciocínio lógico envolvendo problemas aritméticos, geométricos e matriciais.', sort_order: 200 },

    { category: 'CONHECIMENTOS GERAIS', subject: 'ADMINISTRAÇÃO PÚBLICA E ÉTICA', topic: '1. Processo organizacional: planejamento, direção, comunicação, controle e avaliação.', sort_order: 210 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'ADMINISTRAÇÃO PÚBLICA E ÉTICA', topic: '2. Organização administrativa: centralização, descentralização, concentração e desconcentração; organização administrativa da União; administração direta e indireta; agências executivas e reguladoras.', sort_order: 220 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'ADMINISTRAÇÃO PÚBLICA E ÉTICA', topic: '3. Gestão de processos.', sort_order: 230 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'ADMINISTRAÇÃO PÚBLICA E ÉTICA', topic: '4. Gestão de contratos.', sort_order: 240 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'ADMINISTRAÇÃO PÚBLICA E ÉTICA', topic: '5. Planejamento estratégico.', sort_order: 250 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'ADMINISTRAÇÃO PÚBLICA E ÉTICA', topic: '6. Princípios da Administração Pública.', sort_order: 260 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'ADMINISTRAÇÃO PÚBLICA E ÉTICA', topic: '7. Inovações introduzidas pela Constituição de 1988: agências executivas; serviços essencialmente públicos e serviços de utilidade pública; delegação de serviços públicos a terceiros.', sort_order: 270 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'ADMINISTRAÇÃO PÚBLICA E ÉTICA', topic: '8. Relações Humanas no Trabalho.', sort_order: 280 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'ADMINISTRAÇÃO PÚBLICA E ÉTICA', topic: '9. Ética: Ética e cidadania, Ética e moral, Ética, princípios e valores, Ética e função pública, Ética no setor público.', sort_order: 290 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'ADMINISTRAÇÃO PÚBLICA E ÉTICA', topic: '10. Lei No 12.527/2011 (Lei de acesso à informação).', sort_order: 300 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'ADMINISTRAÇÃO PÚBLICA E ÉTICA', topic: '11. Lei No 13.709/2018 (Lei geral de proteção de dados pessoais).', sort_order: 310 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'ADMINISTRAÇÃO PÚBLICA E ÉTICA', topic: '12. Decreto No 31.198/2013 (Código de Ética e Conduta da Administração Pública Estadual).', sort_order: 320 },

    { category: 'CONHECIMENTOS GERAIS', subject: 'LEGISLAÇÃO ESPECÍFICA', topic: '1. Constituição do Estado do Ceará: da segurança pública e da defesa civil.', sort_order: 330 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'LEGISLAÇÃO ESPECÍFICA', topic: '2. Lei Estadual no 9.826, de 14 de maio de 1974 (Estatuto dos Servidores Públicos Civis do Estado do Ceará).', sort_order: 340 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'LEGISLAÇÃO ESPECÍFICA', topic: '3. Lei Estadual no 14.852, de 21 de dezembro de 2009 (redenomina a carreira guarda penitenciária, e dá outras providências) e alterações.', sort_order: 350 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'LEGISLAÇÃO ESPECÍFICA', topic: '4. Lei Complementar No 258/2021 (regime disciplinar dos policiais penais).', sort_order: 360 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'LEGISLAÇÃO ESPECÍFICA', topic: '5. Lei Complementar No 261/2021 (altera a Lei Complementar No 258/2021).', sort_order: 370 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'LEGISLAÇÃO ESPECÍFICA', topic: '6. Lei No 16.063/2016 (abono especial por esforço operacional) e alterações.', sort_order: 380 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'LEGISLAÇÃO ESPECÍFICA', topic: '7. Decreto No 31.997/2016 (regulamenta a Lei No 16.063/2016) e alterações.', sort_order: 390 },
    { category: 'CONHECIMENTOS GERAIS', subject: 'LEGISLAÇÃO ESPECÍFICA', topic: '8. Legislação Especial da SAP/CE (Instruções Normativas e Portarias).', sort_order: 400 },

    { category: 'CONHECIMENTOS ESPECÍFICOS', subject: 'DIREITO ADMINISTRATIVO', topic: '1. Estado, Governo e Administração Pública: Conceitos, elementos, poderes e organização; Natureza, fins e princípios; Eficiência, eficácia e efetividade; Governança e accountability.', sort_order: 410 },
    { category: 'CONHECIMENTOS ESPECÍFICOS', subject: 'DIREITO ADMINISTRATIVO', topic: '2. Atos administrativos: Conceitos, requisitos, elementos, classificação; Revogação, anulação e convalidação; Teoria dos motivos determinantes.', sort_order: 420 },
    { category: 'CONHECIMENTOS ESPECÍFICOS', subject: 'DIREITO ADMINISTRATIVO', topic: '3. Contratos administrativos e noções de licitações públicas.', sort_order: 430 },
    { category: 'CONHECIMENTOS ESPECÍFICOS', subject: 'DIREITO ADMINISTRATIVO', topic: '4. Poderes administrativos: Hierárquico, disciplinar, regulamentar e de polícia; Uso e abuso do poder.', sort_order: 440 },
    { category: 'CONHECIMENTOS ESPECÍFICOS', subject: 'DIREITO ADMINISTRATIVO', topic: '5. Controle e responsabilização da administração: Administrativo, judicial e legislativo.', sort_order: 450 },
    { category: 'CONHECIMENTOS ESPECÍFICOS', subject: 'DIREITO ADMINISTRATIVO', topic: '6. Responsabilidade civil do Estado: Evolução doutrinária; Atos comissivos ou omissivos; Excludentes.', sort_order: 460 },

    { category: 'CONHECIMENTOS ESPECÍFICOS', subject: 'DIREITO CONSTITUCIONAL', topic: '1. Estado e Constituição: Conceito, conteúdo, objeto e classificação.', sort_order: 470 },
    { category: 'CONHECIMENTOS ESPECÍFICOS', subject: 'DIREITO CONSTITUCIONAL', topic: '2. Constituição da República Federativa do Brasil de 1988: Princípios fundamentais e Dignidade da pessoa humana.', sort_order: 480 },
    { category: 'CONHECIMENTOS ESPECÍFICOS', subject: 'DIREITO CONSTITUCIONAL', topic: '3. Direitos e garantias fundamentais: Individuais, coletivos, sociais, nacionalidade e políticos.', sort_order: 490 },
    { category: 'CONHECIMENTOS ESPECÍFICOS', subject: 'DIREITO CONSTITUCIONAL', topic: '4. Remédios constitucionais: HD, HC, MS, AP e MI.', sort_order: 500 },
    { category: 'CONHECIMENTOS ESPECÍFICOS', subject: 'DIREITO CONSTITUCIONAL', topic: '5. Organização político-administrativa do Estado: União, Estados, DF, Municípios e Territórios.', sort_order: 510 },
    { category: 'CONHECIMENTOS ESPECÍFICOS', subject: 'DIREITO CONSTITUCIONAL', topic: '6. Administração pública: Disposições gerais e servidores públicos.', sort_order: 520 },
    { category: 'CONHECIMENTOS ESPECÍFICOS', subject: 'DIREITO CONSTITUCIONAL', topic: '7. Funções essenciais à Justiça: Advocacia, MP, Advocacia Pública e Defensoria Pública.', sort_order: 530 },
    { category: 'CONHECIMENTOS ESPECÍFICOS', subject: 'DIREITO CONSTITUCIONAL', topic: '8. Defesa do Estado e das instituições democráticas: Segurança pública e sua organização.', sort_order: 540 },
    { category: 'CONHECIMENTOS ESPECÍFICOS', subject: 'DIREITO CONSTITUCIONAL', topic: '9. Da Ordem Social: Base, objetivos, seguridade, meio ambiente, family e índio.', sort_order: 550 },

    { category: 'CONHECIMENTOS ESPECÍFICOS', subject: 'DIREITOS HUMANOS', topic: '1. Direitos humanos e direitos fundamentais na CF/88 (arts. 5o ao 15).', sort_order: 560 },
    { category: 'CONHECIMENTOS ESPECÍFICOS', subject: 'DIREITOS HUMANOS', topic: '2. Decreto no 7.037/2009 (Programa Nacional de Direitos Humanos).', sort_order: 570 },
    { category: 'CONHECIMENTOS ESPECÍFICOS', subject: 'DIREITOS HUMANOS', topic: '3. Declaração Universal dos Direitos Humanos (ONU, 1948).', sort_order: 580 },
    { category: 'CONHECIMENTOS ESPECÍFICOS', subject: 'DIREITOS HUMANOS', topic: '4. Regras de Nelson Mandela (Tratamento de Reclusos).', sort_order: 590 },
    { category: 'CONHECIMENTOS ESPECÍFICOS', subject: 'DIREITOS HUMANOS', topic: '5. Pacto de San José da Costa Rica (Convenção Americana).', sort_order: 600 },
    { category: 'CONHECIMENTOS ESPECÍFICOS', subject: 'DIREITOS HUMANOS', topic: '6. Regras de Bangkok (Tratamento de Mulheres Presas).', sort_order: 610 },

    { category: 'CONHECIMENTOS ESPECÍFICOS', subject: 'DIREITO PENAL', topic: '1. Aplicação da lei penal: Princípios, tempo, lugar, territorialidade e irretroatividade.', sort_order: 620 },
    { category: 'CONHECIMENTOS ESPECÍFICOS', subject: 'DIREITO PENAL', topic: '2. Teoria geral do crime: Infração penal, sujeitos e evolução doutrinária.', sort_order: 630 },
    { category: 'CONHECIMENTOS ESPECÍFICOS', subject: 'DIREITO PENAL', topic: '3. O fato típico e seus elementos: Consumação, tentativa, ilicitude e culpabilidade.', sort_order: 640 },
    { category: 'CONHECIMENTOS ESPECÍFICOS', subject: 'DIREITO PENAL', topic: '4. Crimes em espécie: Contra a pessoa, patrimônio, dignidade sexual, paz e fé pública.', sort_order: 650 },
    { category: 'CONHECIMENTOS ESPECÍFICOS', subject: 'DIREITO PENAL', topic: '5. Crimes contra a administração pública.', sort_order: 660 },

    { category: 'LEGISLAÇÃO EXTRAVAGANTE', subject: 'LEGISLAÇÃO EXTRAVAGANTE', topic: '1. Lei no 9.455/1997 (Antitortura).', sort_order: 670 },
    { category: 'LEGISLAÇÃO EXTRAVAGANTE', subject: 'LEGISLAÇÃO EXTRAVAGANTE', topic: '2. Lei 10.826/2003 (Estatuto do Desarmamento).', sort_order: 680 },
    { category: 'LEGISLAÇÃO EXTRAVAGANTE', subject: 'LEGISLAÇÃO EXTRAVAGANTE', topic: '3. Lei no 12.846/2013 (Anticorrupção).', sort_order: 690 },
    { category: 'LEGISLAÇÃO EXTRAVAGANTE', subject: 'LEGISLAÇÃO EXTRAVAGANTE', topic: '4. Lei no 12.850/2013 (Organizações Criminosas).', sort_order: 700 },
    { category: 'LEGISLAÇÃO EXTRAVAGANTE', subject: 'LEGISLAÇÃO EXTRAVAGANTE', topic: '5. Lei no 13.964/2019 (Pacote Anticrime).', sort_order: 710 },
    { category: 'LEGISLAÇÃO EXTRAVAGANTE', subject: 'LEGISLAÇÃO EXTRAVAGANTE', topic: '6. Lei no 7.210/1984 (Lei de Execução Penal).', sort_order: 720 },
    { category: 'LEGISLAÇÃO EXTRAVAGANTE', subject: 'LEGISLAÇÃO EXTRAVAGANTE', topic: '7. Lei No 13.869/2019 (Abuso de Autoridade).', sort_order: 730 },
    { category: 'LEGISLAÇÃO EXTRAVAGANTE', subject: 'LEGISLAÇÃO EXTRAVAGANTE', topic: '8. Lei No 8.072/1990 (Crimes Hediondos).', sort_order: 740 },
    { category: 'LEGISLAÇÃO EXTRAVAGANTE', subject: 'LEGISLAÇÃO EXTRAVAGANTE', topic: '9. Lei No 11.343/2006 (Drogas).', sort_order: 750 },
    { category: 'LEGISLAÇÃO EXTRAVAGANTE', subject: 'LEGISLAÇÃO EXTRAVAGANTE', topic: '10. Lei no 8.429/1992 (Improbidade Administrativa).', sort_order: 760 },
    { category: 'LEGISLAÇÃO EXTRAVAGANTE', subject: 'LEGISLAÇÃO EXTRAVAGANTE', topic: '11. Lei no 13.675/2018 (SUSP).', sort_order: 770 },
    { category: 'LEGISLAÇÃO EXTRAVAGANTE', subject: 'LEGISLAÇÃO EXTRAVAGANTE', topic: '12. Portarias e Resoluções sobre saúde e educação no sistema prisional.', sort_order: 780 },
  ]

  // Primeiro, deleta o que já existe para não duplicar (ou usa upsert)
  const { error: deleteError } = await supabase
    .from('exam_syllabus')
    .delete()
    .neq('id', '00000000-0000-0000-0000-000000000000') // Deleta tudo

  if (deleteError) {
    console.error("Erro ao limpar tabela:", deleteError)
  }

  const { error: insertError } = await supabase
    .from('exam_syllabus')
    .insert(syllabus)

  if (insertError) {
    console.error("Erro ao inserir grade:", insertError)
  } else {
    console.log("Migração concluída com sucesso! 72 tópicos inseridos.")
  }
}

migrate()
