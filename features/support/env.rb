require "capybara"
require "capybara/cucumber"
require "faker"
require "httparty"
require "rspec"
require "selenium-webdriver"
require "site_prism"

RSpec.configure do |config|
  config.include Capybara::DSL
  config.include Capybara::RSpecMatchers
end

# # config.before(:example) do
# #   page.current.window.resize_to(1280,800)
# # end

# config.after(:example) do |e|
#   nome = e.description.gsub(/[^A-Za-z0-9 ]/, "").tr(" ", "_")
#   page.save_screenshot("log/" + nome + ".png")
# end

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = "https://the-internet.herokuapp.com/"
  config.default_max_wait_time = 10
end
