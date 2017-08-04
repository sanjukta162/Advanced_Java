package com.controller;


//import java.util.List;





//import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
//import org.springframework.validation.BindingResult;
//import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.multipart.MultipartFile;

import com.dao.ProductDao;
//import com.model.Category;
import com.model.Product;


@Controller
public class ProductController {
	
@Autowired
       private ProductDao productdao;


public ProductController(){
	System.out.println("ProductController instantiated");
}


/* REQUEST MAPPING OF GETPRODUCT FORM !!*/

//http://localhost:8080/E-commerce_frontend/getproductform
/*@RequestMapping(value="/getproductform" )
public String getProductForm(Model model) {
	//product = new Product();
	List<Category> categories=productdao.getAllCategories();
	model.addAttribute("categories",categories);
	model.addAttribute("product",new Product());
	return "productform";
}*/
    
  
		
	
/* REQUEST MAPPING OF OF ADMIN PAGE FOR GETTING PRODUCT FORM*/
  /*  @RequestMapping("/productform")
	public String adminpage(Model model){
		List<Product> products=productdao.getAllProducts();
    	//1st parameter is the KEY
    	//2nd parameter is the VALUE
    	model.addAttribute("product",products);
    	return "productform";

}*/
    
    /* REQUEST MAPPING FOR SAVEPRODUCT*/
  /*  @RequestMapping("/saveproduct")
	public String saveProduct (@Valid @ModelAttribute (name="product")Product product, BindingResult result,
			Model model){
		if(result.hasErrors())
		{
			List<Category> categories=productdao.getAllCategories();
			model.addAttribute("categories",categories);
			return "productform";
		}
    	
    	productdao.saveProduct(product);
    	//MultipartFile image=product.getImage();
    	
		return "redirect:/all/product/getallproducts";
		
	}*/
    
    
 /*  @RequestMapping("/saveproduct")
	public String saveProduct (@ModelAttribute(name="product")Product product){
	   productdao.saveProduct(product);
	   return "redirect:/all/product/getallproducts";
   }
    	/*if(product.getId()==0)
    	{
		
    	}
    	else
    	{
    		productdao.editProduct(product);
    	}*/
		
    
	
  //http://localhost:8080/E-commerce_frontend/all/product/getallproducts
   /* @RequestMapping("/all/product/getallproducts")
    public String  getAllProducts(Model model) {
    	List<Product> products=productdao.getAllProducts();
    	//1st parameter is the KEY
    	//2nd parameter is the VALUE
    	model.addAttribute("products",products);
    	return "productlist";
    }*/
    
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
    
  
    	
    	/*@RequestMapping("/admin/product/deleteproduct/{id}")
        public String deleteProductById(@PathVariable("id") int id) {
     
            productdao.deleteProduct(id);
            return "redirect:/all/product/getallproducts";
        }
    	//("/admin/product/geteditform/{id}")
    	@RequestMapping("/geteditform/{id}")
    	public String getEditForm(@PathVariable int id,Model model){
    	List<Category> categories=productdao.getAllCategories();
    		model.addAttribute("categories",categories);
    		//select*from product where id=?
    		Product product =productdao.getProductById(id);
    		//productObj=Product - exists in table
    		model.addAttribute("productObj",product);
    		return "editform";
    		
    		
    	}*/
    	
    }


