

#    Regra de negocio / requisitos

1. Objetivo: A discoteca deseja catalogar e gerenciar sua coleção de discos, com informações detalhadas sobre os discos, suas músicas, artistas e gravadoras. O sistema deve possibilitar o registro de discos, artistas e músicas, associando corretamente cada um conforme as regras de negócios descritas.

2. Requisitos Funcionais:

    - Cadastro de Discos:

        - Cada disco deve possuir um ID, título, duração total, ano de lançamento, artista (que pode ser uma banda, dueto ou artista solo), e a gravadora que produziu e publicou o disco.

        - Cada disco deve ter um conjunto de músicas associadas, com o nome e a duração de cada música.

        - As músicas devem ser únicas e associadas a apenas um disco. Portanto, uma música não pode aparecer em mais de um disco.

         - Nenhum disco pode ser cadastrado sem ter ao menos uma música associada.

        - Um disco pode ter apenas um artista associado a ele, e esse artista pode ser um artista solo, banda ou dueto.

    -  Cadastro de Artistas:

            - Artistas solo devem ser registrados com seu nome e data de nascimento.

            - Bandas, duetos e outros tipos de grupos devem ser registrados apenas com o nome do grupo.

            - Deve ser possível registrar artistas sem que eles tenham discos associados a eles.

    - Cadastro de Gravadoras:

        - As gravadoras podem ser cadastradas sem que haja discos associados a elas.

        - Cada disco deve ter uma gravadora associada, que é responsável pela produção e publicação do disco.

    - Cadastro de Músicas:

        - As músicas devem ter um nome e uma duração associada.

        - Cada música deve ser associada a apenas um disco, não podendo aparecer em discos diferentes.

3. Regras de Integridade:

   -  Um disco deve ter pelo menos uma música.

   -  Cada música deve ser associada a apenas um disco.

    - A duração total do disco é uma soma da duração de todas as músicas associadas a ele.

    - Artistas solos devem possuir uma data de nascimento, enquanto grupos como bandas ou duetos não precisam dessa informação.

    - Cada disco pode ter apenas um artista associado.

    - Gravadoras podem existir sem discos, mas cada disco precisa de uma gravadora associada.

4. Modelo de Entidade-Relacionamento (MER):

- Entidades:

    - Disco: ID, Título, Duração, Ano de Lançamento, Artista, Gravadora.

    - Música: Nome, Duração.

    - Artista: Nome, Data de Nascimento (se for solo).

    - Gravadora: Nome.

- Relacionamentos:

    - Disco – Música: Um disco tem várias músicas. Relacionamento de 1 para N (1 disco para várias músicas).

    - Disco – Artista: Um disco tem um único artista associado. Relacionamento de 1 para N (1 artista para vários discos).

    - Disco – Gravadora: Um disco é publicado por uma única gravadora. Relacionamento de 1 para N (1 gravadora para vários discos).

    - Música – Disco: Uma música pertence a um único disco. Relacionamento de N para 1 (várias músicas podem pertencer a um disco).

5. Modelo Entidade-Relacionamento (DER) - Nível Conceitual e Lógico:

    5.1. Nível Conceitual (MER):
    Entidade Disco:

    - Atributos: ID, Título, Duração, Ano de Lançamento.

    - Relacionamentos:

        - Tem um Artista (1 para 1).

        - Tem várias Músicas (1 para N).

        - Produzido pela Gravadora (1 para N).

- Entidade Música:

    - Atributos: Nome, Duração.

    - Relacionamentos:

        - Pertence a um Disco (N para 1).

- Entidade Artista:

    - Atributos: Nome, Data de Nascimento (apenas se for solo).

    - Relacionamentos:

        - Associa-se a um ou mais Discos (1 para N).

- Entidade Gravadora:

    - Atributos: Nome.

    - Relacionamentos:

        - Produz Discos (1 para N).

5.2. Nível Lógico:
- Tabela Disco:

    - Campos: id_disco, titulo, duracao, ano_lancamento, id_artista, id_gravadora.

- Tabela Música:

    - Campos: id_musica, nome, duracao, id_disco.

- Tabela Artista:

    - Campos: id_artista, nome, data_nascimento (opcional).

- Tabela Gravadora:

    - Campos: id_gravadora, nome.

6. Considerações Finais:

    - A discoteca deve garantir que os dados inseridos no sistema respeitem as integridades e os relacionamentos descritos.

    - A discoteca pode adicionar novas gravadoras ou artistas sem a necessidade de associá-los imediatamente a discos.

    - O sistema deve permitir consultas detalhadas para localizar discos, músicas, artistas e gravadoras, respeitando as regras de integridade.

[![Voltar](../imagens/DER/icons8-voltar-20.png)](../../README.md)
[Voltar](../../README.md)