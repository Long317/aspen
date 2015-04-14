package com.hoticket.util;
import java.util.Date;

import org.hibernate.*;  

import com.hoticket.dao.MovieDAO;
import com.hoticket.dao.TheatreDAO;
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
  
public class test {  
public static void main(String[] args) {  

	 Session session=  ConnectionUtil.getSessionFactory().openSession();
     session.beginTransaction();  
     
     System.out.println(MovieDAO.getInstance().getMovieByTheatreId(260));

    
//   Guest_billing_account emp1 = new Guest_billing_account();
//   Guest_billing_account emp2 = new Guest_billing_account();
//   emp1.setCard_holder("fsophie");
//   emp1.setCard_number("3423413241");
//   emp1.setCard_type(0);
//   emp1.setCvs(343);
//   emp1.setEmail("asdf@gmail.com");
//  
//   
//   emp2.setCard_holder("faophie");
//   emp2.setCard_number("4423413241");
//   emp2.setCard_type(0);
//   emp2.setCvs(743);
//   emp2.setEmail("fdasdf@gmail.com");
//    
//   session.save(emp1);
//   session.save(emp2);
//   
//   
//   Guest_billing_address ad1=new Guest_billing_address(); 
//   ad1.setAddress("275 hallock rd");
//   ad1.setCity("stony brook");
//   ad1.setFirst_name("sophie");
//   ad1.setLast_name("jiang");
//   ad1.setState("ny");
//   ad1.setZipcode(11790);
//   ad1.setEmail("fdasdf@gmail.com");
//   
//   
//   Guest_billing_address ad2=new Guest_billing_address(); 
//   ad2.setAddress("285 apple rd");
//   ad2.setCity("stony brook");
//   ad2.setFirst_name("ellen");
//   ad2.setLast_name("jiang");
//   ad2.setState("ny");
//   ad2.setZipcode(11790);
//   ad2.setEmail("asdf@gmail.com");
//   session.save(ad1);
//   session.save(ad2);
//   
//   Movie m=new Movie();
//   m.setName("gone with the wind a");
//   session.save(m);
//   Theatre  t=new Theatre();
//   t.setName("amcf");
//   session.save(t);
//   java.util.Date date = new Date();
//   
//   
//   Showing s=new Showing();
//   s.setDate(new java.sql.Date(date.getDay()));
//   s.setCategory("ggg");
//   s.setStart_time(new java.sql.Time(date.getTime()));
//   
//   
//   s.setMovie(m);
//   s.setTheatre(t);
//   session.save(s);
//   
//   Guest_pay_history p=new Guest_pay_history();
//   p.setGuest_billing_account(emp1);
//   p.setGuest_billing_address(ad1);
//   p.setDate(new java.sql.Timestamp(date.getTime()));
//   p.setShowing(s);
//   p.setTicket_number(2);
//   session.save(p);
//   

    
//   Guest_billing_account emp3 = new Guest_billing_account();
//   Guest_billing_account emp4 = new Guest_billing_account();
//   emp3.setCard_holder("alice");
//   emp3.setCard_number("3423413241");
//   emp3.setCard_type("master");
//   emp3.setCvs(343);
//   emp3.setEmail("aaa@gmail.com");
//   
//   emp4.setCard_holder("chris");
//   emp4.setCard_number("4423413241");
//   emp4.setCard_type("master");
//   emp4.setCvs(743);
//   emp4.setEmail("xxx@gmail.com");
//    
//   session.save(emp3);
//   session.save(emp4);
   
   
//   Guest_billing_address ad3=new Guest_billing_address(); 
//   ad3.setAddress("30 jane rd");
//   ad3.setCity("stony brook");
//   ad3.setFirst_name("sophie");
//   ad3.setLast_name("wang");
//   ad3.setState("ny");
//   ad3.setZipcode(11790);
//   ad3.setEmail("asdffds@gmail.com");
//   
//   
//   Guest_billing_address ad4=new Guest_billing_address(); 
//   ad4.setAddress("60 apple rd");
//   ad4.setCity("stony brook");
//   ad4.setFirst_name("ellen");
//   ad4.setLast_name("cang");
//   ad4.setState("ny");
//   ad4.setZipcode(11790);
//   ad4.setEmail("cc@gmail.com");
//   
//   session.save(ad3);
//   session.save(ad4);
   
   
   
   
   
   
   session.getTransaction().commit();
   session.close();
   System.out.println("success");  
}  
} 