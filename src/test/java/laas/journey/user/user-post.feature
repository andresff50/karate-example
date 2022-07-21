Feature: Post multiple users

  Background:
    * url "https://reqres.in"
    * path "/api/users/"
    * request { "name": "#(name)", "job": "#(job)" }

  Scenario: Post users
    When method post
    Then status 201
    And match job == response.job
    And match name == response.name