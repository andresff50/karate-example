Feature: Get user on request
  Scenario: Get a user
    Given url "https://reqres.in" + "/api/users/" + "7"
    When method get
    Then status 200
