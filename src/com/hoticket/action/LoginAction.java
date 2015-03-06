package com.hoticket.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.xwork.StringUtils;

import com.hoticket.dao.UserDAO;
import com.hoticket.modal.User;
import com.hoticket.service.LoginService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class LoginAction extends ActionSupport implements ModelDriven<User> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	User user = new User();
	List<User> users = new ArrayList<User>();
	UserDAO userDao = new UserDAO();

	@Override
	public User getModel() {
		return user;
	}
	
	/**
	 * this method will call loginService, which will setup role attribute
	 * for user. 0: user, 1: admin, 2.manager, 3. Error
	 */
	@SuppressWarnings("unchecked")
	public String execute() {
		LoginService loginService= new LoginService();
		users = userDao.getUsers();
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		if(!loginService.verifyLogin(user, users)){
			addFieldError("password", "email and password are not matched");  
            session.put("loginError", 1);
			return ERROR;
		}
		
		session.put("login", user);
		switch(user.getRole()){
		case 0: return "user";
		case 1:return "admin";
		case 2: return "manager";
		default: return ERROR;
		
		}
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
	
	
	   @SuppressWarnings("unchecked")
	public void validate() {
		   @SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
			
	        if (StringUtils.isEmpty(user.getEmail())) {  
	            addFieldError("email", "email is required"); 
	            session.put("loginError", 1);
	        }else if (user.getEmail().indexOf("@")==-1||user.getEmail().indexOf(".com")==-1){
	        	 addFieldError("email", "email is invalid"); 
	        	 session.put("loginError", 1);
	        }
	        	
	        if (StringUtils.isEmpty(user.getPassword())) {  
	            addFieldError("password", "password can't be empty");  
	            session.put("loginError", 1);
	        }  
	    } 

}
