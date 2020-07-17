require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'site_prism'
require 'allure-cucumber'
require 'pry'

require_relative 'page_helper'
require_relative 'helper'

World(Pages)
World(Helper)

# criar constante com nome browsers
BROWSERS = ENV['BROWSERS']

Capybara.register_driver :selenium do |app|
  # if BROWSERS.eql?('chrome')
  #   Capybara::Selenium::Driver.new(app, browser: :chrome)
  # elsif BROWSERS.eql?('chrome_headless')
  #   Capybara::Selenium::Driver.new(app, browser: :chrome,
  #     desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
  #   'chromeOptions' => { 'args' => ['headless', 'disable-gpu'] }))
  #  end

  case BROWSERS
  when 'firefox_headless'
    option = ::Selenium::WebDriver::Firefox::Options.new(args: %w[--headless --disable-gpu --disable-infobars])
    Capybara::Selenium::Driver.new(app, browser: :firefox, options: option, desired_capabilities: { accept_insecure_certs: true })
  when 'chrome_headless'
    option = ::Selenium::WebDriver::Chrome::Options.new(args: %w[--headless --disable-gpu])
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: option,  desired_capabilities: { accept_insecure_certs: true })
  when 'firefox'
    option = ::Selenium::WebDriver::Firefox::Options.new(args: %w[--disable-gpu --disable-infobars])
    Capybara::Selenium::Driver.new(app, browser: :firefox, options: option, desired_capabilities: { accept_insecure_certs: true })
  else
    Capybara::Selenium::Driver.new(app, browser: :chrome)
  end
end

Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = 'https://prehom.dpf.gov.br/mobilizacao2/inicio'
    #Homologação: 'https://sistemashom.dpf.gov.br/mobilizacao2/inicio'
    #Pré-Homologação: 'https://prehom.dpf.gov.br/mobilizacao2/inicio' 
    #Desenvolvimento: 'https://sistemasdesenv.dpf.gov.br/mobilizacao2/'
    Capybara.default_max_wait_time = 30
end

Capybara.page.driver.browser.manage.window.maximize

Cucumber::Core::Test::Step.module_eval do
  def name
    return text if text == 'Before hook'
    return text if text == 'After hook'
    "#{source.last.keyword}#{text}"
  end
end
