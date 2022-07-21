Feature: Get user on request

  Scenario: Get a user
    Given url "https://reqres.in" + "/api/users/" + userId
    When method get
    Then status 200
