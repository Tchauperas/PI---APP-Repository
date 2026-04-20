# Requisitos do sistema - FinansMe

## Regras de Negócio (RN)

### RN01 — Unicidade do e-mail

Não deve ser permitido cadastrar mais de um usuário com o mesmo e-mail.

### RN02 — Maioridade para cadastro

Para criar uma conta no sistema, o usuário deve possuir mais de 18 anos.

### RN03 — Bloqueio por tentativas inválidas

Após 5 tentativas inválidas de login, a conta deve ser temporariamente bloqueada.

### RN04 — Inativação por tempo sem uso

Usuários inativos por mais de 90 dias devem ser marcados como inativos.

### RN05 — Relacionamento de conta com usuário

Cada conta financeira deve pertencer obrigatoriamente a um único usuário.

### RN06 — Relacionamento de plano de conta com usuário

Cada plano de conta deve estar vinculado obrigatoriamente a um único usuário.

### RN07 — Relacionamento de transator com usuário

Cada transator deve estar vinculado obrigatoriamente a um único usuário.

### RN08 — Obrigatoriedade de dados no lançamento

Toda movimentação financeira deve possuir usuário, conta, plano de conta, tipo de movimento, valor e descrição informados.

### RN09 — Coerência entre situação e pagamento

Uma movimentação só pode ser marcada como quitada quando possuir data de pagamento registrada.

### RN10 — Impacto no saldo da conta

Movimentações do tipo receita devem aumentar o valor total da conta, enquanto movimentações do tipo despesa devem reduzir o valor total da conta.
