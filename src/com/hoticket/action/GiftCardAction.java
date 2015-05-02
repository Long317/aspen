package com.hoticket.action;

import java.util.Map;

import com.hoticket.dao.UserDAO;
import com.hoticket.modal.Gift_card;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class GiftCardAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	int card_number;
	int pin;
	@SuppressWarnings("unchecked")
	public String execute() {
		UserDAO userdao=new UserDAO();
		   @SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		  Gift_card gc=userdao.findGiftCard(card_number);
		  if(gc==null){
			  session.put("giftcarderror", "This gift card does not exist");
		  }
		  else if(gc.getPin()==pin){
			  session.put("giftcard", gc);
		  }
		  else if(gc.getPin()!=pin){
			  session.put("giftcarderror","Not right PIN number");
		  }
		if(session.get("login")==null)
			return "guest";
		else return "customer";
	}



	public int getCard_number() {
		return card_number;
	}



	public void setCard_number(int card_number) {
		this.card_number = card_number;
	}



	public int getPin() {
		return pin;
	}



	public void setPin(int pin) {
		this.pin = pin;
	}
	}