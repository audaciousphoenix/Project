package com.StudentMarkManagement.serviceImpl;

import org.springframework.stereotype.Component;

import com.StudentMarkManagement.model.Faculty;
import com.StudentMarkManagement.model.Student;
import com.StudentMarkManagement.service.LoginService;

@Component
public class LoginServiceImpl implements LoginService {

	@Override
	public boolean validateAdmin(String username, String password) {
		// TODO Auto-generated method 
		if(username.equals("abc@gmail.com") && password.equals("abc@123")) {
			return true;
		}
		return false;
	}

	@Override
	public Faculty validateFact(String username, String password) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Student validateStud(String username, String password) {
		// TODO Auto-generated method stub
		return null;
	}

}
