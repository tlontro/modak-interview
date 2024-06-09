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

  def wait_until(time: 60, sleep_time: 0.5, msg: "Condition was not achieved in time!", should_break: true)
    raise "No block given!" unless block_given?

    retries = 0
    begin
        sleep(sleep_time)
        yield ? (return true) : (raise "Condition still false!")
    rescue RuntimeError
        retries += 1
        retry if retries < (time / sleep_time)
    end

    should_break ? (raise msg) : (return false)
  end

end

World(Helpers)
