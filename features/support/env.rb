require "byebug"
require "capybara"
require 'capybara/dsl'
require "cucumber"
require 'capybara/rspec'
require "selenium-webdriver"
require "site_prism"
require_relative "pages_helpers.rb"
require_relative "auxiliar.rb"

World(Capybara::DSL)
World(PageObject)
World(Helper)

CONFIG = YAML.load_file("cucumber.yml")
AMBIENTE = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{CONFIG["ambiente"]}.yml")


Capybara.configure do |config|
config.default_driver = CONFIG["browser"]
config.app_host = AMBIENTE["url"]
config.default_max_wait_time = 5
end
