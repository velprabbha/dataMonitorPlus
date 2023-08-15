package com.root.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.root.entity.UserRegister;
import com.root.service.RegisterService;

@Controller
public class UserRegisterController {
	@Autowired
	RegisterService registerService;

	@RequestMapping(value = "/user-register",method = RequestMethod.POST)
	public String ProcessForm(@ModelAttribute UserRegister userRegister) {
		System.out.println(userRegister);
		System.out.println(userRegister.getFirstName());
		//String firstName =userRegister.getFirstName();
		String email = userRegister.getEmail();
		String password = userRegister.getPassword();
		String confirmPassword =userRegister.getConfirmPassword();
		if (password.equals(confirmPassword)
				&& email.equals(email)) {
			registerService.saveRegister(userRegister);
		return "userlogin";
		}
		return "register";
	}
}
