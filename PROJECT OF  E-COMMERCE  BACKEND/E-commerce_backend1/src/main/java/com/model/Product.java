package com.model;

import java.io.Serializable;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
//import javax.persistence.GeneratedValue;


import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
//import javax.validation.constraints.Min;

//import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;
@Component
@Entity

public class Product implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -394001576741655012L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	
	private int Id;
	//@NotEmpty(message="ProductName cannot be Blank")
	private String name;
	//@Min(value=50)
	private double price;
	private int quantity;
	private String description;
	
	@ManyToOne
	@JoinColumn(name="cid")
	private Category category;
	
	
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
}
