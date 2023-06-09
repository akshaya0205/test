Feature: Get API Demo

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

  # simple Get Request
  Scenario: Get Demo 1
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

  # Get with Background
  Scenario: Get Demo 2
    Given path '/users?page=2'
    When method GET
    Then status 200
    And print response

  # Get with Path,Param
  Scenario: Get Demo 3
    Given path '/users'
    And param page = 2
    When method GET
    Then status 200
    And print response

  # Get with Assertions
  Scenario: Get Demo 4
    Given path '/users'
    And param page = 2
    When method GET
    Then status 200
    And print response
    And match response.data[0].first_name != null
    And assert response.data.length == 6
    And match $.data[3].id == 10
    And match $.data[4].last_name == 'Edwards'
