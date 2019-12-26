
Dado("que eu acessei o site para testar a nova aba") do
  @nova_aba.load
end

Quando("clico no link para abrir uma nova aba") do
  @nova_aba.click_here.click
end

Então("devo visualizar a nova aba aberta") do
  @NewAba.load
  # expect(@Nova_Aba.mensagem_validacao.text).to eq "New Window"
  screenshot("Nova Aba")
end
