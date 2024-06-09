# Help methods
module Helpers
  def close_valentines_popup_if_present
    ali_express_homepage.valentines_popup_section.popup_close.click
  rescue Capybara::ElementNotFound
    puts "no valentines popup"
  end

  def close_notifications_popup_if_present
    ali_express_homepage.notification_section.notification_images.last.click
  rescue Capybara::ElementNotFound
    puts "no notifications popup"
  end
end

World(Helpers)
