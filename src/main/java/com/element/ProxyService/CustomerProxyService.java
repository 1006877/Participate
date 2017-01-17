package com.element.ProxyService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.element.edb.entity.Users;
import com.element.service.CustomerService;

@Service("customerProxyService")
public class CustomerProxyService implements CustomerService{

	@Autowired
	private RestTemplate restTemplate;
	
	
	@Autowired
	private Environment env;
	
	@Override
	public List<Users> getCustomer() {
		
		return restTemplate.getForObject(env.getProperty("Participation.BeginUrl").concat("getcustomer"), List.class);
	}

	@Override
	public Users getCustomerByName(String name) {
		
		return restTemplate.getForObject(env.getProperty("Participation.BeginUrl").concat("getcustomerByName?name="+name ), Users.class);
	}

	
	
	
}
