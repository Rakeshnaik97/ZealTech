package com.niit.ZealTechBackEnd.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component

public class Supplier {
	@Id
	private String supplierId;
	private String supplierName;
	private String supplierAddress;
	private String SupplierPh_no;

	public String getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(String supplierId) {
		this.supplierId = supplierId;
	}

	public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}

	public String getSupplierAddress() {
		return supplierAddress;
	}

	public void setSupplierAddress(String supplierAddress) {
		this.supplierAddress = supplierAddress;
	}

	public String getSupplierPh_no() {
		return SupplierPh_no;
	}

	public void setSupplierPh_no(String supplierPh_no) {
		SupplierPh_no = supplierPh_no;
	}
	
	@ManyToOne
	@JoinColumns(name="supplierId")
	private Category category;

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
	

}
