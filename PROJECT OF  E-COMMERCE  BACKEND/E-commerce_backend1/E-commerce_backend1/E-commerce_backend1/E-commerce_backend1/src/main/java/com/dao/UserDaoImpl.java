package com.dao;

import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.model.User;


@Repository
public class UserDaoImpl  implements UserDao{
	@Autowired
	private SessionFactory sessionFactory;
	public  UserDaoImpl(){
		System.out.println("UserDaoImpl object is created");
	}
	@Transactional
	public void saveUser(User user) {
		
		Session session=sessionFactory.getCurrentSession();
		
		//insert into User values (autogeneratedvalue, 001,"PreetVihar","abc","Delhi","abc@gmail.com","ddd","abc123")
		
		session.save(user);
		 }
	
	@Transactional
	    public List<User> getAllUsers(){
	    	Session session=sessionFactory.getCurrentSession();
	    	Query query=session.createQuery("from User");
	    	List<User>users=query.list();
	    	return users;
	    	
	    	
	    }

}
