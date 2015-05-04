package com.hoticket.action;

import static com.hoticket.util.Constants.*;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.hoticket.dao.GiftcardDAO;
import com.hoticket.modal.Gift_card;
import com.hoticket.service.emailService;
import com.opensymphony.xwork2.ActionSupport;

public class BuyGiftcardAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String name;
	private int month;
	private int year;
	private String card_number;
	private int cvv;
	private int card_type;
	private String address;
	private String city;
	private String state;
	private int zipcode;
	private String first_name;
	private String last_name;
    private String email;
    private int gcardValue;
    private String defer_url;
    
	public String execute(){
		//create remote URL 
		try {
			HttpServletRequest request = ServletActionContext.getRequest();
			defer_url = request.getHeader("referer").split("&")[0];
			URL url = new URL(CreditCardServer_URL+"?name="+URLEncoder.encode(name, "UTF-8")+"&month="+month+"&year="+year+"&card_number="+card_number
					+"&cvv="+cvv+"&card_type="+card_type+"&address="+URLEncoder.encode(address, "UTF-8")+"&city="+URLEncoder.encode(city, "UTF-8")
					+"&state="+URLEncoder.encode(state, "UTF-8")+"&zipcode="+zipcode+"&first_name="+URLEncoder.encode(first_name, "UTF-8")
					+"&last_name="+URLEncoder.encode(last_name, "UTF-8"));
		
			//get Reader
	        BufferedReader in = new BufferedReader(
	                new InputStreamReader(url.openConnection().getInputStream()));
	        String inputLine;
	        //Store json content in result
	        String result = "";
	        while ((inputLine = in.readLine()) != null) {
	            result += inputLine;
	        }
	        if (result.trim().equals("yes")){
	        	//generate a giftcard
	        	Gift_card gc = new Gift_card();
	        	String card_number = "";
	        	for (int i=0;i<16;i++){
	        		card_number+=(int)(Math.random()*10);	
	        	}
	        	//generate a pin
	        	int pin=0;
	        	for (int i=0;i<6;i++){
	        		pin+=(int)(Math.random()*10)*Math.pow(10, i);
	        	}
	        	gc.setCard_number(card_number);
	        	gc.setMoney_remained(gcardValue);
	        	gc.setPin(pin);
	        	GiftcardDAO.getInstance().addGiftCard(gc);
	        	emailService.send(email, SUBJECT_GIFTCARD, BODY_GIFTCARD+card_number+","+pin+"\n card value is "+gcardValue);
	        }else{
	        	return ERROR;
	        }
		} catch (Exception e) {
			e.printStackTrace();
		}    
		
		
		return SUCCESS;
	}
    
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getCard_number() {
		return card_number;
	}
	public void setCard_number(String card_number) {
		this.card_number = card_number;
	}
	public int getCvv() {
		return cvv;
	}
	public void setCvv(int cvv) {
		this.cvv = cvv;
	}
	public int getCard_type() {
		return card_type;
	}
	public void setCard_type(int card_type) {
		this.card_type = card_type;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getZipcode() {
		return zipcode;
	}
	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getGcardValue() {
		return gcardValue;
	}
	public void setGcardValue(int gcardValue) {
		this.gcardValue = gcardValue;
	}

	public String getDefer_url() {
		return defer_url;
	}

	public void setDefer_url(String defer_url) {
		this.defer_url = defer_url;
	}
    
    
}
