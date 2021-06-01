class ExamplePage
  def initialize
    @contact_us_button = "Contact"
    @text = "How can we help you?"
    @span = "#hs_cos_wrapper_module_1489493814127612 h3"

  end

  def click_contact_us
    click_link(@contact_us_button)
  end

  def verify_page
    find(@span).text.should == @text
  end
end