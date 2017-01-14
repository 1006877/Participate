package com.element.service;

import java.util.List;

import com.element.edb.entity.DealEntity;

public interface CustomerService {

	List<DealEntity> getCustomer();

	DealEntity getCustomerByName(String name);
	
	

}
