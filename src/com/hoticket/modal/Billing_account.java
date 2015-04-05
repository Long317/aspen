package com.hoticket.modal;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name="billing_account")
public class Billing_account implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	 @Id
	 @GeneratedValue
	 @Column(name="id")
	private int id;
	@Column(name="card_number")
	private String card_number;
	@Column(name="card_holder")
	private String card_holder;
	@Column (name="card_type")
	private String card_type;
	@Column(name="cvs")
	private int cvs;
    @ManyToOne
    @JoinColumn(name="customer_id")
    private Customer customer;
    @OneToMany(mappedBy="billing_account")
    private Set<Pay_history> pay_history;
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
	public String getCard_type() {
		return card_type;
	}
	public void setCard_type(String card_type) {
		this.card_type = card_type;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public int getCvs() {
		return cvs;
	}
	public void setCvs(int cvs) {
		this.cvs = cvs;
	}
	public Set<Pay_history> getPay_history() {
		return pay_history;
	}
	public void setPay_history(Set<Pay_history> pay_history) {
		this.pay_history = pay_history;
	}
}
