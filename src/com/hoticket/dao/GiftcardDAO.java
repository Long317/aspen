package com.hoticket.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hoticket.modal.Gift_card;
import com.hoticket.util.ConnectionUtil;

public class GiftcardDAO {
	Session session = null;

	// create an object of MovieDAO
	private static GiftcardDAO instance = new GiftcardDAO();

	// make the constructor private so that this class cannot be instantiated
	private GiftcardDAO() {
	}

	// Get the only object available
	public static GiftcardDAO getInstance() {
		return instance;
	}

	public void addGiftCard(Gift_card gc) {
		session = ConnectionUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		session.save(gc);
		transaction.commit();
		session.flush();

	}

}
