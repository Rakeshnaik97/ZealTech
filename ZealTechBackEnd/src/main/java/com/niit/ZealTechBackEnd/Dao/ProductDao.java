package com.niit.ZealTechBackEnd.Dao;

import java.util.List;

import com.niit.ZealTechBackEnd.Model.Product;

public interface ProductDao {
	public boolean saveorupdateProduct(Product product);

	public boolean deleteProduct(Product product);

	public Product getProduct(String ProductId);

	public List<Product> list();

}
