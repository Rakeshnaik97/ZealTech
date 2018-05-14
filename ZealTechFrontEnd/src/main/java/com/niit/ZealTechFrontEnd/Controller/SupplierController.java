package com.niit.ZealTechFrontEnd.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ZealTechBackEnd.Dao.SupplierDao;
import com.niit.ZealTechBackEnd.Model.Supplier;

@Controller
public class SupplierController {
	@Autowired
	Supplier supplier;

	@Autowired
	SupplierDao supplierDao;

	@RequestMapping("/Supplier")
	public ModelAndView Supplier() {
		ModelAndView mv = new ModelAndView("Supplier");
		List<Supplier> suplist = supplierDao.list();
		mv.addObject("supplier", new Supplier());
		mv.addObject("suppliers", suplist);
		return mv;
	}

	@RequestMapping("/addSupplier")
	public ModelAndView addsupplier(@ModelAttribute("supplier") Supplier supplier) {
		ModelAndView mv = new ModelAndView("redirect:/Supplier");
		if (supplierDao.saveorupdateSupplier(supplier) == true) {
			mv.addObject("msg1", "Supplier Added Successfully");
		} else {
			mv.addObject("msg1", "Supplier Not Added");
		}
		return mv;
	}

	@RequestMapping("/editSupplier/{supplierId}")
	public ModelAndView editsupplier(@PathVariable("supplierId") String supplierId) {
		ModelAndView mv = new ModelAndView("Supplier");
		supplier = supplierDao.getSupplier(supplierId);
		mv.addObject("supplier", supplier);
		List<Supplier> suplist = supplierDao.list();
		mv.addObject("suppliers", suplist);
		return mv;
	}
}
