package com.hoticket.action;

import com.opensymphony.xwork2.ActionSupport;

import static com.hoticket.util.Constants.BODY_REGISTER;
import static com.hoticket.util.Constants.SUBJECT_REGISTER;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang.xwork.StringUtils;

import com.hoticket.dao.UserDAO;
import com.hoticket.modal.*;
import com.hoticket.service.RegisterService;
import com.hoticket.service.emailService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class AddCustomerAction extends ActionSupport implements ModelDriven<User>{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String confirmpass;
	
	private User user = new User();
	
	public User getModel() {
		return user;
	}
	
	@Override
	public String execute() {
		System.out.println(1);
		@SuppressWarnings("rawtypes")
		UserDAO userdao=new UserDAO();
		Map session = (Map) ActionContext.getContext().get("session");
		RegisterService registerService = new RegisterService();
		//verify register
		if (!registerService.verifyRegister(user)) {
			return ERROR;
		}
		registerService.addCustomer(user);
		List<User> users= userdao.getUsers();
		session.put("registerError", null);
		session.put("ALL_USERS", users);
		emailService.send(user.getEmail(), SUBJECT_REGISTER, BODY_REGISTER);
		return SUCCESS;
}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	public String getConfirmpass() {
		return confirmpass;
	}

	public void setConfirmpass(String confirmpass) {
		this.confirmpass = confirmpass;
	}

	@SuppressWarnings("unchecked")
	public void validate() {
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");

		if (StringUtils.isEmpty(user.getEmail())) {
			addFieldError("email", "email is required");
			session.put("registerError", 1);
		}
		
		if (user.getEmail().indexOf("@") == -1 ) {
			addFieldError("email", "email is invalid");
			session.put("registerError", 1);
		}

		if (StringUtils.isEmpty(user.getPassword())) {
			addFieldError("password", "password can't be empty");
			session.put("registerError", 1);
		}

		if (!user.getPassword().equals(confirmpass)) {
			addFieldError("passwordnotequal",
					"confirm password is not equal to your input password ");
			session.put("registerError", 1);
		}
	}
	
}
