package com.StudentMarkManagement.service;

import java.util.List;

import com.StudentMarkManagement.model.Classes;
import com.StudentMarkManagement.model.Faculty;
import com.StudentMarkManagement.model.Student;


public interface AdminService {
	public boolean addClass(String classname);
	public List<Classes> showClasses();
	public Classes getClass(String classname);
	public boolean addStudent(Student stud);
	public List<Student> showAllStudents();
	public Faculty getFaculty(String factname);
	public boolean addFaculty(Faculty fac);
	public List<Faculty> showAllFaculty();
	public boolean mapFactClass(String fname,String cname);
}
