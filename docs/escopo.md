# Documento de Escopo do Projeto — FinansMe

## 1. Identificação do Projeto

**Nome do projeto:** FinansMe  
**Plataforma:** Mobile  
**Front-end:** Flutter com Dart  
**Back-end:** Node.js com Fastify e TypeScript  
**Banco de dados:** PostgreSQL em ambiente serverless  
**Integração externa:** API de Inteligência Artificial  

---

## 2. Visão Geral

O **FinansMe** é um sistema mobile de controle financeiro pessoal voltado ao registro e acompanhamento de **receitas** e **despesas**, permitindo ao usuário organizar sua vida financeira por meio de contas, categorias, transatores e movimentações financeiras.

O sistema busca oferecer uma experiência simples e intuitiva para que o usuário possa manter maior controle sobre seus recursos financeiros, promovendo mais organização, clareza e responsabilidade na tomada de decisões.

---

## 3. Objetivo do Projeto

Desenvolver uma aplicação mobile capaz de permitir que usuários cadastrem e acompanhem suas movimentações financeiras, organizando entradas e saídas de dinheiro com suporte a:

- autenticação de usuários;
- gerenciamento de contas financeiras;
- categorização de receitas e despesas;
- cadastro de transatores;
- registro e consulta de movimentações financeiras;
- controle da situação dos lançamentos;
- integração com API de Inteligência Artificial.

---

## 4. Problema que o Projeto Resolve

Muitas pessoas possuem dificuldade em acompanhar sua vida financeira de forma estruturada, especialmente quando utilizam anotações dispersas, planilhas pouco práticas ou apenas memória para controlar gastos e ganhos.

O **FinansMe** surge para resolver esse problema ao fornecer um ambiente centralizado para:

- registrar movimentações financeiras;
- visualizar histórico de lançamentos;
- classificar receitas e despesas;
- acompanhar o status financeiro das movimentações;
- manter um controle mais confiável do saldo disponível.

---

## 5. Escopo do Produto

## 5.1 Escopo Funcional

O sistema deve contemplar as seguintes funcionalidades principais:

### 5.1.1 Autenticação e acesso

- Cadastro de usuário
- Login com e-mail e senha
- Recuperação de senha
- Atualização de perfil
- Controle de status de conta

### 5.1.2 Gestão de contas financeiras

- Cadastro de contas financeiras
- Listagem de contas cadastradas
- Atualização de contas financeiras

### 5.1.3 Gestão de categorias e transatores

- Cadastro de planos de conta
- Cadastro de transatores
- Consulta de cadastros complementares

### 5.1.4 Movimentações financeiras

- Registro de movimentações financeiras
- Associação de conta, categoria, transator, tipo, situação e forma de pagamento
- Consulta das movimentações cadastradas
- Atualização de movimentações
- Exclusão de movimentações

### 5.1.5 Controle financeiro

- Classificação de lançamentos como receita ou despesa
- Controle de situação financeira do lançamento
- Visualização do histórico financeiro
- Resumo de receitas e despesas
- Organização geral da vida financeira do usuário

### 5.1.6 Integração com Inteligência Artificial

- Envio de prompts para API externa de IA
- Recebimento e tratamento de respostas contextualizadas
- Exibição do retorno da IA ao usuário quando aplicável

---

## 5.2 Escopo de Dados

O sistema será composto, em alto nível, pelas seguintes entidades principais:

### Usuário

Responsável por representar a pessoa que utiliza o sistema.

**Principais atributos:**

- identificador;
- nome;
- e-mail;
- senha;
- status de atividade.

### Conta Financeira

Representa onde o dinheiro do usuário está armazenado.

**Exemplos:**

- conta bancária;
- carteira.

**Principais atributos:**

- identificador;
- descrição;
- valor total em conta.

### Plano de Conta

Representa as categorias de organização das receitas e despesas.

**Principais atributos:**

- identificador;
- descrição.

### Transator

Representa a parte relacionada à movimentação financeira.

**Principais atributos:**

- identificador;
- descrição.

### Situação Financeira

Define o estado atual de uma movimentação.

**Exemplos:**

- em aberto;
- quitado;
- vencido.

### Tipo de Movimento

Classifica a movimentação como:

- receita;
- despesa.

### Forma de Pagamento

Define como a movimentação foi ou será paga.

**Exemplos:**

- Pix;
- boleto;
- dinheiro;
- cartão de crédito;
- cartão de débito.

### Movimentação Financeira

Representa o lançamento financeiro realizado pelo usuário.

**Principais atributos:**

- identificador;
- data de movimentação;
- data de vencimento;
- data de pagamento;
- número do documento;
- valor;
- descrição.

---

## 6. Regras de Negócio no Escopo

As principais regras de negócio contempladas no projeto são:

- Não permitir cadastro de usuários com e-mails duplicados.
- Permitir cadastro apenas para usuários maiores de 18 anos.
- Bloquear temporariamente a conta após 5 tentativas inválidas de login.
- Marcar usuários como inativos após mais de 90 dias sem uso.
- Garantir que cada conta financeira pertença a um único usuário.
- Garantir que cada plano de conta pertença a um único usuário.
- Garantir que cada transator pertença a um único usuário.
- Exigir, no lançamento financeiro, usuário, conta, plano de conta, tipo de movimento, valor e descrição.
- Permitir que uma movimentação seja marcada como quitada apenas se houver data de pagamento.
- Atualizar o saldo da conta conforme o tipo do lançamento:
  - receita aumenta o saldo;
  - despesa reduz o saldo.

---

## 7. Requisitos Não Funcionais no Escopo

O projeto também deve atender aos seguintes requisitos não funcionais:

- desempenho adequado, com carregamento das telas principais em até 2 segundos em condições normais;
- armazenamento seguro de senhas com algoritmo de hash;
- comunicação segura via HTTPS;
- disponibilidade contínua, exceto em manutenções programadas;
- escalabilidade para suportar crescimento de usuários e dados;
- interface mobile intuitiva e fácil de usar;
- compatibilidade com dispositivos suportados pela aplicação Flutter;
- integridade e consistência dos dados no banco;
- arquitetura que facilite manutenção e evolução;
- integração estável e controlada com API externa de IA.

---

## 8. Fluxo Principal Esperado do Sistema

O fluxo inicial esperado de uso do sistema é:

1. O usuário realiza seu cadastro.
2. O usuário efetua login.
3. O usuário cadastra informações complementares:
   - conta financeira;
   - plano de conta;
   - transator.
4. O usuário registra sua primeira movimentação financeira.
5. O usuário passa a acompanhar e organizar sua vida financeira com base nos lançamentos realizados.

---

## 9. Escopo do MVP

Para a primeira versão utilizável do sistema, o MVP deve priorizar:

- cadastro de usuário;
- login;
- recuperação de senha;
- cadastro de conta financeira;
- cadastro de plano de conta;
- cadastro de transator;
- registro de movimentação financeira;
- classificação por tipo, situação e forma de pagamento;
- consulta de movimentações financeiras.

Funcionalidades complementares, como resumos mais avançados, expansão dos recursos de IA e melhorias analíticas, podem ser evoluídas em versões futuras.

---

## 10. Itens Fora do Escopo Inicial

Não fazem parte do escopo inicial, salvo redefinição futura do projeto:

- integração com instituições bancárias em tempo real;
- importação automática de extratos;
- módulo de investimentos;
- compartilhamento multiusuário de contas;
- emissão de relatórios contábeis avançados;
- pagamentos financeiros realizados diretamente pelo aplicativo.

---

## 11. Restrições do Projeto

O projeto possui as seguintes restrições conhecidas:

- aplicação focada inicialmente em ambiente **mobile**;
- arquitetura baseada em **API RESTful**;
- utilização de **Node.js com Fastify e TypeScript** no back-end;
- utilização de **Flutter com Dart** no front-end;
- persistência de dados em **PostgreSQL serverless**;
- dependência de integração externa para funcionalidades baseadas em IA.

---

## 12. Benefícios Esperados

Com a implantação do **FinansMe**, espera-se que o usuário possa:

- registrar suas finanças de forma simples;
- entender melhor seus ganhos e gastos;
- manter histórico organizado de movimentações;
- acompanhar pendências financeiras;
- ter mais clareza sobre seu comportamento financeiro;
- melhorar sua responsabilidade na gestão do dinheiro.

---

## 13. Considerações Finais

O **FinansMe** é um projeto voltado ao controle financeiro pessoal, com foco em organização, rastreabilidade e facilidade de uso. Seu escopo inicial concentra-se na entrega de funcionalidades essenciais para cadastro, autenticação, gestão de dados financeiros e acompanhamento das movimentações do usuário.

A partir desse núcleo funcional, o sistema poderá evoluir futuramente para oferecer recursos analíticos mais avançados, automações e apoio inteligente por meio de integração com IA.

---
