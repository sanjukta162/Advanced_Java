package com.controller;


import java.io.FileOutputStream;




import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.dao.CategoryDao;
import com.dao.ProductDao;
import com.dao.SupplierDao;
import com.model.Category;
import com.model.Product;
import com.model.Supplier;



@Controller
public class ProductController {
	
@Autowired
       private ProductDao productdao;
@Autowired
       private CategoryDao categorydao;
@Autowired
       private SupplierDao supplierdao;




public ProductController(){
	System.out.println("ProductController instantiated");
}


@RequestMapping(value="/addProduct",method=RequestMethod.GET)
public String listProduct(Model model)
{ 
List<Product> list=productdao.list();
model.addAttribute("product",new Product());
model.addAttribute("products", list);
return "addProduct";
}




@RequestMapping(value="/newProduct",method=RequestMethod.POST)
public String /*addProduct*/ newProduct(@ModelAttribute("product")  Product product,HttpServletRequest request)
{
	HttpSession s=request.getSession();
	
	Category category = categorydao.getCategoryByName(product.getCategory().getCategoryName());
    //categoryDao.save(category);
    Supplier supplier = supplierdao.getSupplierByName(product.getSupplier().getName());
    //supplierDao.save(supplier);
     
    product.setCategory(category);
    product.setSupplier(supplier);
    product.setCategory_id(category.getId());
    product.setSupplier_id(supplier.getId());
    if(product.getId()==0)
    {
    	productdao.save(product);
    	MultipartFile file=product.getImage();
        //  String originalfile=file.getOriginalFilename();
          String fileloc=s.getServletContext().getRealPath("/resource/images/");
          System.out.println(fileloc);
         String filename=fileloc+"\\"+product.getId()+".jpg";
         System.out.println(filename);
         
         try{
         byte b[]=file.getBytes();
        FileOutputStream fos=new FileOutputStream(filename);
        fos.write(b);
    fos.close();
    System.out.println(filename);
   
    } catch (IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
    }
          catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
      }}
         else
         {
        	 productdao.update(product);
         }
        	return "redirect:/addProduct"; 
        
           }	
	

 
@RequestMapping(value="/editProduct/{id}")
public String editP(@ModelAttribute("id") String id,Model model)
{
model.addAttribute("product", productdao.get(id));
model.addAttribute("categorys", categorydao.list());
model.addAttribute("suppliers", supplierdao.list());
return "addProduct";
}
 

@RequestMapping(value="/deleteProduct/{id}")
public String deleteProduct(@PathVariable("id") int id,Model model)
{
    productdao.delete(id);
  
    return "redirect:/addProduct";
    
}


//http://localhost:8080/E-commerce_frontend/all/product/viewproduct/1
//http://localhost:8080/E-commerce_frontend/all/product/viewproduct/2
//http://localhost:8080/E-commerce_frontend/all/product/viewproduct/3
//http://localhost:8080/E-commerce_frontend/all/product/viewproduct/191
//id=1,id=2,id=3

@RequestMapping("all/product/viewproduct/{id}")
public String getProductById (@PathVariable int id ,Model model){
	Product product =productdao.getProductBYID(id);
	model.addAttribute("product",product);
	return "viewproduct";
}


@RequestMapping("/showproduct/{id}")
public String getselectedproductdetails(@PathVariable("id")int id,Model model)
{
Product product=productdao.getProductBYID(id);
model.addAttribute("product", product);
return "showproduct";
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


