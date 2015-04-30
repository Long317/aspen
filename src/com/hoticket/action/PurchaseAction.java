package com.hoticket.action;

import java.util.Map;
import java.util.Set;

import static com.hoticket.util.Constants.*;

import com.hoticket.dao.ShowingDAO;
import com.hoticket.modal.Billing_account;
import com.hoticket.modal.Billing_address;
import com.hoticket.modal.Customer;
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
	private String adult;
	private String senior;
	private String child;

	@Override
	public Showing getModel() {
		return showing;
	}

	@SuppressWarnings("unchecked")
	public String ticket() {
		// get session object
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		// check if showing id valid
		if (showing.getId() < 1) {
			return ERROR;
		}
		showing = ShowingDAO.getInstance().getShowingById(showing.getId());
		// check if we have got the showing object
		if (showing.getStart_time() == null) {
			return ERROR;
		}
		
		// Put showing object and ticket price in the session
		session.put(SELECTED_SHOWING, showing);
		// enter the ticket price based on the catogary
		if (showing.getCategory().equals("3D")) {
			session.put(TICKET_PRICE, PRICE_3D);
		} else if (showing.getCategory().equals("IMAX")) {
			session.put(TICKET_PRICE, PRICE_IMAX);
		} else {
			session.put(TICKET_PRICE, PRICE_NORMAL);
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
		return SUCCESS;
	}

	@SuppressWarnings("unchecked")
	public String getBilling() {
		// get session object
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");

		// get customer object
		Customer c = (Customer) session.get("login");
		// check if user login
		if (c == null) {
			return SUCCESS;
		}
		Set<Billing_account> bas = c.getBilling_accounts();
		if (billing_account != null && bas != null) {
			// put bill_acct to the session
			for (Billing_account b : bas) {
				if (b.getCard_number().equals(billing_account.getCard_number())) {
					session.put("selected_acct", b);
					System.out.println(b.getCard_number());
				}
			}
		}
		Set<Billing_address> baddrs = c.getBilling_addresses();
		if (billing_address != null && baddrs != null) {
			// put bill_acct to the session
			for (Billing_address b : baddrs) {
				if (b.getAddress().equals(billing_address.getAddress())) {
					session.put("selected_addr", b);
				}
			}

		}
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

	public String getAdult() {
		return adult;
	}

	public void setAdult(String adult) {
		this.adult = adult;
	}

	public String getSenior() {
		return senior;
	}

	public void setSenior(String senior) {
		this.senior = senior;
	}

	public String getChild() {
		return child;
	}

	public void setChild(String child) {
		this.child = child;
	}

}
