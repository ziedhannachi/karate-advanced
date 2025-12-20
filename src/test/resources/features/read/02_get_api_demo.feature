Feature: Get Api Demo

  @Test
  Scenario: Get Demo 1
    Given url 'https://jsonplaceholder.typicode.com/users'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    And print responseStatus
    And print responseHeaders
    And print responseCookies
