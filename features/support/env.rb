require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'site_prism'
require 'rspec'
require 'rspec/expectations'
require 'selenium-webdriver'
include RSpec::Matchers


Capybara.register_driver :selenium_chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--ignore-certificate-errors') # Ignora erros de SSL
  options.add_argument('--disable-blink-features=AutomationControlled') # Evita bloqueios de automação
  options.add_argument('--disable-gpu') # Melhora compatibilidade em alguns sistemas
  options.add_argument('--no-sandbox') # Resolve possíveis problemas em ambientes protegidos
  options.add_argument('--disable-dev-shm-usage') # Evita problemas de memória no Chrome

  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end



Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'http://www.linkedin.com/'
  config.default_max_wait_time = 5
end

