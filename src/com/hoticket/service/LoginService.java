package com.hoticket.service;

import com.hoticket.dao.UserDAO;
import com.hoticket.modal.Customer;
import com.hoticket.modal.User;

public class LoginService {
	private UserDAO userDao = new UserDAO();
	/**
	 * check if the email and password user enter 
	 * @param user current user who is logging in
	 * @param users all the users in the db
	 * @return	true, user login success
	 * 			false, user login fail
	 */
	public User verifyLogin(String email, String pass) {
		User user=userDao.checkUser(email);
		if(user!=null){
				if (user.getPassword().trim()
						.equals(pass.trim()) ){
					return user;
				}}
				return null;
	}
	public Customer getCustomer(User user) {
		Customer customer=userDao.getCustomer(user.getId());
		return customer;
	}

}
