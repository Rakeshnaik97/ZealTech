package com.niit.ZealTechFrontEnd.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ZealTechBackEnd.Dao.CartDao;
import com.niit.ZealTechBackEnd.Dao.CartItemsDao;
import com.niit.ZealTechBackEnd.Dao.ProductDao;
import com.niit.ZealTechBackEnd.Dao.UserDao;
import com.niit.ZealTechBackEnd.Model.Cart;
import com.niit.ZealTechBackEnd.Model.CartItems;
import com.niit.ZealTechBackEnd.Model.Product;
import com.niit.ZealTechBackEnd.Model.User;

@Controller
public class CartController {

	@Autowired
	User user;

	@Autowired
	UserDao userDao;

	@Autowired
	Product product;

	@Autowired
	ProductDao productDao;

	@Autowired
	Cart cart;

	@Autowired
	CartDao cartDao;

	@Autowired
	CartItems cartItems;

	@Autowired
	CartItemsDao cartItemsDao;

	@RequestMapping("/addtocart/{productId}")
	public ModelAndView cart(@PathVariable("productId") String id, HttpSession session) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication(); 
		if (!(authentication instanceof AnonymousAuthenticationToken)) {
			String currusername = authentication.getName();
			User user = userDao.getEmail(currusername);

			if (user == null) {
				//if user not loged in
//				int items=0;
				Product product1 = productDao.getProduct(id);
				CartItems cartItem = new CartItems();
				cartItem.setCart(cart);
				cartItem.setProduct(product1);
				cartItem.setCartItemsPrice(product1.getProductPrice());
				cartItemsDao.saveorupdateCartItems(cartItem);
				cart.setCartGrandTotal(cart.getCartGrandTotal() + product1.getProductPrice());
				cart.setCartTotalItems(cart.getCartTotalItems() + 1);
				cartDao.saveorupdateCart(cart);
				session.setAttribute("items", cart.getCartTotalItems());
				session.setAttribute("gtotal", cart.getCartGrandTotal());
				return new ModelAndView("redirect:/Login");
			} else {
//				User lOGID IN
				cart = user.getCart();   //TO FETCH ANY  ADDED CART ITEMS 
//				ModelAndView mv=new ModelAndView();
//				Cart cart=new Cart();
//				mv.addObject("cart", cart);
				Product product1 = productDao.getProduct(id);
				CartItems cartItems = new CartItems();
				cartItems.setCart(cart);
				cartItems.setProduct(product1);
				cartItems.setCartItemsPrice(product1.getProductPrice());
				cartItemsDao.saveorupdateCartItems(cartItems);
				cart.setCartGrandTotal(cart.getCartGrandTotal() + product1.getProductPrice()); 
				cart.setCartGrandTotal(cart.getCartGrandTotal() + 1);
				cartDao.saveorupdateCart(cart);
				session.setAttribute("items", cart.getCartTotalItems());
				session.setAttribute("gtotal", cart.getCartGrandTotal());
				return new ModelAndView("redirect:/");
			}
		}
		return new ModelAndView("redirect:/");
	}

	@RequestMapping(value = "/checkout")
	public String viewcart(Model model, HttpSession session) {
		System.out.println(1223);
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (!(authentication instanceof AnonymousAuthenticationToken)) {
			String currusername = authentication.getName();
			User u = userDao.getEmail(currusername);
			Cart cart = u.getCart();
			List<CartItems> cartItems = cartItemsDao.getlist(u.getCart().getCartId());
			if (cartItems == null || cartItems.isEmpty()) {
				session.setAttribute("items", 0);
				model.addAttribute("gtotal", 0.0);
				model.addAttribute("msg", "No items  is added To Cart");
				return "checkout";
			}
			model.addAttribute("cartItems", cartItems);
			model.addAttribute("gtotal", cart.getCartGrandTotal());
			session.setAttribute("items", cart.getCartTotalItems());
			session.setAttribute("cartId", cart.getCartId());
			return "checkout";
		}
		return "redirect:/checkout";
	}

	@RequestMapping(value = "/Remove/{cartItemsID}")
	public ModelAndView RemoveFromCart(@PathVariable("cartItemsId") String id) {
		ModelAndView modelAndView = new ModelAndView("redirect:/checkout");
		cartItems = cartItemsDao.getCartItems(id);
		Cart c = cartItems.getCart();
		c.setCartGrandTotal(c.getCartGrandTotal() - cartItems.getCartItemsPrice());
		c.setCartTotalItems(c.getCartTotalItems() - 1);
		cartDao.saveorupdateCart(c);
		cartItemsDao.deleteCartItems(cartItems);
		return modelAndView;
	}

	@RequestMapping(value = "/RemoveAll")
	public String RemoveAllFromCart(Model model, HttpSession session) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (!(authentication instanceof AnonymousAuthenticationToken)) {

			String currusername = authentication.getName();
			User u = userDao.getEmail(currusername);
			Cart c = cartDao.getCart(u.getCart().getCartId());
			List<CartItems> cartItem = cartItemsDao.getlist(u.getCart().getCartId());
			for (CartItems c1 : cartItem) {
//				cartItemsDao.get(c1.getCartitem_Id());
				cartItemsDao.deleteCartItems(c1);
			}

			c.setCartGrandTotal(0.0);
			c.setCartTotalItems(0);
			cartDao.saveorupdateCart(c);
			session.setAttribute("items", c.getCartTotalItems());
			return "redirect:/checkout";
		} else {
			return "redirect:/";
		}
	}
}
