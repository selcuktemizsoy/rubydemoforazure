class Homepage
  def initialize
    @loginButton = "Giriş Yap"


  end

  def click_login_button
    click_link(@loginButton)
  end

  def navigate_Module(subMenu, title)
    find(:link, title).hover
    click_link(subMenu)
  end



end