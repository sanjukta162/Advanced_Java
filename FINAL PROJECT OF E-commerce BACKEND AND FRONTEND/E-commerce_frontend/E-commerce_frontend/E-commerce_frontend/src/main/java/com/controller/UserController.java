package com.controller;

import java.util.List;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.Authorities_RolesDao;
import com.dao.UserDao;
import com.model.Authorities;
import com.model.User;

@Controller
public class UserController {
@Autowired
private UserDao userdao;
@Autowired
Authorities_RolesDao authoritiesrole;


public UserController(){
	System.out.println("UserController instantiated");
}
//http://localhost:8080/E-commerce_frontend/getRegistrationform

@RequestMapping(value="/RegistrationForm" ,method=RequestMethod.GET)
 public String getRegistrationForm( Model model) {
	//user = new User(); 
	model.addAttribute("user1",new User());
	
	
	return "RegistrationForm";
	

}

@RequestMapping(value = "/Loginform", method = RequestMethod.GET)
        public ModelAndView login(@RequestParam(value = "error", required = false) String error,
@RequestParam(value = "logout", required = false) String logout) {

       ModelAndView model = new ModelAndView();
     if (error != null) {
     model.addObject("error", "Invalid username and password!");
  }

         if (logout != null) {
        model.addObject("msg", "You've been logged out successfully.");
    }
         model.setViewName("Loginform");

     return model;
    

}


@RequestMapping(value = "/saveuser", method = RequestMethod.POST)
	public String saveUser (@Valid @ModelAttribute("user1")User user,BindingResult result ,
			Model model){
		
		if(result.hasErrors())
	    {  
	 	   
	 	   return "RegistrationForm";
	 	   }
		 else
	       {
			 userdao.saveUser(user);
			 
			 
			 Authorities role= new  Authorities();
			 role.setRole("ROLE_USER");
			 role.setRole_id(user.getId());
			 role.setUsername(user.getName());
			 authoritiesrole.addRole(role);
			
	       }
	return "Loginform";

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

	


