package com.hoticket.modal;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Time;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.NamedNativeQueries;
import org.hibernate.annotations.NamedNativeQuery;
@NamedNativeQueries({
	@NamedNativeQuery(
	name = "callgetShowingByTheatreIdProcedure",
	query = "CALL getShowingByTheatreId(:theatre_id)",
	resultClass = Showing.class
	)
})
@Entity
@Table(name="showing")
public class Showing implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id  
	@GeneratedValue(strategy=GenerationType.AUTO)  
	@Column(name = "id")  
	private int id;
	@ManyToOne
    @JoinColumn(name="movie_id")
    private Movie movie;
	@ManyToOne
    @JoinColumn(name="theatre_id")
    private Theatre theatre;
	@Column(name="date")
	private Date date;
	@Column (name="category")
	private String category;
	@Column(name="start_time")
	private Time start_time;
	@Column(name="ticket_number")
	private int ticket_number;
	@OneToMany(mappedBy="showing")
	private Set<Pay_history> pay_histories;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Time getStart_time() {
		return start_time;
	}
	public void setStart_time(Time start_time) {
		this.start_time = start_time;
	}
	public int getTicket_number() {
		return ticket_number;
	}
	public void setTicket_number(int ticket_number) {
		this.ticket_number = ticket_number;
	}
	public Movie getMovie() {
		return movie;
	}
	public void setMovie(Movie movie) {
		this.movie = movie;
	}
	public Theatre getTheatre() {
		return theatre;
	}
	public void setTheatre(Theatre theatre) {
		this.theatre = theatre;
	}
	public Set<Pay_history> getPay_histories() {
		return pay_histories;
	}
	public void setPay_histories(Set<Pay_history> pay_histories) {
		this.pay_histories = pay_histories;
	}
	

}
