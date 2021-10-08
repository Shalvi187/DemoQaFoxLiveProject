Feature: Registration functionality scenarios

@Register @One
Scenario: Verify whether the user is able to register into the application by providing all the fields
	Given I launch the application
	And I navigate to account registration page
	When I provide all the below valid details
		|FirstName|Vishal										|
		|LastName |Gade  										|
		|Email    |gade.vishal4555@gmail.com|
		|Telephone|9988776655								|
		|Password |Testing@123							|
	And I select the private policy
	And I click on continue button
	Then I should see the user account has Successfully created	
		
@Register @Two
Scenario: Verify whether the user is not allowed to register on skipping mandatory fields
	Given I launch the application
	And I navigate to account registration page
	When I click on continue button
	Then I should see the account is not created
	And I should see the error messages informing the user to fill the mandatory fields
	
@Register @Three
Scenario: Verify whether the user is able to register into the application by option for Newsletter Subscription.
	Given I launch the application 
	And I navigate to account registration page
	When I provide all the below valid details
		|FirstName|Vishal										|
		|LastName |Gade  										|
		|Email    |gade.vishal4555@gmail.com|
		|Telephone|9988776655								|
		|Password |Testing@123							|	
	And I subscribe to newsletter
	And I select the private policy
	And I click on continue button
	Then I should see the user account has Successfully created	
	
@Register @Four
Scenario:	Verify whether the user is restricted from registrating a duplicate account
	Given I launch the application 
	And I navigate to account registration page
	When I provide the below duplicate details
		|FirstName|Vishal										|
		|LastName |Gade  										|
		|Email    |gade.vishal4555@gmail.com|
		|Telephone|9988776655								|
		|Password |Testing@123							|	
	And I select the private policy
	And I click on continue button
	Then I should see that the user is restricted from creating duplicate account
	
	