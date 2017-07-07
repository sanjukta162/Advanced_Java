package com.niit.E_commerce_backend1;

import org.hibernate.Hibernate;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.configuration.Hibernate_config;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
    	  ApplicationContext context=new AnnotationConfigApplicationContext(Hibernate_config.class);
       
    }
}
