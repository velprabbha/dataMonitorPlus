package com.root.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.root.dao.RegisterDao;
import com.root.entity.UserRegister;
@Service
public class RegisterServiceImpl implements RegisterService{

	@Autowired
	RegisterDao registerDao;
	@Override
	@Transactional
	public void saveRegister(UserRegister userRegister) {
		System.out.println(userRegister+"from impl");
		registerDao.saveRegister(userRegister);
	}

}
