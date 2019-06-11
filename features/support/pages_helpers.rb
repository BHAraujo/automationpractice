Dir[File.join(File.dirname(__FILE__), "pages/*_pages.rb")].each {|files| require files }


module PageObject

  def create_account
    @create_account ||= CreateAccount.new
  end

  def initial
    @initial ||= Initial.new
  end

  def authentication
    @authentication ||= Authentication.new
  end

  def account_manage
    @account_manage ||= AccountManage.new
  end

  def list_summer_dresses
    @list_summer_dresses ||= SummerDresses.new
  end

  def cart
    @cart ||= Cart.new
  end

  def summary
    @summary ||= Summary.new
  end

  def adress
    @adress ||= Adress.new
  end

  def shipping
      @shipping ||= Shipping.new
  end

  def payment
      @payment ||= Payment.new
  end
end
