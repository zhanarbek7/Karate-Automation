Feature: Post API Demo

  Background:
    * url 'https://reqres.in/api'
    # this will prefer to get response as json
    # in case if we write xml, server gonna provide xml
    # if it can do so
    * header Accept = 'application/json'
    * def expectedOutput = read("response1.json")

  Scenario: Post Example 1, using Background
    Given path '/users'
    And request {"name":"Zhanarbek","job":"Leader"}
    When method POST
    Then status 201
    And print response
    And print response.createdAt

  Scenario: Post Example 2, with response assertion
    Given path '/users'
    And request {"name":"Zhanarbek","job":"Leader"}
    When method POST
    Then status 201
    # #ignore and #string means there could be any value
    And match response == { "name": "Zhanarbek", "job": "Leader", "id": "#ignore", "createdAt": "#ignore"}
    And print response

  Scenario: Post Example 3, with read response from file
    Given path '/users'
    And request {"name":"Zhanarbek","job":"Leader"}
    When method POST
    Then status 201
    And match response == expectedOutput
