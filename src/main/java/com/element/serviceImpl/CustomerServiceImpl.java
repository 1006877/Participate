package com.element.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.element.edb.entity.Users;
import com.element.repository.CustomerRepository;
import com.element.service.CustomerService;

@Service("customerServiceImpl")
public class CustomerServiceImpl implements CustomerService  {

	
	@Autowired
	private CustomerRepository customerRespository;
	
	
	@Override
	public List<Users> getCustomer() {
		return (List<Users>) customerRespository.findAll();
	}


	@Override
	public Users getCustomerByName(String name) {
	
		/*return  customerRespository.findOne(new Long(1));*/
		return null;
	}


	@Override
	public Users customerSave(Users user) {
		
		return customerRespository.save(user);
	}

}
