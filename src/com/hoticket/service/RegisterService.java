package com.hoticket.service;

import java.util.List;

import com.hoticket.dao.UserDAO;
import com.hoticket.modal.User;

public class RegisterService {

	UserDAO userDao = new UserDAO();
	/**
	 * check if the email already exists in the db 
	 * @param email address that user input for registration
	 * @param users all the users in the db
	 * @return	true, email not be registered yet
	 * 			false, email already exists
	 */
	public boolean verifyRegister(User user, List<User> users) {
		System.out.println("user");
		System.out.println(user.getEmail());
		System.out.println("verifyRegister");
		for (int i = 0; i < users.size(); i++) {
			if (user.getEmail().trim().equals(users.get(i).getEmail())) {
				System.out.println("false");
				return false;
			}		
		}
		System.out.println("true");
		return true;
	}

}
