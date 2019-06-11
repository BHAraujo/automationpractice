require "site_prism"


class Summary < SitePrism::Page
  set_url ""

  element :text_value_buy, ".ajax_block_cart_total"
  element :button_proceed_checkout_cart, "a.btn.btn-default.button.button-medium"

  def get_value_buy
      text_value_buy.text
  end

  def click_button_proceed_checkout_cart
      button_proceed_checkout_cart.click
  end

end
