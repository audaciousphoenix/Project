package com.StudentMarkManagement.service;

import java.util.List;

import com.StudentMarkManagement.model.Faculty;
import com.StudentMarkManagement.model.MarksInfo;
import com.StudentMarkManagement.model.Student;

public interface FacultyService {
	
	public String changePassword(String newpass,String id);
	public List<Student> showStudentsList(Faculty f);
	public String showClass(Faculty f);
	public String addMarks(MarksInfo m);
	public List<MarksInfo> showMarks(String examType,String fId);
}
