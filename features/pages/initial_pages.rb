require "site_prism"


class Initial < SitePrism::Page

    set_url  "/index.php"

    element :link_sign, ".login"
    element :link_logout, ".logout"
    element :link_category_dresses, "#block_top_menu > ul > li:nth-child(2) > a"
    element :link_subcategory_summer_dresses, "#block_top_menu > ul > li:nth-child(2) > ul > li:nth-child(3) > a"


    def click_sign
      link_sign.click
    end

    def do_logout
      link_logout.click
    end

    def click_category_dresses
        link_category_dresses.hover
    end

    def click_link_subcategory_summer_dresses
        link_subcategory_summer_dresses.click
    end

end
