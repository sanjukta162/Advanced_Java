/*package com.controller;


import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.CustomerDao;
import com.dao.ProductDao;
import com.model.Cart;
import com.model.CartItem;
import com.model.Customer;
import com.model.Product;


@Controller
public class CartItemController {
	@Autowired 
private ProductDao productDao;
	@Autowired
private CustomerDao customerDao;
  @RequestMapping("/cart/addtocart/{id}/{units}")
	
	public String addCartItem (@PathVariable int id,@PathVariable int units){
	Product product =productDao.getProductById(id);
	//To get the user details , get the Principal Object from securitycontextholder
	Principal principal=(Principal)
	       SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	String Username=principal.getName();
	Customer customer=customerDao.getCustomerByUsername(Username);
	Cart cart=customer.getCart();
	List<CartItem> cartItems=cart.getCartItems();
	//check if purchased product is already existing in  the cartitem table
	for(CartItem cartItem:cartItems){
		//product id in table (productid in database) == id(input)
		if(cartItem.getProduct().getId()==id){
			cartItem.setQuantity(units);
			cartItem.setTotalPrice(cartItem.getProduct().getPrice() * units);
			cartItemDao.addCartItem(cartItem); //update cartitem units &total price
			return "cart";
		}
	}
	CartItem cartItem=new CartItem();
	cartItem.setQuantity(units);
	cartItem.setTotalPrice(product.getPrice()*units);
	cartItem.setProduct(product);//product_id column in cartItem table
	cartItem.setCart(cart);//cart_id colunm in  cartitem table
	cartItemDao.addCartItem(cartItem);//insert
	
	return "cart";


	
}
}*/
