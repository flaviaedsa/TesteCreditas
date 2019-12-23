require "capybara"
require "capybara/cucumber"
require "faker"
require "httparty"
require "rspec"
require "selenium-webdriver"

    RSpec.configure do |config| 
        config.include Capybara::DSL  
        config.include Capybara::RSpecMatchers
    end

    Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app,:browser => :chrome,timeout: 30)
    end

    Capybara.configure do |config|
     # digo que o driver padrao eh o do selenium.
     config.default_driver = :selenium_chrome 
     # defino a url padrao.
     config.app_host = "https://the-internet.herokuapp.com/dynamic_controls"
     # defino o tempo maximo de espera para os elementos.
     config.default_max_wait_time = 30
    end


