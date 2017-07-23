package com.controller;

import java.io.File;

import java.io.FileOutputStream;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dao.ProductDao;
//import com.model.Category;
import com.model.Product;

@Controller
public class AdminController {
	
	private static String UPLOADED_FOLDER ="E://IMAGE//";
	
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
	
	
	@RequestMapping(value="/admin/add",method = RequestMethod.POST)
	
		public String saveProduct (@ModelAttribute("product")Product product,HttpServletRequest request, Model model, RedirectAttributes redirectAttributes){
		HttpSession s = request.getSession();
		if(product.getId()==0)
	    	{
			System.out.println("id value is" + product.getId());
			
	    	
	    	
	    		productdao.saveProduct(product);
	    		
	    		
	    		System.out.println("name is" +product.getName());
	    		System.out.println("price is" +product.getPrice());
	    			
	    			 MultipartFile file=product.getImage(); 
	    		/*String fileloc=s.getServletContext().getRealPath("c:\a");
	    			 System.out.println(fileloc); String
	    			 filename=fileloc+"\\"+p.getId()+".jpg";
	    			 System.out.println(filename);
	    			 
	    			 try{ byte b[]=file.getBytes(); FileOutputStream fos=new
	    			 FileOutputStream(filename); fos.write(b); fos.close();
	    			 System.out.println(filename);*/
	    			 
	    			 try
	    			 {
	    			 byte[] bytes = file.getBytes();
	    	            Path path = Paths.get(UPLOADED_FOLDER);
	    			 
	    		/*MultipartFile image=product.getImage();
	    			 Path path = 
	    Paths.get("E:\\eclipse-jee-mars-2-win32-x86_64\\New folder\\E-commerce_frontend\\src\\main\\webapp\\resource\\images"+product.getId()+".png");	
	    			 try{
	    				 image.transferTo(new File(path.toString()));
	    			 } catch (IOException e) { 
		    			 e.printStackTrace(); }
		    			  catch (Exception e) { 
		    		  e.printStackTrace(); }
		    			 
		    	}
			
	    			 
	    			 return "redirect:/all/product/getallproducts";
	    	}*/
	
	
	
	
	    	           String filename=path+"\\"+product.getId()+".jpg";
	    	          byte b[]=file.getBytes();
	    	          FileOutputStream fos=new
	    			 FileOutputStream(filename); 
	    	          fos.write(b); fos.close();
	    			 System.out.println(filename);
	    	            redirectAttributes.addFlashAttribute("message",
	    	                        "You successfully uploaded '" + file.getOriginalFilename() + "'");
	    			
	    			} catch (IOException e) { 
	    			 e.printStackTrace(); }
	    			  catch (Exception e) { 
	    		  e.printStackTrace(); }
	    			 
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
	public String editProduct(@PathVariable("id") int id, Model model){
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
	
	
	
	

