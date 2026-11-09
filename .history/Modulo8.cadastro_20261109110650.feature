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
