# Capybara drivers module
module Drivers
  def self.driver_set(driver)
    # other drivers can be set here, we'll leave this for later
    case driver
    when :local_chrome
      register_local_chrome
    else
      raise NotImplementedError, "Driver #{driver} isn't supported."
    end
  end

  def self.register_local_chrome
    Capybara.register_driver :local_chrome do |app|
      Capybara::Selenium::Driver.new(app, browser: :chrome)
    end
    defaults(:local_chrome)
    true
  end

  def self.defaults(driver)
    Capybara.default_driver = driver
    Capybara.default_max_wait_time = 15
    Capybara.app_host = "https://www.aliexpress.us/?lan=en&gatewayAdapt=glo2usa"
  end
end
