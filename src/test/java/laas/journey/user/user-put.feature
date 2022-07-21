Feature: Put user request

  Background:
    * url "https://reqres.in"
    * path "/api/users/"+userId
    And request { name: '#(name)', job: '#(job)' }

  Scenario: Put a user
    When method put
    Then status 200
    And match job == response.job
    And match name == response.name