
Dado("que eu acessei o site para testar a nova aba") do
  @aba.load
end

Quando("clico no link para abrir uma nova aba") do
  @aba.click_here.click
end

Então("devo visualizar a nova aba aberta") do
  @nova_aba.load
  expect(@nova_aba.mensagem_validacao.text).to eq "New Window"
  screenshot("Nova Aba")
end
