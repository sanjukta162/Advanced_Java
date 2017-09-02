package com.controller;




import javax.validation.Valid;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dao.ContactDao;

import com.model.Contact;




@Controller
public class ContactController {
	@Autowired
private ContactDao contactdao;
	
	public ContactController(){
		System.out.println("ContactController instantiated");
	}

	@RequestMapping(value="/Contact" ,method=RequestMethod.GET)
	 public String getContact( Model model) {
		//contact = new Contact(); 
		model.addAttribute("contact1",new Contact());
		
		
		return "Contact";
}
	
	
		
		@RequestMapping(value = "/savecontact", method = RequestMethod.POST)
		public String saveContact (@Valid @ModelAttribute("contact1")Contact contact,
				BindingResult result ,Model model){
			
			if(result.hasErrors())
		    {  
		 	   
		 	   return "Contact";
		 	   }
			 else
		       {
				 System.out.println("hello");
				 contactdao.saveContact(contact);
		       }
			return "home";
}
}