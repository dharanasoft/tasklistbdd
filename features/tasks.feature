Feature: Manage Tasks
  As a user
  In order to track my todo list
  I should be able to manage tasks

  Scenario: Add a task
    Given there is a bucket called "Work"
    And I am on the buckets page
    When I click on "Work"
    And I click on "New Task"
    And I fill in "Title" with "Learn Cucumber"
    And I click on "Create Task"
    Then I should see "Learn Cucumber"
    And there should be a task called "Learn Cucumber"
  
  Scenario: Show grouped tasks
    Given there is a bucket called "Work"
    And the bucket "Work" has the following tasks
      | title             | done  |
      | Learn cucumber    | false |
      | Learn controllers | true  |
      | Learn Kung Fu     | false |
    When I visit the tasks page for "Work"
    Then I should see "Learn cucumber" within "#pending"
    And I should see "Learn controllers" within "#done"
    And I should see "Learn Kung Fu" within "#pending"
