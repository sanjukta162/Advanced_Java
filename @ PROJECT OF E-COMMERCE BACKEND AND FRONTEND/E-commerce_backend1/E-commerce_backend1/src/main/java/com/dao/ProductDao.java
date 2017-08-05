package com.dao;

import java.util.List;

import com.model.Product;


public interface ProductDao {
	public List<Product>list();
	public boolean save(Product product);
	public boolean update(Product product);
	public boolean delete(int id);
	public boolean delete (Product product);
	public Product get(String id);
	public Product getProductBYID(int id);
	public Product getProductBYNAME(String name);

	
	

	
	
}
	/*void saveProduct(Product product);
 List<Product>getAllProducts();
   
 Product getProductById(int id);
 void deleteProduct(int id);
 void editProduct(Product product);
 
 List<Category>getAllCategories();
 public List<Product> list();
 
 
 
//void updateProduct(Product product); */

