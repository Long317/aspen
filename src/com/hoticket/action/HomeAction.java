package com.hoticket.action;
import static com.hoticket.util.Constants.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;

import org.apache.struts2.ServletActionContext;

import com.hoticket.dao.MovieDAO;
import com.hoticket.modal.Movie;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class HomeAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@SuppressWarnings("unchecked")
	public String execute() {
		//get session object
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		//fowlloing codes are for movie carousal
		
		//get all movies
		List<Movie> movies = MovieDAO.getInstance().getMovies();
		//if get Movie from db if not exits in context
        if (ActionContext.getContext().get("movies")==null){
        	movies = (ArrayList<Movie>) MovieDAO.getInstance().getMovies();
        	ActionContext.getContext().put("movies", movies);
        }else{
	        //get theatres from Context if it exits
        	movies=  (ArrayList<Movie>)ActionContext.getContext().get("movies");
        }
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
        
        //Following codes are for user geolocator
        
		//check if user has a session
		if (session.get("user_geo_status")!=null){
		if (!session.get("user_geo_status").equals("first_visit")){
			return SUCCESS;
		}
		}
		//Get client browser cookies
		Cookie[] cookies =   ServletActionContext.getRequest().getCookies();
		//user first Time visit our website
		if (cookies==null){
			session.put("user_geo_status", "first_visit");
			session.put("popular_cities", POPULAR_CITIES);
			return SUCCESS;
		}
		//get geoPermission in user browser
		String geoPermission = null;
		for(Cookie cookie : cookies){
		    if("geoPermission".equals(cookie.getName())){
		    	geoPermission = cookie.getValue();
		    }
		}
		System.out.println("geoPermission"+geoPermission);
		//first time visit
		if(geoPermission==null){
			session.put("user_geo_status", "first_visit");
			session.put("popular_cities", POPULAR_CITIES);
			return SUCCESS;
		}
		//If user previous agree to use his geo location
		else if (geoPermission.equals("ok")){
			session.put("user_geo_status", "ok");
			session.put("popular_cities", POPULAR_CITIES);
			//get ip in the cookie if ip is equals to current ip get previous theatres
			//else get address of ip, if zipcode is within 500 difference used the same theatres, otherwise,
			//re get the theatres from the google map
		}//If user previous decline to use his geo location
		else{
			session.put("user_geo_status", "decline");
			session.put("popular_cities", POPULAR_CITIES);
		}
		return SUCCESS;
	
	}

}
