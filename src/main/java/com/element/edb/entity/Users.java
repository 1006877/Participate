package com.element.edb.entity;


import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table (name = "users")
public class Users implements Serializable {

	
	private  static final long serialVersionUID = 1L;
	
	@Id
    private int id;
	
	private String name ; 
	
	private String email  ;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	} 
	
	
	
	
}
