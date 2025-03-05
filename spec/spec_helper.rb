require 'rspec'
require 'capybara/rspec'
require 'selenium-webdriver'

Capybara.app = eval("Rack::Builder.new {( " + File.read(File.dirname(__dir__) + '/config.ru') + "\n )}")

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new app, browser: :chrome,
    options: Selenium::WebDriver::Chrome::Options.new(args: %w[headless disable-gpu])
end

Capybara.javascript_driver = :chrome

Capybara.server = :webrick

RSpec.configure do |config|
  config.mock_with :rspec
end
