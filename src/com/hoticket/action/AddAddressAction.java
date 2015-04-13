package com.hoticket.action;

import java.util.Map;

import com.hoticket.dao.UserDAO;
import com.hoticket.modal.Billing_address;
import com.hoticket.modal.Customer;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AddAddressAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	
	private String address;
	private String city;
	private String state;
	private int zipcode;
	private String first_name;
	private String last_name;

	@SuppressWarnings("unchecked")
	
	@Override
	public String execute() throws Exception {
		UserDAO userdao=new UserDAO();
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		
		// create Billing_address object
		Billing_address baddr = new Billing_address();
		baddr.setAddress(address);
		baddr.setCity(city);
		baddr.setFirst_name(first_name);
		baddr.setLast_name(last_name);
		baddr.setState(state);
		baddr.setZipcode(zipcode);

		Customer customer=(Customer) session.get("login");
		baddr.setCustomer(customer);
		
		
		// add it to DAO
		userdao.addAddr(baddr);
		session.put("login", userdao.getCustomer(customer.getId()));
		
		return SUCCESS;
	}
	
	
	

	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	
	
	
	
	
}
