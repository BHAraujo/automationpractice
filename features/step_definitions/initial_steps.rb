Given("que esteja na tela de cadastro") do
    initial.load
    step 'efetuo um click no link Sign in'
    step 'o título da pagina deve ser "%s"' % "Login - My Store"
end

Given("que esteja na tela inicial do site Automation Practise") do
      initial.load
end

Given("que clico no categoria Dresses") do
      initial.click_category_dresses
end

When("clico na subcategoria Summer Dresses") do
      initial.click_link_subcategory_summer_dresses
end

And("efetuo um click no link Sign in") do
  initial.click_sign.click
end
