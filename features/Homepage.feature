Feature: Homepage 


Scenario: Looking at Homepage
    Given user is logged in
    When user reaches Homepage
    Then they will see their workout plans

Scenario: Creating new workout plan
    Given user is on the Homepage
    When userpress create new workout
    Then userwill be redirected to new workout plan page

Scenario: Deleting workout plan
    Given user is on the Homepage
    When user presses on a already made workout plan
    Then user will be able to press delete
    Then the plan will be deleted

Scenario: Editing workout plan
    Given user is on the Homepage
    When user press on a already made workout plan
    Then user will be able edit existing plan

Scenario: Logging out
    Given user is on Homepage
    When they press on profile
    Then press on sign out
    Then user will be signed out 
    Then will be redirected to login page