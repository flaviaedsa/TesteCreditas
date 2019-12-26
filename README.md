### Desafio para QA - Test Engineer ###

O Objetivo deste teste é:

 (1) Especificar/descrever a funcionalidade de login de um sistema através do levantamento de cenários/exemplos. 
    * A especificação consta no arquivo "Especificação.txt"

 (2) Automatizar 3 cenários, 2 frontend e um backend.
    * Os cenários frontend contemplam:
      - Adicionar e remover um checkbox na tela
      - Clicar em um link e abrir uma nova aba
    * Possui relatório em formato html, com evidência dos testes em anexo (imagens) - Pasta reports
    * O cenário backend faz uma chamada post através da API. Valida que o post foi criado através do response code e do response body.

As tecnologias utilizadas são:

|                |Tecnologia                       
|----------------|-------------------------------                           |
|**Linguagem**   |`Ruby`                                                    |
|Bibliotecas     |`Capybara, Cucumber, Faker, Httparty, Rspec, SitePrism`   |
|**Framework**   |`Selenium WebDriver`                                      |


### Instalação & Execução ###

Antes de rodar os testes instale:

   1 - [ruby] 
   2 - [Chrome_Driver] 

Após isso siga os passos abaixo:

    $ git clone <repositório>
    $ cd repositorio/
    $ gem install bundler
    $ bundler install
    $ cucumber 