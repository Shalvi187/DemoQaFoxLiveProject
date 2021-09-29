package com.tutorialsninja.automation.stepdef;

import com.tutorialsninja.automation.base.Base;

import cucumber.api.DataTable;
import cucumber.api.java.en.*;

public class Register {

	@Given("^I launch the application$")
	public void i_launch_the_application(){
	  Base.driver.get(Base.reader.getUrl());
	}

	@And("^I navigate to account registration page$")
	public void i_navigate_to_account_registration_page(){
	   
	}

	@When("^I provide all the below valid details$")
	public void i_provide_all_the_below_valid_details(DataTable dataTable){
	    
	}

	@And("^I select the private policy$")
	public void i_select_the_private_policy(){
	    
	}

	@And("^I click on continue button$")
	public void i_click_on_continue_button(){
	    
	}

	@Then("^I should see the user account has Successfully created$")
	public void i_should_see_the_user_account_has_Successfully_created(){
	    
	}


}
