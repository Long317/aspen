package com.hoticket.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.annotations.NamedNativeQueries;
import org.hibernate.annotations.NamedNativeQuery;

import com.hoticket.modal.Movie;
import com.hoticket.modal.Theatre;
import com.hoticket.util.ConnectionUtil;



public class MovieDAO {
	Session session = null;

	  //create an object of MovieDAO
	   private static MovieDAO instance = new MovieDAO();

	   //make the constructor private so that this class cannot be instantiated
	   private MovieDAO(){}

	   //Get the only object available
	   public static MovieDAO getInstance(){
	      return instance;
	   }

	/**
	 * get movies list from movie table
	 */
	@SuppressWarnings("unchecked")
	public List<Movie> getMovies() {

		List<Movie> users = new ArrayList<Movie>();
		try {

			session = ConnectionUtil.getSessionFactory().getCurrentSession();
			session.beginTransaction();
			users = (List<Movie>) session.createQuery("from Movie").list();
			session.getTransaction().commit();
			return users;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return users;
	}
	
	//get movie by movie name
			@SuppressWarnings("unchecked")
			public Movie getMovieByName(String input) {
				Movie movie = new Movie();
				try {
					session = ConnectionUtil.getSessionFactory().getCurrentSession();
					session.beginTransaction();
					movie =  (Movie) session.createQuery("from Movie where name ="+ input);
					session.getTransaction().commit();
					return movie;

				} catch (Exception e) {
					e.printStackTrace();
				}

				return movie;
			}
		
//add a new movie into movie table
	public void addMovie(Movie movie) {

		Session session = null;
		try {
	
			session = ConnectionUtil.getSessionFactory().openSession();
			Transaction transaction = session.beginTransaction();		
			Query query = session.getNamedQuery("calladdMovieProcedure");
			query.setParameter("id", movie.getId());
			query.setParameter("name", movie.getName());
			query.setParameter("release_date", movie.getRelease_time());
			query.setParameter("rating", movie.getRating());
			query.setParameter("length", movie.getLength());
			query.setParameter("trailer_url", movie.getTrailer_url());
			query.setParameter("genre", movie.getGenre());
			query.setParameter("img_url", movie.getImg_url());
			query.setParameter("synopsis", movie.getSynopsis());
			query.executeUpdate();
			transaction.commit();
			session.flush();
			session.close();
		} catch (Exception e) {
			e.getMessage();
			e.printStackTrace();
		}finally{
			session.close();
		}
		
	}
}
