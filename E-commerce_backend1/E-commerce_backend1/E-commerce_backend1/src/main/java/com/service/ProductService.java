package com.service;

import java.util.List;

import com.model.Product;
public interface ProductService {
	void saveProduct(Product product);
	List<Product>getAllProducts();
	

}
