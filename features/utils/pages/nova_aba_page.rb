class AbaPage < SitePrism::Page
  set_url "https://the-internet.herokuapp.com/windows"

  element :click_here, 'a[href="/windows/new"]'
end

class NewAbaPage < SitePrism::Page
  set_url "https://the-internet.herokuapp.com/windows/new"

  element :mensagem_validacao, "div[class='example']"
end
