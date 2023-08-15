package com.root.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;

import com.root.entity.Admin;
import com.root.entity.UserRegister;

@Repository
public class AdminDaoImpl implements AdminDao {

	Configuration configuration = new Configuration().configure("hibernate.cfg.xml");
	StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder()
			.applySettings(configuration.getProperties());

	Session session;
	Transaction transaction;
	@Override
	public Admin findByEmail(String email) {
		if ("admin@gmail.com".equals(email)) {
			Admin admin = new Admin();
			admin.setEmail(email);
			admin.setPassword("admin123");
			return admin;
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<UserRegister> userlist() {
		SessionFactory sessionFactory = configuration.buildSessionFactory(builder.build());
		session = sessionFactory.openSession();
		Query query = session.createQuery("from UserRegister");
		List<UserRegister> list = query.list();
		session.close();
		sessionFactory.close();
		return list;
	}

	@Override
	public void edit(UserRegister UserRegister) {
		Configuration configuration = new Configuration().configure("hibernate.cfg.xml");
		StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder()
		    .applySettings(configuration.getProperties());
		SessionFactory sessionFactory = configuration.buildSessionFactory(builder.build());
		session = sessionFactory.openSession();
		transaction = session.beginTransaction();
		session.update(UserRegister);
		transaction.commit();
		session.close();
		sessionFactory.close();
	}

}
