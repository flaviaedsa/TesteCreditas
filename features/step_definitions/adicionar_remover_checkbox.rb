
Quando("clico para adicionar o checkbox") do
  visit "/dynamic_controls"
  check("checkbox")
end

Entao("devo visualizar o checkbox adicionado com sucesso") do
end

#--------------------------------------------------------------------

Quando("clico para remover o checkbox") do
    visit "/dynamic_controls"
    uncheck("checkbox")
end
  
Entao("devo visualizar o checkbox removido com sucesso") do
    
end