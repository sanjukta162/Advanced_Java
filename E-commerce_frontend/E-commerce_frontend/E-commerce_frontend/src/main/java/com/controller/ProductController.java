package com.controller;


import java.util.List;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dao.ProductDao;
import com.model.Product;


@Controller
public class ProductController {
	
@Autowired
       private ProductDao productdao;


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
		productdao.saveProduct(product);
		return "success";
		
	}
  //http://localhost:8080/E-commerce_frontend/all/product/getallproducts
    @RequestMapping("/all/product/getallproducts")
    public String  getAllProducts(Model model) {
    	List<Product> products=productdao.getAllProducts();
    	//1st parameter is the KEY
    	//2nd parameter is the VALUE
    	model.addAttribute("products",products);
    	return "productlist";
    }
    
    //http://localhost:8080/E-commerce_frontend/all/product/viewproduct/1
    //http://localhost:8080/E-commerce_frontend/all/product/viewproduct/2
    //http://localhost:8080/E-commerce_frontend/all/product/viewproduct/3
    //http://localhost:8080/E-commerce_frontend/all/product/viewproduct/191
    //id=1,id=2,id=3
    @RequestMapping("all/product/viewproduct/{id}")
    public String getProductById (@PathVariable int id ,Model model){
    	Product product =productdao.getProductById(id);
    	model.addAttribute("product",product);
    	return "viewproduct";
    }
    
   // @RequestMapping("/admin/product/deleteproduct/{id}")
    
   // public void deleteProductById(@PathVariable int id){
    	//productdao.deleteProduct(id);
    	
    	@RequestMapping("/admin/product/deleteproduct/{id}")
        public String deleteProductById(@PathVariable("id") int id) {
     
            productdao.deleteProduct(id);
            return "redirect:/all/product/getallproducts";
        }
    	
    	//productdao.deleteProduct(id);
    //	return"redirect:/all/product/getallproducts";
    }


