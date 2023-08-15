package com.root.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.root.entity.UserRegister;
import com.root.service.LoginServiceimpl;

@Controller
public class UserLoginController {
	@Autowired
	LoginServiceimpl loginServiceimpl;

	@RequestMapping(value = "/user-home",method = RequestMethod.POST)
	public String loginSubmit(@RequestParam("email") String email,
					          @RequestParam("password") String password) {
		UserRegister temp=loginServiceimpl.submit(email, password);
		if (!(temp==null) && temp.getEmail().equals(email) && temp.getPassword().equals(password)) {
			return "user-home";
		}else {
			return "user-login";
		}
	}
}
