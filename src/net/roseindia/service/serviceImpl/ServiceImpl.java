package net.roseindia.service.serviceImpl;

import net.roseindia.domain.Registration;
import net.roseindia.service.Service;
import net.roseindia.util.ConnectionUtil;

import org.hibernate.Session;
import org.hibernate.Transaction;

public class ServiceImpl implements Service {

	public void saveData(Registration registration) {
		Session session = null;
		try {
			ConnectionUtil connectionFactory = new ConnectionUtil();
			session = connectionFactory.getSessionFactory().openSession();
			Transaction transaction = session.beginTransaction();
			session.save(registration);
			transaction.commit();
			session.flush();
			session.close();
		} catch (Exception e) {
			e.getMessage();
			e.printStackTrace();
		}
	}

}