package com.root.dao;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;

import com.root.entity.UserRegister;

@Repository
public class LoginDaoImpl {

	
	org.hibernate.Session session;
	Configuration configuration = new Configuration().configure("hibernate.cfg.xml");
	StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder()
	    .applySettings(configuration.getProperties());
	public UserRegister submit(String email, String password) {
		SessionFactory sessionFactory = configuration.buildSessionFactory(builder.build());
		session = sessionFactory.openSession();
		Query query = session.createQuery("from UserRegister where email =:email AND password =:password");
		query.setParameter("email", email);
		query.setParameter("password", password);
		UserRegister u = (UserRegister) query.uniqueResult();
		session.close();
		sessionFactory.close();
		return u;
	}
}
