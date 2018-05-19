package com.niit.ZealTechFrontEnd.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ZealTechBackEnd.Dao.UserDao;
import com.niit.ZealTechBackEnd.Model.Cart;
import com.niit.ZealTechBackEnd.Model.User;

@Controller
public class UserController {
	@Autowired
	User user;

	@Autowired
	UserDao userDao;

	@RequestMapping("/SignUp")
	public ModelAndView User() {
		ModelAndView mv = new ModelAndView("Signup");
		List<User> ulist = userDao.list();
		mv.addObject("user", new User());
		mv.addObject("users", ulist);
		return mv;
	}

	@RequestMapping("/addUser")
	public ModelAndView adduser(@ModelAttribute("user") User user) {
		ModelAndView mv = new ModelAndView("redirect:/Login");
		Cart cart=new Cart();
		user.setCart(cart);
		if (userDao.saveorupdateUser(user) == true) {
			mv.addObject("msg1", "User Added Successfully");
		} else {
			mv.addObject("msg1", "User Not Added");
		}
		return mv;
	}


}
