class NovaAbaPage < SitePrism::Page
  set_url "https://the-internet.herokuapp.com/windows/new"

  element :mensagem_validacao, "div[class='example'] > h3"
end
