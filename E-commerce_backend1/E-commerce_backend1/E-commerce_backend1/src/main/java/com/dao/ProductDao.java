package com.dao;

import java.util.List;

import com.model.Product;

public interface ProductDao {
	void saveProduct(Product product);
 List<Product>getAllProducts();
	

}
