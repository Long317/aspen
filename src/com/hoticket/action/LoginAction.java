package com.hoticket.action;

import java.util.ArrayList;
import java.util.List;

import com.hoticket.dao.UserDAO;
import com.hoticket.modal.User;
import com.hoticket.service.LoginService;
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
	public String execute() {
		LoginService loginService= new LoginService();
		users = userDao.getUsers();
		System.out.println(users.size());
		if(!loginService.verifyLogin(user, users)){
			return ERROR;
		}
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
	
	

}
