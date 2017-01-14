package com.element.ProxyService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.element.edb.entity.DealEntity;
import com.element.service.CustomerService;

@Service("customerProxyService")
public class CustomerProxyService implements CustomerService{

	@Autowired
	private RestTemplate restTemplate;
	
	
	@Autowired
	private Environment env;
	
	@Override
	public List<DealEntity> getCustomer() {
		
		return restTemplate.getForObject(env.getProperty("Participation.BeginUrl").concat("getcustomer"), List.class);
	}

	@Override
	public DealEntity getCustomerByName(String name) {
		
		return restTemplate.getForObject(env.getProperty("Participation.BeginUrl").concat("getcustomerByName?name="+name ), DealEntity.class);
	}

	
	
	
}
