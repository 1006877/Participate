package com.element.edb.entity;
import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

/**
 * @author TCS
 *
 */
@MappedSuperclass
/*@EntityListeners({CommonAuditListener.class})*/
public class CommonEntity {

	/*private static final long serialVersionUID = 1L;
	
	@Column(length=30, name="audit_insert_login", updatable=false)
	private String auditInsertLogin;
	
	@Temporal(value = TemporalType.TIMESTAMP)
	@Column(name="audit_insert_dt", updatable=false)
	private Date auditInsertDate;
	
	@Column(length=30, name="audit_insert_pgm", updatable=false)
	private String auditInsertProgramName;
	
	@Column(length=30, name="audit_update_login", insertable=false)
	private String auditUpdateLogin;
	
	@Temporal(value = TemporalType.TIMESTAMP)
	@Column(name="audit_update_dt", insertable=false)
	private Date auditUpdateDate;
	
	@Column(length=30, name="audit_update_pgm", insertable=false)
	private String auditUpdateProgramName;
	
	private AuditObject insert;
	private AuditObject update;
	
	
	*//**
	 * @return login user
	 *//*
	public String getAuditInsertLogin() {
		return auditInsertLogin;
	}
	public String getAuditUpdateLogin() {
		return auditUpdateLogin;
	}
	public void setAuditUpdateLogin(String auditUpdateLogin) {
		this.auditUpdateLogin = auditUpdateLogin;
	}
	public Date getAuditUpdateDate() {
		return auditUpdateDate;
	}
	public void setAuditUpdateDate(Date auditUpdateDate) {
		this.auditUpdateDate = auditUpdateDate;
	}
	public String getAuditUpdateProgramName() {
		return auditUpdateProgramName;
	}
	public void setAuditUpdateProgramName(String auditUpdateProgramName) {
		this.auditUpdateProgramName = auditUpdateProgramName;
	}
	*//**
	 * @param login
	 *//*
	public void setAuditInsertLogin(String auditInsertLogin) {
		this.auditInsertLogin = auditInsertLogin;
	}
	*//**
	 * @return the date
	 *//*
	public Date getAuditInsertDate() {
		return auditInsertDate;
	}
	*//**
	 * @param date
	 *//*
	public void setAuditInsertDate(Date auditInsertDate) {
		this.auditInsertDate = auditInsertDate;
	}
	*//**
	 * @return program from which the record is updating.
	 *//*
	public String getAuditInsertProgramName() {
		return auditInsertProgramName;
	}
	*//**
	 * @param programName
	 *//*
	public void setAuditInsertProgramName(String auditInsertProgramName) {
		this.auditInsertProgramName = auditInsertProgramName;
	}
	
	@PreUpdate
	public void setAuditAtUpdate() {  
        this.auditUpdateDate = new Date();
        this.auditUpdateProgramName = getAuditProgram();
        *//**
		 * login method to be implemented
		 *//*
		//this.auditInsertLogin =auth.getPrincipal().toString();
        this.auditUpdateLogin="gen_funding_auth";
    } 
	
	@PrePersist  
    public void setAuditAtInsert() {  
        this.auditInsertDate = new Date();
        this.auditInsertProgramName = getAuditProgram();
        *//**
		 * login method to be implemented
		 *//*
		//this.auditInsertLogin =auth.getPrincipal().toString();
        this.auditInsertLogin="gen_funding_auth";
    } 
	
	*//**
	 * Constructor to initialize the fields.
	 *//*
	public CommonEntity() {
		super();
		this.insert = new AuditObject();
		this.update = new AuditObject();
	}
	*//**
	 * @return the insert
	 *//*
	@Embedded
    @AttributeOverrides( {
	    @AttributeOverride(name="login", column = @Column(name="audit_insert_login", updatable=false) ),
	    @AttributeOverride(name="programName", column = @Column(name="audit_insert_pgm", updatable=false) ),
	    @AttributeOverride(name="date", column = @Column(name="audit_insert_dt", updatable=false) )
    } )
	public AuditObject getInsert() {
		return insert;
	}
	*//**
	 * @param insert the insert to set
	 *//*
	public void setInsert(AuditObject insert) {
		this.insert = insert;
	}

	*//**
	 * @return the update
	 *//*
	@Embedded
    @AttributeOverrides( {
            @AttributeOverride(name="login", column = @Column(name="audit_update_login", insertable=false) ),
            @AttributeOverride(name="programName", column = @Column(name="audit_update_pgm", insertable=false) ),
            @AttributeOverride(name="date", column = @Column(name="audit_update_dt", insertable=false) )
    } )
	public AuditObject getUpdate() {
		return update;
	}

	*//**
	 * @param update the update to set
	 *//*
	public void setUpdate(AuditObject update) {
		this.update = update;
	}

	@Transient
	public String getAuditProgram() {
		return "Participation-Web";
	}
	*/
	
}
