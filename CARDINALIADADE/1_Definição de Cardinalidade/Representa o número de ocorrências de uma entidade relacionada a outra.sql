# Representação de Ocorrências entre Entidades

## Introdução
Quando trabalhamos com bancos de dados e modelagem de informações, é comum nos depararmos com o conceito de **ocorrências entre entidades**. Isso significa quantas vezes uma entidade está relacionada a outra dentro do sistema.

## Entendendo a Relação entre Entidades
Para compreender melhor, imagine que temos duas entidades:

1. **Cliente**
2. **Pedido**

Agora, vejamos como elas podem se relacionar:

- Um **cliente** pode fazer **vários pedidos**.

- Um **pedido** pertence a **um único cliente**.

Nesse caso, a **ocorrência** representa quantas vezes um registro de uma entidade (Cliente) está relacionado a registros de outra entidade (Pedido).

## Tipos de Relacionamento
Os relacionamentos entre entidades podem ser classificados em:

### 1. Um para Um (1:1)
Cada registro de uma entidade está relacionado a apenas um registro da outra entidade.
**Exemplo:** Um cliente tem um único cartão de crédito.

### 2. Um para Muitos (1:N)
Um registro de uma entidade pode estar relacionado a vários registros da outra entidade.
**Exemplo:** Um cliente pode fazer vários pedidos.

### 3. Muitos para Muitos (M:N)
Vários registros de uma entidade podem estar relacionados a vários registros da outra entidade.
**Exemplo:** Um pedido pode conter vários produtos, e um produto pode estar presente em vários pedidos.

## Conclusão
A representação das ocorrências entre entidades é fundamental para a modelagem de bancos de dados. Entender esses conceitos ajuda na criação de estruturas eficientes e bem organizadas.

Este documento pode ser salvo como um PDF para referência futura!

