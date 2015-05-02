package com.hoticket.modal;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "guest_billing_account")
public class Guest_billing_account implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	@Column(name = "id")
	private int id;
	@Column(name="email")
	private String email;
	@Column(name = "card_number")
	private String card_number;
	@Column(name = "card_holder")
	private String card_holder;
	@Column(name = "card_type")
	private int card_type;
	@Column(name = "cvs")
	private int cvs;
	@Column(name="month")
	private int month;
	@Column(name="year")
	private int year;
	@OneToMany(mappedBy = "guest_billing_account")
	private Set<Guest_pay_history> guest_pay_history;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCard_number() {
		return card_number;
	}

	public void setCard_number(String card_number) {
		this.card_number = card_number;
	}

	public String getCard_holder() {
		return card_holder;
	}

	public void setCard_holder(String card_holder) {
		this.card_holder = card_holder;
	}

	public int getCard_type() {
		return card_type;
	}

	public void setCard_type(int card_type) {
		this.card_type = card_type;
	}

	public int getCvs() {
		return cvs;
	}

	public void setCvs(int cvs) {
		this.cvs = cvs;
	}

	public Set<Guest_pay_history> getGuest_pay_history() {
		return guest_pay_history;
	}

	public void setGuest_pay_history(Set<Guest_pay_history> guest_pay_history) {
		this.guest_pay_history = guest_pay_history;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}
}
