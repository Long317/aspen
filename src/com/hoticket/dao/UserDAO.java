package com.hoticket.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;

import com.hoticket.modal.User;
import com.hoticket.util.ConnectionUtil;

public class UserDAO {
	Session session = null;

	/**
	 * get users list from user table
	 */
	@SuppressWarnings("unchecked")
	public List<User> getUsers() {

		List<User> users = new ArrayList<User>();
		try {

			session = ConnectionUtil.getSessionFactory().getCurrentSession();
			session.beginTransaction();
			users = (List<User>) session.createQuery("from User").list();
			session.getTransaction().commit();
			return users;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return users;
	}

	public void addUser(User user) {
		// session.save(user);
	}
}
