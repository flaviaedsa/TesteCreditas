Dado("que eu acessei o site Dynamic Controls") do
    visit 'https://the-internet.herokuapp.com/dynamic_controls'
end
 
Quando("clico para adicionar o checkbox") do
    check(' A checkbox')
end
  
Entao("devo visualizar o checkbox adicionado com sucesso") do

end
  