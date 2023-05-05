Feature: PUT API Demo

  Scenario: PUT demo 1
    Given url 'https://reqres.in/api/users/2'
    And request {"name": "Zhanarbek", "job": "Software Engineer"}
    When method put
    Then status 200
    And print response