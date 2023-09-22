Dado('que esteja na pagina de login') do
    @login_page = Pages::Login.new
    @login_page.load
end

Quando('inserir meus dados nos campos de login') do
    @login_page.preencher_formulario('teste@compass.com.br','123456&')
end

Quando('clicar no botão de entrar') do
    @login_page.clicar_login
end

Então('deverá redirecionar do login para a home do site') do
    sleep(5)
    current_url = page.current_url
    expect(current_url).to eq('https://front.serverest.dev/home')
end
  