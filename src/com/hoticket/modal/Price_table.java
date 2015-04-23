package com.hoticket.modal;

import java.io.Serializable;
import javax.persistence.*;

@Entity
@Table(name="price_table")
public class Price_table implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	 @Id
	 @GeneratedValue
	 @Column(name="id")
	private int id;
	@Column(name="category")
	private String category;
	@Column(name="price")
	private double price;
    @ManyToOne
    @JoinColumn(name="theatre_id")
    private Theatre theatre;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public Theatre getTheatre() {
		return theatre;
	}
	public void setTheatre(Theatre theatre) {
		this.theatre = theatre;
	}

}
