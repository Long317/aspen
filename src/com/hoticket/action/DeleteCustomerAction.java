package com.hoticket.action;


import static com.hoticket.util.Constants.BODY_DEREGISTER;
import static com.hoticket.util.Constants.GENERAL;
import static com.hoticket.util.Constants.MOVIE;
import static com.hoticket.util.Constants.CUSTOMER;
import static com.hoticket.util.Constants.SEARCH_GENERAL;
import static com.hoticket.util.Constants.SEARCH_GENERAL_MOVIES;
import static com.hoticket.util.Constants.SEARCH_GENERAL_THEATRES;
import static com.hoticket.util.Constants.SEARCH_GENERAL_CUSTOMERS;
import static com.hoticket.util.Constants.SEARCH_CUSTOMER;
import static com.hoticket.util.Constants.SEARCH_MOVIE;
import static com.hoticket.util.Constants.SHOWING_MOVIES;
import static com.hoticket.util.Constants.SUBJECT_DEREGISTER;
import static com.hoticket.util.Constants.THEATRE;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.xwork.StringUtils;

import com.hoticket.dao.CustomerDAO;
import com.hoticket.dao.MovieDAO;
import com.hoticket.dao.ShowingDAO;
import com.hoticket.dao.TheatreDAO;
import com.hoticket.dao.UserDAO;
import com.hoticket.modal.*;
import com.hoticket.service.RegisterService;
import com.hoticket.service.SearchService;
import com.hoticket.service.emailService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteCustomerAction extends ActionSupport{
	/**
	 * 
	 */

	private static final long serialVersionUID = 1L;
	private int cus_id;
	public String execute() {
		System.out.println("Users id: "+ cus_id);
		Map session = (Map) ActionContext.getContext().get("session");
		UserDAO userDao = new UserDAO();
		List<User>Users=userDao.getUsers();
		User u=userDao.getCustomer(cus_id);
		userDao.DeleteUser(cus_id);
		System.out.println("Users id: "+ cus_id);
		emailService.send(u.getEmail(), SUBJECT_DEREGISTER, BODY_DEREGISTER);
		return SUCCESS;
}
	public int getCus_id() {
		return cus_id;
	}
	public void setCus_id(int cus_id) {
		this.cus_id = cus_id;
	}


}
