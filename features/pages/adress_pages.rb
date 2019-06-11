require "site_prism"


class Adress < SitePrism::Page
  set_url "/index.php"

  #adress
  element :text_adress_delivery, "#address_delivery"

  def get_text_adress_delivery
      text_adress_delivery.text.split(" ")
  end

end
