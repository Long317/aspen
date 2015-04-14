package com.hoticket.modal;

import java.io.Serializable;
import java.sql.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.NamedNativeQueries;
import org.hibernate.annotations.NamedNativeQuery;
@NamedNativeQueries({
	@NamedNativeQuery(
	name = "callgetMovieByTheatreIdProcedure",
	query = "CALL getMovieByTheatreId(:theatre_id)",
	resultClass = Movie.class
	)
})
@Entity
@Table(name="movie")
public class Movie implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id  
	@GeneratedValue(strategy=GenerationType.AUTO)  
	@Column(name = "id")  
	private int id;
	@Column(name="name")
	private String name;
	@Column(name="release_time")
	private Date release_time;
	@Column(name="rating")
	private int rating;
	@Column (name="length")
	private int length;
	@Column(name="genre")
	private String genre;
	@Column(name="img_url")
	private String img_url;
	@Column(name="synopsis")
	private String synopsis;
	@Column(name="trailer_url")
	private String trailer_url;
	@OneToMany(mappedBy="movie")
	private Set <Showing> showings;
	@OneToMany(mappedBy="movie")
	private Set <Rating> movie_ratings;
	@ManyToMany(mappedBy="favorite_movies")
	private Set<Customer> customers;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getRelease_time() {
		return release_time;
	}
	public void setRelease_time(Date release_time) {
		this.release_time = release_time;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public int getLength() {
		return length;
	}
	public void setLength(int length) {
		this.length = length;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
	public String getSynopsis() {
		return synopsis;
	}
	public void setSynopsis(String synopsis) {
		this.synopsis = synopsis;
	}
	public String getTrailer_url() {
		return trailer_url;
	}
	public void setTrailer_url(String trailer_url) {
		this.trailer_url = trailer_url;
	}
	public Set<Showing> getShowings() {
		return showings;
	}
	public void setShowings(Set<Showing> showings) {
		this.showings = showings;
	}
	public Set<Customer> getCustomers() {
		return customers;
	}
	public void setCustomers(Set<Customer> customers) {
		this.customers = customers;
	}
	public Set<Rating> getMovie_ratings() {
		return movie_ratings;
	}
	public void setMovie_ratings(Set<Rating> movie_ratings) {
		this.movie_ratings = movie_ratings;
	}

}
