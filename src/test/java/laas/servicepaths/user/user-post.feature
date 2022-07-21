Feature: Post multiple users

  Background:
    * url "https://reqres.in"
    * path "/api/users/"
    * request { "email": "#(name)", "job": "#(Job)" }

  Scenario Outline: Post users
    When method post
    Then status 201

    Examples:
      | name    | Job     |
      | Juan    | leader  |
      | Carlos  | teacher |
      | Gustavo | doctor  |
      | name    | teacher |