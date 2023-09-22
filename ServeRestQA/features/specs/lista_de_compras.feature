#language: pt

@regression
@listacompras
Funcionalidade: Lista de Compras
    SENDO um usuário do ServeRest
    QUERO poder utilizar minha lista de compras
    PARA ter uma melhor experiência de compra


@increase_product_quantity
Cenário: Aumentar a quantidade do produto na lista
    Quando alterar a quantidade do produto
    Então deverá alterar a quantidade exibida na lista