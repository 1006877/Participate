package com.example;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(glue = "com/element/stepDefs",features = "src/main/resources", plugin = { "pretty" },dryRun=false,monochrome = true)
public class ParticipateApplicationTests {

}
