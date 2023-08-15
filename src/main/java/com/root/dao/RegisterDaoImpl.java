package com.root.dao;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;

import com.root.entity.UserRegister;


@Repository
public class RegisterDaoImpl implements RegisterDao{

	org.hibernate.Transaction transaction;
	org.hibernate.Session session;
	Configuration configuration = new Configuration().configure("hibernate.cfg.xml");
	StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder()
	    .applySettings(configuration.getProperties());
	
	@Override
	public void saveRegister(UserRegister userRegister) {
		System.out.println(userRegister+"from daoimpl");
		SessionFactory sessionFactory = configuration.buildSessionFactory(builder.build());
		session = sessionFactory.openSession();
		System.out.println(userRegister+"from daoimpl");
		transaction=session.beginTransaction();
		session.persist(userRegister);
		transaction.commit();
	}

}