Feature: User Signin Feature
#imperative
  Scenario: Successful Login
    Given a user exists with email "ryan@test.com" and password "password"
    When I go to the "new user session" page
    And I fill in "Email" with "ryan@test.com"
    And I fill in "Password" with "oassword"
    And I click "Sign in"
    Then I should see "Thank you for signing in"

#declarative
 #Scenario: User is greeted upon login
   #Given the user "Ryan" has an account
   #When he logs in
   #Then he should see "Welcome, Ryan"