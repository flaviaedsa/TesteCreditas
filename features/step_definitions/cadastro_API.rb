  
Quando("eu faço uma requisição POST para o endpoint de cadastro da API pública JsonPlaceHolder") do
    @cadastro = realizar_cadastro
end
  
Entao("o codigo de resposta deve ser igual a {int}") do |codigo|
    expect(@cadastro.code).to eq 201
end
  
Entao("devo visualizar o item cadastrado") do
    expect(@cadastro.response.body).to have_content '101'   
end

  