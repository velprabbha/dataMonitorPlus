package com.root.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.root.entity.Admin;
import com.root.entity.UserRegister;
import com.root.service.AdminService;

@Controller
public class AdminController {
	@Autowired
	AdminService adminService;

	@RequestMapping(value= "/admin-login", method = RequestMethod.POST)
	public String admin(@ModelAttribute("admin") Admin admin, Model model) {
		if (adminService.validatecredentials(admin.getEmail(), admin.getPassword())) {
			return "admin-home";
		} else {
			model.addAttribute("error", "Invalid username or password");
			return "admin";
		}
	}
	@RequestMapping(value = "/user-list")
	public String userdetails(Model model){
		
		System.out.println("User List Calling");
		List<UserRegister> list = adminService.userlist();
		System.out.println(list);
		model.addAttribute("list", list);	
		return "admin-useraccount";
	}
	@RequestMapping(value = "/notify")
	public String notifytab() {
		return "notify";
	}
	@RequestMapping(value ="/edit")
	public UserRegister edit(Model model,UserRegister userRegister) {
		adminService.edit(userRegister);
		System.out.println("edit is responding");
		return null;
	}
}
