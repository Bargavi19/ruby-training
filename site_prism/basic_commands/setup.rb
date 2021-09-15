# frozen_string_literal: true

require 'bundler'
Bundler.setup

require 'ca_testing/drivers'
require 'capybara'
require 'capybara/dsl'
require 'site_prism'
require 'selenium-webdriver'
require 'webdrivers'
require 'rainbow/refinement'


class Setup
  def initialize
    setup_capybara
    setup_site_prism
    setup_selenium_webdriver
    setup_driver
  end

  def setup_capybara
    Capybara.configure do |config|
      config.run_server = false
      config.default_driver = :selenium
      config.default_max_wait_time = 0
      config.app_host = 'https://the-internet.herokuapp.com'
    end
  end

  def setup_site_prism
    SitePrism.configure do |config|
      config.log_level = log_level

      # This will be required until v4 of SitePrism is released
      require 'site_prism/all_there'
      config.use_all_there_gem = true
    end
  end

  def setup_selenium_webdriver
    Selenium::WebDriver.logger.level = log_level
  end

  def setup_driver
    CaTesting::Drivers::Local.new(browser).register
  end

  def browser
    :chrome
  end

  def log_level
    :ERROR
  end
end