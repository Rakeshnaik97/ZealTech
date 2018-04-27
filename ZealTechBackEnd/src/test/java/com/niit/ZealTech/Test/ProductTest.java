package com.niit.ZealTech.Test;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ZealTechBackEnd.Dao.CategoryDao;
import com.niit.ZealTechBackEnd.Dao.ProductDao;
import com.niit.ZealTechBackEnd.Dao.SupplierDao;
import com.niit.ZealTechBackEnd.Model.Category;
import com.niit.ZealTechBackEnd.Model.Product;
import com.niit.ZealTechBackEnd.Model.Supplier;

public class ProductTest {
	public static void main(String[] args) {
		AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
		ctx.scan("com.niit.*");
		ctx.refresh();
		Product pro = ((Product) ctx.getBean("product"));
		ProductDao proDao = ((ProductDao) ctx.getBean("productDao")); // Repositary Created In ProductDaoImpl Class
		Category cat = (Category) ctx.getBean("category");
		CategoryDao catDao = (CategoryDao) ctx.getBean("categoryDao");
		Supplier sup = (Supplier) ctx.getBean("supplier");
		SupplierDao supDao = (SupplierDao) ctx.getBean("supplierDao");

		pro.setProductId("P101");
		pro.setProductName("Product1");
		pro.setProductDescription("productDescription");
		pro.setProductPrice("999");
		pro.setProductQuantity("99");
		pro.setProductQuantity("99");
		cat = catDao.getCategory("C101"); // to fetch from categoryDao
		pro.setCategory(cat); // setCategory is passing category object

		sup = supDao.getSupplier("S101");
		pro.setSupplier(sup);

		proDao.saveorupdateProduct(pro); // to save the values in the product Table

		if (proDao.saveorupdateProduct(pro) == true) {
			System.out.println("Product is Added Succesfully");
		} else {
			System.out.println("Product Not added");
		}

		pro.setProductId("P102");
		pro.setProductName("Product2");
		pro.setProductDescription("productDescription");
		pro.setProductPrice("999");
		pro.setProductQuantity("99");

		cat = catDao.getCategory("C102"); // to fetch from categoryDao
		pro.setCategory(cat); // setCategory is passing category object

		sup = supDao.getSupplier("S102");
		pro.setSupplier(sup);

		proDao.saveorupdateProduct(pro); // to save the values in the product Table

		if (proDao.saveorupdateProduct(pro) == true) {
			System.out.println("Product is Added Succesfully");
		} else {
			System.out.println("Product Not added");
		}

		pro = proDao.getProduct("P102");
		if (proDao.deleteProduct(pro) == true) {
			System.out.println("Product Deleted");
		} else {
			System.out.println("Product Not Deleted");
		}

		pro = proDao.getProduct("P101");
		if (pro == null) {
			System.out.println("Product Is Empty");
		} else {
			System.out.println("Product Info:");
			System.out.println(pro.getProductId());
			System.out.println(pro.getProductName());
			System.out.println(pro.getProductDescription());
			System.out.println(pro.getProductPrice());
			System.out.println(pro.getProductQuantity());
			System.out.println(pro.getCategory().getCatId());
			System.out.println(pro.getSupplier().getSupplierId());
		}

		List<Product> plist = proDao.list();
		for (Product p : plist) {
			System.out.println(p.getProductId());
			System.out.println(p.getProductName());
			System.out.println(p.getProductDescription());
			System.out.println(p.getProductPrice());
			System.out.println(p.getProductQuantity());
			System.out.println(p.getCategory().getCatId());
			System.out.println(p.getSupplier().getSupplierId());
		}
	}
}
