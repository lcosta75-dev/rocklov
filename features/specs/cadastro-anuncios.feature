#language: pt

Funcionalidade: Cadastro de Anúncios
    Sendo usuário cadastrado no RockLov que possui equipamentos musicais
    Quero cadastrar meus equipamentos
    Para que eu possa disponibilizar para alocação

    Contexto: Login
        * Login com "betao@yahoo.com" e "pwd123"

    Cenário: Novo equipo

        Dado que acesso o formulário de cadastro de anúncios
            E que eu tenho o seguinte equipamento:
            | thumb     | fender-sb.png |
            | nome      | Fender Strato |
            | categoria | Cordas        |
            | preco     | 200           |
        Quando submeto o cadastro desse item
        Então devo ver esse item no meu Dashboard