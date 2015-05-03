/**
 * 
 */
package com.hoticket.dao;

import org.hibernate.Query;
import org.hibernate.Session;

import com.hoticket.util.ConnectionUtil;

/**
 * @author jiasichen
 *
 */
public class Guest_billing_accountDAO {
	// create an object of MovieDAO
	private static Guest_billing_accountDAO instance = new Guest_billing_accountDAO();

	// make the constructor private so that this class cannot be instantiated
	private Guest_billing_accountDAO() {
	}

	// Get the only object available
	public static Guest_billing_accountDAO getInstance() {
		return instance;
	}


	public int getLastestId() {
		Session session = ConnectionUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Query query1 = session
				.createSQLQuery("SELECT `AUTO_INCREMENT` FROM "
						+ " INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'hoticket' AND   TABLE_NAME   = 'guest_billing_account';");
		int baid = Integer.parseInt(query1.uniqueResult().toString());
		session.getTransaction().commit();
		return baid;
	}
}
