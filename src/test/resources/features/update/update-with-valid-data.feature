@Test
@Put
Feature: Update user with valid data
  Background:
    * url baseUrl
    #* configure headers = { Authorization: 'Bearer ' + token }
    * header Content-Type = 'application/json'

  Scenario: Update a post with valid data
    Given path 'posts', 1
    * def payload = read('classpath:features/data/request/update-post-valid.json')
    And request payload
    When method PUT
    * match responseStatus == httpStatus.success.ok
    And print responseStatus
    And match response.id == 1
    And match response.title == payload.title
    And match response.body == payload.body
    And match response.userId == payload.userId