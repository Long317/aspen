package com.hoticket.action;

import java.util.Map;

import com.hoticket.dao.UserDAO;
import com.hoticket.modal.Billing_account;
import com.hoticket.modal.Customer;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AddAccountAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private String name;
	private int month;
	private int year;
	private String card_number;
	private int cvv;
	private int card_type;
	@SuppressWarnings("unchecked")
	public String execute() {
		UserDAO userdao=new UserDAO();
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		Customer customer=(Customer) session.get("login");
		Billing_account ba=new Billing_account();
		ba.setCard_holder(name);ba.setCard_number(card_number);ba.setCard_type(card_type);ba.setCustomer(customer);ba.setCvs(cvv);ba.setMonth(month);ba.setYear(year);
		userdao.addAcc(ba);
		session.put("login", userdao.getCustomer(customer.getId()));
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
	public String getCard_number() {
		return card_number;
	}
	public void setCard_number(String card_number) {
		this.card_number = card_number;
	}
}
