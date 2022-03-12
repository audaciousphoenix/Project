<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ClassFaculty Mapping</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body style="background-image: url(https://www.grimes.lib.ia.us/wp-content/uploads/2018/07/hh-1-994x500.png);
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;">
<nav class="navbar navbar-expand-lg " style="background-color: white;">
    <div class="container-fluid">
        <div class="navbar-brand" href="#">
        <div>
        	<img alt="" src="https://th.bing.com/th/id/OIP.sdGSwgsS7Q8VYFL1zg7OfQHaHa?pid=ImgDet&rs=1" style="height: 10%;width: 10%">
        	 <span style="font-weight: bold;color:black;">HogWarts University</span>
        </div>
        </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div class="right">
        <a href="adminhome" class="link-light" style="text-decoration:none;color: black;font-weight: bold;">Admin Home </a> &nbsp;&nbsp;&nbsp;&nbsp;
			<a href="classes" class="link-light" style="text-decoration:none;color: black;font-weight: bold;">Classes </a> &nbsp;&nbsp;&nbsp;&nbsp;
			<a href="studentreg"  class="link-light" style="text-decoration:none;color: black;font-weight: bold;">Student Reg</a> &nbsp;&nbsp;&nbsp;&nbsp;
			<a href="faculty"  class="link-light" style="text-decoration:none;color: black;font-weight: bold;">Faculty Reg</a>&nbsp;&nbsp;&nbsp;&nbsp;  
			<a href="cfmap" class="link-light" style="text-decoration:none;color: black;font-weight: bold;">Cls-Fac Mapping</a>&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="login"  class="link-light" style="text-decoration:none;color: black;font-weight: bold;">Logout</a>
        </div>
        <br><br>
    </div>
</nav>
<br><br><br>
<div class="container-fluid">
<div class="row">
	<div class="col-md-4"></div>
	<div class="col-md-4" style="background-color:#f8f9fa;">
	<div class="mb-3" style="padding-top:5px">
		<p style="font-weight:bold">Class Faculty Mapping</p><br>
		<form name="frm" method="post" action="cfmap">
			<span>Faculty Name</span> 
			<select class="form-select" name="factname">
				<option selected>Select Faculty...</option>
				<c:forEach var="fac" items="${flist }">
				<option value="${fac.factName }">${fac.factName}</option>
				</c:forEach>
			</select> 
			<br> 
			<span>Class Name</span><br> 
			<select class="form-select form-select-mt-3" name="classname">
				<option selected>Select Class...</option>
				<c:forEach var="cls" items="${clist }">
				<option value="${cls.className }">${cls.className}</option>
				</c:forEach>
			</select> 
			<br>
			<div style="text-align: center">
				<input type="submit" value="Map" class="btn btn-primary" />
			</div>
			<br>
			<p style="color:red;text-style:italic;font-size:15px;text-align: center">${msg}</p>
		</form>
	</div>
	</div>
	<div class="col-md-4"></div>
</div>
</div>
</body>
</html>