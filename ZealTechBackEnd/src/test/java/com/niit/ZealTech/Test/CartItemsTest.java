package com.niit.ZealTech.Test;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ZealTechBackEnd.Dao.CartDao;
import com.niit.ZealTechBackEnd.Dao.CartItemsDao;
import com.niit.ZealTechBackEnd.Dao.ProductDao;
import com.niit.ZealTechBackEnd.Model.Cart;
import com.niit.ZealTechBackEnd.Model.CartItems;
import com.niit.ZealTechBackEnd.Model.Product;

public class CartItemsTest {

	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.*");
		context.refresh();
		CartItems cartItems = (CartItems) context.getBean("cartItems");
		CartItemsDao cartItemsDao = (CartItemsDao) context.getBean("cartItemsDao");

		Cart cart = (Cart) context.getBean("cart");
		CartDao cartDao = (CartDao) context.getBean("cartDao");

		Product product = (Product) context.getBean("product");
		ProductDao productDao = (ProductDao) context.getBean("productDao");

		cartItems.setCartItemsId("CTI101");
		cartItems.setCartItemsPrice(22.02);
		cart = cartDao.getCart("CT101");
		cartItems.setCart(cart);
		product = productDao.getProduct("P101");
		cartItems.setProduct(product);
		
		if (cartItemsDao.saveorupdateCartItems(cartItems) == true) {
			System.out.println("CartItems added Successfully");
		} else {
			System.out.println("CartItems Not Added ");
		}

		cartItems.setCartItemsId("CTI102");
		cartItems.setCartItemsPrice(22.02);
		cart = cartDao.getCart("CT102");
		cartItems.setCart(cart);
		product = productDao.getProduct("P102");
		cartItems.setProduct(product);
		
		if (cartItemsDao.saveorupdateCartItems(cartItems) == true) {
			System.out.println("CartItems added Successfully");
		} else {
			System.out.println("CartItems Not Added ");
		}

		cartItems = cartItemsDao.getCartItems("CTI102");
		if (cartItemsDao.deleteCartItems(cartItems) == true) {
			System.out.println("CartItems Deleted Successfully");
		} else {
			System.out.println("CartItems Not Deleted");
		}

		cartItems = cartItemsDao.getCartItems("CTI101");
		if (cartItems == null) {
			System.out.println("CArtItems Is Empty");
		} else {
			System.out.println("CartItems Info");
			System.out.println(cartItems.getCartItemsId());
			System.out.println(cartItems.getCartItemsPrice());
			System.out.println(cartItems.getCart().getCartId());
			System.out.println(cartItems.getProduct().getProductId());
		}

		List<CartItems> list = cartItemsDao.list();
		for (CartItems c : list) {
			System.out.println(c.getCartItemsId());
			System.out.println(c.getCartItemsPrice());
			System.out.println(c.getCart().getCartId());
			System.out.println(c.getProduct().getProductId());
		}
	}
}
