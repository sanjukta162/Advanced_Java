package com.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.Product;
import com.service.ProductService;

@Controller
public class ProductController {
@Autowired
private ProductService productService;

public ProductController(){
	System.out.println("ProductController instantiated");
}

    //http://localhost:8080/E-commerce_frontend/getproductform
    @RequestMapping(value="/productform" )
     public String getProductForm(Model model) {
		//product = new Product();
		model.addAttribute("product",new Product());
		return "productform";
		
	}
    @RequestMapping("/saveproduct")
	public String saveProduct (@ModelAttribute (name="product")Product product){
		productService.saveProduct(product);
		return "success";
		
	}
  //http://localhost:8080/E-commerce_frontend/all/product/getallproducts
    @RequestMapping("/all/product/getallproducts")
    public String  getAllProducts(Model model) {
    	List<Product> products=productService.getAllProducts();
    	//1st parameter is the KEY
    	//2nd parameter is the VALUE
    	model.addAttribute("products",products);
    	return "productslist";
    }

}
