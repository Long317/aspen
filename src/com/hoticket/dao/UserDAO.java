package com.hoticket.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hoticket.modal.Billing_account;
import com.hoticket.modal.Billing_address;
import com.hoticket.modal.Customer;
import com.hoticket.modal.User;
import com.hoticket.util.ConnectionUtil;
import com.hoticket.util.EncryptUtils;



public class UserDAO {
	Session session = null;

	/**
	 * get users list from user table
	 */
	@SuppressWarnings("unchecked")
	public User checkUser(String email) {

		User user=null;
		try {

			session = ConnectionUtil.getSessionFactory().openSession();
			session.beginTransaction();
			String query ="from User where email =:email";
			user =  (User) session.createQuery(query).setParameter("email", email).uniqueResult();
			session.getTransaction().commit();
      
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{session.close();}

		return user;
	}

	public void addUser(User user) {
		try {
	
			session = ConnectionUtil.getSessionFactory().openSession();
			Transaction transaction = session.beginTransaction();		
			Query query = session.getNamedQuery("calladdCustomerProcedure");
			query.setParameter("email", user.getEmail());
			query.setParameter("password", user.getPassword());
			query.setParameter("user_name", user.getUser_name());
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
	
	//Third build?
	//update local image URL into database
	public void updatePortrait(String URL){
		
	}

/**
 * this method return a customer by searching by its pk=id
 * @param id
 * @return customer
 */
	public Customer getCustomer(int id) {
		Customer c=null;
		try {

			session = ConnectionUtil.getSessionFactory().openSession();
			session.beginTransaction();
			c = (Customer) session.get(Customer.class,id);

		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		
		return c;
	}


public void addCustomer(Customer c) {
	try {

		session = ConnectionUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(c);
		session.getTransaction().commit();
	} catch (Exception e) {
		e.printStackTrace();
	}
}
public void changePassAndName(String username,String pass,int id){
	 session = ConnectionUtil.getSessionFactory().openSession();
	 Transaction tx = session.beginTransaction();
	 try {
		 User u=(User) session.get(User.class, id);
		 u.setUser_name(username);u.setPassword(EncryptUtils.base64encode(pass));
	     session.update(u);
	     tx.commit();
	 }
	 catch (Exception e) {
	     if (tx!=null) tx.rollback();
	 }
	 finally {
	     session.close();
	 }
	
	
	
}

public void deleteAcc(int acc_id,int id) {
	session = ConnectionUtil.getSessionFactory().openSession();
Transaction tx = session.beginTransaction();
try {
	 Billing_account ba=(Billing_account) session.get(Billing_account.class, acc_id);
     session.delete(ba);
     tx.commit();
}
catch (Exception e) {
    if (tx!=null) tx.rollback();
}
finally {
    session.close();
}
	
}
public void deleteAddr(int acc_id, int id) {
	session = ConnectionUtil.getSessionFactory().openSession();
	Transaction tx = session.beginTransaction();
	try {
		 Billing_address ba=(Billing_address) session.get(Billing_address.class, acc_id);
	     session.delete(ba);
	     tx.commit();
	}
	catch (Exception e) {
	    if (tx!=null) tx.rollback();
	}
	finally {
	    session.close();
	}
}
public void addAcc(Billing_account ba) {
	session = ConnectionUtil.getSessionFactory().openSession();
	Transaction tx = session.beginTransaction();
	try {
	     session.save(ba);
	     tx.commit();
	}
	catch (Exception e) {
	    if (tx!=null) tx.rollback();
	}
	finally {
	    session.close();
	}
	
}
public void addAddr(Billing_address bAddr) {
	session = ConnectionUtil.getSessionFactory().openSession();
	Transaction tx = session.beginTransaction();
	try {
	     session.save(bAddr);
	     tx.commit();
	}
	catch (Exception e) {
	    if (tx!=null) tx.rollback();
	}
	finally {
	    session.close();
	}
}



}