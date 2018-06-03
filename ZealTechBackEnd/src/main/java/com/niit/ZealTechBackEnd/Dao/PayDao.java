package com.niit.ZealTechBackEnd.Dao;

import java.util.List;

import com.niit.ZealTechBackEnd.Model.Pay;

public interface PayDao {
	public boolean saveorupdatePay(Pay pay);

	public boolean deletePay(Pay pay);

	public Pay getPay(String payId);

	public List<Pay> list();
}
