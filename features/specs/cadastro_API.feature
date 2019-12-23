#language: pt

Funcionalidade: Realizar um cadastro
    Como aplicação
    Quero realizar um cadastro
    Para ter dados cadastrados na minha base

    Cenario: Cadastro realizado com sucesso
        Quando eu faço uma requisição POST para o endpoint de cadastro da API pública JsonPlaceHolder
        Entao o codigo de resposta deve ser igual a 201
        E devo visualizar o item cadastrado




