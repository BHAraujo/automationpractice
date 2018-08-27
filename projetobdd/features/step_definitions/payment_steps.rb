And("seleciono a opção Pay by bank wire") do
    payment.click_payment_bank_wire
end

And("clico no botão I confirm my order") do
    payment.click_button_confirm_order
end

Then("valido as seguintes informações da tela Order Confirmation") do |table|
      expect(payment.get_text_confirm_payment).to eq(table.hashes[0]["Message_confirmation"])
      expect(payment.get_text_price_buy_finish).to eq(@valor_compra)
end
