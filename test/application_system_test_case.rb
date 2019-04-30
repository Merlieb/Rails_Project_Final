require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driver = ENV['CHROME_HEADLESS'] == 'false' ? :selenium_chrome : :selenium_chrome_headless
  driven_by driver, screen_size: [1400, 1400]
end