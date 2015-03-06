package com.hoticket.service;

import java.util.List;

import com.hoticket.dao.UserDAO;
import com.hoticket.modal.User;

public class LoginService {

	UserDAO userDao = new UserDAO();
	/**
	 * check if the email and password user enter 
	 * @param user current user who is logging in
	 * @param users all the users in the db
	 * @return	true, user login success
	 * 			false, user login fail
	 */
	public boolean verifyLogin(User user, List<User> users) {
		for (int i = 0; i < users.size(); i++) {
			if (user.getEmail().trim().equals(users.get(i).getEmail())) {
				if (user.getPassword().trim()
						.equals(users.get(i).getPassword())) {
					user.setRole(users.get(i).getRole());
					user.setFirst_name(users.get(i).getFirst_name());
					user.setLast_name(users.get(i).getLast_name());
					return true;
				}
				return false;
			}
		}
		return false;
	}

}
