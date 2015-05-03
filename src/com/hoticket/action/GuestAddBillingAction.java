package com.hoticket.action;
import java.util.Map;

import com.hoticket.dao.UserDAO;
import com.hoticket.modal.Guest_billing_account;
import com.hoticket.modal.Guest_billing_address;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


public class GuestAddBillingAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private String name;
	private int month;
	private int year;
	private String card_number;
	private int cvv;
	private int card_type;
	private String address;
	private String city;
	private String state;
	private int zipcode;
	private String first_name;
	private String last_name;
    private String email;
	@SuppressWarnings("unchecked")
	public String execute(){
		// get session object
		UserDAO userdao=new UserDAO();
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		Guest_billing_account ba=new Guest_billing_account();
		ba.setCard_holder(name);ba.setCard_number(card_number);ba.setCard_type(card_type);ba.setEmail(email);ba.setCvs(cvv);ba.setMonth(month);ba.setYear(year);
	
		Guest_billing_address bd=new Guest_billing_address();		
		bd.setAddress(address);
		bd.setCity(city);
		bd.setFirst_name(first_name);
		bd.setLast_name(last_name);
		bd.setState(state);
		bd.setZipcode(zipcode);
		int baccid=userdao.addGuestBillingAcc(ba);
		int baddid=userdao.addGuestBillingAdd(bd);
		Guest_billing_account bacc=userdao.setbillingacc(baccid);
		Guest_billing_address badd=userdao.setbillingadd(baddid);
		session.put("bacc", bacc);
		session.put("badd", badd);
		return SUCCESS;
	
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public String getCard_number() {
		return card_number;
	}

	public void setCard_number(String card_number) {
		this.card_number = card_number;
	}

	public int getCvv() {
		return cvv;
	}

	public void setCvv(int cvv) {
		this.cvv = cvv;
	}

	public int getCard_type() {
		return card_type;
	}

	public void setCard_type(int card_type) {
		this.card_type = card_type;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	
	

}
