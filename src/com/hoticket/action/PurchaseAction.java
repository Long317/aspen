package com.hoticket.action;

import java.net.URL;
import java.net.URLEncoder;
import java.util.Map;
import java.util.Set;

import static com.hoticket.util.Constants.*;

import com.hoticket.dao.CustomerDAO;
import com.hoticket.dao.ShowingDAO;
import com.hoticket.dao.TheatreDAO;
import com.hoticket.modal.Billing_account;
import com.hoticket.modal.Billing_address;
import com.hoticket.modal.Customer;
import com.hoticket.modal.Guest_billing_account;
import com.hoticket.modal.Guest_billing_address;
import com.hoticket.modal.Showing;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class PurchaseAction extends ActionSupport implements
		ModelDriven<Showing> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Showing showing;
	private Billing_account billing_account;
	private Billing_address billing_address;
	private int adult;
	private int senior;
	private int child;
    private int bacc;
    private int badd;
    private double totalPrice;
	@Override
	public Showing getModel() {
		return showing;
	}

	@SuppressWarnings("unchecked")
	public String ticket() {
		// get session object
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		session.put("giftcard",null);
		session.put("giftcarderror",null);
		session.put("nobilling",null);
		// check if showing id valid
		if (showing.getId() < 1) {
			return ERROR;
		}
		showing = ShowingDAO.getInstance().getShowingById(showing.getId());
		// check if we have got the showing object
		if (showing.getStart_time() == null) {
			return ERROR;
		}
		session.put("showing", showing);
        //Get price from theatre price table
		double[] p=TheatreDAO.getInstance().getTheatrePriceTable(showing.getTheatre().getId());

		// Put showing object and ticket price in the session
		session.put(SELECTED_SHOWING, showing);
		// enter the ticket price based on the catogary
		if(p==null){
		if (showing.getCategory().equals("3D")) {
			session.put(TICKET_PRICE, PRICE_3D);
		} else if (showing.getCategory().equals("IMAX")) {
			session.put(TICKET_PRICE, PRICE_IMAX);
		} else {
			session.put(TICKET_PRICE, PRICE_NORMAL);
		}}
		else{
			
			if (showing.getCategory().equals("3D")) {
				session.put(TICKET_PRICE, p[1]);
			} else if (showing.getCategory().equals("IMAX")) {
				session.put(TICKET_PRICE, p[0]);
			} else {
				session.put(TICKET_PRICE, p[2]);
			}
			
		}

		return SUCCESS;

	}

	/**
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String getTickets() {

		// get session object
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		session.put(ADULT, adult);
		session.put(SENIOR, senior);
		session.put(CHILD, child);
		if(session.get("login")==null){
			return "guest";
		}
		else {return "customer";}
	}
	
	
	public String purchaseConfirm() {
		// get session object
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		
		if (session.get("login")!=null){
			Billing_account bacc  = (Billing_account)session.get("bacc");
			Billing_address badd  = (Billing_address)session.get("badd");
		
		 }else{
				Guest_billing_account bacc  = (Guest_billing_account)session.get("bacc");
				Guest_billing_address badd  = (Guest_billing_address)session.get("badd");
			 
		 }
	
		
		
		return SUCCESS;
	}
	@SuppressWarnings("unchecked")
	public String getBilling() {
		// get session object
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
        CustomerDAO customerdao= new CustomerDAO();
		if(bacc==-1||badd==-1){
		session.put("nobilling", "Please select a valid billing address or billing account");
		if(session.get("login")==null){return "guest";}else{ return "customer";}}
		Billing_account baccount=customerdao.setbillingacc(bacc);
		Billing_address baddress=customerdao.setbillingadd(badd);
		session.put("bacc", baccount);
		session.put("badd", baddress);
		return SUCCESS;
	}

	public Showing getShowing() {
		return showing;
	}

	public void setShowing(Showing showing) {
		this.showing = showing;
	}

	public Billing_account getBilling_account() {
		return billing_account;
	}

	public void setBilling_account(Billing_account billing_account) {
		this.billing_account = billing_account;
	}

	public Billing_address getBilling_address() {
		return billing_address;
	}

	public void setBilling_address(Billing_address billing_address) {
		this.billing_address = billing_address;
	}

	public int getAdult() {
		return adult;
	}

	public void setAdult(int adult) {
		this.adult = adult;
	}

	public int getSenior() {
		return senior;
	}

	public void setSenior(int senior) {
		this.senior = senior;
	}

	public int getChild() {
		return child;
	}

	public void setChild(int child) {
		this.child = child;
	}

	public int getBacc() {
		return bacc;
	}

	public void setBacc(int bacc) {
		this.bacc = bacc;
	}

	public int getBadd() {
		return badd;
	}

	public void setBadd(int badd) {
		this.badd = badd;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}


}
