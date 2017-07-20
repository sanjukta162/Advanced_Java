package com.configuration;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.model.Category;
import com.model.Product;
import com.model.User;



@Configuration
@EnableTransactionManagement
@ComponentScan({ "com" })
public class Hibernate_config {
	//<bean id ="" class="">
	
	//@Bean("dataSource")
	@Bean
	public DataSource getH2dataSource()
	{
	DriverManagerDataSource dataSource = new DriverManagerDataSource();
	dataSource.setUrl("jdbc:h2:tcp://localhost/~/E-commerce");
	dataSource.setDriverClassName("org.h2.Driver");
	dataSource.setUsername("sa");
	dataSource.setPassword("sa");
	return dataSource;
	}

	public Properties getHibernateProperties()
	{
	Properties properties = new Properties();
	properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
	properties.put("hibernate.show_sql", "true");
	properties.put("hibernate.format_sql",true);
	     properties.put("hibernate.hbm2ddl.auto", "update");

	return properties;
	}

	@Autowired
	@Bean
	//@Bean("sessionFactory")

	public SessionFactory getSessionFactory(DataSource dataSource) {

	LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
	sessionBuilder.addProperties(getHibernateProperties());
	sessionBuilder.addAnnotatedClass(User.class);
	sessionBuilder.addAnnotatedClass(Product.class);
	sessionBuilder.addAnnotatedClass(Category.class);
	
	
	sessionBuilder.scanPackages("com.model");
	return sessionBuilder.buildSessionFactory();
	}






	@Bean
	//@Bean("transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory)
	{
	HibernateTransactionManager transactionManager = new HibernateTransactionManager();
	transactionManager.setSessionFactory(sessionFactory);
	return transactionManager;
	}
	
	

	}
	


