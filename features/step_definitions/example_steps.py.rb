example_page = ExamplePage.new

Given(/^visit homepage$/) do
  visit Capybara.app_host
end

Then(/^verify page$/) do
  example_page.verify_page
end

When(/^click Contact Us button$/) do
  example_page.click_contact_us
end
