package com.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.ProductDao;
import com.model.Product;

@Controller
public class AdminController {
	
	
	
	@Autowired
    private ProductDao productdao;
	
	@RequestMapping("adminpage")
	public String adminpage(Model model){
		List<Product> products=productdao.getAllProducts();
    	//1st parameter is the KEY
    	//2nd parameter is the VALUE
    	model.addAttribute("product",products);
    	return "admin";

}
	
	
	@RequestMapping(value= "/admin/add")
		public String saveProduct (@ModelAttribute("product")Product product){
	    	if(product.getId()==0)
	    	{
			productdao.saveProduct(product);
	    	}
	    	else
	    	{
	    		productdao.editProduct(product);
	    	}
			return "redirect:/admin";
			
		}
}