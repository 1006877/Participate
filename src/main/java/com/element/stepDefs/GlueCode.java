package com.element.stepDefs;

import org.springframework.stereotype.Component;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;


public class GlueCode {

	@Given("^I have two numbers$")
	public void I_have_two_numbers() throws Throwable {
	    // Express the Regexp above with the code you wish you had
	    //throw new PendingException();
		System.out.println("GlueCode.I_have_two_numbers()");
	}

	@Then("^I should get result$")
	public void I_should_get_result() throws Throwable {
	    // Express the Regexp above with the code you wish you had
	   // throw new PendingException();
		System.out.println("GlueCode.I_should_get_result()");
	}
	
	
}
