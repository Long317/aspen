package com.hoticket.modal;

import java.io.Serializable;

<<<<<<< HEAD
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.OneToOne;
import javax.persistence.UniqueConstraint;
=======
import javax.persistence.*;

>>>>>>> refs/remotes/origin/master
import org.hibernate.annotations.NamedNativeQueries;
import org.hibernate.annotations.NamedNativeQuery;
@NamedNativeQueries({
	@NamedNativeQuery(
	name = "calladdCustomerProcedure",
	query = "CALL addCustomer(:email,:password,:user_name)",
	resultClass = User.class
	)
})

<<<<<<< HEAD
=======

>>>>>>> refs/remotes/origin/master
@Entity
<<<<<<< HEAD
@Table(name = "user", catalog = "308 project", uniqueConstraints = {
		@UniqueConstraint(columnNames = "email") })

=======
@Table(name="user")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)  
@DiscriminatorColumn(name="type",discriminatorType=DiscriminatorType.STRING) 
@DiscriminatorValue(value="user")  
>>>>>>> refs/remotes/origin/master
public class User implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	private int id;
	@Column(name="first_name")
	private String first_name;
	@Column(name="last_name")
	private String last_name;
	@Column(name="email")
	private String email;
	@Column (name="password")
	private String password;
	@Column(name="role")
	private int role;
	@Column(name="user_name")
	private String user_name;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	
	

}
