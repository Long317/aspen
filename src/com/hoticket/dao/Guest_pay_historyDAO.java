package com.hoticket.dao;

import org.hibernate.Query;
import org.hibernate.Session;

import com.hoticket.modal.Guest_pay_history;
import com.hoticket.util.ConnectionUtil;

public class Guest_pay_historyDAO {
	Session session = null;

	// create an object of MovieDAO
	private static Guest_pay_historyDAO instance = new Guest_pay_historyDAO();

	// make the constructor private so that this class cannot be instantiated
	private Guest_pay_historyDAO() {
	}

	// Get the only object available
	public static Guest_pay_historyDAO getInstance() {
		return instance;
	}
	
	public int addHistory(Guest_pay_history gph) {

		try {

			session = ConnectionUtil.getSessionFactory().getCurrentSession();
			session.beginTransaction();
			 Query query1 = session.createSQLQuery("SELECT `AUTO_INCREMENT` FROM  INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'hoticket' AND   TABLE_NAME   = 'guest_pay_history';");
		     int baid = Integer.parseInt(query1.uniqueResult().toString());
			session.save(gph);
			session.getTransaction().commit();
			
			return baid; 
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}

	}
}
