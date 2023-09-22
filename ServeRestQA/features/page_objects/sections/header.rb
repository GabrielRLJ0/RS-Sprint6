module Sections
    class Header < SitePrism::Section
        element :btn_search, 'button[data-testid="botaoPesquisar"]'
        element :input_search, 'input[data-testid="pesquisar"]'
        element :btn_purchase_list, 'a[data-testid="lista-de-compras"]' 
        element :btn_logout, 'button[data-testid="logout"]'
    
        def click_and_input_text_for_search(text)
            input_search.click
            input_search.set text
            btn_search.click
        end

    end
end