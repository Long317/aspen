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

	public Billing_account setbillingacc(int bacc) {

		session = ConnectionUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		try {
			Billing_account m1=(Billing_account)session.get(Billing_account.class,bacc);
			return m1;
		}
		catch (Exception e) {
		    if (tx!=null) tx.rollback();
		}
		finally {
		    session.close();
		}
		return null;
		
	}

	public Billing_address setbillingadd(int badd) {
		session = ConnectionUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		try {
			Billing_address m1=(Billing_address)session.get(Billing_address.class,badd);
			return m1;
		}
		catch (Exception e) {
		    if (tx!=null) tx.rollback();
		}
		finally {
		    session.close();
		}
		return null;
	}
	
	
}
