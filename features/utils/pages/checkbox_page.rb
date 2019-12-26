class CheckboxPage < SitePrism::Page
  set_url "https://the-internet.herokuapp.com/dynamic_controls"

  element :botao_remove, "#checkbox-example > button"
  element :botao_add, "#checkbox-example > button"
  element :mensagem_confirmacao, "p[id='message']"
end
