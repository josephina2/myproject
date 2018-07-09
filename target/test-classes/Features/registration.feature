Feature:Registration
  this is a test for registration page

  Background:
    Given I access giftrete.com
    When i click on registration link

  Scenario valid Registration
    And i fill in the required details
    And i click on the register button
    Then i should be registered

  Scenario Invalid Registration
    And i fill in the required details
    And i click on the register button
    Then i should not be able registered

  Scenario  outline: register with multiple users
    And i fill in the required details
    And i click on the register button
    Then i should be registered

  Examples:
  | first name|surname|location|Sex|
  |josuser|jospassword|uk|m|
  |josuser2|jospassword2|uk|m|