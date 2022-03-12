package com.StudentMarkManagement.service;

import com.StudentMarkManagement.model.Faculty;
import com.StudentMarkManagement.model.Student;

public interface LoginService {
	public boolean validateAdmin(String username,String password);
	public Faculty validateFact(String username,String password);
	public Student validateStud(String username,String password);

}
