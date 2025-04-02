Feature: Setup Account

As a User
If the user wants to setup their account


Scenario: First Time logging in
    Given user creates their account
    When they press Sign up
    Then they should be taken to account set up

Scenaro: Already have an account
    Given a user is logging in
    When they press log in 
    They should be redirected to home page

Scenario: User enters their personal information
    Given the user is on the profile setup page
    When they enter age "25"
    And they enter their weigth as "125 lbs"
    And they enter their height as "5ft 2in"
    And they enter their gender as "Female"
    Then user should press save button
    And they should see confirmation message

 Scenario: User enters invalid data
    Given the user is on the profile setup page   
    When they enter their age as "-5"
    And they enter their weight as "abc lbs"
    And they enter their height as "xyz ft x in"
    The user should press save button
    Then they should recieve an error message

