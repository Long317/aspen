
package com.hoticket.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.annotations.NamedNativeQueries;
import org.hibernate.annotations.NamedNativeQuery;
import org.hibernate.transform.Transformers;

import com.hoticket.modal.*;
import com.hoticket.util.ConnectionUtil;
@NamedNativeQueries({
	@NamedNativeQuery(
	name = "callgetMovieByTheatreIdProcedure",
	query = "CALL getMovieByTheatreId(:input)",
	resultClass = User.class
	)
})

public class ShowingDAO {
	Session session = null;

	  //create an object of TheaterDAO
	   private static  ShowingDAO instance = new ShowingDAO();

	   //make the constructor private so that this class cannot be instantiated
	   private ShowingDAO(){}

	   //Get the only object available
	   public static ShowingDAO getInstance(){
	      return instance;
	   }

	/**
	 * get Showing list from Showing table
	 */
	@SuppressWarnings("unchecked")
	public List<Showing> getShowing() {
		List<Showing> showings = new ArrayList<Showing>();
		try {

			session = ConnectionUtil.getSessionFactory().getCurrentSession();
			session.beginTransaction();
			showings = (List<Showing>) session.createQuery("from Showing").list();
			session.getTransaction().commit();
			return showings;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return showings;
	}

		

	
		
//		//get theatre by state
//				@SuppressWarnings("unchecked")
//				public List<Theatre> getTheatreByState(String input) {
//					List<Theatre> theatres = new ArrayList<Theatre>();
//					try {
//						session = ConnectionUtil.getSessionFactory().getCurrentSession();
//						session.beginTransaction();
//						theatres = (List<Theatre>) session.createQuery("from Theatre where state ="+"'"+input+"'").list();
//						session.getTransaction().commit();
//						return theatres;
//
//					} catch (Exception e) {
//						e.printStackTrace();
//					}
//
//					return theatres;
//				}
//				
//	
//	//get theatre by theatre name
//		@SuppressWarnings("unchecked")
//		public Theatre getTheatreByName(String input) {
//			Theatre theatre = new Theatre();
//			try {
//				session = ConnectionUtil.getSessionFactory().getCurrentSession();
//				session.beginTransaction();
//				theatre =  (Theatre) session.createQuery("from Theatre where name ="+"'"+input+"'").uniqueResult();
//				session.getTransaction().commit();
//				return theatre;
//
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//
//			return theatre;
//		}
//	
//	//add a new theatre in the theatre table
//	public void addTheatre(Theatre theatre) {
//
//		Session session = null;
//		try {
//	
//			session = ConnectionUtil.getSessionFactory().openSession();
//			Transaction transaction = session.beginTransaction();		
//			Query query = session.getNamedQuery("calladdTheatreProcedure");
//			query.setParameter("id",theatre.getId());
//			query.setParameter("name", theatre.getName());
//			query.setParameter("zipcode", theatre.getZipcode());
//			query.setParameter("state", theatre.getState());
//			query.setParameter("address", theatre.getCity());
//			query.setParameter("phone_number", theatre.getPhone_number());
//			query.setParameter("supported", theatre.getSupported());
//			
//			query.executeUpdate();
//			transaction.commit();
//			session.flush();
//			session.close();
//		} catch (Exception e) {
//			e.getMessage();
//			e.printStackTrace();
//		}finally{
//			session.close();
//		}
//		
//	}
}

