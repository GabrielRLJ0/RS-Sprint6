Dado('que estou logado na minha conta') do
    @login_page = Pages::Login.new
    @login_page.load

    @login_page.preencher_formulario('teste@compass.com.br','123456&')

    @login_page.clicar_login
    
    sleep(5)
    current_url = page.current_url
    expect(current_url).to eq('https://front.serverest.dev/home')

    @home_page = Pages::Home.new
    @home_page.load
end
  
Quando('realizar uma busca por um produto existente') do
    product_for_search = Factory::Static.static_data('valid_product')
    @home_page.search_for(product_for_search)
    @home_page.search_for('Logitech')
end
  
Então('deverão ser retornados resultados na busca') do
    expect(@search_results_page).to have_products
    expect(@search_results_page.products.first.all_there?).to be_truthy

end

Quando('buscar pelo produto {string}') do |product|
    @home_page.search_for(product)
    @search_results_page = Pages::SearchResults.new
end