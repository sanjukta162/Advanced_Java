package com.model;

import java.io.Serializable;


import javax.persistence.Entity;
import javax.persistence.Id;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;
@Component
@Entity
public class User implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1704379726153417848L;
	@Id
	
	private int id;
	@NotEmpty(message="Name values can not be blank")
	private String Name;
	@NotEmpty @Email
	private String email;
	@NotEmpty(message = "Please enter your password")
    @Size(min = 6, max = 15, message = "Your password must between 6 and 15 characters")
	private String Password;
	@NotEmpty(message="Username cannot be blank")
	private String Username;
    private String Address;
    @NotEmpty(message="State values can not be blank")
	private String State;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	
	
}
	
	

