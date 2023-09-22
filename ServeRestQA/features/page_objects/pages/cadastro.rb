require_relative '../sections/header'

module Pages
    class Cadastro < SitePrism::Page
        set_url 'cadastrarusuarios'
        element :input_email, 'input[data-testid="email"]'
        element :input_password, 'input[data-testid="password"]'
        element :input_name, 'input[data-testid="nome"]'
        element :btn_register, 'button[data-testid="cadastrar"]'

        def preencher_formulario(email, senha, nome)
            input_email.set(email)
            input_password.set(senha)
            input_name.set(nome)
        end
      
        def clicar_em_cadastrar
            btn_register.click
        end

    end
end