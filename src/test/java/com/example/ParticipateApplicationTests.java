package com.example;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.support.AnnotationConfigContextLoader;

import com.element.model.BeanConfiguration;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(glue = "src/main/java/com/element/stepDefs", features = "src/main/resources", 
format = { "pretty" })
public class ParticipateApplicationTests {

}
