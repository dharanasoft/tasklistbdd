Feature: Manage Buckets
  As a user
  In order to categorize my tasks
  I should be able to add buckets

  Scenario: Add a bucket
    Given I am on the buckets page
    When I click on "New Bucket"
    And I fill in "Name" with "Work"
    And I click on "Create Bucket"
    Then there should be a bucket called "Work"
    And I should see "Work"
