require 'cucumber'
require 'capybara'
require 'capybara/dsl'
require 'rspec'
require 'selenium-webdriver'

include Capybara::DSL
include RSpec::Matchers

RSpec.configure do |config|
  config.include Capybara::DSL, type: :feature
end

Capybara.configure do |config|
  config.app_host = "https://www.beinconnect.com.tr/hosgeldiniz"
  config.default_selector = :css
  config.default_max_wait_time = 10
  config.default_driver = :selenium
end


