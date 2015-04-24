package com.hoticket.action;

import java.util.Map;
import java.util.Set;
import com.hoticket.dao.UserDAO;
import com.hoticket.modal.Customer;
import com.hoticket.modal.Movie;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AddFavMovieAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	@SuppressWarnings("unchecked")
	public String execute() {
		UserDAO userdao=new UserDAO();
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		Customer customer=(Customer) session.get("login");
		Movie m=(Movie)session.get("SEARCH_MOVIE");
		userdao.addfavmov(m,customer);
		session.put("login", userdao.getCustomer(customer.getId()));
		return SUCCESS;
	}
}
