package com.element.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.element.edb.entity.DealEntity;
import com.element.repository.CustomerRepository;
import com.element.service.CustomerService;

@Service("customerServiceImpl")
public class CustomerServiceImpl implements CustomerService  {

	
	@Autowired
	private CustomerRepository customerRespository;
	
	
	@Override
	public List<DealEntity> getCustomer() {
		return (List<DealEntity>) customerRespository.findAll();
	}


	@Override
	public DealEntity getCustomerByName(String name) {
	
		return  customerRespository.findOne(new Long(1));
	}

}
