Feature: delete user on request
  Scenario: delete a user
    Given url "https://reqres.in" + "/api/users/" + "2"
    When method delete
    Then status 204
