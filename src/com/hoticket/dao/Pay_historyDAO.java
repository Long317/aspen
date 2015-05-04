	package com.hoticket.dao;

	import org.hibernate.Query;
import org.hibernate.Session;
import com.hoticket.modal.Pay_history;
import com.hoticket.util.ConnectionUtil;
	
public class Pay_historyDAO {



		Session session = null;

		// create an object of MovieDAO
		private static Pay_historyDAO instance = new Pay_historyDAO();

		// make the constructor private so that this class cannot be instantiated
		private Pay_historyDAO() {
		}

		// Get the only object available
		public static Pay_historyDAO getInstance() {
			return instance;
		}
		
		public int addHistory(Pay_history ph) {

			try {

				session = ConnectionUtil.getSessionFactory().getCurrentSession();
				session.beginTransaction();
				 Query query1 = session.createSQLQuery("SELECT `AUTO_INCREMENT` FROM  INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'hoticket' AND   TABLE_NAME   = 'pay_history';");
			     int baid = Integer.parseInt(query1.uniqueResult().toString());
				session.save(ph);
				session.getTransaction().commit();
				
				return baid; 
			} catch (Exception e) {
				e.printStackTrace();
				return -1;
			}

		}
	}


