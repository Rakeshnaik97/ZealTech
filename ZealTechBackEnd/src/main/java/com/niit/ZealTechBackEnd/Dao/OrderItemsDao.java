package com.niit.ZealTechBackEnd.Dao;

import java.util.List;

import com.niit.ZealTechBackEnd.Model.OrderItems;

public interface OrderItemsDao {

	public boolean saveorupdateOrderItems(OrderItems orderItems);

	public boolean deleteOrderItems(OrderItems orderItems);

	public OrderItems getOrderItems(String orderItemsId);

	public List<OrderItems> list();
}
