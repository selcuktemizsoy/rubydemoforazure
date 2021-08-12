homepage = Homepage.new
loginPage = LoginPage.new
playerPage = PlayerPage.new
Given(/^homepage is opened$/) do
  visit('/')
  true.should eql?(false)
  
end
