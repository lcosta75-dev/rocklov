#language: pt

Funcionalidade: Cadastro
    Sendo um músico que possui equipamentos musicais
    Quero fazer o meu cadastro no Rocklov
    Para que eu possa disponibilizá-los para locação

    @cadastro
    Cenário: Fazer cadastro

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulário de cadastro
            | nome | email          | senha  |
            | Lais | lais@gmail.com | 123456 |
        Então sou redirecionado para o Dashboard

    Esquema do Cenário: Tentativa de Cadastro

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulário de cadastro
            | nome         | email         | senha         |
            | <nome_input> | <email_input> | <senha_input> |
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | nome_input | email_input    | senha_input | mensagem_output                  |
            |            | lais@gmail.com | 123456      | Oops. Informe seu nome completo! |
            | Lais       |                | 123456      | Oops. Informe um email válido!   |
            | Lais       | lais*gmail.com | 123456      | Oops. Informe um email válido!   |
            | Lais       | lais&gmail.com | 123456      | Oops. Informe um email válido!   |
            | Lais       | lais@gmail.com |             | Oops. Informe sua senha secreta! |



