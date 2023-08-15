package com.root.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.root.dao.AdminDao;
import com.root.entity.Admin;
import com.root.entity.UserRegister;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao adminDao;

	@Override
	public boolean validatecredentials(String email, String password) {
		Admin admin = adminDao.findByEmail(email);
		return admin != null && admin.getPassword().equals(password);
	}

	@Transactional
	@Override
	public List<UserRegister> userlist() {
		System.out.println(adminDao);
		return adminDao.userlist();
	}

	@Override
	public void edit(UserRegister userRegister) {
		System.out.println("edit function is calling");
		adminDao.edit(userRegister);
		return;
	}

}
