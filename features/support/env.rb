require "capybara"
require "capybara/dsl"
require "json"
require "pry"
require "require_all"
require "rspec"
require "selenium-webdriver"
require "site_prism"

[
  "features/pages/sections",
  "features/pages",
  "features/support"
].each { |each_file| require_all(each_file) }

driver ||= ENV["DRIVER"] || "local"
browser ||= ENV["BROWSER"] || "chrome"

Drivers.driver_set("#{driver}_#{browser}".to_sym)

World(Capybara::DSL)
