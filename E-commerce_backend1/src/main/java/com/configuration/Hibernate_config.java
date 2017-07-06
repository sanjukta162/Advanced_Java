package com.configuration;

import java.util.Properties;


import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBean;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.model.User;


@Configuration
@EnableTransactionManagement
@ComponentScan({ "com" })
public class Hibernate_config {
	
	
	
	
	@Bean
	public SessionFactory sessionFactory() {
		LocalSessionFactoryBuilder lsf=
				new LocalSessionFactoryBuilder(getDataSource());
		Properties hibernateProperties=new Properties();
		hibernateProperties.setProperty(
				"hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		hibernateProperties.setProperty("hibernate.hbm2ddl.auto", "create");
		hibernateProperties.setProperty("hibernate.show_sql", "true");
		lsf.addProperties(hibernateProperties);
		Class classes[]=new Class[]{User.class};
		
	    return lsf.addAnnotatedClasses(classes).buildSessionFactory();
	}
	
	    
	@Bean
	public DataSource getDataSource() {
	    BasicDataSource dataSource = new BasicDataSource();
	    dataSource.setDriverClassName("org.h2.Driver");
	    dataSource.setUrl("jdbc:h2:tcp://localhost/~/E-commerce");
	    dataSource.setUsername("sa");
	    dataSource.setPassword("sa");
	    return dataSource;
	}
	    
	  /* private Properties hibernateProperties() {
	       Properties properties = new Properties();
	       properties.put("hibernate.dialect","org.hibernate.dialect.H2Dialect");
	       properties.put("hibernate.show_sql",true);
	       properties.put("hibernate.format_sql",true);
	       properties.put("hibernate.hbm2ddl.auto", "create");
	       
		
	       return properties;        
	   }*/
	    
	   @Bean
	   @Autowired
	   public HibernateTransactionManager transactionManager(SessionFactory s) {
	      HibernateTransactionManager txManager = new HibernateTransactionManager();
	      txManager.setSessionFactory(s);
	      return txManager;
	   }
	}
	


