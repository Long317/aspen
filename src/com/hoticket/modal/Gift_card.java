package com.hoticket.modal;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="gift_card")
public class Gift_card implements Serializable{
	private static final long serialVersionUID = 1L;
	 @Id
	 @Column(name="card_number")
	private int card_number;
	@Column(name="money_remained")
	private double money_remained;
	@Column(name="pin")
	private int pin;

	public int getCard_number() {
		return card_number;
	}
	public void setCard_number(int card_number) {
		this.card_number = card_number;
	}
	public double getMoney_remained() {
		return money_remained;
	}
	public void setMoney_remained(double money_remained) {
		this.money_remained = money_remained;
	}
	public int getPin() {
		return pin;
	}
	public void setPin(int pin) {
		this.pin = pin;
	}
}
