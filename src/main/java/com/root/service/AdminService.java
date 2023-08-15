package com.root.service;

import java.util.List;

import com.root.entity.UserRegister;

public interface AdminService {
	
	boolean validatecredentials(String email,String password);
	
	public List<UserRegister> userlist();
	
	public void edit(UserRegister userRegister);
}
