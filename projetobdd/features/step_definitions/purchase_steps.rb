And("valido as seguintes informações do endereço") do |table|

  for head in 0...table.headers.size
  expect(adress.get_text_adress_delivery.include?(table.hashes[0][table.headers[head]])).to eq(true)
  end
end

And("na tela Adress clico no botão Proceed to checkout") do
    page.execute_script("$('button.button.btn.btn-default.button-medium').click()")
end

And("na tela Shipping clico no botão Proceed to checkout") do
    page.execute_script("$('button.button.btn.btn-default.standard-checkout.button-medium').click()")
end
