package com.niit.ZealTechFrontEnd.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ZealTechBackEnd.Dao.ProductDao;
import com.niit.ZealTechBackEnd.Model.Product;

@Controller // Controllers Starting
public class HomeController {

	@Autowired
	Product product;
	
	@Autowired
	ProductDao productDao;
	
	@RequestMapping("/")
	public String Home() {
		return "Home"; // same as created jsp file
	}

	@RequestMapping("/Contactus")
	public String Contactus() {
		return "Contactus"; // same as created jsp file //We Should Add each and Page wchich we add in views
							// Folder Here
	}

	@RequestMapping("/Address")
	public String Address() {
		return "Address"; // same as created jsp file
	}

	@RequestMapping("/Products")
	public String Products() {
		return "Products"; // same as created jsp file
	}

	@RequestMapping("/Products1")
	public ModelAndView Products1() {
		
		ModelAndView mv= new ModelAndView("Products1");
		List<Product> products=productDao.list();
		mv.addObject("products", products);
		return mv; // same as created jsp file
	}

	@RequestMapping("/Checkout")
	public String Checkout() {
		return "Checkout"; // same as created jsp file
	}
	
	@RequestMapping("/Checkout1")
	public String Checkout1() {
		return "Checkout1"; // same as created jsp file
	}

	@RequestMapping("/Header1")
	public String Header1() {
		return "Header1"; // same as created jsp file
	}

	@RequestMapping("/Footer")
	public String Footer() {
		return "Footer"; // same as created jsp file
	}

	@RequestMapping("/BJ")
	public String BJ()
	{
	return "BJ"; // same as created jsp file
	}
	
	@RequestMapping("/Logout")
	public String Logout()
	{
	return "Home"; // same as created jsp file
	}

}
