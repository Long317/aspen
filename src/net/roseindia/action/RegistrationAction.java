package net.roseindia.action;

import java.util.ArrayList;
import java.util.List;

import net.roseindia.domain.Registration;
import net.roseindia.service.Service;
import net.roseindia.service.serviceImpl.ServiceImpl;

import com.opensymphony.xwork2.ActionSupport;

public class RegistrationAction extends ActionSupport {
	
	private List<String> genderList = new ArrayList<String>();
	private String firstName;
	private String lastName;
	private Long phoneNo;
	private String email;
	private String address;
	private String gender;

	private Service service;

	public RegistrationAction() {
		genderList.add("Male");
		genderList.add("Female");
		service = new ServiceImpl();
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Long getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(Long phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public List<String> getGenderList() {
		return genderList;
	}

	public void setGenderList(List<String> genderList) {
		this.genderList = genderList;
	}

	public String execute() throws Exception {

		Registration registration = new Registration();
		registration.setFirstName(firstName);
		registration.setLastName(lastName);
		registration.setAddress(address);
		registration.setEmail(email);
		System.out.println("\n*"+gender+"*\n");
		registration.setGender(gender);
		registration.setPhoneNo(phoneNo);

		service.saveData(registration);
		return SUCCESS;
	}
}