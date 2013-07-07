Feature: Delete comment
  As a blog owner
  I can delete comment

  Scenario: Delete comment
    Given there is a post with title "Dummy post" and content "Dummy content"
    And there is a comment on this post
    When I am on the post page
    And I click "Delete Comment"
    Then the comment should be deleted
