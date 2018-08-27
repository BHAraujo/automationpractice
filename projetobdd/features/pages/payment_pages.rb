require "site_prism"


class Payment < SitePrism::Page
  set_url ""

  #payment
  element :payment_bank_wire, ".bankwire"
  element :button_confirm_order, ".icon-chevron-right"
  element :text_confirm_payment, ".cheque-indent"
  element :text_price_buy_finish, ".price"


  def click_payment_bank_wire
      payment_bank_wire.click
  end

  def click_button_confirm_order
      button_confirm_order.click
  end

  def get_text_confirm_payment
      text_confirm_payment.text
  end

  def get_text_price_buy_finish
      text_price_buy_finish.text
  end

end
