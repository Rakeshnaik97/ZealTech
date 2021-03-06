package com.niit.ZealTech.Test;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ZealTechBackEnd.Dao.CartDao;
import com.niit.ZealTechBackEnd.Dao.UserDao;
import com.niit.ZealTechBackEnd.Model.Cart;
import com.niit.ZealTechBackEnd.Model.User;

public class CartTest {
	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.*");
		context.refresh();
		Cart cart = (Cart) context.getBean("cart");
		CartDao cartDao = (CartDao) context.getBean("cartDao");
		User user = ((User) context.getBean("user"));
		UserDao userDao = ((UserDao) context.getBean("userDao"));

		cart.setCartId("CT101");
		cart.setCartGrandTotal(143.413);
		cart.setCartTotalItems(45);
		cartDao.saveorupdateCart(cart);
		user = userDao.getUser("U101");
//		cart.setUser(user);

		if (cartDao.saveorupdateCart(cart) == true) {
			System.out.println("Cart added Successfully");
		} else {
			System.out.println("Cart Not added");
		}

		cart.setCartId("CT102");
		cart.setCartGrandTotal(143.413);
		cart.setCartTotalItems(45);
		user = userDao.getUser("U102");
//		cart.setUser(user);

		cartDao.saveorupdateCart(cart);

		if (cartDao.saveorupdateCart(cart) == true) {
			System.out.println("Cart added Successfully");
		} else {
			System.out.println("Cart Not added");
		}

		cart = cartDao.getCart("CT102");
		if (cartDao.deleteCart(cart) == true) {
			System.out.println("Cart Deleted Successfully");
		} else {
			System.out.println("Cart Not Deleted");
		}

		cart = cartDao.getCart("CT101");
		if (cart == null) {
			System.out.println("Cart Is Empty");
		} else {
			System.out.println("Cart info:");
			System.out.println(cart.getCartId());
			System.out.println(cart.getCartGrandTotal());
			System.out.println(cart.getCartTotalItems());
//			System.out.println(cart.getUser().getUserId());

		}

		List<Cart> list = cartDao.list();
		for (Cart ct : list) {
			System.out.println(ct.getCartId());
			System.out.println(ct.getCartGrandTotal());
			System.out.println(ct.getCartTotalItems());
//			System.out.println(ct.getUser().getUserId());
		}
	}
}
