And("valido as seguintes informações do endereço") do |table|
  #inserir assertiva
  table.headers.each do |head|
  adress.get_text_adress_delivery.include?(table.hashes[0][head])
  end
end

And("na tela Adress clico no botão Proceed to checkout") do
    page.execute_script("$('button.button.btn.btn-default.button-medium').click()")
end

And("na tela Shipping clico no botão Proceed to checkout") do
    page.execute_script("$('button.button.btn.btn-default.standard-checkout.button-medium').click()")
end
