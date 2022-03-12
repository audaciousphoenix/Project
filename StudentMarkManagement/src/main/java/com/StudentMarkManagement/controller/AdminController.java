package com.StudentMarkManagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.StudentMarkManagement.serviceImpl.AdminServiceImpl;
import com.StudentMarkManagement.model.Classes;
import com.StudentMarkManagement.model.Faculty;
import com.StudentMarkManagement.model.Student;


@Controller
public class AdminController {
	
	@Autowired
	AdminServiceImpl as;
	
	@GetMapping("adminhome")
	public String home()
	{
		return "Homepage";
	}
	
	@PostMapping("adminhome")
	public String adminLogin(@RequestParam String username,@RequestParam String password,Model m)
	{
		if(username.equals("admin123")&&password.equals("admin"))
		{
			return "Homepage";
		}
		else {
			m.addAttribute("msg","Wrong username/password");
			return "login";
		}
	}
	
	@GetMapping("classess")
	public String getClasses(Model m)
	{
		List<Classes> resList=as.showClasses();
		m.addAttribute("clist", resList);
		return "Classes";
	}
	
	@PostMapping("addClass")
	public String addNewClass(@RequestParam String classname,Model m)
	{
		boolean r=as.addClass(classname);
		List<Classes> resList=as.showClasses();
		m.addAttribute("clist", resList);
		if(r)
		{
			m.addAttribute("msg","Class added...");
			return "Classes";
		}
		else
		{
			m.addAttribute("msg","Class not added!");
			return "Classes";
		}
     }
	
		@GetMapping("studentreg")
		public String getStudentRegPage(Model m)
		{
			List<Classes> resList=as.showClasses();
			m.addAttribute("clist", resList);
			return "StudentReg";
		}
	
		@GetMapping("studentlist")
		public String getStudList(Model m)
		{
			List<Student> reslist=as.showAllStudents();
			m.addAttribute("slist", reslist);
			return "StudentList";
		}
		
		@PostMapping("studentregprocess")
		public String addNewStudent(@RequestParam String rollno, @RequestParam String name, @RequestParam String gender, 
				@RequestParam String address,
				@RequestParam String location,@RequestParam String phone,@RequestParam String classname,
				@RequestParam String password,@RequestParam String email,
				Model m)
		{
			Classes c=as.getClass(classname);
			Student stud = new Student(rollno,name,gender,address,location,phone,email,password,c.getClassId());
			boolean r=as.addStudent(stud);
			if(r)
			{
				m.addAttribute("msg","Student registered...");
				List<Classes> resList=as.showClasses();
				m.addAttribute("clist", resList);
				return "StudentReg";
			}
			else
			{
				m.addAttribute("msg","Student registration failed!");
				List<Classes> resList=as.showClasses();
				m.addAttribute("clist", resList);
				return "StudentReg";
			}
		}
		
		@GetMapping("faculty")
		public String getFacultyPage()
		{
			
			return "FacultyReg";
		}
		
		
		@GetMapping("facultylist")
		public String getFacList(Model m)
		{
			List<Faculty> reslist=as.showAllFaculty();
			m.addAttribute("flist", reslist);
			return "FacultyList";
		}
		
		@PostMapping("facultyregprocess")
		public String addNewFaculty(@RequestParam String fid, @RequestParam String name, @RequestParam String gender, @RequestParam String address,
				@RequestParam String location,@RequestParam String phone,@RequestParam String password,@RequestParam String email,
				Model m)
		{
			Faculty f= new Faculty(fid,name,gender,address,location,phone,email,password);
			boolean r=as.addFaculty(f);
			if(r)
			{
				m.addAttribute("msg","Faculty registered...");
				return "FacultyReg";
			}
			else
			{
				m.addAttribute("msg","Faculty Registration failed!");
				return "FacultyReg";
			}
		}	
		
		@GetMapping("cfmap")
		public String getClassFacMapPage(Model m)
		{
			List<Faculty> flist=as.showAllFaculty();
			List<Classes> clist=as.showClasses();
			m.addAttribute("clist", clist);
			m.addAttribute("flist", flist);
			return "FacultyClassMapping";
		}
		
		@PostMapping("cfmap")
		public String mappingProcess(@RequestParam String factname,@RequestParam String classname,Model m)
		{
			boolean flag=as.mapFactClass(factname, classname);
			if(flag)
			{
				m.addAttribute("msg","Successfully mapped...");
				List<Faculty> flist=as.showAllFaculty();
				List<Classes> clist=as.showClasses();
				m.addAttribute("clist", clist);
				m.addAttribute("flist", flist);
				return "FacultyClassMapping";
			}
			else
			{
				m.addAttribute("msg","CLASS ALREADY MAPPED!");
				List<Faculty> flist=as.showAllFaculty();
				List<Classes> clist=as.showClasses();
				m.addAttribute("clist", clist);
				m.addAttribute("flist", flist);
				return "FacultyClassMapping";
			}
		}
		
}
