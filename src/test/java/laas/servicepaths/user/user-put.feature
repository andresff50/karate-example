Feature: Put user on reqres

  Background:
    * url "https://reqres.in"
    * path "/api/users/7"
    * request { "email": "michael.lawson@reqres.in", "first_name": "Juk", "last_name": "Lawson", "avatar": "https://reqres.in/img/faces/7-image.jpg" }

  Scenario Outline: Put a user
    When method put
    Then status 200
    And match $.name == 'Juk'

    Examples:
    |c1|c2|c3|
    |s |s |s |