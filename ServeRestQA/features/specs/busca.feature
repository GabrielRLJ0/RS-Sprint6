#language: pt

@regression
@search
Funcionalidade: Busca
    COMO um usuário padrão do site ServeRest
    QUERO poder buscar por diferentes produtos
    PARA poder personalizar minhas compras

    Contexto: Estar logado na conta
        Dado que estou logado na minha conta

    @search_for_product
    Cenário: Buscar por um produto existente
        Quando realizar uma busca por um produto existente
        Então deverão ser retornados resultados na busca

    @search_for_different_product
    Esquema do Cenário: Buscar por produtos existentes
        Quando buscar pelo produto "<produto>"
        Então deverão ser retornados resultados na busca

        Exemplos:
        |    produto    |
        | Samsung       |
        | Logitech      |
