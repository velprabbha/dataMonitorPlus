package com.root.dao;

import java.util.List;

import com.root.entity.Admin;
import com.root.entity.UserRegister;


public interface AdminDao {
	
	Admin findByEmail(String email);
	public List<UserRegister> userlist();
	public void edit(UserRegister register);  
}