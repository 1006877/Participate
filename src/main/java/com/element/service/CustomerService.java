package com.element.service;

import java.util.List;

import com.element.edb.entity.Users;

public interface CustomerService {

	List<Users> getCustomer();

	Users getCustomerByName(String name);
	
	

}
