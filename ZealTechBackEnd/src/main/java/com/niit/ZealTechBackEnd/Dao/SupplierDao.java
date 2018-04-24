package com.niit.ZealTechBackEnd.Dao;

import java.util.List;

import com.niit.ZealTechBackEnd.Model.Supplier;

public interface SupplierDao {
	public boolean saveorupdateSupplier(Supplier supplier);

	public boolean deleteSupplier(Supplier supplier);

	public Supplier getSupplier(String SupplierId);

	public List<Supplier> list();

}
