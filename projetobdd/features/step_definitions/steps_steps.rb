And("o título da pagina deve ser {string}") do |titulo|
      expect(page.title).to eq(titulo)
end

And("devo ser redirecionado para tela {string}") do |tela|
      expect(page).to have_content(tela)
end

Then("a página deve conter o seguinte mensagem") do |text|
  expect(account_manage.get_message_manage_account).to eq(text)
end

And("efetuo o login com as seguintes credenciais") do |table|
  File.open("email.txt", "r") do |f|
    f.each do |email|
      authentication.do_login(email, table.hashes[0]["password"])
  end
end
end

And("verifico se tem no estoque o item Printed Chiffon Dress") do
      expect(page.find(:xpath, "//*[@id='center_column']/ul/li[3]/div/div[2]/span/span").text).to eq("In stock")
end

And("aceito o termos do serviço que será prestado") do
        shipping.click_checkbox_terms_shipping
end
