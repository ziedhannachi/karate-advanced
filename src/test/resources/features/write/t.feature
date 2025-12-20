Feature: POST Users

  Background:
    * url baseUrl
    #* configure headers = { Authorization: 'Bearer ' + token }
    * header Content-Type = 'application/json'





Scenario: Update a post with valid data
Given path 'posts', 1
And request read('classpath:payloads/put/update-post-valid.json')
When method put
Then status 200
And match response.id == 1
And match response.title == 'Updated title'
And match response.body == 'Updated body content'
And match response.userId == 10