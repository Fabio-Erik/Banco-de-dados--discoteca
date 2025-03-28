# Modelagem 
A modelagem lógica detalha como os dados serão estruturados em um banco de dados relacional, definindo tabelas, colunas, tipos de dados e as chaves para garantir a integridade e o relacionamento entre os dados.

## Relacionamentos na Modelagem Lógica:

    - Relacionamentos 1:1 (um para um):

        - Em tabelas, isso é feito incluindo a chave primária de uma tabela como chave estrangeira na outra.

    - Relacionamentos 1:N (um para muitos):

        - A tabela do "lado muitos" tem uma chave estrangeira apontando para a chave primária da tabela do "lado um".

    - Relacionamentos N:M (muitos para muitos):

        - É criada uma tabela intermediária (de junção), que contém as chaves primárias das duas tabelas envolvidas como chaves estrangeiras.

## Atribuições de Chaves:
    - Chave Primária (Primary Key):

        - É um campo ou conjunto de campos que identifica unicamente cada registro em uma tabela.

        - Exemplo: em uma tabela "Cliente", o campo id_cliente seria a chave primária.

    - Chave Estrangeira (Foreign Key):

        - É um campo que referencia a chave primária de outra tabela, estabelecendo o relacionamento entre as duas.

        -  Exemplo: na tabela "Pedido", o campo id_cliente pode ser uma chave estrangeira que referencia a chave primária da tabela "Cliente".

## Tipos de Dados Comuns:
    - VARCHAR: Usado para armazenar texto de comprimento variável.

        - Exemplo: nome_cliente VARCHAR(100) (nome com até 100 caracteres).

    - INTEGER: Usado para armazenar números inteiros.

        - Exemplo: id_cliente INTEGER (um número inteiro para identificar um cliente).

    - DATE: Usado para armazenar datas.

        - Exemplo: data_nascimento DATE (data de nascimento de um cliente).

    - DECIMAL/NUMERIC: Usado para armazenar números com ponto flutuante com precisão definida.

        - Exemplo: preco DECIMAL(10,2) (preço com até 10 dígitos, sendo 2 após a vírgula).

## Exemplo de Modelagem Lógica:
    - Tabela Cliente:

        - id_cliente INTEGER PRIMARY KEY

        - nome_cliente VARCHAR(100)

        - data_nascimento DATE

    - Tabela Pedido:

        - id_pedido INTEGER PRIMARY KEY

        - data_pedido DATE

        - id_cliente INTEGER REFERENCES Cliente(id_cliente)

Neste exemplo:

    - id_cliente é a chave primária da tabela Cliente e chave estrangeira na tabela Pedido, criando um relacionamento 1:N entre Cliente e Pedido.

Resumo:
Na modelagem lógica, definimos como os dados serão organizados em tabelas e como elas se relacionam por meio de chaves primárias e estrangeiras. Além disso, atribuiremos tipos de dados adequados, como VARCHAR para textos, INTEGER para números inteiros e DATE para datas.

## Modelo Logico (DER) - 1.1

![Diagrama ER](../imagens/modelo%20logico%201.1.png)


[![Voltar](../imagens/DER/icons8-voltar-20.png)](../README.md)
[Voltar](../README.md)
