#language: pt

@regression
@login
Funcionalidade: Login
    SENDO um usuário cadastrado do ServeRest
    QUERO entrar na minha conta
    PARA utilizar o site

Contexto: Estar na pagina de login
    Dado que esteja na pagina de login

@loginp
Cenário: Login padrão
    Quando inserir meus dados nos campos de login
    E clicar no botão de entrar
    Então deverá redirecionar do login para a home do site
