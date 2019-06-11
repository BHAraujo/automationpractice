require "site_prism"


class AccountManage < SitePrism::Page

    set_url  ""

    element :message_manage_account, ".info-account"

    def get_message_manage_account
        message_manage_account.text
    end

end
