package com.hoticket.util;
import org.hibernate.*;  
import com.hoticket.modal.Customer;
import com.hoticket.modal.Employee;
import com.hoticket.modal.User;
  
public class test {  
public static void main(String[] args) {  

    Session session=  ConnectionUtil.getSessionFactory().openSession();
      
    Transaction t=session.beginTransaction();  
    
  
    
    Employee u2=new Employee();  
    u2.setEmail("aaa@gmail.com");
    u2.setFirst_name("hahaaa");
    u2.setUser_name("jajaaa");
    u2.setPassword("asdfsafa");
    u2.setRole(0);
    u2.setHourly_rate(2);
    
    Customer u3=new Customer();  
    u3.setEmail("aaaa@gmail.com");
    u3.setFirst_name("hahads");
    u3.setUser_name("jajafsd");
    u3.setPassword("asdfsaffsdfs");
    u3.setRole(0);
    u3.setGender(1);
 
 
    session.persist(u2);
    session.persist(u3);
 
      
    t.commit();  
    session.close();  
    System.out.println("success");  
}  
} 