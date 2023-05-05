Feature: Post API Demo

  Background:
    * url 'https://reqres.in/api'
    # this will prefer to get response as json
    # in case if we write xml, server gonna provide xml
    # if it can do so
    * header Accept = 'application/json'

  Scenario: Post Example 1
    Given path '/users'
    And request {"name":"Zhanarbek","job":"Leader"}
    When method POST
    Then status 201
    And print response
    And print response.createdAt

