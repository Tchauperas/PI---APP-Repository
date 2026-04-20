# Documentação de Casos de Uso — FinansMe

## 1. Identificação do Projeto

**Nome do sistema:** FinansMe  
**Plataforma:** Mobile  
**Front-end:** Flutter com Dart  
**Back-end:** Node.js com Fastify e TypeScript  
**Banco de dados:** PostgreSQL em ambiente serverless  
**Objetivo do sistema:** Permitir ao usuário registrar ganhos e gastos, organizar contas, categorias e transações, e acompanhar sua vida financeira com mais controle.

---

## 2. Objetivo deste documento

Este documento descreve os principais casos de uso do sistema **FinansMe**, apresentando os atores envolvidos, objetivos, pré-condições, pós-condições, fluxos principais e fluxos alternativos.

---

## 3. Atores do Sistema

### 3.1 Usuário

Pessoa que utiliza o aplicativo para gerenciar sua vida financeira.

### 3.2 API de Inteligência Artificial

Serviço externo responsável por processar prompts e retornar respostas conforme o contexto e necessidade do sistema.

### 3.3 Sistema

O próprio FinansMe, responsável por validar dados, processar regras de negócio e persistir informações.

---

## 4. Casos de Uso

---

## UC01 — Realizar Login

**Ator Principal:** Usuário

**Objetivo:** Permitir que o usuário acesse o sistema.

**Pré-condições:**

- O usuário deve possuir cadastro ativo.

**Pós-condições:**

- Sessão iniciada com sucesso.
- Usuário redirecionado para a tela inicial.

**Fluxo Principal:**

1. O usuário acessa a tela de login.
2. O usuário informa e-mail e senha.
3. O sistema valida as credenciais.
4. O sistema autentica o usuário.
5. O sistema redireciona o usuário para a tela inicial.

**Fluxos Alternativos:**

- **A1 — Senha incorreta**
  1. O sistema detecta que a senha informada é inválida.
  2. O sistema exibe mensagem de erro.
- **A2 — Conta bloqueada ou inativa**
  1. O sistema identifica que a conta não está disponível para acesso.
  2. O sistema impede o login.
  3. O sistema orienta o usuário a recuperar ou regularizar o acesso.

---

## UC02 — Recuperar Senha

**Ator Principal:** Usuário

**Objetivo:** Permitir que o usuário redefina sua senha em caso de esquecimento.

**Pré-condições:**

- O usuário deve possuir uma conta registrada.

**Pós-condições:**

- Link ou instrução de redefinição enviado ao e-mail do usuário.

**Fluxo Principal:**

1. O usuário seleciona a opção de recuperação de senha.
2. O sistema solicita o e-mail cadastrado.
3. O usuário informa o e-mail.
4. O sistema valida a existência da conta.
5. O sistema envia o link de redefinição de senha.

**Fluxos Alternativos:**

- **A1 — E-mail não encontrado**
  1. O sistema verifica que o e-mail informado não está cadastrado.
  2. O sistema exibe mensagem informando que não existe conta vinculada ao e-mail.

---

## UC03 — Atualizar Perfil

**Ator Principal:** Usuário Autenticado

**Objetivo:** Permitir que o usuário atualize seus dados pessoais.

**Pré-condições:**

- O usuário deve estar autenticado.

**Pós-condições:**

- Informações atualizadas salvas no sistema.

**Fluxo Principal:**

1. O usuário acessa a área de perfil.
2. O sistema exibe os dados atuais.
3. O usuário altera informações como nome, foto ou telefone.
4. O usuário confirma as alterações.
5. O sistema valida os dados.
6. O sistema salva as alterações.
7. O sistema exibe mensagem de confirmação.

**Fluxos Alternativos:**

- **A1 — Dados inválidos**
  1. O sistema identifica inconsistências nos dados informados.
  2. O sistema rejeita a atualização.
  3. O sistema solicita correção.

---

## UC04 — Realizar Cadastro

**Ator Principal:** Usuário

**Objetivo:** Permitir que uma nova conta seja criada no sistema.

**Pré-condições:**

- O usuário não deve possuir conta cadastrada com o mesmo e-mail.

**Pós-condições:**

- Conta registrada com sucesso.
- Usuário apto a realizar login.

**Fluxo Principal:**

1. O usuário acessa a tela de cadastro.
2. O sistema solicita os dados necessários.
3. O usuário informa nome, e-mail e senha.
4. O sistema valida os dados.
5. O sistema registra a nova conta.
6. O sistema informa que o cadastro foi realizado com sucesso.

**Fluxos Alternativos:**

- **A1 — E-mail já cadastrado**
  1. O sistema verifica que já existe uma conta com o e-mail informado.
  2. O sistema exibe mensagem de erro.
- **A2 — Dados obrigatórios não preenchidos**
  1. O sistema identifica campos obrigatórios ausentes.
  2. O sistema solicita o preenchimento correto.

---

## UC05 — Cadastrar Conta Financeira

**Ator Principal:** Usuário Autenticado

**Objetivo:** Permitir o cadastro de uma conta financeira, como banco ou carteira.

**Pré-condições:**

- O usuário deve estar autenticado.

**Pós-condições:**

- Conta financeira cadastrada no sistema.

**Fluxo Principal:**

1. O usuário acessa a funcionalidade de contas.
2. O usuário seleciona a opção de cadastrar nova conta.
3. O sistema solicita a descrição e o valor total inicial.
4. O usuário informa os dados.
5. O sistema valida as informações.
6. O sistema salva a conta financeira.

**Fluxos Alternativos:**

- **A1 — Dados inválidos**
  1. O sistema identifica erro nos dados informados.
  2. O sistema exibe mensagem de validação.

---

## UC06 — Cadastrar Plano de Conta

**Ator Principal:** Usuário Autenticado

**Objetivo:** Permitir o cadastro de categorias para organização de receitas e despesas.

**Pré-condições:**

- O usuário deve estar autenticado.

**Pós-condições:**

- Plano de conta cadastrado no sistema.

**Fluxo Principal:**

1. O usuário acessa a funcionalidade de plano de contas.
2. O usuário seleciona a opção de novo cadastro.
3. O sistema solicita a descrição do plano.
4. O usuário informa os dados.
5. O sistema valida e salva o plano de conta.

**Fluxos Alternativos:**

- **A1 — Descrição inválida ou vazia**
  1. O sistema rejeita o cadastro.
  2. O sistema solicita correção.

---

## UC07 — Cadastrar Transator

**Ator Principal:** Usuário Autenticado

**Objetivo:** Permitir o cadastro de transatores relacionados aos gastos ou ganhos.

**Pré-condições:**

- O usuário deve estar autenticado.

**Pós-condições:**

- Transator cadastrado no sistema.

**Fluxo Principal:**

1. O usuário acessa a funcionalidade de transatores.
2. O usuário seleciona a opção de novo cadastro.
3. O sistema solicita a descrição do transator.
4. O usuário informa os dados.
5. O sistema valida e salva o cadastro.

**Fluxos Alternativos:**

- **A1 — Dados inválidos**
  1. O sistema informa erro de preenchimento.
  2. O usuário deve corrigir os dados.

---

## UC08 — Registrar Movimentação Financeira

**Ator Principal:** Usuário Autenticado

**Objetivo:** Permitir o registro de receitas e despesas no sistema.

**Pré-condições:**

- O usuário deve estar autenticado.
- O usuário deve possuir ao menos uma conta cadastrada.
- O usuário deve possuir ao menos um plano de conta cadastrado.
- O usuário deve possuir ao menos um transator cadastrado.

**Pós-condições:**

- Movimentação financeira registrada no sistema.
- Informações disponíveis para acompanhamento financeiro.

**Fluxo Principal:**

1. O usuário acessa a funcionalidade de movimentações financeiras.
2. O usuário seleciona a opção de novo lançamento.
3. O sistema solicita os dados da movimentação:
   - Conta
   - Plano de conta
   - Transator
   - Situação financeira
   - Tipo de movimento
   - Forma de pagamento
   - Data de movimentação
   - Data de vencimento
   - Data de pagamento
   - Número do documento
   - Valor
   - Razão ou descrição
4. O usuário informa os dados.
5. O sistema valida as informações.
6. O sistema registra a movimentação.
7. O sistema exibe mensagem de sucesso.

**Fluxos Alternativos:**

- **A1 — Campos obrigatórios não preenchidos**
  1. O sistema identifica ausência de dados obrigatórios.
  2. O sistema impede o cadastro e informa os campos pendentes.
- **A2 — Valor inválido**
  1. O sistema detecta valor inconsistente.
  2. O sistema solicita correção.
- **A3 — Conta, plano ou transator inexistente**
  1. O sistema informa que os cadastros complementares são obrigatórios.
  2. O usuário deve realizar os cadastros antes de prosseguir.

---

## UC09 — Consultar Movimentações Financeiras

**Ator Principal:** Usuário Autenticado

**Objetivo:** Permitir a visualização das movimentações financeiras registradas.

**Pré-condições:**

- O usuário deve estar autenticado.

**Pós-condições:**

- Lista de movimentações exibida ao usuário.

**Fluxo Principal:**

1. O usuário acessa a funcionalidade de movimentações.
2. O sistema recupera os lançamentos vinculados ao usuário.
3. O sistema exibe a lista de receitas e despesas cadastradas.

**Fluxos Alternativos:**

- **A1 — Nenhuma movimentação encontrada**
  1. O sistema informa que não existem registros cadastrados.

---

## UC10 — Atualizar Movimentação Financeira

**Ator Principal:** Usuário Autenticado

**Objetivo:** Permitir a edição de uma movimentação financeira já registrada.

**Pré-condições:**

- O usuário deve estar autenticado.
- A movimentação deve existir e pertencer ao usuário.

**Pós-condições:**

- Movimentação atualizada no sistema.

**Fluxo Principal:**

1. O usuário acessa a lista de movimentações.
2. O usuário seleciona um lançamento existente.
3. O sistema exibe os dados atuais.
4. O usuário altera as informações desejadas.
5. O sistema valida os novos dados.
6. O sistema salva as alterações.
7. O sistema exibe mensagem de confirmação.

**Fluxos Alternativos:**

- **A1 — Registro não encontrado**
  1. O sistema informa que a movimentação não existe.
- **A2 — Dados inválidos**
  1. O sistema rejeita a atualização.
  2. O sistema solicita correção.

---

## UC11 — Excluir Movimentação Financeira

**Ator Principal:** Usuário Autenticado

**Objetivo:** Permitir a remoção de uma movimentação financeira.

**Pré-condições:**

- O usuário deve estar autenticado.
- A movimentação deve existir e pertencer ao usuário.

**Pós-condições:**

- Movimentação removida do sistema.

**Fluxo Principal:**

1. O usuário acessa a lista de movimentações.
2. O usuário seleciona a movimentação desejada.
3. O usuário solicita a exclusão.
4. O sistema solicita confirmação.
5. O usuário confirma a exclusão.
6. O sistema remove o registro.
7. O sistema exibe mensagem de sucesso.

**Fluxos Alternativos:**

- **A1 — Exclusão cancelada**

  1. O usuário cancela a operação.
  2. O sistema mantém o registro sem alterações.

---

## UC12 — Obter Resposta da API de Inteligência Artificial

**Ator Principal:** Usuário Autenticado  
**Ator Secundário:** API de Inteligência Artificial

**Objetivo:** Permitir ao sistema enviar prompts para uma API de IA e receber respostas conforme o contexto da aplicação.

**Pré-condições:**

- O usuário deve estar autenticado.
- O sistema deve possuir integração ativa com a API de IA.

**Pós-condições:**

- Resposta da IA retornada ao sistema e apresentada ao usuário, quando aplicável.

**Fluxo Principal:**

1. O usuário executa uma funcionalidade que depende de inteligência artificial.
2. O sistema monta o prompt com base no contexto necessário.
3. O sistema envia a requisição para a API de IA.
4. A API processa o prompt.
5. A API retorna uma resposta.
6. O sistema interpreta a resposta.
7. O sistema apresenta o resultado ao usuário.

**Fluxos Alternativos:**

- **A1 — Falha na comunicação com a API**

  1. O sistema identifica erro na requisição.
  2. O sistema informa indisponibilidade temporária.
- **A2 — Resposta inválida**
  1. O sistema detecta inconsistência no retorno.
  2. O sistema trata o erro e informa falha no processamento.

---

## 5. Relacionamento entre Casos de Uso

### Fluxo inicial esperado do sistema

1. O usuário realiza o cadastro.
2. O usuário realiza login.
3. O usuário faz os cadastros complementares:
   - Conta financeira
   - Plano de conta
   - Transator
4. O usuário registra sua primeira movimentação financeira.

---

## 6. Regras de Negócio Relacionadas

- Cada usuário deve acessar apenas seus próprios dados.
- Uma movimentação financeira deve estar vinculada a um usuário.
- Uma movimentação financeira deve estar associada a uma conta.
- Uma movimentação financeira deve estar associada a um plano de conta.
- Uma movimentação financeira deve estar associada a um transator.
- O sistema deve distinguir lançamentos entre receita e despesa.
- O sistema deve permitir identificar a situação financeira do lançamento.
- O sistema deve permitir registrar a forma de pagamento da movimentação.

---

## 7. Observações Finais

Este documento pode ser expandido futuramente com:

- Diagramas de caso de uso
- Regras de negócio detalhadas
- Requisitos funcionais e não funcionais
- Protótipos de tela
- Matriz de rastreabilidade
