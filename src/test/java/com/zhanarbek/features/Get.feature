Feature: Get API Demo

  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

    # Simple Get Request
  Scenario: Get Demo 1
    Given path '/users?page=2'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

    # Get with Background
  Scenario: Get Demo 2
    Given path '/users/2'
    When method GET
    Then status 200
    And print response

    # Get with Path and Params
  Scenario: Get Demo 3
    Given path '/users'
    And param page = 2
    When method GET
    Then status 200
    And print response

    # Get with Assertions
    # assert vs match
    # assert is used for simple comparisons and can't not be with $.
    # match is used with more complex comparisons
  Scenario: Get Demo 4
    Given path '/users'
    And param page = 2
    When method GET
    Then status 200
    And print response
    And assert response.data[0].first_name != null
    And assert response.data.length == 6
    And match $.per_page == 6
    And match $.data[1].id == 8
    And match $.data[3].last_name == 'Fields'
  And match $.data[*].id == [7, 8, 9, 10, 11, 12]
