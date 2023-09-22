require_relative '../sections/header'

module Pages
    class Home < SitePrism::Page
        set_url 'home'
        element :loader, 'body > .loader'
        element :product_detail, 'a.card-link'
        element :btn_search, 'button[data-testid="botaoPesquisar"]'
        element :input_search, 'input[data-testid="pesquisar"]'
        element :btn_purchase_list, 'a[data-testid="lista-de-compras"]' 
        element :btn_logout, 'button[data-testid="logout"]'
    
        def click_and_input_text_for_search(text)
            input_search.click
            input_search.set text
            btn_search.click
        end
        
        def search_for(product)
            self.click_and_input_text_for_search(product)
            self.input_search.click
            self.btn_search.click
        end

    end
end