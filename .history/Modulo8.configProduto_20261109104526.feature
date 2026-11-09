            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Cenário: Dados obrigatórios
            Dado que estou na página do produto
            Quando eu selecionar a cor "laranja" e o tamanho "M"
            E clicar em comprar
            Então deve apresentar a mensagem "quantidade obrigatória"

            Cenário: Quantidade limite
            Dado que o limite por compra é de 10 unidades do item
            Quando eu inserir a quantidade "11"
            E clicar em comprar
            Então deve apresentar o alerta "excedeu limite de compra"

            Cenário: Limpar dados do produto
            Dado que estou com a cor "laranja" e o tamanho "M" preenchidos
            Quando eu clicar em "limpar"
            Então deve exibir a mensagem "nova seleção"
            E os campos de cor e tamanho devem ficar em branco




           



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
