Feature: User
  A user wants to manage himself and/or other users

  Scenario: signup a user
    Given I am on home page
    Then I follow "Sign up"
    When I fill in "Username" with "Test"
    And I fill in "Email" with "test@test.com"
    And I fill in "Password" with "12345678"
    And I fill in "Password confirmation" with "12345678"
    And I press "Sign up"
    Then I should see "Olá, Test My Account | Logout"
    And I should see "Listing blog_posts"

  Scenario: editing an existing user
    Given I have a user named "test" with email "test@test.com" and password "12345678"
    When I am logged in with "test@test.com" and "12345678"
    Then I should see "Olá, test My Account | Logout"
    When I follow "My Account"
    Then I should see "Edit User"
    And I fill in "Username" with "testing"
    And I press "Update"
    Then I should see "You updated your account successfully."
    And I should see "Olá, testing My Account | Logout"

  Scenario: Logging in and logging out
    Given I have a user named "test" with email "test@test.com" and password "12345678"
    Given I am on home page
    Then I follow "Login"
    And I fill in "Email" with "test@test.com"
    And I fill in "Password" with "12345678"
    And I press "Sign in"
    Then I should see "Olá, test My Account | Logout"
    When I follow "Logout"
    Then I should see "Sign up | Login"