#language: pt

@regression
@pdp
Funcionalidade: Página do Produto
    SENDO um usuário do ServeRest
    QUERO poder personalizar os produtos que irei comprar na página do produto
    PARA ter uma melhor experiência de compra

Contexto: Estar na página de um produto
    Dado que esteja na home
    Quando realizar uma busca por um produto existente
    E acessar os detalhes do produto