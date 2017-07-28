package com.dao;


import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Authorities;

@Repository(value="authorities_RolesImpl")

public class Authorities_RolesImpl implements Authorities_RolesDao {
	@Autowired
	SessionFactory session;
	
	@Transactional
	public Boolean addRole(Authorities authorities ){
		System.out.println("save method");
		try{
			Session s=session.openSession();
			Transaction t=s.beginTransaction();
			s.save(authorities);
			s.flush();
			t.commit();
			/*session.getCurrentSession().save(authorities);
			  session.flush();*/
			return true;
			}
		catch(HibernateException e) {
			//TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}
	
	
	

}
