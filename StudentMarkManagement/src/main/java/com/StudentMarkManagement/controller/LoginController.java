package com.StudentMarkManagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.StudentMarkManagement.serviceImpl.LoginServiceImpl;

@Controller
public class LoginController {
	
	@Autowired
	LoginServiceImpl ls;
	
	@GetMapping("login")
	public String login() 
	{
		return "login";
	}
}
