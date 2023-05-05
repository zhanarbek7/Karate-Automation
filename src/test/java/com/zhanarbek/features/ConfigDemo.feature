@configDemo
Feature: Config Demo

  Background:
    * url baseURL

  Scenario: Config Demo 1
    Given print name

  Scenario: Get Demo 1
    Given path "/users?page=2"
    When method GET
    Then status 200
    And print response
