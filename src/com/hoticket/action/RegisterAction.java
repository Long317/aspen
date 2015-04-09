package com.hoticket.action;

import java.util.ArrayList;

import static com.hoticket.util.Constants.*;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang.xwork.StringUtils;

import com.hoticket.dao.UserDAO;
import com.hoticket.modal.User;
import com.hoticket.service.RegisterService;
import com.hoticket.service.emailService;
import com.hoticket.util.EncryptUtils;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class RegisterAction extends ActionSupport implements ModelDriven<User> {
	/**
	 * 
	 */
	private boolean term_condition;
	private String confirmpass;
	private static final long serialVersionUID = 1L;
	private User user = new User();
	private List<User> users = new ArrayList<User>();
	private UserDAO userDao = new UserDAO();

	@Override
	public User getModel() {
		return user;
	}

	/**
	 * this method will call loginService, which will setup role attribute for
	 * user. 0: user, 1: admin, 2.manager, 3. Error
	 */
	@SuppressWarnings("unchecked")
	public String execute() {
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		RegisterService registerService = new RegisterService();
		users = userDao.getUsers();
		//encrypt user password here
		user.setPassword(EncryptUtils.base64encode(user.getPassword())); 
		
		//verify register
		if (!registerService.verifyRegister(user, users)) {
			return ERROR;
		}
		userDao.addUser(user);
		session.put("registerError", null);
		session.put("login", user);
		emailService.send(user.getEmail(), SUBJECT_REGISTER, BODY_REGISTER);
		return SUCCESS;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public boolean isTerm_condition() {
		return term_condition;
	}

	public void setTerm_condition(boolean term_condition) {
		this.term_condition = term_condition;
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
		if (StringUtils.isEmpty(user.getUser_name())
				|| user.getUser_name().length() > 20
				|| user.getUser_name().length() < 6) {
			addFieldError("username",
					"username should be between 6 and 20 chars long");
			session.put("registerError", 1);
		}
		if (term_condition) {
			addFieldError("termcondition",
					"Please  check term condition before submit your form");
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