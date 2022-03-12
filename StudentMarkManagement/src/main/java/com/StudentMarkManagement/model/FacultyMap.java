package com.StudentMarkManagement.model;

public class FacultyMap {
	private String className;
	private String factName;
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getFactName() {
		return factName;
	}
	public void setFactName(String factName) {
		this.factName = factName;
	}
	public FacultyMap(String className, String factName) {
		super();
		this.className = className;
		this.factName = factName;
	}
	public FacultyMap() {
		super();
	}
	
	
	
	

}
