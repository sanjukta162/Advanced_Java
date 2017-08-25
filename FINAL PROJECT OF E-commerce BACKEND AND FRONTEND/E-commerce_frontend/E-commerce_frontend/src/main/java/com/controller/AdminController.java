package com.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dao.CategoryDao;
import com.dao.ProductDao;
import com.dao.SupplierDao;

import com.model.Category;
import com.model.Product;
import com.model.Supplier;

@Controller
public class AdminController {
	
	//private static String UPLOADED_FOLDER ="E://IMAGE//";
	
	@Autowired
    private ProductDao productdao;
	@Autowired
	private CategoryDao categorydao;
	@Autowired
	private SupplierDao supplierdao;
	
	
	@RequestMapping("/AdminHome")
	public String admin(){
		return "AdminHome";
	}
	@RequestMapping("/adminHome/manageCategories")
	public ModelAndView categories(){
		ModelAndView mv = new ModelAndView("addCategory");
		mv.addObject("category", new Category());
		mv.addObject("isAdminClickedCategories" ,"true");
		mv.addObject("categorys", categorydao.list());
		return mv;
	}
	
	@RequestMapping("/adminHome/manageProducts")
	public ModelAndView products(){
		ModelAndView mv = new ModelAndView("/addProduct");
		mv.addObject("product",new  Product());
		mv.addObject("isAdminClickedProducts", "true");
		mv.addObject("products", productdao.list());
		mv.addObject("categorys", categorydao.list());
		mv.addObject("suppliers", supplierdao.list());
		return mv;
	}
	
	@RequestMapping("/adminHome/manageSuppliers")
	public ModelAndView suppliers(){
		ModelAndView mv = new ModelAndView("/addSupplier");
		mv.addObject("supplier", new Supplier());
		mv.addObject("isAdminClickedSuppliers", "true");
		mv.addObject("suppliers", supplierdao.list());
		return mv;
		
}
}
	//recent closed
	/*@RequestMapping("/admin")
	public String adminpage(Model model){
		List<Product> products=productdao.getAllProducts();
    	//1st parameter is the KEY
    	//2nd parameter is the VALUE
		model.addAttribute("product",new Product());
    	model.addAttribute("listproduct",products);
    	return "admin";

}*/
	
	/*
	//http://localhost:8080/E-commerce_frontend/getproductform
	@RequestMapping(value="/getproductform" )
	public String getProductForm(Model model) {
		//product = new Product();
		List<Category> categories=productdao.getAllCategories();
		model.addAttribute("categories",categories);
		model.addAttribute("product",new Product());
		return "productform";
	}
	
	@RequestMapping("admin/product/geteditform/{id}")
	public String getEditForm(@PathVariable int id,Model model){
	List<Category> categories=productdao.getAllCategories();
		model.addAttribute("categories",categories);
		//select*from product where id=?
		Product product =productdao.getProductById(id);
		//productObj=Product - exists in table
		model.addAttribute("productObj",product);
		return "editform";
	}*/
	
	//recent closed
	/*@RequestMapping(value="/admin/add",method = RequestMethod.POST)
	
		public String saveProduct (@ModelAttribute("product")Product product,
				HttpServletRequest request, Model model, RedirectAttributes redirectAttributes){
		HttpSession s = request.getSession();
		if(product.getId()==0)
	    	{
			System.out.println("id value is" + product.getId());
			
	    	
	    	
	    		productdao.saveProduct(product);
	    		
	    		
	    		System.out.println("name is" +product.getName());
	    		System.out.println("price is" +product.getPrice());*/
	    			
	    			/* MultipartFile file=product.getImage(); 
	    	
	    			 
	    			 try
	    			 {
	    			 byte[] bytes = file.getBytes();
	    	            Path path = Paths.get(UPLOADED_FOLDER);
	    			 
	    	
	
	
	
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
	    			 
	    	}*/
	    		//recent closed
	    		/*MultipartFile file=product.getImage();
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
	          }
	              
	            
	               }	
	    	
		else 
		{
			productdao.editProduct(product);
		}
	    	
			return "redirect:/admin";
	}
*/
		
			
		

	//recent closed
/*	@RequestMapping("/edit/{id}")
	public String update(@PathVariable("id")int id, Model model)
	{
		model.addAttribute("product",productdao.getProductBYID(id));
		
		model.addAttribute("listProducts",productdao.getAllProducts());
		return "admin";
	}
	
	
	@RequestMapping("/admin/product/geteditform/{id}")
	public String editProduct(@PathVariable("id") int id, Model model){
		model.addAttribute("product", productdao.getProductBYID(id));
        model.addAttribute("productList",productdao.getAllProducts());
        return "editform";
	}
	*/
	
	
	/*//recent closed
	@RequestMapping("/remove/{id}")
	   public String removeProduct(@PathVariable("id") int id){
	        
	     productdao.deleteProduct(id);
	     System.out.println("id remove is"+id);
	       return "redirect:/admin";
	   }*/
	
	
	
	
	
	

