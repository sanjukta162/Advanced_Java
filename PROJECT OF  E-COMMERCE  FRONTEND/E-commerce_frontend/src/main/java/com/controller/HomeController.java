package com.controller;

import org.springframework.stereotype.Controller;


import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
	
	
	
	/* @RequestMapping(value = {"/","/index"})
	 public String homepage() {
	        return "index";
	    }*/
	
	
	 
	/* @RequestMapping("header")*/
	@RequestMapping(value={"/","/header"})
	 public String header(){
		return "header";
	
}
	@RequestMapping("home")
	public String homePage(){
		return "home";
	
}
	
	@RequestMapping("Loginform")
	public String Loginform(){
		return "Loginform";
}

	@RequestMapping("RegistrationForm")
	public String Registration(){
		return "RegistrationForm";
	}
	@RequestMapping("footer")
	public String footer(){
		return "footer";
	
}
	
}
