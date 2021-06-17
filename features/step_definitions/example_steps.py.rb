homepage = Homepage.new
loginPage = LoginPage.new
playerPage = PlayerPage.new
Given(/^homepage is opened$/) do
  visit('/')

end

And(/^user clicks on the login button$/) do
  homepage.click_login_button
end

And(/^user login with valid credentials$/) do
  loginPage.loginWithValidAccount
  sleep 30
end

And(/^user navigate to "([^"]*)" under "([^"]*)"$/) do |subMenu, title|
  homepage.navigate_Module(subMenu, title)
end

Then(/^the channel list has "([^"]*)"$/) do |channel_name|
  playerPage.is_channel_in_the_list(channel_name)
end

And(/^user clicks on play button and replay the video$/) do
  playerPage.click_play_button
  sleep 5

end