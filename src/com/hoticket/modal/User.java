package com.hoticket.modal;


import java.io.Serializable;
import javax.persistence.*;
import org.hibernate.annotations.NamedNativeQueries;
import org.hibernate.annotations.NamedNativeQuery;
@NamedNativeQueries({
	@NamedNativeQuery(
	name = "calladdCustomerProcedure",
	query = "CALL addCustomer(:email,:password,:user_name)",
	resultClass = User.class
	)
})


@Entity  
@Table(name = "user")  
@Inheritance(strategy=InheritanceType.JOINED)  

public class User implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id  
	@GeneratedValue(strategy=GenerationType.AUTO)  
	@Column(name = "id")  
	private int id;
	@Column(name="email")
	private String email;
	@Column(name="first_name")
	private String first_name;
	@Column(name="last_name")
	private String last_name;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	
	

}
