package com.element.edb.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class Users implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int user_id;

	private String username;
	private String password;
	
	@OneToMany(cascade = CascadeType.ALL,
            fetch = FetchType.LAZY)
	@JoinColumn(name="user_id")
	private List<Roles> roles= new ArrayList<Roles>();
	
	

	/*
	 * @OneToOne(cascade = CascadeType.ALL, optional = false, fetch =
	 * FetchType.EAGER, orphanRemoval = true) // @JoinColumn(name="USER_ID",
	 * nullable=false)
	 * 
	 * @PrimaryKeyJoinColumn private UserRoles userRoles;
	 */

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public List<Roles> getRoles() {
		return roles;
	}

	public void setRoles(List<Roles> roles) {
		this.roles = roles;
	}

}
