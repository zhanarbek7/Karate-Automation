Feature: Delete API Demo

  Scenario: Delete Demo 1
    Given url 'https://reqres.in/api/users/2'
    When method delete
    And print response
    And status 204