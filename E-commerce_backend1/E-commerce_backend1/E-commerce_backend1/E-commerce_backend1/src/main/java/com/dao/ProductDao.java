package com.dao;

import java.util.List;


import com.model.Product;

public interface ProductDao {
	void saveProduct(Product product);
 List<Product>getAllProducts();
   
 Product getProductById(int id);
 void deleteProduct(int id);
	
	//public void deleteProduct(int id);
}
