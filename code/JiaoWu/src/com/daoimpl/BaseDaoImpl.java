package com.daoimpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BaseDaoImpl {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
	
		return sessionFactory.getCurrentSession();
		
	}
	
}
