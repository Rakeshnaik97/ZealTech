package com.niit.ZealTechBackEnd.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class Cart {
	@Id
	private String cartId;
	private double cartGrandTotal = 0.0;
	private int cartTotalItems = 0;

	public String getCartId() {
		return cartId;
	}

	public void setCartId(String cartId) {
		this.cartId = cartId;
	}

	public double getCartGrandTotal() {
		return cartGrandTotal;
	}

	public void setCartGrandTotal(double cartGrandTotal) {
		this.cartGrandTotal = cartGrandTotal;
	}

	public int getCartTotalItems() {
		return cartTotalItems;
	}

	public void setCartTotalItems(int cartTotalItems) {
		this.cartTotalItems = cartTotalItems;
	}

}
