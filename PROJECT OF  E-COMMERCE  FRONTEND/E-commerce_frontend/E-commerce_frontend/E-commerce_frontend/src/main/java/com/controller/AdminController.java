package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.ProductDao;
//import com.model.Category;
import com.model.Product;

@Controller
public class AdminController {
	
	
	
	@Autowired
    private ProductDao productdao;
	
	@RequestMapping("/admin")
	public String adminpage(Model model){
		List<Product> products=productdao.getAllProducts();
    	//1st parameter is the KEY
    	//2nd parameter is the VALUE
		model.addAttribute("product",new Product());
    	model.addAttribute("listproduct",products);
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
	
	@RequestMapping("/edit/{id}")
	public String update(@PathVariable("id")int id, Model model)
	{
		model.addAttribute("product",productdao.getProductById(id));
		
		model.addAttribute("listProducts",productdao.getAllProducts());
		return "admin";
	}
	
	
	@RequestMapping("/admin/product/geteditform/{id}")
	public String editProduct(@PathVariable("id") int id, Model model	){
		model.addAttribute("product", productdao.getProductById(id));
        model.addAttribute("productList",productdao.getAllProducts());
        return "editform";
	}
	
	
	@RequestMapping("/remove/{id}")
	   public String removeProduct(@PathVariable("id") int id){
	        
	     productdao.deleteProduct(id);
	     System.out.println("id remove is"+id);
	       return "redirect:/admin";
	   }
	
	
	
	
	
	

}