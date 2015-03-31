package com.hoticket.modal;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="employee")
public class Employee implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	private int id;
	@Column(name="hourly_rate")
	private int hourly_rate;
	public int getHourly_rate() {
		return hourly_rate;
	}
	public void setHourly_rate(int hourly_rate) {
		this.hourly_rate = hourly_rate;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	

}
