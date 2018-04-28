package com.niit.ZealTechBackEnd.Dao;

import java.util.List;

import com.niit.ZealTechBackEnd.Model.Order;

public interface OrderDao {

	public boolean saveorupdateOrder(Order order);

	public boolean deleteOrder(Order order);

	public Order getOrder(String orderId);

	public List<Order> list();
}
