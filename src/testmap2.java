
import java.util.Date;

import org.hibernate.*;

import com.hoticket.modal.Billing_account;
import com.hoticket.modal.Billing_address;
import com.hoticket.modal.Customer;
import com.hoticket.modal.Movie;
import com.hoticket.modal.Pay_history;
import com.hoticket.modal.Showing;
import com.hoticket.modal.Theatre;
import com.hoticket.util.ConnectionUtil;
 
public class testmap2 {
 
    @SuppressWarnings({ "unchecked", "deprecation" })
    public static void main(String[] args) {
    	 Session session=  ConnectionUtil.getSessionFactory().openSession();
	      session.beginTransaction();  
 	
 
        Customer u3 = new Customer();
	    u3.setEmail("aaaa@gmail.com");
	    u3.setFirst_name("hahads");
	    u3.setUser_name("jajafsd");
	    u3.setPassword("asdfsaffsdfs");
	    u3.setRole(0);
	    u3.setGender(1);
        
        session.save(u3);
         
        Billing_account emp1 = new Billing_account();
        Billing_account emp2 = new Billing_account();
        emp1.setCard_holder("sophie");
        emp1.setCard_number("3423413241");
        emp1.setCard_type("master");
        emp1.setCvs(343);
        emp1.setCustomer(u3);
        
        emp2.setCard_holder("aophie");
        emp2.setCard_number("4423413241");
        emp2.setCard_type("master");
        emp2.setCvs(743);
        emp2.setCustomer(u3);
         
        session.save(emp1);
        session.save(emp2);
        
        
        Billing_address ad1=new Billing_address(); 
        ad1.setAddress("275 hallock rd");
        ad1.setCity("stony brook");
        ad1.setFirst_name("sophie");
        ad1.setLast_name("jiang");
        ad1.setState("ny");
        ad1.setZipcode(11790);
        ad1.setCustomer(u3);
        
        
        Billing_address ad2=new Billing_address(); 
        ad2.setAddress("285 apple rd");
        ad2.setCity("stony brook");
        ad2.setFirst_name("ellen");
        ad2.setLast_name("jiang");
        ad2.setState("ny");
        ad2.setZipcode(11790);
        ad2.setCustomer(u3);
        session.save(ad1);
        session.save(ad2);
        
        Movie m=new Movie();
        m.setName("gone with the wind");
        session.save(m);
        Theatre  t=new Theatre();
        t.setName("amc");
        session.save(t);
        java.util.Date date = new Date();
        
        
        Showing s=new Showing();
        s.setDate(new java.sql.Date(date.getDay()));
        s.setCategory("gg");
        s.setStart_time(new java.sql.Time(date.getTime()));
        
        
        s.setMovie(m);
        s.setTheatre(t);
        session.save(s);
        
        Pay_history p=new Pay_history();
        p.setBilling_account(emp1);
        p.setBilling_address(ad1);
        p.setDate(new java.sql.Timestamp(date.getTime()));
        p.setShowing(s);
        p.setTicket_number(3);
        session.save(p);
        
        
        
        
        
        
        

        
        Customer u2 = new Customer();
	    u2.setEmail("bbbb@gmail.com");
	    u2.setFirst_name("hahads");
	    u2.setUser_name("ally");
	    u2.setPassword("asdfsaffsdfs");
	    u2.setRole(0);
	    u2.setGender(1);
        
        session.save(u2);
         
        Billing_account emp3 = new Billing_account();
        Billing_account emp4 = new Billing_account();
        emp3.setCard_holder("alice");
        emp3.setCard_number("3423413241");
        emp3.setCard_type("master");
        emp3.setCvs(343);
        emp3.setCustomer(u2);
        
        emp4.setCard_holder("chris");
        emp4.setCard_number("4423413241");
        emp4.setCard_type("master");
        emp4.setCvs(743);
        emp4.setCustomer(u2);
         
        session.save(emp3);
        session.save(emp4);
        
        
        Billing_address ad3=new Billing_address(); 
        ad3.setAddress("30 jane rd");
        ad3.setCity("stony brook");
        ad3.setFirst_name("sophie");
        ad3.setLast_name("wang");
        ad3.setState("ny");
        ad3.setZipcode(11790);
        ad3.setCustomer(u2);
        
        
        Billing_address ad4=new Billing_address(); 
        ad4.setAddress("60 apple rd");
        ad4.setCity("stony brook");
        ad4.setFirst_name("ellen");
        ad4.setLast_name("cang");
        ad4.setState("ny");
        ad4.setZipcode(11790);
        ad4.setCustomer(u2);
        session.save(ad3);
        session.save(ad4);
        
        
        
        
        
        
        session.getTransaction().commit();
        session.close();
        
    }
}
