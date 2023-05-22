            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Cenario: Dados obrigatórios
            Dado que para incluir o produto no carrinho
            Quando eu selecionar a cor "laranja" e tamanho "M"
            E ir em comprar
            Então deve apresentar a mensagem de "quantidade obrigatória"

            Cenario: Quantidade limite
            Dado que o limite por a quantidade do item é 10
            Quando inserir "11"
            E ir em comprar
            Então deve apresentar alerta de "excedeu limite de compra"

            Esquema do Cenario: Limpar dados do produto
            Dado que eu deseje limpar o filtro
            Quando tiver os dados <cor> e <tamanho> preenchidos
            E clicar em <acao>
            Então deve exibir a <mensagem> de sucesso

            | cor       | tamanho | acao     | mensagem       |
            | "laranja" | "M"     | "limpar" | "nova seleção" |
            | "laranja" | "G"     | "limpar" | "nova seleção" |
            | "laranja" | "GG"    | "limpar" | "nova seleção" |




            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero me autenticar
            Para visualizar meus pedidos

            Dado que eu acesse a plataforma do EBC-SHOP para visualizar meus pedidos precise me autenticar

            Cenário: Autenticação válida
            Quando eu digitar o usuário "ana@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir a mensagem "Pedidos de Ana"

            Cenário: Usuário inexisteste
            Quando eu digitar o usuário "carlos@rbac.com.br"
            E a senha "zzz"
            Então deve exibir uma mensagem de alerta "usuário ou senha inválido"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "lll@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta "usuário inexistente"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario               | senha      | mensagem           |
            | "mariaao@ebac.com.br" | "teste123" | "Pedidos de Maria" |
            | "ana@ebac.com.br"     | "teste333" | "Pedidos de Ana"   |
            | "paulo@ebac.com.br"   | "teste353" | "Pedidos de Paulo" |




            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Dado que para concluir o cadastro os dados "Nome" "Sobrenome" "país" "endereço" "cidade" "cep" "telefone" "endereço de email" são obrigatórios

            Esquema do Cenario: Compra finalizada
            Quando eu inserir <nome> <sobrenome> <pais> <endereco> <cidade> <cep> <telefone> <endereco de email>
            E ir em finalizar compra
            Então deve apresentar a mensagem de sucesso "Compra finalizada"

            Cenario: E-mail inválido
            Quando eu digitar o usuário "xxjsjj@rbac.com.br"
            E ir em finalizar compra
            Então deve apresentar a mensagem de erro "favor inserir um e-mail válido"

            Cenario: Dados incompletos
            Quando eu inseir apenas o <nome>
            E ir em finalizar compra
            Então deve apresentar a mensagem de erro "Favor preencher todos os campos obrigatórios"

            | Nome   | Sobrenome | pais     | endereco           | cidade     | cep          | telefone         | endereco de email       |
            | "Ana"  | "Bueno"   | "Brasil" | "R. Jose Carlos,1" | "Curitiba" | "82.640-333" | "41-999999-5555" | "anabueno@ebac.com.br"  |
            | "Lana" | "Breno"   | "Brasil" | "R. Juiz Ferro,2"  | "Curitiba" | "82.640-000" | "41-998889-5555" | "lanabreno@ebac.com.br" |
