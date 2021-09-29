Feature: Registration functionality scenarios

@Register @One
Scenario: Verify whether the user is able to register into the application by providing all the fields
	Given I launch the application
	And I navigate to account registration page
	When I provide all the below valid details
		|FirstName|Vishal										|
		|LastName |Gade  										|
		|Email    |gade.vishal4588@gmail.com|
		|Telephone|9988776655								|
		|Password |Testing@123							|
	And I select the private policy
	And I click on continue button
	Then I should see the user account has Successfully created	
		