Before do
  options = Selenium::WebDriver::Firefox::Options.new(args: ['-headless'])
  @driver = Selenium::WebDriver.for(:firefox, options: options)
end

After do
  @driver.quit
end