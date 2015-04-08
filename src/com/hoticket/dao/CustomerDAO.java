/**
 * 
 */
package com.hoticket.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hoticket.modal.*;
import com.hoticket.util.ConnectionUtil;


public class CustomerDAO {
	Session session = null;

	/**
	 * get customers list from customer table
	 */
	@SuppressWarnings("unchecked")
	public List<Customer> getCustomers() {

		List<Customer> Customers = new ArrayList<Customer>();
		try {

			session = ConnectionUtil.getSessionFactory().getCurrentSession();
			session.beginTransaction();
			Customers = (List<Customer>) session.createQuery("from Customer").list();
			session.getTransaction().commit();
			return Customers;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return Customers;
	}

	public void addCustomer(Customer customer) {

		Session session = null;
		try {
	
			session = ConnectionUtil.getSessionFactory().openSession();
			Transaction transaction = session.beginTransaction();		
			Query query = session.getNamedQuery("calladdCustomerProcedure");
			query.setParameter("email", customer.getEmail());
			query.setParameter("password",customer.getPassword());
			query.setParameter("user_name", customer.getUser_name());
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
