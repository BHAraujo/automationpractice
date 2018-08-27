require "site_prism"


class Authentication < SitePrism::Page

    set_url  ""

    element :button_create_account, "#SubmitCreate"
    element :input_email_adress, "#email_create"
    element :input_email, "#email"
    element :input_pwd, "#passwd"
    element :button_submit_login, "#SubmitLogin"

    def send_email(email)
      input_email_adress.set(email)
    end

    def do_login(email, pwd)
      input_email.set(email)
      input_pwd.set(pwd)
      button_submit_login.click
    end

end
