package com.hoticket.dao;




import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hoticket.modal.Billing_account;
import com.hoticket.modal.Billing_address;
import com.hoticket.modal.Customer;
import com.hoticket.modal.Gift_card;
import com.hoticket.modal.Guest_billing_account;
import com.hoticket.modal.Guest_billing_address;
import com.hoticket.modal.Movie;
import com.hoticket.modal.User;
import com.hoticket.util.ConnectionUtil;
import com.hoticket.util.EncryptUtils;
import com.hoticket.util.RandomString;



public class UserDAO {
	Session session = null;
	/**
	 * get users list from user table
	 */
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

public void addfavmov(Movie m, Customer c) {
	session = ConnectionUtil.getSessionFactory().openSession();
	Transaction tx = session.beginTransaction();
	try {
		 Movie m1=(Movie)session.get(Movie.class,m.getId());
		 Customer c1=(Customer)session.get(Customer.class,c.getId());
		 c1.getFavorite_movies().add(m1);
		 session.save(c1);
	     tx.commit();
	}
	catch (Exception e) {
	    if (tx!=null) tx.rollback();
	}
	finally {
	    session.close();
	}
	
	
}

public void delefavmov(Movie m, Customer c) {
	
	session = ConnectionUtil.getSessionFactory().openSession();
	Transaction tx = session.beginTransaction();
	try {
		 Movie m1=(Movie)session.get(Movie.class,m.getId());
		 Customer c1=(Customer)session.get(Customer.class,c.getId());
		 c1.getFavorite_movies().remove(m1);
		 session.save(c1);
	     tx.commit();
	}
	catch (Exception e) {
	    if (tx!=null) tx.rollback();
	}
	finally {
	    session.close();
	}
	
	
}

public Gift_card findGiftCard(String card_number) {
	session = ConnectionUtil.getSessionFactory().openSession();
	Transaction tx = session.beginTransaction();
	try {
		 Gift_card m1=(Gift_card)session.get(Gift_card.class,card_number);
		 if(m1==null)return null;
		 else return m1;
	}
	catch (Exception e) {
	    if (tx!=null) tx.rollback();
	}
	finally {
	    session.close();
	}
	return null;
	
}

public int addGuestBillingAcc(Guest_billing_account ba) {
	session = ConnectionUtil.getSessionFactory().openSession();
	Transaction tx = session.beginTransaction();
	try {
	     Query query1 = session.createSQLQuery("SELECT `AUTO_INCREMENT` FROM  INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'hoticket' AND   TABLE_NAME   = 'guest_billing_account';");
	     String baid = query1.uniqueResult().toString();
	     session.save(ba);
	     tx.commit();
	     return Integer.parseInt(baid);
	}
	catch (Exception e) {
	    if (tx!=null) tx.rollback();
	}
	finally {
	    session.close();
	}
	return -1;
}
public int addGuestBillingAdd(Guest_billing_address badd) {
	session = ConnectionUtil.getSessionFactory().openSession();
	Transaction tx = session.beginTransaction();
	try {
	     Query query1 = session.createSQLQuery("SELECT `AUTO_INCREMENT` FROM  INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'hoticket' AND   TABLE_NAME   = 'guest_billing_address';");
	     String baid = query1.uniqueResult().toString();
	     session.save(badd);
	     tx.commit();
	     return Integer.parseInt(baid);
	}
	catch (Exception e) {
	    if (tx!=null) tx.rollback();
	}
	finally {
	    session.close();
	}
	return -1;
}

public Guest_billing_account setbillingacc(int bacc) {

	session = ConnectionUtil.getSessionFactory().openSession();
	Transaction tx = session.beginTransaction();
	try {
		Guest_billing_account m1=(Guest_billing_account)session.get(Guest_billing_account.class,bacc);
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

public Guest_billing_address setbillingadd(int badd) {
	session = ConnectionUtil.getSessionFactory().openSession();
	Transaction tx = session.beginTransaction();
	try {
		Guest_billing_address m1=(Guest_billing_address)session.get(Guest_billing_address.class,badd);
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

public void updateUser(User u,int cus_id) {

	session = ConnectionUtil.getSessionFactory().openSession();
	Transaction tx = session.beginTransaction();
	try {
		 Customer c=(Customer) session.get(Customer.class, cus_id);
		 c.setFirst_name(u.getFirst_name());
		 c.setLast_name(u.getLast_name());
		 c.setUser_name(u.getUser_name());
		 c.setPassword(u.getPassword());
		 c.setEmail(u.getEmail());
	     session.update(c);
	     tx.commit();
	}
	catch (Exception e) {
	    if (tx!=null) tx.rollback();
	}
	finally {
	    session.close();
	}
	
	}


public void DeleteUser(int cus_id) {

session = ConnectionUtil.getSessionFactory().openSession();

Transaction tx = session.beginTransaction();

try {

Customer c=(Customer) session.get(Customer.class, cus_id);

    session.delete(c);

    tx.commit();

}

catch (Exception e) {

    if (tx!=null) tx.rollback();

}

finally {

    session.close();

}


}

public List<User> getUsers() {

	List<User> Users = new ArrayList<User>();
	try {

		session = ConnectionUtil.getSessionFactory().openSession();
		session.beginTransaction();
		Users= (List<User>) session.createQuery("from User").list();
		session.getTransaction().commit();
		return Users;

	} catch (Exception e) {
		e.printStackTrace();
	}

	return Users;
}
public String generateTempPass(String email) {
	User user=null;
	String re=null;
	try {

		session = ConnectionUtil.getSessionFactory().openSession();
		session.beginTransaction();
		String query ="from User where email =:email";
		user =  (User) session.createQuery(query).setParameter("email", email).uniqueResult();
		RandomString rd=new RandomString(6);
		re=rd.nextString();
		user.setPassword(re);
		session.getTransaction().commit();
  
	} catch (Exception e) {
		e.printStackTrace();
	}
	finally{session.close();}

	return re;
}

public Object checkPayHistory(String confirmation_number) {
	Object pay=null;
	try {

		session = ConnectionUtil.getSessionFactory().openSession();
		session.beginTransaction();
		String query ="from Pay_history where confirmation_number =:confirmation_number";
		pay =  session.createQuery(query).setParameter("confirmation_number", confirmation_number).uniqueResult();
		if (pay!=null){
			return pay;
		}
		String query1 ="from Guest_pay_history where confirmation_number =:confirmation_number";
		pay =  session.createQuery(query1).setParameter("confirmation_number", confirmation_number).uniqueResult();
		session.getTransaction().commit();
        return pay;
	} catch (Exception e) {
		e.printStackTrace();
	}
	finally{session.close();}

	return pay;
}

}
