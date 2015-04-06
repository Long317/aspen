
import java.util.*;

import org.hibernate.*;

import com.hoticket.modal.Billing_account;
import com.hoticket.modal.Billing_address;
import com.hoticket.modal.Customer;
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
		Set<Billing_account> list2=q.getBilling_accounts();
		Iterator<Billing_account> itr2=list2.iterator();
		while(itr2.hasNext()){
			Billing_account a=itr2.next();
			System.out.println(a.getCard_number());
		}
		//print billing addresses
				Set<Billing_address> list3=q.getBilling_addresses();
				Iterator<Billing_address> itr3=list3.iterator();
				while(itr3.hasNext()){
					Billing_address a=itr3.next();
					System.out.println(a.getAddress());
				}
		
	}
	session.close();
	System.out.println("success");
}

}
