require "capybara"
require "capybara/cucumber"
require "faker"
require "httparty"
require "rspec"
require "selenium-webdriver"
require "site_prism"

$profile = ENV["PROFILE"]
api_configs = YAML.load_file("./features/support/api.yml")
$api = api_configs[$profile]

@browser = ENV["BROWSER"]

if @browser.eql?("headless")
  Capybara.javascript_driver = :selenium
  Capybara.run_server = false

  caps = Selenium::WebDriver::Remote::Capabilities.chrome(
    "chromeOptions" => { "args" => ["--no-default-browser-check"] },
  )

  Capybara.register_driver :selenium_chrome do |app|
    Capybara::Selenium::Driver.new(
      app,
      browser: :remote,
      url: "http://selenium:4444/wd/hub",
      desired_capabilities: caps,
    )
  end
else
  puts "executando sem headless"
end

RSpec.configure do |config|
  config.include Capybara::DSL
  config.include Capybara::RSpecMatchers
end

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 10
end
