package com.dao;

import java.util.List;


import com.model.Category;
import com.model.Product;

public interface ProductDao {
	void saveProduct(Product product);
 List<Product>getAllProducts();
   
 Product getProductById(int id);
 void deleteProduct(int id);
 void editProduct(Product product);
 
 List<Category>getAllCategories();
 public List<Product> list();
 
 
 
//void updateProduct(Product product); 
}
