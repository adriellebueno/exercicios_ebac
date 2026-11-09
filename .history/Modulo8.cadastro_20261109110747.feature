            # language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que para concluir o cadastro os dados "Nome", "Sobrenome", "País", "Endereço", "Cidade", "CEP", "Telefone" e "Endereço de e-mail" são obrigatórios

            Esquema do Cenário: Compra finalizada
            Quando eu inserir <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone> e <endereco_de_email>
            E clicar em finalizar compra
            Então deve apresentar a mensagem de sucesso "Compra finalizada"

            Exemplos:
            | nome   | sobrenome | pais     | endereco           | cidade     | cep          | telefone         | endereco_de_email       |
            | "Ana"  | "Bueno"   | "Brasil" | "R. Jose Carlos,1" | "Curitiba" | "82.640-333" | "41-999999-5555" | "anabueno@ebac.com.br"  |
            | "Lana" | "Breno"   | "Brasil" | "R. Juiz Ferro,2"  | "Curitiba" | "82.640-000" | "41-998889-5555" | "lanabreno@ebac.com.br" |

Cenário: E-mail inválido
Quando eu digitar o e-mail "xxjsjj@ebac.com.br"
E clicar em finalizar compra
Então deve apresentar a mensagem de erro "favor inserir um e-mail válido"

Cenário: Dados incompletos
Quando eu inserir apenas o nome "Ana"
E clicar em finalizar compra
Então deve apresentar a mensagem de erro "Favor preencher todos os campos obrigatórios"