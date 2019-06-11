And("valido as seguintes informações do pedido") do |table|
  dict_size = {"S": 1, "M": 2, "L": 3}

  expect(cart.text_name_dress.text).to eq(table.hashes[0]["name_product"])
  expect(cart.dress_quantity[:value]).to eq(table.hashes[0]["quantity"])
  expect(page.execute_script("return $('#group_1').attr('value')").to_i).to eq(dict_size[table.hashes[0]["size"].to_sym])
  expect(cart.dress_verify_color[:class]).to eq("color_pick selected")
end

And("clico no botão Add to cart") do
      cart.click_button_add_cart_buy
end


And("seleciono o Dresses de cor amarela") do
      list_summer_dresses.select_color_dress_yellow
end
