package com.hoticket.modal;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "guest_pay_history")
public class Guest_pay_history {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;
	@Column(name = "ticket_number")
	private int ticket_number;
	@Column(name = "date")
	private Timestamp date;
	@ManyToOne
	@JoinColumn(name = "guest_billing_account_id")
	private Guest_billing_account guest_billing_account;
	@ManyToOne
	@JoinColumn(name = "guest_billing_address_id")
	private Guest_billing_address guest_billing_address;
	@ManyToOne
	@JoinColumn(name = "showing_id")
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
	public Guest_billing_account getGuest_billing_account() {
		return guest_billing_account;
	}
	public void setGuest_billing_account(Guest_billing_account guest_billing_account) {
		this.guest_billing_account = guest_billing_account;
	}
	public Guest_billing_address getGuest_billing_address() {
		return guest_billing_address;
	}
	public void setGuest_billing_address(Guest_billing_address guest_billing_address) {
		this.guest_billing_address = guest_billing_address;
	}
	public Showing getShowing() {
		return showing;
	}
	public void setShowing(Showing showing) {
		this.showing = showing;
	}

	

}
