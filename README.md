# 💰 FinansMe - Controle Financeiro Pessoal

O **FinansMe** é um aplicativo mobile de controle financeiro pessoal desenvolvido para ajudar usuários a registrarem, organizarem e acompanharem suas **receitas** e **despesas** de forma simples, intuitiva e segura.

A aplicação é composta por um **frontend mobile em Flutter**, um **backend em Node.js com Fastify e TypeScript**, persistência em **PostgreSQL serverless** e suporte à **integração com API externa de Inteligência Artificial**.

---

## 📌 Sobre o Projeto

Muitas pessoas ainda controlam sua vida financeira por meio de anotações soltas, planilhas pouco práticas ou apenas pela memória. Isso dificulta a visualização clara dos gastos, ganhos, pendências e saldo disponível.

O **FinansMe** surge como uma solução centralizada para permitir que o usuário:

- registre movimentações financeiras;
- organize receitas e despesas por categorias;
- acompanhe contas financeiras;
- visualize seu histórico financeiro;
- mantenha maior clareza sobre sua situação financeira;
- conte com apoio de funcionalidades baseadas em Inteligência Artificial.

---

## 🎯 Objetivo

Desenvolver uma aplicação mobile capaz de permitir que usuários gerenciem sua vida financeira de forma prática, segura e organizada, por meio de funcionalidades como:

- autenticação e controle de acesso;
- gerenciamento de contas financeiras;
- cadastro de categorias de receita e despesa;
- cadastro de transatores;
- registro, consulta, edição e exclusão de movimentações financeiras;
- acompanhamento da situação dos lançamentos;
- integração com API de Inteligência Artificial.

---

## ❗ Problema que o Projeto Resolve

O projeto foi idealizado para resolver a dificuldade que muitas pessoas possuem em manter um controle financeiro estruturado e confiável.

Com o **FinansMe**, o usuário passa a ter um ambiente único para:

- registrar entradas e saídas de dinheiro;
- acompanhar compromissos financeiros pendentes;
- manter histórico organizado de movimentações;
- categorizar gastos e receitas;
- visualizar melhor sua evolução financeira;
- tomar decisões com mais responsabilidade.

---

## 👥 Público-alvo

- Pessoas que desejam controlar melhor suas finanças pessoais;
- Usuários que querem substituir planilhas por uma solução mobile;
- Profissionais autônomos que precisam organizar ganhos e despesas;
- Usuários que desejam acompanhar seu histórico financeiro com praticidade.

---

## 📱 Plataforma

- **Tipo:** Aplicação mobile
- **Front-end:** Flutter com Dart
- **Back-end:** Node.js com Fastify e TypeScript
- **Banco de dados:** PostgreSQL serverless
- **Arquitetura:** API RESTful
- **Integração externa:** API de Inteligência Artificial

---

## 🚀 Principais Funcionalidades

### 🔐 Autenticação e Acesso

- Cadastro de usuário
- Login com e-mail e senha
- Recuperação de senha
- Atualização de perfil
- Controle de status da conta

### 💳 Gestão de Contas Financeiras

- Cadastro de contas financeiras
- Listagem de contas cadastradas
- Atualização de contas financeiras

### 🗂️ Gestão de Categorias e Transatores

- Cadastro de planos de conta
- Cadastro de transatores
- Consulta de cadastros complementares

### 💸 Movimentações Financeiras

- Registro de movimentações financeiras
- Associação de conta, categoria, transator, tipo, situação e forma de pagamento
- Consulta de movimentações cadastradas
- Atualização de movimentações
- Exclusão de movimentações

### 📊 Controle Financeiro

- Classificação de lançamentos em receita ou despesa
- Controle da situação financeira do lançamento
- Visualização do histórico financeiro
- Resumo de receitas e despesas
- Organização geral da vida financeira do usuário

### 🤖 Integração com Inteligência Artificial

- Envio de prompts para API externa de IA
- Recebimento de respostas contextualizadas
- Exibição do retorno da IA ao usuário, quando aplicável

---

## 🧱 Entidades Principais

O sistema é composto, em alto nível, pelas seguintes entidades:

- **Usuário**
- **Conta Financeira**
- **Plano de Conta**
- **Transator**
- **Situação Financeira**
- **Tipo de Movimento**
- **Forma de Pagamento**
- **Movimentação Financeira**

---

## 📋 Requisitos Funcionais

- **RF01** — Cadastro de usuário  
- **RF02** — Login de usuário  
- **RF03** — Recuperação de senha  
- **RF04** — Atualização de perfil  
- **RF05** — Cadastro de contas financeiras  
- **RF06** — Cadastro de planos de conta  
- **RF07** — Cadastro de transatores  
- **RF08** — Registro de movimentações financeiras  
- **RF09** — Classificação dos lançamentos  
- **RF10** — Consulta de movimentações  

---

## 📏 Regras de Negócio

- Não permitir cadastro de usuários com e-mails duplicados;
- Permitir cadastro apenas para usuários maiores de 18 anos;
- Bloquear temporariamente a conta após 5 tentativas inválidas de login;
- Marcar usuários como inativos após mais de 90 dias sem uso;
- Garantir que cada conta financeira pertença a um único usuário;
- Garantir que cada plano de conta pertença a um único usuário;
- Garantir que cada transator pertença a um único usuário;
- Exigir, no lançamento financeiro, usuário, conta, plano de conta, tipo de movimento, valor e descrição;
- Permitir que uma movimentação seja marcada como quitada apenas se houver data de pagamento;
- Atualizar o saldo da conta conforme o tipo do lançamento:
  - **receita** aumenta o saldo;
  - **despesa** reduz o saldo.

---

## ⚙️ Requisitos Não Funcionais

- Carregamento das telas principais em até **2 segundos** em condições normais;
- Armazenamento seguro de senhas com algoritmo de hash;
- Comunicação segura via **HTTPS**;
- Disponibilidade contínua, exceto em manutenções programadas;
- Escalabilidade para crescimento de usuários e dados;
- Interface mobile intuitiva e de fácil navegação;
- Compatibilidade com dispositivos suportados pelo Flutter;
- Integridade e consistência dos dados;
- Arquitetura que facilite manutenção e evolução;
- Integração estável e controlada com API externa de IA.

---

## 🧠 Casos de Uso Principais

- Realizar cadastro
- Realizar login
- Recuperar senha
- Atualizar perfil
- Cadastrar conta financeira
- Cadastrar plano de conta
- Cadastrar transator
- Registrar movimentação financeira
- Consultar movimentações financeiras
- Atualizar movimentação financeira
- Excluir movimentação financeira
- Obter resposta da API de Inteligência Artificial

---

## 🛣️ Fluxo Principal do Sistema

1. O usuário realiza seu cadastro;
2. O usuário efetua login;
3. O usuário cadastra informações complementares:
   - conta financeira;
   - plano de conta;
   - transator;
4. O usuário registra sua primeira movimentação financeira;
5. O usuário passa a acompanhar sua vida financeira com base nos lançamentos realizados.

---

## 📦 MVP

A primeira versão utilizável do **FinansMe** deve priorizar:

- cadastro de usuário;
- login;
- recuperação de senha;
- cadastro de conta financeira;
- cadastro de plano de conta;
- cadastro de transator;
- registro de movimentação financeira;
- classificação por tipo, situação e forma de pagamento;
- consulta de movimentações financeiras.

---

## 🚫 Fora do Escopo Inicial

Nesta fase inicial, o projeto **não contempla**:

- integração com instituições bancárias em tempo real;
- importação automática de extratos;
- módulo de investimentos;
- compartilhamento multiusuário de contas;
- emissão de relatórios contábeis avançados;
- pagamentos realizados diretamente pelo aplicativo.

---

## 🛠️ Tecnologias Utilizadas

### Frontend

- **Flutter**
- **Dart**

### Backend

- **Node.js**
- **Fastify**
- **TypeScript**

### Banco de Dados

- **PostgreSQL Serverless**

### Arquitetura e Segurança

- **API RESTful**
- **HTTPS**
- **Hash seguro para senhas**

### Integrações

- **API externa de Inteligência Artificial**

---

## 📈 Backlog Inicial por Épicos

### Épico 1 — Autenticação e Acesso

- Cadastro de usuário
- Login no sistema
- Controle de status da conta

### Épico 2 — Gestão de Contas Financeiras

- Cadastro de conta financeira
- Listagem de contas financeiras
- Atualização de conta financeira

### Épico 3 — Gestão de Categorias e Transatores

- Cadastro de plano de conta
- Cadastro de transator
- Consulta de cadastros complementares

### Épico 4 — Registro de Movimentações Financeiras

- Registro de movimentação financeira
- Informar dados completos do lançamento
- Definir tipo e forma de pagamento

### Épico 5 — Controle de Situação Financeira

- Identificação da situação financeira
- Atualização do status de pagamento
- Consulta por situação

### Épico 6 — Acompanhamento e Organização Financeira

- Visualização do histórico financeiro
- Resumo de receitas e despesas
- Organização da vida financeira

---

## ✅ Benefícios Esperados

Com o **FinansMe**, espera-se que o usuário possa:

- registrar suas finanças de forma simples;
- entender melhor seus ganhos e gastos;
- manter histórico organizado de movimentações;
- acompanhar pendências financeiras;
- ter mais clareza sobre seu comportamento financeiro;
- melhorar sua responsabilidade na gestão do dinheiro.

---

## 📌 Considerações Finais

O **FinansMe** é um projeto focado em controle financeiro pessoal com ênfase em **organização**, **rastreabilidade**, **segurança** e **facilidade de uso**.

Seu escopo inicial concentra-se na entrega das funcionalidades essenciais para autenticação, gestão de dados financeiros e acompanhamento das movimentações do usuário. A partir dessa base, o sistema poderá evoluir para recursos analíticos mais avançados, automações e melhorias apoiadas por Inteligência Artificial.
