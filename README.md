# Anvora - Plataforma Educacional SaaS

Plataforma de Questões, Flashcards e Planejamento para Professores e Instituições.

## 🚀 Visão do Produto

Criar um ecossistema educacional completo onde professores autônomos e instituições possam gerenciar questões, flashcards, simulados, cadernos do aluno, grupos, turmas e planejamentos de estudo. O foco principal é na **carreira do aluno** e no **isolamento total de dados** por instituição (Multi-tenancy).

---

## 🎯 Objetivos Principais

- **Autonomia**: Permitir que professores criem e publiquem seus próprios conteúdos.
- **Privacidade**: Instituições operam em ambientes 100% isolados.
- **Flexibilidade**: Vínculo de alunos por turma, grupo ou mentoria individual.
- **Analytics**: Acompanhamento detalhado de desempenho coletivo e individual.
- **Contexto**: Interface dinâmica que se adapta ao perfil (Autônomo vs Institucional).

---

## 👥 Perfis de Usuário

### 1. Professor
- Criar questões, flashcards, simulados e cadernos.
- Gerenciar grupos e turmas (convites por link ou código).
- Colaborar com outros professores em turmas compartilhadas.
- Realizar mentorias individuais (vínculo direto sem turma formal).
- Criar e distribuir planejamentos de estudo.

### 2. Instituição
- Gerenciar um ambiente próprio e isolado (White-label básico).
- Vincular professores e alunos ao seu workspace.
- Manter banco de dados de conteúdo exclusivo.
- Troca de contexto simplificada para professores que atuam em múltiplas sedes.

### 3. Aluno
- Acessar conteúdos liberados por professores ou instituições.
- Resolver questões, simulados e revisar flashcards.
- Seguir trilhas de carreira e metas de planejamento.
- Acompanhar evolução de desempenho e cadernos de erros.

---

## ⚖️ Regras de Negócio Essenciais

### 🔒 Isolamento Institucional (Multi-tenancy)
- Nenhum dado é compartilhado entre diferentes `workspaces`.
- Ao trocar de contexto, a interface (logo, permissões e dados) é totalmente atualizada.
- Professores podem transitar entre contextos com um único login.

### 🤝 Colaboração em Grupos
- Grupos podem ter múltiplos professores.
- O autor do conteúdo decide se autoriza o uso de suas questões/flashcards naquele grupo específico.
- A saída de um professor não quebra o histórico dos alunos, mas remove o acesso a novos conteúdos desse autor.

### 📈 Planejamento e Carreira
- O sistema sugere trilhas baseadas na carreira escolhida (Ex: Polícia Federal).
- O planejamento pode ser global (grupo), por turma ou individual.
- Inclui metas semanais, revisões programadas e blocos de questões.

---

## 🏗️ Estrutura do Sistema

### Módulos Principais
1. **Autenticação e Contexto**: Login único com seletor de workspace.
2. **Banco de Questões**: Filtros avançados, controle de autoria e permissões.
3. **Flashcards**: Sistema de repetição espaçada e compartilhamento.
4. **Simulados**: Gerador de provas com relatórios detalhados.
5. **Turmas e Grupos**: Gestão de convites e permissões de conteúdo.
6. **Desempenho**: Analytics por disciplina, evolução temporal e alertas de atenção.

### Modelo de Permissões (Escopos)
- `PERSONAL`: Apenas o autor visualiza.
- `GROUP_AUTHORIZED`: Disponível para turmas autorizadas pelo autor.
- `INSTITUTION_PRIVATE`: Visível apenas dentro da instituição.
- `STUDENT_ASSIGNED`: Conteúdo exclusivo para mentorias específicas.

---

## 🛠️ Tecnologias Utilizadas

- **Frontend**: Next.js 15+ (App Router), TypeScript, Tailwind CSS, shadcn/ui.
- **Backend**: Server Actions / API Routes.
- **ORM**: Prisma.
- **Banco de Dados**: PostgreSQL / Supabase.
- **Gráficos**: Recharts.
- **Formulários**: React Hook Form + Zod.

---

## 🗺️ Roadmap MVP

### Fase 1: Fundação
- Autenticação e Seleção de Contexto.
- Cadastro de perfis e criação de turmas.
- Banco de questões e simulados básicos.
- Dashboard inicial de desempenho.

### Fase 2: Engajamento
- Sistema de Flashcards.
- Caderno do Aluno (Erros e Notas).
- Colaboração avançada entre professores.
- Mentoria individual.

### Fase 3: Inteligência
- Trilhas por Carreira automáticas.
- Alertas preditivos de desempenho.
- Branding institucional (Logos e Cores).
- Automações pedagógicas.

---

## 📂 Estrutura de Rotas (Sugestão)

### Comum
- `/login`: Autenticação.
- `/selecionar-contexto`: Picker de Workspace.

### Aluno
- `/aluno/dashboard`: Visão geral e metas.
- `/aluno/questoes`: Feed de prática.
- `/aluno/planejamento`: Cronograma de estudos.

### Professor
- `/professor/dashboard`: Gestão de turmas e alertas.
- `/professor/questoes/nova`: Módulo editorial de criação.
- `/professor/alunos`: Gestão de mentorados.

---
© 2026 Anvora - Todos os direitos reservados.
