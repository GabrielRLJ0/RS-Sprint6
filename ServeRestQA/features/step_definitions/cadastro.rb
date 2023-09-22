Dado('que esteja na pagina de cadastro') do
    @register_page = Pages::Cadastro.new
    @register_page.load
end

Quando('inserir meus dados nos campos de cadastro') do
    @register_page.preencher_formulario('teste@compass.com.br','123456&','john')
end

Quando('clicar no botão de cadastrar') do
    @register_page.clicar_em_cadastrar
end

Então('deverá redirecionar do cadastro para a home do site') do
    sleep(5)
    current_url = page.current_url
    expect(current_url).to eq('https://front.serverest.dev/home')
end
  