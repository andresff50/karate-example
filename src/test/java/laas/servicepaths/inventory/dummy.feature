Feature: A simple Karate test that always passes

  Background:
    * url baseUrl
    * def userBase = '/api/users/'

  Scenario: Dummy Test
    Given path userBase + '7'
    When method GET
    * print "fff"
    Then status 200