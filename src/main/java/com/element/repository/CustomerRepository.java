package com.element.repository;

import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;

import com.element.edb.entity.Users;

@Transactional
public interface CustomerRepository  extends CrudRepository<Users, Integer>  {

	/*DealEntity findByName(@Param("name") String name);*/

}
