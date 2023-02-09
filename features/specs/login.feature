#language: pt

Funcionalidade: Login

    Sendo um usuário cadastrado
    Quero acessar o sistema da Rocklov
    Para que eu possa anunciar meus equipamentos musicais

    @login
    Cenario: Login do usuário

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "lais@gmail.com" e "123456"
        Então sou redirecionado para o Dashboard

    Esquema do Cenário: Tentar Logar

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "<email_input>" e "<senha_input>"
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | email_input       | senha_input | mensagem_output                  |
            | lais@gmail.com    | 789456      | Usuário e/ou senha inválidos.    |
            | lais@404.com      | 123456      | Usuário e/ou senha inválidos.    |
            | lais432$yahoo.com | 789456      | Oops. Informe um email válido!   |
            |                   | 123456      | Oops. Informe um email válido!   |
            | lais@gmail.com    |             | Oops. Informe sua senha secreta! |
