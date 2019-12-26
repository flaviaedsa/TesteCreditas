Dado("que eu acessei o site para testar o checkbox") do
  @checkbox.load
end

Quando("clico para remover o checkbox") do
  @checkbox.botao_remove.click
end

Entao("devo visualizar mensagem que o checkbox foi removido") do
  expect(@checkbox.mensagem_confirmacao.text).to eql "It's gone!"
  screenshot("Botao Removido")
end

#-------------------------------------------------------------------

Dado("que o checkbox foi removido") do
  @checkbox.load
  @checkbox.botao_remove.click
end

Quando("clico para adicionar o checkbox") do
  sleep 4
  @checkbox.botao_add.click
end

Entao("devo visualizar mensagem que o checkbox foi adicionado") do
  expect(@checkbox.mensagem_confirmacao.text).to eql "It's back!"
  screenshot("Botao Adicionado")
end
