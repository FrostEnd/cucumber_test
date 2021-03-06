Feature: BlogPost
  Managing blog posts

  Background:
    Given I have a user named "test" with email "test@test.com" and password "12345678"
    When I am logged in with "test@test.com" and "12345678"

  Scenario: Managing a blog post
    Given I am on home page
    Then I should see "Listing blog_posts"
    And I should see "Title Content"
    And I should not see "Blog Post Title"
    And I should not see "This is the first blog post updated!"
    And I should not see "Show"
    And I should not see "Edit"
    And I should not see "Destroy"
    When I follow "New Blog post"
    Then I should see "New blog_post"
    And I fill in "Title" with "Blog Post Title"
    And I fill in "Content" with "This is the first blog post created!"
    And I press "Save"
    Then I should see "Blog post was successfully created."
    And I should see "Title: Blog Post Title"
    And I should see "Content: This is the first blog post created!"
    When I follow "Edit"
    Then I should see "Editing blog_post"
    And I fill in "Content" with "This is the first blog post updated!"
    And I press "Save"
    Then I should see "Blog post was successfully updated."
    And I should see "Title: Blog Post Title"
    And I should see "Content: This is the first blog post updated!"
    When I follow "Back"
    Then I should see "Listing blog_posts"
    And I should see "Title Content"
    And I should see "Blog Post Title"
    And I should see "This is the first blog post updated!"
    And I should see "Show"
    And I should see "Edit"
    And I should see "Destroy"
    When I follow "Destroy" and reject alert
    Then I should see "Listing blog_posts"
    And I should see "Title Content"
    And I should see "Blog Post Title"
    And I should see "This is the first blog post updated!"
    And I should see "Show"
    And I should see "Edit"
    And I should see "Destroy"
    When I follow "Destroy" and accept alert
    Then I should see "Listing blog_posts"
    And I should see "Title Content"
    And I should not see "Blog Post Title"
    And I should not see "This is the first blog post updated!"
    And I should not see "Show"
    And I should not see "Edit"
    And I should not see "Destroy"