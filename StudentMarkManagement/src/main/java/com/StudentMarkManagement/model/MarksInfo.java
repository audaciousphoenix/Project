package com.StudentMarkManagement.model;

public class MarksInfo {
	private String examType;
	private double science;
	private double maths;
	private double computer;
	private double total;
	private double average;
	private String grade;
	private String rollNo;
	private int classId;
	private String fId;
	public String getExamType() {
		return examType;
	}
	public void setExamType(String examType) {
		this.examType = examType;
	}
	public double getScience() {
		return science;
	}
	public void setScience(double science) {
		this.science = science;
	}
	public double getMaths() {
		return maths;
	}
	public void setMaths(double maths) {
		this.maths = maths;
	}
	public double getComputer() {
		return computer;
	}
	public void setComputer(double computer) {
		this.computer = computer;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public double getAverage() {
		return average;
	}
	public void setAverage(double average) {
		this.average = average;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getRollNo() {
		return rollNo;
	}
	public void setRollNo(String rollNo) {
		this.rollNo = rollNo;
	}
	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
	}
	public String getfId() {
		return fId;
	}
	public void setfId(String fId) {
		this.fId = fId;
	}
	public MarksInfo(String examType, double science, double maths, double computer, String rollNo) {
		super();
		this.examType = examType;
		this.science = science;
		this.maths = maths;
		this.computer = computer;
		this.rollNo = rollNo;
	}
	public MarksInfo()
	{
		super();
	}
	
	

}
