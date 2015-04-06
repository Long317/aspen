package com.hoticket.modal;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name="rating")
public class Rating implements Serializable{
	private static final long serialVersionUID = 1L;
	 @Id
	 @GeneratedValue
	 @Column(name="id")
	private int id;
	@Column(name="rating_score")
	private int rating_score;
	@Column(name="comment")
	private String comment;
	@ManyToOne
	@JoinColumn(name="user_id")
	private Customer customer;
	@ManyToOne
	@JoinColumn(name="movie_id")
	private Movie movie;
	public int getRating_score() {
		return rating_score;
	}
	public void setRating_score(int rating_score) {
		this.rating_score = rating_score;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public Movie getMovie() {
		return movie;
	}
	public void setMovie(Movie movie) {
		this.movie = movie;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

}
