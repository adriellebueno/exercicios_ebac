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




           



            