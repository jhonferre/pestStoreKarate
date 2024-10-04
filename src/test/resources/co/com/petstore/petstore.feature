Feature: User Management in PetStore

  Background:
    * url baseUrl

  Scenario: Create a new user
    Given path 'user'
    And request newUser
    When method POST
    Then status 200
    And match response == { "code": 200, "type": "unknown", "message": "#(newUser.id.toString())" }

  Scenario: Retrieve the created user
    Given path 'user', newUser.username
    When method GET
    Then status 200
    And match response == newUser

  Scenario: Update the user's name and email
    Given path 'user', newUser.username
    And request updatedUser
    When method PUT
    Then status 200
    And match response == { "code": 200, "type": "unknown", "message": "#(updatedUser.id.toString())" }

  Scenario: Retrieve the updated user
    Given path 'user', newUser.username
    When method GET
    Then status 200
    And match response == updatedUser

  Scenario: Delete the user
    Given path 'user', newUser.username
    When method DELETE
    Then status 200
    And match response == { "code": 200, "type": "unknown", "message": "#(newUser.username)" }
