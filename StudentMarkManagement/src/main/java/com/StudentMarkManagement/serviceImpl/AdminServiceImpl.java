package com.StudentMarkManagement.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.StudentMarkManagement.model.Classes;
import com.StudentMarkManagement.model.Faculty;
import com.StudentMarkManagement.model.Student;
import com.StudentMarkManagement.service.AdminService;

@Component
public class AdminServiceImpl implements AdminService {

	@Autowired
	JdbcTemplate jt;
	
	@Override
	public boolean addClass(String classname) {
		// TODO Auto-generated method stub
		String sql = "Insert into classinfo(classname)values(?);";
		try {
			int c = jt.update(sql,new Object[] {classname});
			if(c>=1) {
				return true;
			}
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return false;
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List<Classes> showClasses() {
		// TODO Auto-generated method stub
		String sql = "select * from classinfo;";
		List<Classes> clist = jt.query(sql, new BeanPropertyRowMapper(Classes.class));
		return clist;
	}

	@SuppressWarnings({ "deprecation", "unchecked", "rawtypes" })
	@Override
	public Classes getClass(String classname) {
		// TODO Auto-generated method stub
		String str="select * from classinfo where classname=?;";
		try
		{
			Classes x= (Classes) jt.queryForObject(str, new Object[] {classname}, new BeanPropertyRowMapper(Classes.class));
			return x;
		}
		catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
		return null;
	}

	@Override
	public boolean addStudent(Student stud) {
		// TODO Auto-generated method stub
		String str="insert into stdreg(rollNo,stdName,gender,address,location,phone,email,password,classid) values(?,?,?,?,?,?,?,?,?);";
		try
		{
			int r=jt.update(str, new Object[] {stud.getRollNo(),stud.getStdName(),stud.getGender(),
					stud.getAddress(),stud.getLocation(),stud.getPhone(),
					stud.getEmail(),stud.getPassword(),stud.getClassId()});
			if(r>=1)
			{
				return true;
			}
			else
				return false;
		}
		catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
		return false;
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List<Student> showAllStudents() {
		// TODO Auto-generated method stub
		String str="select * from stdreg;";
		try
		{
			List<Student> l1=jt.query(str, new BeanPropertyRowMapper(Student.class));
			return l1;
		}
		catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
		return null;
	}

	@SuppressWarnings({ "deprecation", "unchecked", "rawtypes" })
	@Override
	public Faculty getFaculty(String factname) {
		// TODO Auto-generated method stub
		String str="select * from facultyinfo where factname=?;";
		try
		{
			Faculty x= (Faculty) jt.queryForObject(str, new Object[] {factname}, new BeanPropertyRowMapper(Faculty.class));
			return x;
		}
		catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
		return null;
	}

	@Override
	public boolean addFaculty(Faculty fac) {
		String str="insert into facultyinfo(fid,factname,gender,address,location,phone,email,password) values(?,?,?,?,?,?,?,?);";
		try
		{
			int r=jt.update(str, new Object[] {fac.getfId(),fac.getFactName(),fac.getGender(),fac.getAddress(),fac.getLocation(),
					fac.getPhone(),fac.getEmail(),fac.getPassword()});
			if(r>=1)
			{
				return true;
			}
			else
				return false;
		}
		catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
		return false;
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List<Faculty> showAllFaculty() {
		String str="select * from facultyinfo;";
		try
		{
			List<Faculty> l1=jt.query(str, new BeanPropertyRowMapper(Faculty.class));
			return l1;
		}
		catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
		return null;
	}

	@Override
	public boolean mapFactClass(String factname, String cname) {
		// TODO Auto-generated method stub
		Classes c= getClass(cname);
		Faculty f= getFaculty(factname);
		String str="insert into classfac(classId,fId) values(?,?);";
		try
		{
			int r=jt.update(str, new Object[] {c.getClassId(),f.getfId()});
			if(r>=1)
			{
				return true;
			}
			else
				return false;
		}
		catch(Exception ex)
		{
			System.out.println("Class Already Mapped");
		}
		return false;
	}

}
