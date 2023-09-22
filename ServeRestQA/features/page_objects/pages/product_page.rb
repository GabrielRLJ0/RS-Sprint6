require_relative '../sections/header'

module Pages
    class ProductPage < SitePrism::Page
        set_url '/'

        section :header, Sections::Header, 'header'
        element :btn_add_list, 'button[data-testid="adicionarNaLista"]'
        element :btn_back, 'a[data-testid="voltarHome"]'


    end
end