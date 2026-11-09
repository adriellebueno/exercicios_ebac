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
