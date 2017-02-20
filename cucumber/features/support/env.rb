require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'faker'
require 'cpf_faker'
require 'site_prism'
require 'yaml'
require 'capybara/poltergeist'
require 'capybara-screenshot/cucumber'
require 'capybara'



Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 60

Capybara.app_host = "http://10.0.0.201/ecglobalnet"