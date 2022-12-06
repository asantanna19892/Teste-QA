require 'rspec'
require 'yaml'
require 'pry'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'json'
require 'screen-recorder'


Capybara.default_max_wait_time = 45
Capybara.default_normalize_ws = true

EL = YAML.load_file('data/elementos.yml')
DATA = YAML.load_file('data/data.yml')

if ENV['dev']
  $ambiente = "dev"
elsif ENV['hom']
  $ambiente = "hom"
elsif ENV['prod']
  $ambiente = "prod"
else
  $ambiente = "dev"
end

if ENV['chrome']
    Capybara.default_driver = :chrome
    Capybara.register_driver :chrome do |app|
        options = Selenium::WebDriver::Chrome::Options.new
        options.add_argument('--disable-web-security')
        options.add_argument('--reduce-security-for-testing')
        options.add_argument('--disable-print-preview')
        options.add_argument('--incognito')
        Capybara::Selenium::Driver.new(app,browser: :chrome, options: options) 
    end
elsif ENV['chrome_headless']
    Capybara.default_driver = :chrome_headless
    Capybara.register_driver :chrome_headless do |app|
        options = Selenium::WebDriver::Chrome::Options.new
        options.add_argument('--disable-web-security')
        options.add_argument('--reduce-security-for-testing')
        options.add_argument('--incognito')
        options.add_argument('--headless')
        options.add_argument('--no-sandbox')
        Capybara::Selenium::Driver.new(app,browser: :chrome, options: options)
    end
else
    Capybara.default_driver = :chrome
    Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app,browser: :chrome,options: Selenium::WebDriver::Chrome::Options.new(args: %w[disable-web-security disable-print-preview reduce-security-for-testing repl incognito]))
    end
end