package com.root.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@RequestMapping(value = "/log",method = RequestMethod.GET)
	public String home() {
		System.out.println("login");
		return "user-login";
	}

	@RequestMapping(value = "/register",method = RequestMethod.GET)
	public String register() {
		System.out.println("register");
		return "register";
	}

	@RequestMapping(value = "/admin",method = RequestMethod.GET)
	public String admin() {
		return "admin";
	}
}
