package com.niit.ZealTechBackEnd.Dao;

import java.util.List;

import com.niit.ZealTechBackEnd.Model.Billing;

public interface BillingDao {

	public boolean saveorupdateBilling(Billing billing);

	public boolean deleteBilling(Billing billing);

	public Billing getBilling(String billingId);

	public List<Billing> list();
}
