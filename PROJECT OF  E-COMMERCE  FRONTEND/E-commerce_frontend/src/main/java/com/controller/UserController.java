package com.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.UserDao;
import com.model.User;

@Controller
public class UserController {
@Autowired
private UserDao userdao;


public UserController(){
	System.out.println("UserController instantiated");
}
//http://localhost:8080/E-commerce_frontend/getRegistrationform

@RequestMapping(value="/Registrationform" )
 public String getRegistrationform(Model model) {
	//user = new User();
	model.addAttribute("user",new User());
	return "Registrationform";
	

}
@RequestMapping("/saveuser")
	public String saveUser (@ModelAttribute (name="user")User user){
		userdao.saveUser(user);
		return "RegSuccess";
}
//http://localhost:8080/E-commerce_frontend/all/user/getallusers
@RequestMapping("/all/user/getallusers")
public String  getAllUsers(Model model) {
	
	List<User> users=userdao.getAllUsers();
	
	//1st parameter is the KEY
	//2nd parameter is the VALUE
	model.addAttribute("users",users);
	return "userslist";
}
}

	


