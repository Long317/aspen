package com.hoticket.action;

import java.util.Map;
import com.hoticket.dao.MovieDAO;
import com.hoticket.dao.UserDAO;
import com.hoticket.modal.Customer;
import com.hoticket.modal.Movie;
import com.hoticket.util.EncryptUtils;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class EditCustomerAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	private int cus_id;
	private String user_name;
	private String first_name;
	private String last_name;
	private String email;
	private String password;



	@SuppressWarnings("unchecked")
	
	@Override
	public String execute() throws Exception {
		System.out.println("cus id from edit action: "+cus_id);
		UserDAO userDAO = new UserDAO();
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		
		// create Movie object
		Customer c=new Customer();
		c.setFirst_name(first_name);
		c.setEmail(email);
		c.setLast_name(last_name);
		c.setPassword(password);
		c.setUser_name(user_name);
		userDAO.updateUser(c, cus_id);
		
		
		return SUCCESS;
		
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

	public int getCus_id() {
		return cus_id;
	}



	public void setCus_id(int cus_id) {
		this.cus_id =cus_id;
	}
	
}
