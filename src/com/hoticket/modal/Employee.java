package com.hoticket.modal;
import java.io.Serializable;

import javax.persistence.*;   
@Entity  
@Table(name="employee")  
@PrimaryKeyJoinColumn(name="ID")  
public class Employee extends User implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Column(name="hourly_rate")
	private int hourly_rate;
	public int getHourly_rate() {
		return hourly_rate;
	}
	public void setHourly_rate(int hourly_rate) {
		this.hourly_rate = hourly_rate;
	}
	

}
