package com.hoticket.modal;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.*;

@Entity
@Table(name="pay_history")
public class Pay_history implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id  
	@GeneratedValue(strategy=GenerationType.AUTO)  
	@Column(name = "id")
	private int id;
	@Column(name="ticket_number")
	private int ticket_number;
	@Column(name="price")
	private double price;
	@Column(name="date")
	private Timestamp date;
	@ManyToOne
	@JoinColumn(name="billing_account_id")
	private Billing_account billing_account;
	@ManyToOne
	@JoinColumn(name="customer_id")
	private Customer customer;
	@ManyToOne
	@JoinColumn(name="billing_address_id")
	private Billing_address billing_address;
	@ManyToOne
	@JoinColumn(name="showing_id")
	private Showing showing;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTicket_number() {
		return ticket_number;
	}
	public void setTicket_number(int ticket_number) {
		this.ticket_number = ticket_number;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	public Billing_account getBilling_account() {
		return billing_account;
	}
	public void setBilling_account(Billing_account billing_account) {
		this.billing_account = billing_account;
	}
	public Billing_address getBilling_address() {
		return billing_address;
	}
	public void setBilling_address(Billing_address billing_address) {
		this.billing_address = billing_address;
	}
	public Showing getShowing() {
		return showing;
	}
	public void setShowing(Showing showing) {
		this.showing = showing;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}

}
