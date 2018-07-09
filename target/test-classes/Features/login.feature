Feature:Login
  this is a test for Login page

  Background:
    Given I access giftrete.com
    When i click on Login

  Scenario: Valid Login
    And i entered the username
    And i entered the password
    And i click on the login button
    Then i should be logged in

  Scenario: Login with invalid username
    And i entered the invalid username
    And i entered the password
    And i click on the login button
    Then i should not be able to log in


  Scenario: Login with invalid password
    And i entered the username
    And i entered the invalid password
    And i click on the login button
    Then i should not be able to log in

  Scenario: Login
    And i entered the username"josuser"
    And i entered the password "josuser"
    And i click on the login button
    Then i should be able to log in

  Scenario: Login with invalid username
    And i entered the invalid username
    And i entered the password "jospassword1234"
    And i click on the login button
    Then i should not be able to log in


  Scenario  outline: login with multiple use
    And i entered the username
    And i entered the password "<password>"
    And i click on the login button
    Then i should be able to log in
    And i log out

  Examples:
  |username|password|
  |josuser|jospassword|
  |josuser2|jospassword2|