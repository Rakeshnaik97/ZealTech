package com.niit.ZealTech.Test;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ZealTechBackEnd.Dao.BillingDao;
import com.niit.ZealTechBackEnd.Dao.OrderDao;
import com.niit.ZealTechBackEnd.Dao.OrderItemsDao;
import com.niit.ZealTechBackEnd.Dao.ShippingDao;
import com.niit.ZealTechBackEnd.Dao.UserDao;
import com.niit.ZealTechBackEnd.Model.Billing;
import com.niit.ZealTechBackEnd.Model.Order;
import com.niit.ZealTechBackEnd.Model.OrderItems;
import com.niit.ZealTechBackEnd.Model.Shipping;
import com.niit.ZealTechBackEnd.Model.User;

public class OrderTest {
	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.*");
		context.refresh();

		Order order = (Order) context.getBean("order");
		OrderDao orderDao = (OrderDao) context.getBean("orderDao");


		User user = (User) context.getBean("user");
		UserDao userDao = (UserDao) context.getBean("userDao");

		Billing billing = (Billing) context.getBean("billing");
		BillingDao billingDao = (BillingDao) context.getBean("billingDao");

		Shipping shipping = (Shipping) context.getBean("shipping");
		ShippingDao shippingDao = (ShippingDao) context.getBean("shippingDao");

		order.setOrderId("O101");
		order.setOrderDate("16-06-1997");
		order.setOrderTime("02:06 PM");
		order.setOrderGrandTotal(99.32442);
		user = userDao.getUser("U101");
		order.setUser(user);
		billing = billingDao.getBilling("B101");
		order.setBilling(billing);
		shipping = shippingDao.getShipping("SHIP101");
		order.setShipping(shipping);
		if (orderDao.saveorupdateOrder(order) == true) {
			System.out.println("Order added Successfully");
		} else {
			System.out.println("order Not Added Successfully");
		}

		order.setOrderId("O102");
		order.setOrderDate("16-06-1997");
		order.setOrderTime("02:06 PM");
		order.setOrderGrandTotal(99.32442);
		user = userDao.getUser("U102");
		order.setUser(user);
		billing = billingDao.getBilling("B102");
		order.setBilling(billing);
		shipping = shippingDao.getShipping("SHIP102");
		order.setShipping(shipping);

		if (orderDao.saveorupdateOrder(order) == true) {
			System.out.println("Order added Successfully");
		} else {
			System.out.println("order Not Added Successfully");
		}

		order = orderDao.getOrder("O102");
		if (orderDao.deleteOrder(order) == true) {
			System.out.println("Order Deleted Successfully");
		} else {
			System.out.println("Order Not Deleted");
		}

		order = orderDao.getOrder("O101");
		if (order == null) {
			System.out.println("Order Is Empty");
		} else {
			System.out.println("Order Info:");
			System.out.println(order.getOrderId());
			System.out.println(order.getOrderDate());
			System.out.println(order.getOrderTime());
			System.out.println(order.getOrderGrandTotal());
			System.out.println(order.getUser().getUserId());
			System.out.println(order.getBilling().getBillingId());
			System.out.println(order.getShipping().getShippingId());
		}

		List<Order> list = orderDao.list();
		for (Order o : list) {
			System.out.println(o.getOrderId());
			System.out.println(o.getOrderDate());
			System.out.println(o.getOrderTime());
			System.out.println(o.getOrderGrandTotal());
			System.out.println(o.getUser().getUserId());
			System.out.println(o.getBilling().getBillingId());
			System.out.println(o.getShipping().getShippingId());

		}

	}
}
