package com.niit.ZealTechBackEnd.Dao;

import java.util.List;

import com.niit.ZealTechBackEnd.Model.Shipping;

public interface ShippingDao {

	public boolean saveorupdateShipping(Shipping shipping);

	public boolean deleteShipping(Shipping shipping);

	public Shipping getShipping(String shippingId);

	public List<Shipping> list();

	public List<Shipping> getaddbyuser(String userId);
}
