package com.niit.ZealTechBackEnd.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ZealTechBackEnd.Model.Cart;

@Transactional
@EnableTransactionManagement
@Repository("cartDao")
public interface CartDao {

	public boolean saveorupdateCart(Cart cart);

	public boolean deleteCart(Cart cart);

	public Cart getCart(String cartId);

	public List<Cart> list();
}
