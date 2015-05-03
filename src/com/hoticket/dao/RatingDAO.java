package com.hoticket.dao;


import org.hibernate.Session;

import com.hoticket.modal.Rating;
import com.hoticket.util.ConnectionUtil;

public class RatingDAO {
	Session session = null;

	// create an object of MovieDAO
	private static RatingDAO instance = new RatingDAO();

	// make the constructor private so that this class cannot be instantiated
	private RatingDAO() {
	}

	// Get the only object available
	public static RatingDAO getInstance() {
		return instance;
	}

	// get all movies from database
	// parameter: no
	// output: list of movies
	public void addRate(Rating r) {

		try {

			session = ConnectionUtil.getSessionFactory().getCurrentSession();
			session.beginTransaction();
			session.save(r);
			session.getTransaction().commit();
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}


}
