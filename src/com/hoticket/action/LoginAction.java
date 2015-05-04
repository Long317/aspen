package com.hoticket.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import static com.hoticket.util.Constants.*;
import org.apache.commons.lang.xwork.StringUtils;

import com.hoticket.dao.MovieDAO;
import com.hoticket.modal.Movie;
import com.hoticket.modal.User;
import com.hoticket.service.LoginService;
import com.hoticket.util.EncryptUtils;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class LoginAction extends ActionSupport implements ModelDriven<User> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private User user = new User();
	@Override
	public User getModel() {
		return user;
	}
	
	/**
	 * this method will call loginService, which will setup role attribute
	 * for user. 0: user, 1: admin, 2.manager, 3. Error
	 */
	@SuppressWarnings("unchecked")
	public String execute() {
		LoginService ls=new LoginService();
		//encrypt user password here
		user.setPassword(EncryptUtils.base64encode(user.getPassword())); 
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		user=ls.verifyLogin(user.getEmail(),user.getPassword());
		if(user==null){
			addFieldError("password", "email and password are not matched");  
            session.put("loginError", 1);
			return ERROR;
		}
		session.put("loginError", null);
		session.put("login", user);
		//put movie carousel 
		List<Movie> movies = MovieDAO.getInstance().getMovies();
		//if get Movie from db if not exits in context
        	movies = (ArrayList<Movie>) MovieDAO.getInstance().getMovies();
        //get rid of 3D IMAX Movies
        for (int i = 0 ; i<movies.size();i++){
        	if (movies.get(i).getName().contains("3D")||movies.get(i).getName().contains("IMAX")){
        		movies.remove(i);
        		i--;
        	}
        }
        //check if we have movie data
        if (movies.size()>=12){
        session.put("movieCarousel", movies.subList(0, 12));
        }
		System.out.println(user.getPassword());
		switch(user.getRole()){
		case 0:
			
			return "customer";
		case 1:
			session.put(ADMIN_SEARCH_MOVIE, null);
			return "admin";
		case 2: 
			return "manager";
		default: return ERROR;
		
		}
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
	   @SuppressWarnings("unchecked")
	public void validate() {
		   @SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
			//validate for email field
	        if (StringUtils.isEmpty(user.getEmail())) {  
	            addFieldError("email", "email can't be empty"); 
	            session.put("loginError", 1);
	        }else if (user.getEmail().indexOf("@")==-1){
	        	 addFieldError("email", "email is invalid"); 
	        	 session.put("loginError", 1);
	        }
	        //validate for password field
	        if (StringUtils.isEmpty(user.getPassword())|| 
	        		(user.getPassword().length()<6||user.getPassword().length()>20)){
	        	addFieldError("password", "password must be between 6-20");  
	            session.put("loginError", 1);
	        }  
	    } 
}
