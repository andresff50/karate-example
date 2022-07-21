Feature: example Journey
  Scenario: example Journey
    * def bodyRequest = read('classpath:resources/payload/user/user.json')
    * print bodyRequest
    When def requestPost = call read('classpath:journey/user/user-post.feature') bodyRequest
    * def userId = $requestPost.response.id
    And print requestPost
    * def editBodyRequest = { name: 'Maria', job: 'architect' }
    And def varPut = call read('classpath:journey/user/user-put.feature') userId,editBodyRequest
    And def getResult = call read('classpath:journey/user/user-get.feature') {userId:2}
    And print getResult