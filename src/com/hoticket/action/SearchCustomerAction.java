package com.hoticket.action;

import static com.hoticket.util.Constants.*;
import java.util.List;
import java.util.Map;

import com.hoticket.dao.CustomerDAO;
import com.hoticket.modal.*;
import com.hoticket.service.SearchService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SearchCustomerAction extends ActionSupport{
//	private int cus_id;
//	@SuppressWarnings("unchecked")
//	public String execute() {
//		@SuppressWarnngs("rawtypes")
//		Map session = (Map) ActionContext.getContext().get("session");
//		UserDAO userDao = new UserDAO();
//		List<User>Users=userDao.getUsers();
//		userDao.DeleteUser(cus_id);
//		session.put("ALL_USERS", Users);
//		System.out.println("Users: "+ Users);
//
//		return SUCCESS;
//}
//
//	public int getcus_id() {
//		return cus_id;
//	}
//
//	public void setcus_id(int cus_id) {
//		this.cus_id = cus_id;
//	}
	private String searchInput;


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	public String execute() {
		
		System.out.println("first time"+searchInput);
		
		// get session object
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		//clear search result
		session.put(SEARCH_GENERAL_CUSTOMERS, null);

	
		// used to check if match customers
		Customer matchedCustomer;
		// store all the customers
		CustomerDAO customerDao=new CustomerDAO();
		List<Customer> customers =customerDao.getCustomers();
		
//		//check for null value
//		if (StringUtils.isEmpty(searchInput)){
//			return ERROR;
//		}

		System.out.println("second time: "+searchInput);
		
		//check for movies
		matchedCustomer = SearchService.matchCustomerWithCustomerEmail(searchInput, customers);
		System.out.println("matchedCustomer: "+matchedCustomer);
//			if (matchedCustomer!=null) {
				// get result customers
				session.put(SEARCH_GENERAL_CUSTOMERS, matchedCustomer);
				System.out.println("matchedCustomer's user name: "+ matchedCustomer.getId());
				return CUSTOMER;
//			} else {
//				return ERROR;
//			}

		
	}

	public String getSearchInput() {
		return searchInput;
	}

	public void setSearchInput(String searchInput) {
		this.searchInput = searchInput;
	}
	
//	@SuppressWarnings("unchecked")
//	public void validate() {
//		@SuppressWarnings("rawtypes")
//		Map session = (Map) ActionContext.getContext().get("session");
//		session.put(SEARCH_GENERAL_CUSTOMERS, null);
//		UserDAO cc=new UserDAO();
//		Customer c=cc.getCustomerByEmail(searchInput);
//		 if(c==null){
//			addFieldError("searchcustomernotexist", "The customer you input does not exists");}
//	
//	}

}
