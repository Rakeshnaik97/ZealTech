package com.niit.ZealTechFrontEnd.Controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ZealTechBackEnd.Dao.ProductDao;
import com.niit.ZealTechBackEnd.Model.Category;
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

	@RequestMapping(value = "/addProduct", method = RequestMethod.POST)
	public ModelAndView addpro(HttpServletRequest req, @RequestParam("pimg") MultipartFile file,
			@ModelAttribute("product") Product product) {
		ModelAndView mv = new ModelAndView("redirect:/Product");
		String filepath = req.getSession().getServletContext().getRealPath("/");
		String filename = file.getOriginalFilename();
		product.setImageName(filename);
		if (productDao.saveorupdateProduct(product) == true) {
			mv.addObject("msg1", "product added Successfully");
		} else {
			mv.addObject("msg1", "product Not Added");
		}
		try {
			byte[] imagebyte = file.getBytes();
			BufferedOutputStream fos = new BufferedOutputStream(
					new FileOutputStream(filepath + "/Resources/" + filename));
			fos.write(imagebyte);
			fos.close();
		} catch (Exception e) {
			// TODO: handle exception
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

	@RequestMapping("/deleteProduct/{productId}") // productId From The Model Class Son it has to be same
	public ModelAndView deletepro(@PathVariable("productId") String productId) {
		ModelAndView mv = new ModelAndView("redirect:/Product"); // Product must be same as jsp pAGE
		product = productDao.getProduct(productId);
		mv.addObject("product", product);
		List<Product> prolist = productDao.list();
		mv.addObject("products", prolist);
		if (productDao.deleteProduct(product) == true) {
			mv.addObject("msg", "Product Deleted");
		} else {
			mv.addObject("msg", "Product Not Deleted");
		}
		return mv;

	}
}
