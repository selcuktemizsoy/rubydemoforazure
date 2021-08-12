Before do |scenario|
  options = Selenium::WebDriver::Chrome::Options.new
  #options.add_argument('--headless')
=begin
  options.add_argument('--window-size=1920,1080')
  options.add_argument('--disable-popup-blocking')
  options.add_argument('--ignore-certificate-errors')
=end
  options.add_argument('--ignore-certificate-errors')
  options.add_argument('--no-sandbox')
  options.add_argument("--disable-dev-shm-usage");
  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app,
                                   browser: :chrome,
                                   options: options)
  end

  page.driver.browser.manage.window.maximize
  # puts 'Scenario running: ' + scenario.name
end

After do |scenario|

  scenario_name = scenario.name.gsub(/[^A-Za-z0-9 ]/, "").gsub(/\s+/, "_")
  if scenario.failed?
    time = Time.new
    time_day = time.strftime("%Y-%m-%d")
    time_hours = time.strftime("%H:%M:%S")

    file_path = "output/screenshots-#{time_day}"

    screenshot = "#{file_path}/#{scenario_name}-#{time_hours}.png"

    page.save_screenshot(screenshot)
    embed(screenshot, "image/png", "click here to view image")

  end

  Capybara.current_session.driver.quit
end
