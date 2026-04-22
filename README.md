Plataforma de Questões para Professores e Instituições
Visão do produto

Criar um ecossistema educacional em que professores autônomos e instituições possam gerenciar questões, flashcards, simulados, cadernos do aluno, grupos, turmas, planejamentos e acompanhamento de desempenho, com foco em carreira e isolamento total de dados por instituição.

Objetivo principal

Permitir que:

Professores autônomos criem e publiquem conteúdos educacionais.
Instituições operem ambientes isolados, sem compartilhamento de dados entre elas.
Alunos sejam vinculados por turma, grupo ou mentoria individual.
Professores acompanhem desempenho coletivo e individual.
Planejamentos possam ser compartilhados por turma, grupo ou aluno.
O sistema se adapte visualmente conforme o contexto: professor autônomo ou instituição.
Perfis principais
1. Professor

Pode:

Criar questões, flashcards, simulados e cadernos do aluno.
Criar grupos e turmas.
Convidar alunos por link ou código único.
Convidar outros professores para colaborar em grupos e turmas.
Vincular aluno com turma ou sem turma, como mentoria especial.
Acompanhar desempenho da turma e de alunos isolados.
Criar planejamentos gerais e distribuir para várias turmas ou alunos específicos.
2. Instituição

Pode:

Criar um ambiente próprio e isolado.
Vincular professores e alunos.
Criar banco isolado de conteúdos, sem misturar dados com outras instituições.
Permitir que um professor atue em múltiplas instituições, mas com troca de contexto.
Alterar identidade visual por instituição, incluindo logo.
3. Aluno

Pode:

Participar de turmas, grupos ou mentorias.
Acessar apenas o conteúdo que foi liberado para ele.
Resolver questões, simulados e revisar flashcards.
Acompanhar seu planejamento e desempenho.
Regras de negócio essenciais
Isolamento institucional
Nenhum dado pode ser compartilhado entre instituições.
Cada instituição possui seu próprio espaço lógico.
Professor pode estar vinculado a várias instituições.
Ao trocar de instituição, o usuário muda de contexto, logo, permissões e dados visíveis.
Conteúdos, turmas, grupos, alunos, professores, relatórios e planejamentos devem respeitar o contexto atual.
Grupos e turmas
Um grupo pode ter vários professores e vários alunos.
Professores convidados podem decidir se autorizam ou não o uso de suas questões, flashcards e simulados naquele grupo/turma.
Alunos convidados só visualizam conteúdos explicitamente permitidos.
Se um professor sair do grupo ou apagar seu vínculo:
o vínculo dele com a turma/grupo é removido;
conteúdos dependentes de autorização daquele professor deixam de ser oferecidos dali em diante;
histórico do aluno deve permanecer íntegro;
vínculos do aluno continuam.
Qualquer professor autorizado no grupo pode acompanhar o desempenho geral da turma ou por disciplina sob sua responsabilidade.
Mentoria sem turma
Professor pode vincular aluno sem turma formal.
Esse vínculo funciona como acompanhamento individual.
Planejamentos, tarefas, simulados e feedbacks podem ser atribuídos diretamente ao aluno.
Planejamento
Pode existir um planejamento:
global do grupo;
compartilhado com várias turmas;
individual por aluno.
O planejamento pode incluir:
trilha por carreira;
sequência de aulas/etapas;
questões;
simulados;
flashcards;
revisões;
metas.
Foco por carreira
O aluno pode selecionar uma carreira.
O sistema exibe uma trilha recomendada com passo a passo.
Essa trilha pode sugerir:
disciplinas;
blocos de questões;
simulados;
flashcards;
revisões;
metas semanais.
Estrutura conceitual do sistema
Contextos de acesso

O mesmo usuário pode atuar em contextos diferentes:

modo Professor Autônomo;
modo Instituição Alfa;
modo Instituição Delta.

Cada contexto muda:

logo;
permissões;
dados carregados;
dashboard;
conteúdos disponíveis.
Módulos do sistema
1. Autenticação e contexto
Login único.
Seleção de contexto após login, quando houver múltiplos vínculos.
Alternância de contexto no topo da interface.
Controle por roles e permissões.
2. Banco de questões
Questões públicas, privadas do professor ou privadas da instituição.
Filtros por disciplina, assunto, banca, nível, carreira.
Controle de autoria.
Controle de autorização para uso em turma/grupo.
3. Flashcards
Criação por professor.
Compartilhamento controlado.
Associação com carreira, disciplina e planejamento.
4. Simulados
Montagem manual ou automática.
Aplicação para turma, grupo ou aluno.
Relatórios por aluno, turma, disciplina e professor.
5. Caderno do aluno
Erros, anotações, destaques e revisões.
Pode ser individual e também supervisionado por professor.
6. Turmas e grupos
Criação de grupo/turma.
Convites por link e por código único.
Controle de professores convidados.
Controle de acesso de alunos.
7. Planejamento
Planejamento por carreira.
Planejamento de turma.
Planejamento individual.
Regras de recorrência e metas.
8. Desempenho e analytics
Visão da turma.
Visão individual.
Alertas de atenção.
Diagnóstico por disciplina.
Evolução por período.
9. Gestão institucional
Administração de professores.
Administração de alunos.
Banco isolado de conteúdo.
Branding institucional.
Modelo de permissões
Escopos de conteúdo
PERSONAL: só o professor autor vê.
GROUP_AUTHORIZED: disponível em grupos/turmas onde o autor autorizou.
INSTITUTION_PRIVATE: visível apenas dentro da instituição atual.
INSTITUTION_SHARED: compartilhado com usuários autorizados da mesma instituição.
STUDENT_ASSIGNED: liberado apenas para alunos específicos.
Ações por papel
Professor
criar conteúdo;
compartilhar conteúdo;
autorizar uso em grupos/turmas;
acompanhar desempenho;
convidar alunos;
convidar professores;
aplicar planejamento.
Coordenador/Administrador da instituição
gerenciar usuários da instituição;
gerenciar branding;
criar turmas;
controlar visibilidade institucional;
acompanhar relatórios globais.
Aluno
consumir conteúdos liberados;
responder questões e simulados;
revisar flashcards;
acompanhar planejamento.
Entidades principais do domínio
Identidade e contexto
User
UserProfile
WorkspaceContext
Institution
InstitutionMembership
TeacherProfile
StudentProfile
Estrutura acadêmica
Group
GroupTeacher
GroupStudent
ClassRoom
ClassTeacher
ClassStudent
MentorshipLink
Convites
InviteLink
InviteCode
Invitation
Conteúdo
Question
QuestionOption
Flashcard
ExamMock
ExamMockQuestion
StudentNotebook
StudentNotebookEntry
Compartilhamento e autorização
ContentPermission
GroupContentAuthorization
ClassContentAuthorization
StudentContentAssignment
Planejamento
Career
CareerTrack
StudyPlan
StudyPlanTarget
StudyPlanStep
StudyTask
Execução e desempenho
QuestionAttempt
FlashcardReview
MockAttempt
MockAnswer
StudentPerformanceSnapshot
StudentAlert
Fluxos principais
Fluxo 1: professor autônomo cria turma
Professor cria turma.
Gera link e código de convite.
Convida alunos.
Convida professor colaborador.
Professor colaborador escolhe quais conteúdos autoriza.
Turma passa a consumir apenas conteúdos permitidos.
Fluxo 2: professor com mentoria individual
Professor cria vínculo direto com aluno.
Cria planejamento individual.
Libera questões, simulados e flashcards.
Acompanha métricas e gera alertas de atenção.
Fluxo 3: professor multi-instituição
Professor faz login.
Escolhe contexto: Alfa, Delta ou autônomo.
Sistema altera logo, dados e permissões.
Nenhum conteúdo de uma instituição aparece em outra.
Fluxo 4: instituição cria ambiente isolado
Instituição cadastra professores.
Vincula alunos.
Define branding.
Cria banco próprio de questões.
Relatórios e conteúdos ficam limitados ao contexto institucional.
Arquitetura sugerida
Frontend
Next.js App Router
TypeScript
shadcn/ui
Tailwind CSS
React Hook Form + Zod
TanStack Table
Recharts
Zustand ou TanStack Query para estados específicos
Backend

Opção recomendada:

Next.js com rotas server/API para MVP
Prisma ORM
PostgreSQL
NextAuth/Auth.js ou sistema próprio com JWT + sessões
RBAC + checagem de contexto por workspace

Opção para escala maior:

monorepo com apps/web e apps/api
API em NestJS
workers para processamento de relatórios, convites e notificações
Infraestrutura lógica
Multi-tenant com isolamento por institution_id ou workspace_id
Tudo precisa carregar e consultar pelo contexto ativo
Índices compostos por contexto + entidade
Estrutura inicial de rotas
Área comum
/login
/selecionar-contexto
/onboarding
Professor
/app/dashboard
/app/questoes
/app/flashcards
/app/simulados
/app/caderno
/app/grupos
/app/turmas
/app/alunos
/app/planejamentos
/app/desempenho
Instituição
/instituicao/dashboard
/instituicao/professores
/instituicao/alunos
/instituicao/turmas
/instituicao/grupos
/instituicao/banco
/instituicao/planejamentos
/instituicao/relatorios
/instituicao/configuracoes
Aluno
/aluno/dashboard
/aluno/questoes
/aluno/flashcards
/aluno/simulados
/aluno/caderno
/aluno/planejamento
/aluno/desempenho
MVP recomendado
Fase 1
autenticação;
seleção de contexto;
cadastro de professor, aluno e instituição;
criação de turmas;
convite por link e código;
banco de questões;
simulados básicos;
dashboard de desempenho inicial.
Fase 2
flashcards;
caderno do aluno;
grupos com múltiplos professores;
autorizações de conteúdo;
mentoria sem turma;
planejamento por turma e aluno.
Fase 3
foco por carreira;
alertas inteligentes;
branding por contexto;
relatórios institucionais avançados;
automações pedagógicas.
Decisões críticas de arquitetura
Todo dado precisa pertencer a um contexto.
Conteúdo nunca deve ser compartilhado entre instituições.
Professor multi-instituição precisa de login único com troca de workspace.
Autorização de conteúdo deve ser explícita e auditável.
Histórico do aluno não pode quebrar quando professor sair do grupo.
Relatórios devem distinguir visão global, por turma, por disciplina e por aluno.
Sugestão de próximos entregáveis
modelagem completa do banco de dados;
mapa de permissões por papel;
arquitetura das páginas em Next.js + shadcn/ui;
fluxos de onboarding/login/troca de contexto;
schema Prisma inicial;
backlog MVP por prioridade.

Perfeito — a sua ideia já tem cara de produto SaaS educacional multi-contexto, não só “site de questões”. O ponto mais importante aqui é que existem 3 camadas fortes:

Professor autônomo
Instituição
Aluno

E o coração do sistema é este:

conteúdo pedagógico: questões, flashcards, simulados, caderno
estrutura relacional: grupos, turmas, convites, vínculos
isolamento de contexto: professor autônomo ≠ instituição Alfa ≠ instituição Delta

Eu já organizei isso em um documento no canvas com a visão do produto, módulos, regras de negócio, entidades e MVP. Agora te deixo a versão consolidada aqui.

Visão do sistema

Vamos criar uma plataforma em Next.js + shadcn/ui onde:

professores criam e distribuem conteúdos
alunos acessam apenas o que foi liberado
grupos e turmas permitem colaboração entre professores
instituições operam em ambiente isolado
o mesmo professor pode atuar em várias instituições com login único + troca de contexto
nenhum dado institucional pode vazar ou ser compartilhado entre instituições
Conceito central: contexto ativo

Esse sistema precisa nascer com uma ideia de workspace/contexto.

Exemplo de um mesmo usuário:

Modo Professor Autônomo
Modo Instituição Alfa
Modo Instituição Delta

Ao trocar o contexto, muda:

logo
permissões
banco de dados visível
professores/alunos acessíveis
turmas e grupos
conteúdos e relatórios

Isso resolve seu ponto mais importante:

um professor pode trabalhar em várias instituições, mas os dados de uma nunca se misturam com outra.

Perfis principais
Professor

Pode:

criar questões
criar flashcards
criar simulados
criar caderno do aluno
criar grupos e turmas
convidar alunos por link ou código
convidar outros professores
acompanhar desempenho de turma
acompanhar desempenho individual
criar planejamento para turma, grupo ou aluno
vincular aluno sem turma formal, como mentoria especial
Instituição

Pode:

ter ambiente próprio isolado
cadastrar/vincular professores
cadastrar/vincular alunos
criar turmas e grupos
manter banco próprio de questões e conteúdos
trocar branding/logo do sistema
acompanhar desempenho global institucional
Aluno

Pode:

entrar por convite/link/código
participar de turma, grupo ou mentoria
acessar só o conteúdo permitido
resolver questões e simulados
revisar flashcards
seguir planejamento
ver desempenho
Regras de negócio que precisam existir
1. Isolamento total institucional

Essa é regra obrigatória:

nenhuma instituição compartilha dados com outra
conteúdos não podem “vazar”
relatórios não podem ser cruzados
convites, turmas, grupos e alunos pertencem ao contexto atual
2. Professor multi-instituição

O mesmo professor:

usa uma única conta
pode estar em várias instituições
escolhe o contexto ao entrar
visualiza só os dados daquele contexto
3. Grupos e turmas com colaboração

Você trouxe uma regra muito boa:

grupo/turma pode ter vários professores
cada professor convidado pode autorizar ou não o uso de suas questões, flashcards e simulados naquela turma
aluno só vê o que foi explicitamente permitido

Ou seja, conteúdo não entra automaticamente só porque o professor foi convidado.

4. Saída de professor do grupo

Quando professor sai ou é removido:

ele perde vínculo com grupo/turma
conteúdos dele deixam de ficar disponíveis para novos usos
histórico do aluno continua preservado
vínculo dos alunos continua existindo

Isso é essencial para não quebrar o histórico pedagógico.

5. Mentoria sem turma

Professor pode:

vincular aluno diretamente
montar trilha personalizada
aplicar simulados e atividades
monitorar o aluno individualmente

Isso atende muito bem mentorias premium.

6. Planejamento pedagógico

Planejamento pode ser:

do grupo
compartilhado para várias turmas
individual por aluno

E pode incluir:

trilha de carreira
sequência de conteúdos
questões
simulados
flashcards
revisões
metas
7. Foco por carreira

O aluno escolhe uma carreira e o sistema mostra:

passo a passo
disciplinas
questões recomendadas
simulados
flashcards
metas e revisões

Isso dá uma camada de produto muito mais forte do que só um banco de questões.

Módulos do produto
Módulo 1 — Autenticação e contexto
login único
escolha de contexto
troca de contexto no topo do sistema
controle de papel e permissões
Módulo 2 — Banco de questões
criação e edição
filtros por disciplina, assunto, banca, carreira
autoria
compartilhamento controlado
Módulo 3 — Flashcards
criação por professor
associação com disciplina/carreira
compartilhamento por turma/grupo/aluno
Módulo 4 — Simulados
montagem manual ou automática
aplicação para turma, grupo ou aluno
resultado por aluno, turma e disciplina
Módulo 5 — Caderno do aluno
erros
anotações
revisões
acompanhamento do professor
Módulo 6 — Turmas e grupos
criação de turma/grupo
convite por link
convite por código único
múltiplos professores
múltiplos alunos
permissões de conteúdo
Módulo 7 — Planejamento
por carreira
por turma
por aluno
compartilhável
Módulo 8 — Desempenho e analytics
visão da turma
visão do aluno
alertas de atenção
visão por disciplina
evolução temporal
Módulo 9 — Gestão institucional
professores
alunos
branding
relatórios
banco privado institucional
Arquitetura recomendada
Frontend
Next.js (App Router)
TypeScript
shadcn/ui
Tailwind CSS
React Hook Form + Zod
TanStack Table
Recharts
TanStack Query
Backend

Para começar bem:

Next.js + API Routes / Server Actions no MVP
ou, se quiser já nascer mais robusto:
monorepo com apps/web e apps/api
NestJS no backend
Banco
PostgreSQL
Prisma ORM
Autenticação
Auth.js / NextAuth ou auth própria com sessão + RBAC
Modelagem conceitual principal

As entidades mais importantes seriam:

Identidade
User
Profile
Institution
Membership
WorkspaceContext
Estrutura
Group
GroupTeacher
GroupStudent
ClassRoom
ClassTeacher
ClassStudent
MentorshipLink
Convites
InviteLink
InviteCode
Invitation
Conteúdo
Question
QuestionOption
Flashcard
MockExam
MockExamQuestion
StudentNotebook
StudentNotebookEntry
Permissão
ContentPermission
GroupContentAuthorization
StudentContentAssignment
Planejamento
Career
CareerTrack
StudyPlan
StudyPlanTarget
StudyPlanStep
Desempenho
QuestionAttempt
FlashcardReview
MockAttempt
StudentPerformanceSnapshot
StudentAlert
Rotas iniciais sugeridas
Área comum
/login
/selecionar-contexto
/onboarding
Professor
/app/dashboard
/app/questoes
/app/flashcards
/app/simulados
/app/caderno
/app/grupos
/app/turmas
/app/alunos
/app/planejamentos
/app/desempenho
Instituição
/instituicao/dashboard
/instituicao/professores
/instituicao/alunos
/instituicao/turmas
/instituicao/grupos
/instituicao/banco
/instituicao/planejamentos
/instituicao/relatorios
/instituicao/configuracoes
Aluno
/aluno/dashboard
/aluno/questoes
/aluno/flashcards
/aluno/simulados
/aluno/caderno
/aluno/planejamento
/aluno/desempenho
MVP ideal
Fase 1
login
cadastro de perfis
seleção de contexto
criação de turma
convite por link/código
banco de questões
simulado básico
dashboard inicial
Fase 2
flashcards
caderno do aluno
grupos com vários professores
autorização de conteúdo
mentoria sem turma
planejamento por turma/aluno
Fase 3
foco por carreira
alertas inteligentes
branding por instituição
relatórios avançados
automações pedagógicas
Decisões técnicas obrigatórias

Essas 6 não podem ser ignoradas:

todo dado precisa ter contexto
instituições devem ser isoladas
professor multi-instituição usa troca de workspace
autorização de conteúdo precisa ser explícita
histórico do aluno não pode quebrar se professor sair
relatórios precisam funcionar por aluno, turma, disciplina e instituição# anvora
