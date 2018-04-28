package com.niit.ZealTech.Test;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ZealTechBackEnd.Dao.BillingDao;
import com.niit.ZealTechBackEnd.Dao.ProductDao;
import com.niit.ZealTechBackEnd.Dao.UserDao;
import com.niit.ZealTechBackEnd.Model.Billing;
import com.niit.ZealTechBackEnd.Model.Product;
import com.niit.ZealTechBackEnd.Model.User;

public class BillingTest {
	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.*");
		context.refresh();

		Billing bill = (Billing) context.getBean("billing");
		BillingDao billingDao = (BillingDao) context.getBean("billingDao");
		User user = ((User) context.getBean("user")); // creating Objects to set and fetch the UserId
		UserDao userDao = ((UserDao) context.getBean("userDao"));

		bill.setBillingId("B101");
		bill.setBillingName("Rakesh");
		bill.setBillingAddress("NagaraBhavi");
		bill.setBillingPh_no("9738620777");
		bill.setBillingCountry("India");
		user = userDao.getUser("U101"); // setting Value For user for Unique UserId
		bill.setUser(user);
		billingDao.saveorupdateBilling(bill);
		if (billingDao.saveorupdateBilling(bill) == true) {
			System.out.println("Bill Added Successfully");
		} else {
			System.out.println("Bill Not added");
		}

		bill.setBillingId("B102");
		bill.setBillingName("Rakesh");
		bill.setBillingAddress("NagaraBhavi");
		bill.setBillingPh_no("9738620777");
		bill.setBillingCountry("India");
		user = userDao.getUser("U102");
		bill.setUser(user);
		billingDao.saveorupdateBilling(bill);
		if (billingDao.saveorupdateBilling(bill) == true) {
			System.out.println("Bill Added Successfully");
		} else {
			System.out.println("Bill Not added");
		}

		bill = billingDao.getBilling("B102");
		if (billingDao.deleteBilling(bill) == true) {
			System.out.println("Bill Deleted");
		} else {
			System.out.println("Bill Not Deleted");
		}

		bill = billingDao.getBilling("B101");
		if (bill == null) {
			System.out.println("Bill Is Empty");
		} else {
			System.out.println("Bill Info");
			System.out.println(bill.getBillingId());
			System.out.println(bill.getBillingName());
			System.out.println(bill.getBillingAddress());
			System.out.println(bill.getBillingPh_no());
			System.out.println(bill.getBillingCountry());
			System.out.println(bill.getUser().getUserId()); // fetching or Getting the Userid from the Usermaodel Class
		}

		List<Billing> blist = billingDao.list();
		for (Billing b : blist) {
			System.out.println(b.getBillingId());
			System.out.println(b.getBillingName());
			System.out.println(b.getBillingAddress());
			System.out.println(b.getBillingPh_no());
			System.out.println(b.getBillingCountry());
			System.out.println(b.getUser().getUserId());
		}
	}
}
