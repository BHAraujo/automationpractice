require "site_prism"


class SummerDresses < SitePrism::Page
  set_url ""

  element :dress_color_yellow, "#color_34"

  def select_color_dress_yellow
    dress_color_yellow.click
  end

end
