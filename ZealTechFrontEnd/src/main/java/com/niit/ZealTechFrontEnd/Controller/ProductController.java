package com.niit.ZealTechFrontEnd.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ZealTechBackEnd.Dao.ProductDao;
import com.niit.ZealTechBackEnd.Model.Product;

@Controller
public class ProductController {
	@Autowired
	Product product; // creating object of Product //MOdelClass

	@Autowired
	ProductDao productDao;

	@RequestMapping("/Product")
	public ModelAndView Product() {
		ModelAndView mv = new ModelAndView("Product");
		List<Product> prolist = productDao.list();
		mv.addObject("product", new Product());
		mv.addObject("products", prolist);
		return mv;
	}

	@RequestMapping("/addProduct")
	public ModelAndView addpro(@ModelAttribute("product") Product product) {
		ModelAndView mv = new ModelAndView("redirect:/Product");
		if (productDao.saveorupdateProduct(product) == true) {
			mv.addObject("msg1", "product added Successfully");
		} else {
			mv.addObject("msg1", "product Not Added");
		}
		return mv;
	}

	@RequestMapping("/editProduct/{productId}") // productId From The Model Class Son it has to be same
	public ModelAndView editpro(@PathVariable("productId") String productId) {
		ModelAndView mv = new ModelAndView("Product"); // Product must be same as jsp pAGE
		product = productDao.getProduct(productId);
		mv.addObject("product", product);
		List<Product> prolist = productDao.list();
		mv.addObject("products", prolist);
		return mv;

	}
}
