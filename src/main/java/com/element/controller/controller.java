package com.element.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.element.edb.entity.Users;
import com.element.service.CustomerService;
import com.element.serviceImpl.UserServiceImpl;

@RestController
@RequestMapping("tcs")
public class controller {

	@Autowired
	@Qualifier("customerServiceImpl")
	private CustomerService customerService;
	
	@Autowired
	private UserServiceImpl userServiceImpl;
	
	@RequestMapping(value="/getcustomer" ,method=RequestMethod.GET)
    public  List<Users> getCustomer(){
    	
    	List<Users> custList = customerService.getCustomer();
    	ClassLoader name  = controller.class.getClass().getClassLoader();
    	
    	
		return custList;
		
	}
   
    
    @RequestMapping(value="/getcustomerByName/{id}/{name}" ,method=RequestMethod.GET)
    public Users getCustomerByName(@PathVariable Integer id,@PathVariable String name){
		return userServiceImpl.modifyUserNameById(id,name);
		
	}
   
    
    @RequestMapping(value="/customerSave" ,method=RequestMethod.POST)
    public  Users customerSave(@RequestBody Users user){
    	
    	return customerService.customerSave(user);
    	
    	
	}
   
	
}
