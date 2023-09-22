#language: pt

@regression
@pdp
Funcionalidade: Página de detalhes do Produto
    SENDO um usuário do ServeRest
    QUERO poder personalizar os produtos que irei comprar na página do produto
    PARA ter uma melhor experiência de compra

Contexto: Estar na página de detalhes de um produto
    Dado que esteja na home
    Quando realizar uma busca por um produto existente
    E acessar os detalhes do produto

    @addtolist
    Cenário: Adicionar produto na lista
    Quando selecionar para adicionar um produto á lista
    Então o produto deverá ser adicionado a lista de compras    