Feature:wishlist
  this is to create a wishlist


  Scenario: Valid Wishlist
    Given I access giftrete.com
    When i click on log in
    And i entered the username
    And i entered the password
    And i click on the login button
    Then i should be able to log in
    And i click on wishlist
    And i click on create a wishlist
    And i entered all the required field
    And i save
    Then i log out

  Scenario: Invalid Wishlist
    Given I access giftrete.com
    When i click on log in
    And i entered the username
    And i entered the password
    And i click on the login button
    Then i should be able to log in
    And i click on wishlist
    And i click on create a wishlist
    And i entered field with exception of select option
    And i click save
    Then i can't save as error message appears select option to be choosen