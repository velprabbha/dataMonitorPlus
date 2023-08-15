package com.root.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.root.dao.LoginDaoImpl;
import com.root.entity.UserRegister;

@Service
public class LoginServiceimpl {
	@Autowired
	LoginDaoImpl loginDaoImpl;
	
	public UserRegister submit(String email,String password) {
		return loginDaoImpl.submit(email, password);
	}
}
