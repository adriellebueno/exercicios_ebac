# language: pt

Funcionalidade: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero me autenticar
  Para visualizar meus pedidos

  Contexto:
    Dado que eu acesse a plataforma da EBAC-SHOP para visualizar meus pedidos

  Cenário: Autenticação válida
    Quando eu digitar o usuário "ana@ebac.com.br"
    E a senha "senha@123"
    Então deve exibir a mensagem "Pedidos de Ana"

  Esquema do Cenário: Usuário inexistente
    Quando eu digitar o usuário <usuario>
    E a senha <senha>
    Então deve exibir a mensagem de alerta "usuário ou senha inválido"

    Exemplos:
      | usuario              | senha      |
      | "carlos@ebac.com.br" | "zzz"      |
      | "lll@ebac.com.br"    | "senha@123" |

  Esquema do Cenário: Autenticar múltiplos usuários
    Quando eu digitar o usuário <usuario>
    E a senha <senha>
    Então deve exibir a mensagem <mensagem>

    Exemplos:
      | usuario               | senha      | mensagem           |
      | "mariaao@ebac.com.br" | "teste123" | "Pedidos de Maria" |
      | "ana@ebac.com.br"     | "teste333" | "Pedidos de Ana"   |
      | "paulo@ebac.com.br"   | "teste353" | "Pedidos de Paulo" |