package com.element.stepDefs;

import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.support.AnnotationConfigContextLoader;

import com.element.model.BeanConfiguration;

@ContextConfiguration(loader = AnnotationConfigContextLoader.class, classes = BeanConfiguration.class)
public class SpringIntegrationTest {

}
