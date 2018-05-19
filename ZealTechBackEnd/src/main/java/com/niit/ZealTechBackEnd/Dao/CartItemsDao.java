package com.niit.ZealTechBackEnd.Dao;

import java.util.List;

import com.niit.ZealTechBackEnd.Model.CartItems;

public interface CartItemsDao {

	public boolean saveorupdateCartItems(CartItems cartItems);

	public boolean deleteCartItems(CartItems cartItems);

	public CartItems getCartItems(String cartItemsId);

	public List<CartItems> list();

	public List<CartItems> getlist(String cartId);
}
