Feature: kloia.com

  Maç başlıyor sayfasına ulaşılır.
  BeinConnecte devam edilir
  Giriş Yap butonuna tıklanır ve Giriş sayfası açılır.
  Kullanıcı bilgileri girilir ve giriş yap butonuna tıklanır.
  Canlı TV menüsünden Ulusal alt menüsü seçilir.
  Kanal Listesinden SHOW TV oldugu kontrol edilir
  Yayını durdur ve yenıden baslat
  Log out ol



  Scenario: player test
    Given homepage is opened
    And user clicks on the login button
    And user login with valid credentials
    When user navigate to "Ulusal" under "CANLI TV"
    Then the channel list has "SHOW TV"
    And user clicks on play button and replay the video
