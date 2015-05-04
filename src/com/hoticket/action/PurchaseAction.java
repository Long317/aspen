package com.hoticket.action;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Map;
import java.util.Set;

import static com.hoticket.util.Constants.*;

import com.hoticket.dao.CustomerDAO;
import com.hoticket.dao.GiftcardDAO;
import com.hoticket.dao.Guest_pay_historyDAO;
import com.hoticket.dao.Pay_historyDAO;
import com.hoticket.dao.ShowingDAO;
import com.hoticket.dao.TheatreDAO;
import com.hoticket.modal.Billing_account;
import com.hoticket.modal.Billing_address;
import com.hoticket.modal.Customer;
import com.hoticket.modal.Gift_card;
import com.hoticket.modal.Guest_billing_account;
import com.hoticket.modal.Guest_billing_address;
import com.hoticket.modal.Guest_pay_history;
import com.hoticket.modal.Pay_history;
import com.hoticket.modal.Showing;
import com.hoticket.service.emailService;
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
	private String totalprice;

	@Override
	public Showing getModel() {
		return showing;
	}

	@SuppressWarnings("unchecked")
	public String ticket() {
		// get session object
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		session.put("giftcard", null);
		session.put("giftcarderror", null);
		session.put("nobilling", null);
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
		// Get price from theatre price table
		double[] p = TheatreDAO.getInstance().getTheatrePriceTable(
				showing.getTheatre().getId());

		// Put showing object and ticket price in the session
		session.put(SELECTED_SHOWING, showing);
		// enter the ticket price based on the catogary
		if (p == null) {
			if (showing.getCategory().equals("3D")) {
				session.put(TICKET_PRICE, PRICE_3D);
			} else if (showing.getCategory().equals("IMAX")) {
				session.put(TICKET_PRICE, PRICE_IMAX);
			} else {
				session.put(TICKET_PRICE, PRICE_NORMAL);
			}
		} else {

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
		if (session.get("login") == null) {
			return "guest";
		} else {
			return "customer";
		}
	}

	public String purchaseConfirm() {
		// get session object
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		if (session.get("login") != null) {
			Billing_account bacc = (Billing_account) session.get("bacc");
			Billing_address badd = (Billing_address) session.get("badd");

			try {
				Gift_card gc = (Gift_card) (session.get("giftcard"));
				if (Double.parseDouble(totalprice) - gc.getMoney_remained() >= 0) {
					// calculate giftcard
					totalprice = (Double.parseDouble(totalprice) - gc
							.getMoney_remained()) + "";
					gc.setMoney_remained(Double.parseDouble(totalprice));
					GiftcardDAO.getInstance().updateGiftCard(gc);
					// calcualte credit card
					URL url = new URL(CreditCardServer_URL + "?name="
							+ URLEncoder.encode(bacc.getCard_holder(), "UTF-8")
							+ "&month=" + bacc.getMonth() + "&year="
							+ bacc.getYear() + "&card_number="
							+ bacc.getCard_number() + "&cvv=" + bacc.getCvs()
							+ "&card_type=" + bacc.getCard_type() + "&address="
							+ URLEncoder.encode(badd.getAddress(), "UTF-8")
							+ "&city="
							+ URLEncoder.encode(badd.getCity(), "UTF-8")
							+ "&state="
							+ URLEncoder.encode(badd.getState(), "UTF-8")
							+ "&zipcode=" + badd.getZipcode() + "&first_name="
							+ URLEncoder.encode(badd.getFirst_name(), "UTF-8")
							+ "&last_name="
							+ URLEncoder.encode(badd.getLast_name(), "UTF-8")
							+ "&totalprice="
							+ URLEncoder.encode(totalprice, "UTF-8"));
					// get Reader
					BufferedReader in = new BufferedReader(
							new InputStreamReader(url.openConnection()
									.getInputStream()));
					String inputLine;
					// Store json content in result
					String result = "";
					while ((inputLine = in.readLine()) != null) {
						result += inputLine;
					}
					if (result.trim().equals("yes")) {
						// update guest paying history
						Pay_history ph = new Pay_history();
						ph.setDate(new Timestamp(Calendar.getInstance()
								.getTimeInMillis()));
						ph.setBilling_account(bacc);
						ph.setBilling_address(badd);
						ph.setCustomer((Customer) session.get("login"));
						ph.setPrice(Double.parseDouble(totalprice));
						ph.setShowing((Showing) session.get(SELECTED_SHOWING));
						ph.setTicket_number((int) session.get("adult")
								+ (int) session.get("senior")
								+ (int) session.get("child"));
						int receive = Pay_historyDAO.getInstance().addHistory(
								ph);
						System.out.println(receive);
						// send email for receive
						emailService.send(
								bacc.getCustomer().getEmail(),
								"Here is your ticket receiv..",
								"You have " + "purchase "
										+ (int) session.get("adult")
										+ " ticket, "
										+ (int) session.get("child")
										+ " ticket  and "
										+ (int) session.get("senior")
										+ " ticket. Total price is "
										+ totalprice
										+ " Using credit card number is "
										+ bacc.getCard_number()
										+ " Your confirmation number is :"
										+ receive);
						return SUCCESS;
					} else {
						return ERROR;
					}
				} else {
					// calculate giftcard
					totalprice = gc.getMoney_remained()
							- (Double.parseDouble(totalprice)) + "";
					gc.setMoney_remained(Double.parseDouble(totalprice));
					GiftcardDAO.getInstance().updateGiftCard(gc);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			Guest_billing_account bacc = (Guest_billing_account) session
					.get("bacc");
			Guest_billing_address badd = (Guest_billing_address) session
					.get("badd");
			try {
				Gift_card gc = (Gift_card) (session.get("giftcard"));
				if (Double.parseDouble(totalprice) - gc.getMoney_remained() >= 0) {
					// calculate giftcard
					totalprice = (Double.parseDouble(totalprice) - gc
							.getMoney_remained()) + "";
					gc.setMoney_remained(Double.parseDouble(totalprice));
					GiftcardDAO.getInstance().updateGiftCard(gc);
					// calculate credit card
					URL url = new URL(CreditCardServer_URL + "?name="
							+ URLEncoder.encode(bacc.getCard_holder(), "UTF-8")
							+ "&month=" + bacc.getMonth() + "&year="
							+ bacc.getYear() + "&card_number="
							+ bacc.getCard_number() + "&cvv=" + bacc.getCvs()
							+ "&card_type=" + bacc.getCard_type() + "&address="
							+ URLEncoder.encode(badd.getAddress(), "UTF-8")
							+ "&city="
							+ URLEncoder.encode(badd.getCity(), "UTF-8")
							+ "&state="
							+ URLEncoder.encode(badd.getState(), "UTF-8")
							+ "&zipcode=" + badd.getZipcode() + "&first_name="
							+ URLEncoder.encode(badd.getFirst_name(), "UTF-8")
							+ "&last_name="
							+ URLEncoder.encode(badd.getLast_name(), "UTF-8")
							+ "&totalprice="
							+ URLEncoder.encode(totalprice, "UTF-8"));
					// get Reader
					BufferedReader in = new BufferedReader(
							new InputStreamReader(url.openConnection()
									.getInputStream()));
					String inputLine;
					// Store json content in result
					String result = "";
					while ((inputLine = in.readLine()) != null) {
						result += inputLine;
					}
					if (result.trim().equals("yes")) {
						// update guest paying history
						Guest_pay_history gph = new Guest_pay_history();
						gph.setDate(new Timestamp(Calendar.getInstance()
								.getTimeInMillis()));
						gph.setGuest_billing_account(bacc);
						gph.setGuest_billing_address(badd);
						gph.setShowing((Showing) session.get(SELECTED_SHOWING));
						gph.setTicket_number((int) session.get("adult")
								+ (int) session.get("senior")
								+ (int) session.get("child"));
						int receive = Guest_pay_historyDAO.getInstance()
								.addHistory(gph);
						System.out.println(receive);
						// send email for receive
						emailService.send(
								bacc.getEmail(),
								"Here is your ticket receiv..",
								"You have " + "purchase "
										+ (int) session.get("adult")
										+ "adult ticket, "
										+ (int) session.get("child")
										+ "child ticket  and "
										+ (int) session.get("senior")
										+ "senior ticket. Total price is "
										+ totalprice
										+ " Using credit card number is "
										+ bacc.getCard_number()
										+ " Your confirmation number is :"
										+ receive);
						return SUCCESS;
					} else {

						return ERROR;
					}
				}else{
					// calculate giftcard
					totalprice = gc.getMoney_remained()
							- (Double.parseDouble(totalprice)) + "";
					gc.setMoney_remained(Double.parseDouble(totalprice));
					GiftcardDAO.getInstance().updateGiftCard(gc);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return SUCCESS;
	}

	@SuppressWarnings("unchecked")
	public String getBilling() {
		// get session object
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		CustomerDAO customerdao = new CustomerDAO();
		if (bacc == -1 || badd == -1) {
			session.put("nobilling",
					"Please select a valid billing address or billing account");
			if (session.get("login") == null) {
				return "guest";
			} else {
				return "customer";
			}
		}
		Billing_account baccount = customerdao.setbillingacc(bacc);
		Billing_address baddress = customerdao.setbillingadd(badd);
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

	public String getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(String totalprice) {
		this.totalprice = totalprice;
	}

}
