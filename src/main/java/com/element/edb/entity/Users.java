package com.element.edb.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Data;

@Entity
@Table(name = "users")
public class Users implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int user_id;
	@Temporal(TemporalType.DATE)
	private Date admission_date;
	private String username;
	private String password;

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id")
	private List<Roles> roles = new ArrayList<Roles>();

	/*
	 * @OneToOne(cascade = CascadeType.ALL, optional = false, fetch =
	 * FetchType.EAGER, orphanRemoval = true) // @JoinColumn(name="USER_ID",
	 * nullable=false)
	 * 
	 * @PrimaryKeyJoinColumn private UserRoles userRoles;
	 */

	
}