package com.hoticket.util;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import org.hibernate.*;  

import com.hoticket.modal.Guest_billing_account;
import com.hoticket.modal.Guest_billing_address;
import com.hoticket.modal.Customer;
import com.hoticket.modal.Employee;
import com.hoticket.modal.Guest_pay_history;
import com.hoticket.modal.Movie;
import com.hoticket.modal.Pay_history;
import com.hoticket.modal.Showing;
import com.hoticket.modal.Theatre;
import com.hoticket.modal.User;
  
public class test2 {  
public static void main(String[] args) {  

	 Session session=  ConnectionUtil.getSessionFactory().openSession();
     session.beginTransaction();  
     Customer u3 = new Customer();
	    u3.setEmail("aca@gmail.com");
	    u3.setFirst_name("hahadsads");
	    u3.setUser_name("jajafsfdsad");
	    u3.setPassword("asdfsasdfs");
	    u3.setRole(0);
	    u3.setGender(1);
	    
	    Customer u4 = new Customer();
	    u4.setEmail("ddaaff@gmail.com");
	    u4.setFirst_name("hahasdfaadsads");
	    u4.setUser_name("jajafasfdsfdsad");
	    u4.setPassword("asdsdffsdfs");
	    u4.setRole(0);
	    u4.setGender(1);
     
	    Set<Customer> users = new HashSet<Customer>();
	    users.add(u4);
	   users.add(u3);
	    
     Movie m=new Movie();
     m.setName("kindsman3");
     
     Movie m2=new Movie();
     m2.setName("kindsman2");
     
     Set<Movie> fmovies = new HashSet<Movie>();
     fmovies.add(m);
     fmovies.add(m2);
     
     
     u3.setFavorite_movies(fmovies);
     
     session.save(m);
     session.save(m2);
     
     session.save(u3);
     session.save(u4);
   
  
     

   
   session.getTransaction().commit();
   session.close();
   System.out.println("success");  
}  
} 