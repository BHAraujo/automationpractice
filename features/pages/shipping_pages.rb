require "site_prism"


class Shipping < SitePrism::Page

  set_url "/index.php"

  element :checkbox_terms_shipping, "#cgv"

  def click_checkbox_terms_shipping
      checkbox_terms_shipping.click
  end

end
