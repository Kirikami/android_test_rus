require 'rspec/expectations'
require 'appium_lib'
require 'page-object'
require 'allure-cucumber'
require 'require_all'

include AllureCucumber::DSL

class AppiumWorld
end

PROJECT_DIR = File.expand_path(File.dirname(__FILE__) + '../../..')

require_all File.dirname(__FILE__) + '/helpers'

World(PageObject::PageFactory)
AppiumHelper.init_environment
AppiumHelper.start_driver

World do
  AppiumWorld.new
end

at_exit do
  driver_quit
end

