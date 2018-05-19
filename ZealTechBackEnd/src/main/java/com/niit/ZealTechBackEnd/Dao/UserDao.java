package com.niit.ZealTechBackEnd.Dao;

import java.util.List;

import com.niit.ZealTechBackEnd.Model.User;

public interface UserDao {
	public boolean saveorupdateUser(User user);

	public boolean deleteUser(User user);

	public User getUser(String UserId);

	public List<User> list();
	
	public User isValid(String umail,String pwd);

	public User getEmail(String currusername);
}
