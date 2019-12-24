require "capybara"
require "capybara/cucumber"
require "faker"
require "httparty"
require "rspec"
require "selenium-webdriver"
require "site_prism"

# RSpec.configure do |config|
#   config.include Capybara::DSL
#   config.include Capybara::RSpecMatchers
# end

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = "https://the-internet.herokuapp.com/"
  config.default_max_wait_time = 30
end
