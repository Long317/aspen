package com.hoticket.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
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

	// save rating r to the db
	// parameter: no
	// output: none
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

	// delete rating r with id int from the db
	// parameter: id
	// output: none
	public boolean DeleteRate(int id) {

		session = ConnectionUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		try {
			 Rating r=(Rating) session.get(Rating.class, id);
		     session.delete(r);
		     tx.commit();
		     session.close();
			    return true;
		}
		catch (Exception e) {
		    if (tx!=null) tx.rollback();
		    session.close();
		    return false;
		}
	}
	
	// get rating by id
	// parameter: id
	// output: none
	public Rating getRate(int id) {
		Rating r = new Rating();
		try {

			session = ConnectionUtil.getSessionFactory().openSession();
			session.beginTransaction();
			String query = "from Rating where id =:id";
			r =(Rating)session.createQuery(query).setParameter("id", id).uniqueResult();
			session.getTransaction().commit();
			return r;
		} catch (Exception e) {
			e.printStackTrace();
			return r;
		}

	}

}
