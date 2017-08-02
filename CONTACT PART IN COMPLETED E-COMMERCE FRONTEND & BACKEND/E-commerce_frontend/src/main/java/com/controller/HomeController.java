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
	
	@RequestMapping("/home")
	public String home(){
		return "home";
	
}
	
	@RequestMapping("aboutus")
	public String aboutus(){
		return "aboutus";
	
}
	/*@RequestMapping("Contact")
	public String Contact(){
		return "Contact";
	}*/
	
	@RequestMapping("MenCollection")
	public String MenCollection(){
		return "MenCollection";
	}

	
	@RequestMapping("WomenCollection")
	public String WomenCollection(){
		return "WomenCollection";
	}

	
	@RequestMapping("footer")
	public String footer(){
		return "footer";
	
}
	
}
