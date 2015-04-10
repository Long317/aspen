
import java.util.*;

import org.hibernate.*;

import com.hoticket.modal.Billing_account;
import com.hoticket.modal.Billing_address;
import com.hoticket.modal.Customer;
import com.hoticket.modal.Movie;
import com.hoticket.util.ConnectionUtil;

public class fetchmap2 {    
	
	@SuppressWarnings("unchecked")
public static void main(String[] args) {
	
	Session session=  ConnectionUtil.getSessionFactory().openSession();
    session.beginTransaction();  
	
	Query query=session.createQuery("from Customer");
	List<Customer> list=query.list();
	
	Iterator<Customer> itr=list.iterator();

	while(itr.hasNext()){
		Customer q=itr.next();
		System.out.println("Customer id: "+q.getId());
		
		//print billing accounts
		Set<Movie> list2=q.getFavorite_movies();

		System.out.println("end");
		Iterator<Movie> itr2=list2.iterator();


		System.out.println("end1");
		while(itr2.hasNext()){
			Movie a=itr2.next();
			System.out.println(a.getName());
		}
	}
	session.close();
	System.out.println("success");
}

}
