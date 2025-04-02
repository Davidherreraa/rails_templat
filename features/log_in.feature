Feature: log in

As a User
If the user wants to log in to the page

Scenario: Signing in
Given the user is at the home page
When user presses the button called "log in/sign up" on the top right of the home page
Then User will be directed to the log in page
Then User will input both their username and password
Then user presses log in.

Scenario: Incorrect Sign in
Given the user is in the login page
When user enters invalid password/email
Then user will not be allowed to log in