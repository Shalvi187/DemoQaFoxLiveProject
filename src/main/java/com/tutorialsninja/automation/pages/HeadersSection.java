package com.tutorialsninja.automation.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.tutorialsninja.automation.base.Base;
import com.tutorialsninja.automation.framework.Elements;

public class HeadersSection {
	
	public HeadersSection() {
		PageFactory.initElements(Base.driver,this);
	}
	
	@FindBy(xpath="//span[text()=\"My Account\"]")
	public static WebElement myAccountLink;
	
	@FindBy(linkText="Register")
	public static WebElement register;

	//reusable methods
	public static void navigateToRegister() {
		Elements.click(myAccountLink);
		Elements.click(register);
	}
}
