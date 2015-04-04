package com.hoticket.modal;

import java.io.Serializable;
import java.sql.Date;
import java.util.*;

import javax.persistence.*;  

@Entity  
@Table(name="customer")  
@PrimaryKeyJoinColumn(name="id")  
public class Customer extends User implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Column(name="birthday")
	private Date birthday;
	@Column(name="gender")
	private int gender;
	@Column(name="zipcode")
	private int zipcode;
	@Column (name="genres")
	private String genres;
	@OneToMany(mappedBy="customer")
	private Set<Billing_account> billing_accounts;
	@OneToMany(mappedBy="customer")
	private Set<Billing_address> billing_addresses;
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public int getZipcode() {
		return zipcode;
	}
	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}
	public String getGenres() {
		return genres;
	}
	public void setGenres(String genres) {
		this.genres = genres;
	}
	public Set<Billing_account> getBilling_accounts() {
		return billing_accounts;
	}
	public void setBilling_accounts(Set<Billing_account> billing_accounts) {
		this.billing_accounts = billing_accounts;
	}
	public Set<Billing_address> getBilling_addresses() {
		return billing_addresses;
	}
	public void setBilling_addresses(Set<Billing_address> billing_addresses) {
		this.billing_addresses = billing_addresses;
	}

	

}
