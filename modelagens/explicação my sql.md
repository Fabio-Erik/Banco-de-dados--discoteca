# Modelagem Logica
## 1. Criar Banco de Dados
Primeiro, é necessário criar um banco de dados no MySQL. Isso é feito com o comando CREATE DATABASE, seguido de um nome para o banco. Após criar o banco, você precisa selecioná-lo para começar a trabalhar nele usando o comando USE.

## 2. Criar Tabelas
Depois de criar e selecionar o banco de dados, você pode criar as tabelas. Cada tabela é definida com um nome e campos (colunas), sendo necessário especificar o tipo de dado de cada campo (como texto, número, data). Além disso, cada tabela tem uma chave primária, que é um campo que identifica de forma única cada registro.

Caso haja relacionamentos entre as tabelas, você também define chaves estrangeiras. Estas chaves são campos que referenciam a chave primária de outra tabela, estabelecendo as conexões entre as entidades.

## 3. Inserir Dados (INSERT)
Com as tabelas criadas, você pode adicionar dados nelas usando o comando INSERT INTO. Esse comando especifica quais tabelas e campos receberão os dados. O valor de cada campo é inserido de acordo com a ordem das colunas na tabela.

## 4. Consultar Dados (SELECT)
Para visualizar os dados inseridos nas tabelas, você usa o comando SELECT. Esse comando permite consultar todos ou apenas alguns campos da tabela, com a possibilidade de aplicar filtros, como buscar por um valor específico.

### Relacionamentos
- Chave Primária: Cada tabela tem uma chave primária, que é um campo único para identificar registros de maneira exclusiva.

- Chave Estrangeira: Quando há um relacionamento entre tabelas, você usa a chave estrangeira, que é um campo na tabela que referencia a chave primária de outra tabela. Isso ajuda a manter a integridade dos dados e os relacionamentos entre as tabelas.

Em resumo, o processo envolve criar um banco de dados, definir tabelas com campos e seus tipos de dados, criar relacionamentos entre as tabelas e, por fim, inserir e consultar os dados.


## Relação de Chaves:

- Chave Primária: É um campo único que identifica um registro na tabela (ex: id_cliente).

- Chave Estrangeira: É um campo que cria um relacionamento com a chave primária de outra tabela, garantindo integridade referencial (ex: id_cliente em uma tabela "Pedido" referenciando a tabela "Cliente").

## Sobre o INSERT:

    - O comando INSERT INTO é usado para adicionar dados a uma tabela, especificando os campos e valores.

    - Para cada campo, você deve fornecer um valor compatível com o tipo de dado do campo, como INTEGER, VARCHAR, DATE, etc.

## Exemplos de INSERT por tipo de dado:

- INTEGER: Usado para números inteiros.

    - Exemplo: INSERT INTO Cliente (id_cliente) VALUES (1);

- VARCHAR: Usado para texto com comprimento variável.

    - Exemplo: INSERT INTO Cliente (nome) VALUES ('João Silva');

- DATE: Usado para armazenar datas.

    - Exemplo: INSERT INTO Cliente (data_nascimento) VALUES ('1985-06-15');

- TIME: Usado para armazenar horas.

    - Exemplo: INSERT INTO Evento (hora_inicio) VALUES ('14:30:00');

Em resumo, o INSERT INTO adiciona dados às tabelas e os valores dos campos devem estar no formato adequado ao tipo de dado (inteiro, texto, data, etc.). A chave primária é única para cada registro e a chave estrangeira cria relacionamentos entre tabelas.



[![Voltar](../imagens/DER/icons8-voltar-20.png)](../../README.md)
[Voltar](../../README.md)

