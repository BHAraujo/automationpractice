require "site_prism"


class Cart < SitePrism::Page
  set_url ""

  element :button_add_cart, ".right-block .btn.btn-default:nth-child(1)"

  #cart
  element :dress_verify_color, "#color_16"
  element :dress_quantity, "#quantity_wanted"
  element :dress_size, "#group_1"
  element :text_name_dress, ".pb-center-column h1"
  element :button_add_cart_buy, "#add_to_cart"

  # his
  def click_button_add_cart_buy
      button_add_cart_buy.click
  end

end
