package com.element.serviceImpl;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.element.edb.entity.Roles;
import com.element.edb.entity.Users;
import com.element.repository.CustomerRepository;

@Repository
public class UserServiceImpl {
	@Autowired
	private CustomerRepository customerRespository;
	
	@PersistenceContext
	private EntityManager em;
	
	
	@Transactional
	public Users modifyUserNameById(int id, String name){
		
		
		boolean flag =  true;
		Users user = customerRespository.findOne(id);
		Roles roles = new Roles();
		roles.setRole_id(1);
		roles.setRole("ROLE_CLIENT");
		roles.setUser_id(1);
		
		user.setUsername(name);
		em.merge(user);
		em.merge(roles);
		/*if (flag) {
			throw new IllegalArgumentException();
		}*/
		
		return user;
		
		
		
	}

}
