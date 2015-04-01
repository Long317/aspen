package com.hoticket.modal;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="billing_account")
public class Billing_account implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	private int id;
	@Column(name="user_id")
	private int user_id;
	@Column(name="card_number")
	private String card_number;
	@Column(name="card_holdr")
	private String card_holder;
	@Column (name="card_type")
	private String card_type;
	@Column(name="cvs")
	private int cvs;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
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
	public String getCard_type() {
		return card_type;
	}
	public void setCard_type(String card_type) {
		this.card_type = card_type;
	}
	public int getCvs() {
		return cvs;
	}
	public void setCvs(int cvs) {
		this.cvs = cvs;
	}
}
