require "site_prism"


class CreateAccount < SitePrism::Page

    set_url  ""

    #pessoais
    element :radio_title, "#id_gender1"
    element :input_first_name, "#customer_firstname"
    element :input_last_name, "#customer_lastname"
    element :input_email, "#email"
    element :input_password, "#passwd"

    #endereço
    element :input_firstname, "#firstname"
    element :input_lastname, "#lastname"
    element :input_address, "#address1"
    element :input_city, "#city"
    element :input_zip, "#postcode"
    element :input_mobile, "#phone_mobile"
    element :input_reference, "#alias"
    element :button_register, "#submitAccount"

    def preencher_informaçoes_pessoais(*args)
      page.find("div.radio-inline:nth-child(3) > label:nth-child(1)").click
      input_first_name.set(args[1])
      input_last_name.set(args[2])
      input_password.set(args[3])
    end

    def set_date_birth(data)
      byebug
      select data[0], from: "days"
      select data[1], from: "months"
      select data[2], from: "years"
    end

    def preencher_endereço(*args)
      radio_title.click
      input_firstname.set(args[0])
      input_lastname.set(args[1])
      input_address.set(args[2])
      input_city.set(args[3])
      input_zip.set(args[5])
      input_mobile.set(args[6])
      input_reference.set(args[7])
    end

    def set_state(estado)
      select estado, from: "id_state"
    end

    def set_country(pais)
      select pais, from: "id_country"
    end

    def click_register
      button_register.click
    end

end
