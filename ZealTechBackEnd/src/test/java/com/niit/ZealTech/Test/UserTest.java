package com.niit.ZealTech.Test;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ZealTechBackEnd.Dao.BillingDao;
import com.niit.ZealTechBackEnd.Dao.OrderDao;
import com.niit.ZealTechBackEnd.Dao.ShippingDao;
import com.niit.ZealTechBackEnd.Dao.UserDao;
import com.niit.ZealTechBackEnd.Model.Billing;
import com.niit.ZealTechBackEnd.Model.Order;
import com.niit.ZealTechBackEnd.Model.Shipping;
import com.niit.ZealTechBackEnd.Model.User;

public class UserTest {
	public static void main(String[] args) {
		AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
		ctx.scan("com.niit.*");
		ctx.refresh();

		User user = ((User) ctx.getBean("user"));
		UserDao userDao = ((UserDao) ctx.getBean("userDao"));
		Billing bill = (Billing) ctx.getBean("billing");
		BillingDao billingDao = (BillingDao) ctx.getBean("billingDao");
		Order order = (Order) ctx.getBean("order");
		OrderDao orderDao = (OrderDao) ctx.getBean("orderDao");
		Shipping shipping = ((Shipping) ctx.getBean("shipping"));
		ShippingDao shippingDao = ((ShippingDao) ctx.getBean("shippingDao"));

		user.setUserId("U101");
		user.setUserName("Rakesh");
		user.setUserPassword("Rakesh");
		user.setUserPh_no("9738620777");
		user.setUseraddress("useraddress");
		user.setUserEmailId("userEmailId@email.com");
		bill = billingDao.getBilling("B101");
		user.setBilling(bill);
		order = orderDao.getOrder("O101");
		user.setOrder(order);
		shipping = shippingDao.getShipping("SHIP101");
		user.setShipping(shipping);
		if (userDao.saveorupdateUser(user) == true) {
			System.out.println("User Added Successfully");
		} else {
			System.out.println("User Not Added ");
		}

		user.setUserId("U102");
		user.setUserName("Rakesh");
		user.setUserPassword("Rakesh");
		user.setUserPh_no("9738620777");
		user.setUseraddress("useraddress");
		user.setUserEmailId("userEmailId@email.com");
		bill = billingDao.getBilling("B102");
		user.setBilling(bill);
		order = orderDao.getOrder("O102");
		user.setOrder(order);
		shipping = shippingDao.getShipping("SHIP102");
		user.setShipping(shipping);
		if (userDao.saveorupdateUser(user) == true) {
			System.out.println("User Added Successfully");
		} else {
			System.out.println("User Not Added ");
		}

		user = userDao.getUser("U102");
		if (userDao.deleteUser(user) == true) {
			System.out.println("User Succesfully Deleted");
		} else {
			System.out.println("User Not Deleted ");
		}

		user = userDao.getUser("U101");
		if (user == null) {
			System.out.println("User Data is Empty");
		} else {
			System.out.println("User Info:");
			System.out.println(user.getUserId());
			System.out.println(user.getUserName());
			System.out.println(user.getUserPassword());
			System.out.println(user.getUserPh_no());
			System.out.println(user.getUseraddress());
			System.out.println(user.getUserEmailId());
			System.out.println(user.getOrder().getOrderId());
			System.out.println(user.getShipping().getShippingId());
			System.out.println(user.getBilling().getBillingId());
		}

		List<User> ulist = userDao.list();
		for (User u : ulist) {
			System.out.println(u.getUserId());
			System.out.println(u.getUserName());
			System.out.println(u.getUserPassword());
			System.out.println(u.getUserPh_no());
			System.out.println(u.getUseraddress());
			System.out.println(u.getUserEmailId());
			System.out.println(u.getBilling().getBillingId());
			System.out.println(u.getOrder().getOrderId());
			System.out.println(u.getShipping().getShippingId());
		}

	}
}
