package com.niit.ZealTechBackEnd.Dao;

import java.util.List;

import com.niit.ZealTechBackEnd.Model.Authentication;

public interface AuthenticationDao {

	public boolean saveorupdateAuthentication(Authentication authentication);

	public boolean deleteAuthentication(Authentication authentication);

	public Authentication getAuthentication(String roleId);

	public List<Authentication> list();
}
