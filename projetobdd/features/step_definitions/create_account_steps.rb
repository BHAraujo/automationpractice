And("clico no botão Create an account") do
  page.execute_script("$('#SubmitCreate').click()")
end

And("preencho os campos de informação pessoal com os seguintes valores") do |table|
    data = table.hashes[0]["Date_of_Birth"].split("/")

    create_account.preencher_informaçoes_pessoais(table.hashes[0]["Title"], table.hashes[0]["First_name"],
                                                    table.hashes[0]["Last_name"], table.hashes[0]["Password"])
    create_account.set_date_birth(data)
end

And("preencho os campos de endereço com as seguintes valores") do |table|
  create_account.preencher_endereço(table.hashes[0]["First_name"], table.hashes[0]["Last_name"],
                                      table.hashes[0]["Adress"], table.hashes[0]["City"],
                                      table.hashes[0]["State"], table.hashes[0]["Zip"],
                                      table.hashes[0]["Mobile"], table.hashes[0]["References"])

  create_account.set_state(table.hashes[0]["State"])
  create_account.set_country(table.hashes[0]["City"])
end

And("clico no botão Register") do
  create_account.click_register

end
