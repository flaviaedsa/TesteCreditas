
Quando("clico para adicionar o checkbox") do
  visit "/dynamic_controls"
  find("input[label=blah]").set(true)
  sleep 2
end

Entao("devo visualizar o checkbox adicionado com sucesso") do
end

#--------------------------------------------------------------------

Quando("clico para remover o checkbox") do
  visit "/dynamic_controls"
  find("input[label=blah]").set(false)
  sleep 2
end

Entao("devo visualizar o checkbox removido com sucesso") do
end
