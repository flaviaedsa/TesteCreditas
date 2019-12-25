Dado("que eu acessei o site para testar o checkbox") do
  visit "/dynamic_controls"
end

Quando("clico para adicionar o checkbox") do
  find("input[label=blah]").set(true)
end

Entao("devo visualizar o checkbox adicionado com sucesso") do
end

#--------------------------------------------------------------------

Dado("que o checkbox esta adicionado") do
  visit "/dynamic_controls"
  find("input[label=blah]").set(true)
end

Quando("clico para remover o checkbox") do
  visit "/dynamic_controls"
  find("input[label=blah]").set(false)
end

Entao("devo visualizar o checkbox removido com sucesso") do
end
