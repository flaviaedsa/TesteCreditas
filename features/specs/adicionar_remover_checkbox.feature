#language: pt
@checkbox
Funcionalidade: Remover e adicionar checkbox
    Como usuario
    Quero poder adiconar e remover checkbox
    Para ter o controle do que é exibido na aplicacao

    Cenario: Checkbox removido com sucesso
        Dado que eu acessei o site para testar o checkbox
        Quando clico para remover o checkbox
        Entao devo visualizar mensagem que o checkbox foi removido

    Cenario: Checkbox adicionado com sucesso
        Dado que o checkbox foi removido
        Quando clico para adicionar o checkbox
        Entao devo visualizar mensagem que o checkbox foi adicionado
    




