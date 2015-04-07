package com.hoticket.modal;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="theatre")
public class Theatre implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id  
	@GeneratedValue(strategy=GenerationType.AUTO)  
	@Column(name = "id")  
	private int id;
	@Column(name="name")
	private String name;
	@Column(name="city")
	private String city;
	@Column(name="state")
	private String state;
	@Column (name="zipcode")
	private int zipcode;
	@Column(name="address")
	private String address;
	@Column(name="phone_number")
	private String phone_number;
	@Column(name="supported")
	private int supported;
	@OneToMany(mappedBy="theatre")
	private Set <Showing> showing;
	@ManyToMany(mappedBy="favorite_theatres")
	private Set<Customer> customers;
	
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
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getZipcode() {
		return zipcode;
	}
	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	public int getSupported() {
		return supported;
	}
	public void setSupported(int supported) {
		this.supported = supported;
	}
	public Set<Showing> getShowing() {
		return showing;
	}
	public void setShowing(Set<Showing> showing) {
		this.showing = showing;
	}
	public Set<Customer> getCustomers() {
		return customers;
	}
	public void setCustomers(Set<Customer> customers) {
		this.customers = customers;
	}

	

}
