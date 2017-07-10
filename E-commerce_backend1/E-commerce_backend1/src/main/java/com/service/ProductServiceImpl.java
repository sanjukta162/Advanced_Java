package com.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ProductDao;
import com.model.Product;
@Service//productServiceImpl=new ProductServiceImpl()
@Transactional

public class ProductServiceImpl implements ProductService {
	public ProductServiceImpl (){
		System.out.println("ProductServiceImpl object is created");
	}
	
@Autowired
private ProductDao productDao;
 public void saveProduct (Product product){
	 productDao.saveProduct(product);
 }
	public List<Product>getAllProducts(){
		return productDao.getAllProducts();
		
	}
	
	

}
