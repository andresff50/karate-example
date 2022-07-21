Feature: example Journey

  Scenario Outline: example Journey
    * def bodyRequest = { name: '#(name)', job: '#(job)' }
    When def requestPost = call read('classpath:journey/user/user-post.feature') bodyRequest
    * def userId = $requestPost.response.id
    And print requestPost
    * def editBodyRequest = { name: '#(newName)', job: '#(newJob)' }
    And def varPut = call read('classpath:journey/user/user-put.feature') userId,editBodyRequest
    And print varPut
    And def getResult = call read('classpath:journey/user/user-get.feature') {userId:2}
    And print getResult

    Examples:
      | name    | job         | newName | newJob    |
      | Marcela | Mechanic    | Marcela | secretary |
      | Jose    | Programming | Enrique | Mechanic  |
      | Luis    | Programming | John    | Mechanic  |