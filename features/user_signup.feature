Feature: User Signup Feature

  Scenario: New User
    Given I have not yet signed up
    When I go to the "new user registration" page
    And I fill in "Email" with "test@checklist.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I click "Sign up"
    Then I should see "Thank you for signing up"