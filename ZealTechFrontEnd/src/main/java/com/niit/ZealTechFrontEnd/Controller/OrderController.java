package com.niit.ZealTechFrontEnd.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ZealTechBackEnd.Dao.BillingDao;
import com.niit.ZealTechBackEnd.Dao.CartDao;
import com.niit.ZealTechBackEnd.Dao.CartItemsDao;
import com.niit.ZealTechBackEnd.Dao.OrderDao;
import com.niit.ZealTechBackEnd.Dao.OrderItemsDao;
import com.niit.ZealTechBackEnd.Dao.PayDao;
import com.niit.ZealTechBackEnd.Dao.ProductDao;
import com.niit.ZealTechBackEnd.Dao.ShippingDao;
import com.niit.ZealTechBackEnd.Dao.UserDao;
import com.niit.ZealTechBackEnd.Model.Billing;
import com.niit.ZealTechBackEnd.Model.Cart;
import com.niit.ZealTechBackEnd.Model.CartItems;
import com.niit.ZealTechBackEnd.Model.Order;
import com.niit.ZealTechBackEnd.Model.OrderItems;
import com.niit.ZealTechBackEnd.Model.Pay;
import com.niit.ZealTechBackEnd.Model.Product;
import com.niit.ZealTechBackEnd.Model.Shipping;
import com.niit.ZealTechBackEnd.Model.User;
import com.niit.ZealTechFrontEnd.OtpGenerator.OtpGenerator;

@Controller
public class OrderController {
	@Autowired
	Cart cart;
	@Autowired
	CartDao cartDao;
	@Autowired
	CartItems cartItems;
	@Autowired
	CartItemsDao cartItemsDao;
	@Autowired
	Billing billing;
	@Autowired
	BillingDao billingDao;
	@Autowired
	Shipping shipping;
	@Autowired
	ShippingDao shippingDao;
	@Autowired
	Order order;
	@Autowired
	OrderDao orderDao;
	@Autowired
	OrderItems orderItems;
	@Autowired
	OrderItemsDao orderItemsDao;
	@Autowired
	Product product;
	@Autowired
	ProductDao productDao;
	@Autowired
	User user;
	@Autowired
	UserDao userDao;
	@Autowired
	Pay pay;
	@Autowired
	PayDao payDao;
	@Autowired
	List<CartItems> cartItems1;
	@Autowired
	private JavaMailSender mailsender;

	String o;

	@RequestMapping("/Buyall")
	public String orderall(Model model, HttpSession session) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (!(authentication instanceof AnonymousAuthenticationToken)) {
			String currusername = authentication.getName();
			user = userDao.getEmail(currusername);
			cart = user.getCart();
			product = null;
			session.setAttribute("products", product);
//		cartItem=cartItemDao.get(cart.getCart_Id());
			cartItems1 = cartItemsDao.getlist(cart.getCartId());
			if (cartItems1 == null || cartItems1.isEmpty()) {
				return "redirect:/checkout";
			} else {
				billing = billingDao.getBilling(user.getUserId());
				List<Shipping> shippings = shippingDao.getaddbyuser(user.getUserId());
				model.addAttribute("billing", billing);
				model.addAttribute("user", user);
				model.addAttribute("shippings", shippings);
				model.addAttribute("shipping", new Shipping());
				model.addAttribute("prot", product);
				session.setAttribute("p", product);

			}
		}
		return "billing";
	}

	@RequestMapping("/Buy/{productId}/{cartItemId}")
	public String order(@PathVariable("productId") String id, @PathVariable("cartItemId") String id2, Model model,
			HttpSession session) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (!(authentication instanceof AnonymousAuthenticationToken)) {
			String currusername = authentication.getName();
			user = userDao.getEmail(currusername);
			cart = user.getCart();
			cartItems1 = null;
			product = productDao.getProduct(id);
			billing = billingDao.getBilling(user.getUserId());
			cartItems = cartItemsDao.getCartItems(id2);
//		System.out.println(billing.getCountry());
//		for(Billing b: billing)
//		{
//			System.out.println(b.getbId());
//			System.out.println(b.getCountry());
//		}
			List<Shipping> shippings = shippingDao.getaddbyuser(user.getUserId());
			user.setBilling(billing);
			model.addAttribute("billing", billing);
			model.addAttribute("user", user);
			model.addAttribute("shippings", shippings);
			model.addAttribute("shipping", new Shipping());
			session.setAttribute("p", product);

			model.addAttribute("citem", cartItems);

			return "billing";
		} else {
			return "redirect:/";
		}
	}

	@RequestMapping("/orderConfirm")
	public String payment(@ModelAttribute("shipping") Shipping sh, Model model) {
//	if(cartItem==null || cartItem.isEmpty())
//	{
//		System.out.println("sorry");
//	}
		sh.setUser(user);
		shipping = sh;
		model.addAttribute("billing", billing);
		model.addAttribute("shipping", shipping);
		model.addAttribute("prot", product);
		model.addAttribute("cartItem1", cartItems1);
		model.addAttribute("cart", cart);
		model.addAttribute("gtotal", cart.getCartGrandTotal());
		return "orderconfirm";
	}

	@RequestMapping("/previous")
	public String previous(Model model) {
		List<Shipping> shippings = shippingDao.getaddbyuser(user.getUserId());
		model.addAttribute("shippingAddresies", shippings);
		model.addAttribute("billing", billing);
		model.addAttribute("shipping", shipping);
		model.addAttribute("product", product);
		return "billing";
	}

	@RequestMapping("/pay")
	public String pay(Model model) {
//	List<Card> cards=cardDao.getcardbyuser(userInfo.getuId());
//	model.addAttribute("cards",cards);
//	model.addAttribute("card",new Card());

		return "Payment1";
	}

	@RequestMapping("/payment1")
	public String payment(@RequestParam("otp") String otp, Model model) {
		int a;
		if (otp == null)
			a = 2;
		else
			a = 1;
		switch (a) {
		case 1:
			if (otp.equals(o)) {
				pay.setPayMethod("COD");
				pay.setStatus("NO");
				break;
			} else {
				return "redirect:/pay";

			}
		case 2:
			pay.setPayMethod("Card");
			pay.setStatus("yes");
			payDao.saveorupdatePay(pay);
//		cardDao.saveorupdate(car);
			break;

		}
		return "redirect:/orderconfirmation";

	}

//@RequestMapping("/payment")
//public String payment(@RequestParam("payb2") String str,Model model)
//{
//	System.out.println(1324);
//	int a;
//	System.out.println(str);
//	if(str.equals(o))
//	{
//		return "redirect:/thankyou";
//	}
//	
//	return "redirect:/orderconfirmation";
//	
//	
//}
	@RequestMapping("/orderconfirmation")
	public String orderconfirmation(HttpSession session) {
//	System.out.println(32);
		order.setBilling(billing);
		order.setShipping(shipping);
//		order.setPay(pay);
		order.setUser(user);
//	System.out.println(524);
		if (cartItems1 == null) {
			order.setOrderGrandTotal(product.getProductPrice());
			orderDao.saveorupdateOrder(order);
			orderItems.setOrder(order);
			orderItems.setOrderProductId(product.getProductId());
			orderItemsDao.saveorupdateOrderItems(orderItems);
			System.out.println(cartItems.getCartItemsPrice());
			cart.setCartGrandTotal(cart.getCartGrandTotal() - cartItems.getCartItemsPrice());
			cart.setCartTotalItems(cart.getCartTotalItems() - 1);
			session.setAttribute("items", cart.getCartTotalItems());
			cartDao.saveorupdateCart(cart);
			cartItemsDao.deleteCartItems(cartItems);
			product.setProductQuantity(product.getProductQuantity() - 1);
			System.out.println("sadgds");
			productDao.saveorupdateProduct(product);
			// cartItemDao.delete(cartItemDao.getlistall(cart.getCart_id(),productInfo.getPrdid()));
			System.out.println(324);
		} else {
			System.out.println(656);
			order.setOrderGrandTotal(cart.getCartGrandTotal());
			orderDao.saveorupdateOrder(order);
			int count = 0;
			for (CartItems c : cartItems1) {
				System.out.println(3444);
				orderItems.setOrder(order);
				// orderItem.setProductid(c.getProductInfo().getPrdid());
				System.out.println(3443);
				orderItemsDao.saveorupdateOrderItems(orderItems);
				cartItemsDao.deleteCartItems(c);
//			product.setQuantity(quantity);=product.getQuantity()-1;
			}
//		product.setQuantity(product.getQuantity()-count);
//		System.out.println("sadgds");
//		productDao.saveorupdate(product);
			cart.setCartGrandTotal(0.0);
			cart.setCartTotalItems(0);
			System.out.println(346);
			session.setAttribute("items", cart.getCartTotalItems());
			cartDao.saveorupdateCart(cart);

		}
		cartItems = null;
		cartItems1 = null;
		product = null;
		order = new Order();
		orderItems = new OrderItems();
		System.out.println(565);

		return "Thankyou";

	}

	@RequestMapping(value = "/SendMail")
	public void SendMail() {
		System.out.println(21312);
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (!(authentication instanceof AnonymousAuthenticationToken)) {
			String currusername = authentication.getName();
			user = userDao.getEmail(currusername);
			OtpGenerator ot = new OtpGenerator();
// String o=ot.Otpga();
			o = ot.Otpga();
			String recipientAddress = user.getUserEmailId();
			String subject = "Zeal Tech";
//String subject = request.getParameter("subject");
			String message = "your one time password is " + o + " "+"                    Zeal Tech                                                                                                                                                                                       Please Do Not Respond This Is An AutoGenerated E-Mail!";

// prints debug info
			System.out.println("To:" + recipientAddress);
			System.out.println("Subject: " + subject);
			System.out.println("Message: " + message);

//System.out.println("OTP:"+ otp);
// creates a simple e-mail object
			SimpleMailMessage email = new SimpleMailMessage();
			email.setTo(recipientAddress);
			email.setSubject(subject);
			email.setText(message);
//email.setSubject(otp);
// sends the e-mail
			mailsender.send(email);

// forwards to the view named "Result"
//return "Result";
		}
	}
}
