Dado("que eu acessei o site para testar a nova aba") do
  visit "/windows"
end

Quando("clico no link para abrir uma nova aba") do
  nova_aba = window_opened_by { click_link "Click Here" }
end

Então("devo visualizar a nova aba aberta") do
  within_window -> { page.title == "Nova Janela" } do
    expect(page).to have_content "New Window"

    nova_aba.close

    expect(nova_aba.closed?).to be true
  end
end
