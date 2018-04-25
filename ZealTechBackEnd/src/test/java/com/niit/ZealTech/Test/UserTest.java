package com.niit.ZealTech.Test;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ZealTechBackEnd.Dao.UserDao;
import com.niit.ZealTechBackEnd.Model.User;

public class UserTest {
	public static void main(String[] args) {
		AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
		ctx.scan("com.niit.*");
		ctx.refresh();

		User user = ((User) ctx.getBean("user"));
		UserDao userDao = ((UserDao) ctx.getBean("userDao"));

		user.setUserId("U101");
		user.setUserName("Rakesh");
		user.setUserPassword("Rakesh");
		user.setUserPh_no("9738620777");
		user.setUseraddress("useraddress");
		user.setUserEmailId("userEmailId@email.com");
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
		}

		List<User> ulist = userDao.list();
		for (User u : ulist) {
			System.out.println(u.getUserId());
			System.out.println(u.getUserName());
			System.out.println(u.getUserPassword());
			System.out.println(u.getUserPh_no());
			System.out.println(u.getUseraddress());
			System.out.println(u.getUserEmailId());
		}
	}
}
