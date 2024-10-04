Feature: User Management in PetStore

  Background:
    * url baseUrl

  Scenario: User management end-to-end
    # Create a new user
    Given path 'user'
    And request newUser
    When method POST
    Then status 200
    * def userId = response.message
    * newUser.id = parseInt(userId)
    * updatedUser.id = parseInt(userId)
    And match response == { "code": 200, "type": "unknown", "message": "#(userId)" }
    * print 'Create a new user User ID:', userId

    # Retrieve the created user
    Given path 'user', newUser.username
    When method GET
    Then status 200
    And match response == newUser

    # Update the user's name and email
    Given path 'user', newUser.username
    And request updatedUser
    When method PUT
    Then status 200
    And match response == { "code": 200, "type": "unknown", "message": "#(userId)" }

    # Retrieve the updated user
    Given path 'user', newUser.username
    When method GET
    Then status 200
    And match response == updatedUser

    # Delete the user
    Given path 'user', newUser.username
    When method DELETE
    Then status 200
    And match response == { "code": 200, "type": "unknown", "message": "#(newUser.username)" }
