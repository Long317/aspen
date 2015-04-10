
package com.hoticket.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hoticket.modal.Theatre;
import com.hoticket.util.ConnectionUtil;



public class TheatreDAO {
	Session session = null;

	  //create an object of TheaterDAO
	   private static TheatreDAO instance = new TheatreDAO();

	   //make the constructor private so that this class cannot be instantiated
	   private TheatreDAO(){}

	   //Get the only object available
	   public static TheatreDAO getInstance(){
	      return instance;
	   }

	/**
	 * get theatres list from theatre table
	 */
	@SuppressWarnings("unchecked")
	public List<Theatre> getTheatre() {
		List<Theatre> theatres = new ArrayList<Theatre>();
		try {

			session = ConnectionUtil.getSessionFactory().openSession();
			session.beginTransaction();
			theatres = (List<Theatre>) session.createQuery("from Theatre").list();
			session.getTransaction().commit();
			return theatres;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return theatres;
	}

	
	//get theatre by zipcode
	@SuppressWarnings("unchecked")
	public List<Theatre> getTheatreByZipcode(int input) {
		List<Theatre> theatres = new ArrayList<Theatre>();
		try {
			session = ConnectionUtil.getSessionFactory().openSession();
			session.beginTransaction();
			theatres = (List<Theatre>) session.createQuery("from Theatre where zipcode ="+ input).list();
			session.getTransaction().commit();
			return theatres;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return theatres;
	}
	
	//get theatre by city
		@SuppressWarnings("unchecked")
		public List<Theatre> getTheatreByCity(String input) {
			List<Theatre> theatres = new ArrayList<Theatre>();
			try {
				session = ConnectionUtil.getSessionFactory().openSession();
				session.beginTransaction();
				theatres = (List<Theatre>) session.createQuery("from Theatre where city ="+"'"+input+"'").list();
				session.getTransaction().commit();
				return theatres;

			} catch (Exception e) {
				e.printStackTrace();
			}

			return theatres;
		}
		
		//get theatre by state
				@SuppressWarnings("unchecked")
				public List<Theatre> getTheatreByState(String input) {
					List<Theatre> theatres = new ArrayList<Theatre>();
					try {
						session = ConnectionUtil.getSessionFactory().openSession();
						session.beginTransaction();
						theatres = (List<Theatre>) session.createQuery("from Theatre where state ="+"'"+input+"'").list();
						session.getTransaction().commit();
						return theatres;

					} catch (Exception e) {
						e.printStackTrace();
					}

					return theatres;
				}
				
	
	//get theatre by theatre name
		public Theatre getTheatreByName(String input) {
			Theatre theatre = new Theatre();
			try {
				session = ConnectionUtil.getSessionFactory().openSession();
				session.beginTransaction();
				theatre =  (Theatre) session.createQuery("from Theatre where name ="+"'"+input+"'").uniqueResult();
				session.getTransaction().commit();
				return theatre;

			} catch (Exception e) {
				e.printStackTrace();
			}

			return theatre;
		}
	
	//add a new theatre in the theatre table
	public void addTheatre(Theatre theatre) {

		Session session = null;
		try {
	
			session = ConnectionUtil.getSessionFactory().openSession();
			Transaction transaction = session.beginTransaction();		
			Query query = session.getNamedQuery("calladdTheatreProcedure");
			query.setParameter("id",theatre.getId());
			query.setParameter("name", theatre.getName());
			query.setParameter("zipcode", theatre.getZipcode());
			query.setParameter("state", theatre.getState());
			query.setParameter("address", theatre.getCity());
			query.setParameter("phone_number", theatre.getPhone_number());
			query.setParameter("supported", theatre.getSupported());
			
			query.executeUpdate();
			transaction.commit();
			session.flush();
			session.close();
		} catch (Exception e) {
			e.getMessage();
			e.printStackTrace();
		}finally{
			session.close();
		}
		
	}
}
