class LoginPage
  def initialize
    @username = 'bc-input-username'
    @password = 'bc-input-password'
    @login_button = 'bc-btn-login-submit'
  end


  def loginWithValidAccount
    fill_in(@username, with:'9322018')
    fill_in(@password, with:'Bc12345')
    click_button(@login_button)
  end

end