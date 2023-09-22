require_relative '../sections/header'

module Pages
    class Login < SitePrism::Page
        set_url 'login'
        element :input_email, 'input[data-testid="email"]'
        element :input_password, 'input[data-testid="senha"]'
        element :btn_login, 'button[data-testid="entrar"]'

        def preencher_formulario(email, senha)
            input_email.set(email)
            input_password.set(senha)
        end

        def clicar_login
            btn_login.click
        end
    end
end