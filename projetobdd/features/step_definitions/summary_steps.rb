And("savo o valor total da compra") do
    @valor_compra = summary.get_value_buy
end

And("clico no botão Proceed to checkout") do
    summary.click_button_proceed_checkout_cart
end
