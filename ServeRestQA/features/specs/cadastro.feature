#language: pt

@regression
@cadastro
Funcionalidade: Cadastro
    SENDO um usuário não cadastrado do ServeRest
    QUERO criar minha conta
    PARA utilizar o site

Contexto: Estar na pagina de cadastro
    Dado que esteja na pagina de cadastro

@cadastradop
Cenário: Cadastro padrão
    Quando inserir meus dados nos campos de cadastro
    E clicar no botão de cadastrar
    Então deverá redirecionar do cadastro para a home do site
