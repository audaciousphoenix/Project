<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body style="background-image: url(https://www.thesouthafrican.com/wp-content/uploads/2020/09/7a65cac1-hogwarts-legacy-1536x864.png);
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
	<div class="container-fluid mt-4">
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<div class="card m-3">
				<form name="form1" method="post" action="studentregprocess">
				<div class="row">
					<div class=" card-header col-auto" style="font-weight:bold">
						Student Registration
					</div>
				</div>
				<div class="card-body">
				<div class="row">
					<div class="col-md-4" >
						    <label class="form-label">Roll No</label>
							<input type="text" class="form-control" id="rollno" name="rollno" required>
					</div>
					<div class="col-md-5">
						    <label class="form-label">Name</label>
							<input type="text" class="form-control" id="name" name="name" required>
					</div>
					<div class="col-md-3">
						    <label class="form-label">Gender</label>
							<select class="form-select form-select-mt-3" name="gender">
							<option selected>Select...</option>
							<option value="Male">Male</option>
							<option value="Female">Female</option>
							</select>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						    <label class="form-label">Address</label>
							<input type="text" class="form-control" id="address" name="address" required>
					</div>
					<div class="col-md-3">
						    <label class="form-label">Location</label>
							<input type="text" class="form-control" id="location" name="location" required>
					</div>
					<div class="col-md-3">
						    <label class="form-label">Email</label>
							<input type="email" class="form-control" id="email" name="email" required>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						    <label class="form-label">Phone</label>
							<input type="text" class="form-control" id="phone" name="phone" required>
					</div>
					<div class="col-md-4">
						    <label class="form-label">Class</label>
							<select class="form-select form-select-mt-3" name="classname">
							<option selected>Select Class...</option>
							<c:forEach var="cls" items="${clist }">
							<option value="${cls.className }">${cls.className}</option>
							</c:forEach>
							</select>
					</div>
					<div class="col-md-4">
						<label class="form-label">Password</label>
						<input type="password" class="form-control" id="password" name="password" required>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4"></div>
					<div class="col-md-4" style="padding-top:10px">
						<input type="submit" class="btn btn-primary" name="submit" id="submit" value="Submit"/>&nbsp;&nbsp;&nbsp;
						<input type="reset" name="reset" class="btn btn-danger value="Reset"/>
					</div>
					<div class="col-md-4"></div>
				</div>
				</div>
				</form>
				<div style="color:red;text-style:italic;font-size:15px">${msg }</div>
				</div>
			</div>
		</div>
		<div class="col-md-2"></div>
	</div>
	<div class="row">
					<div class="col-md-4"></div>
					<div class="col-md-4" style="padding-top:10px">
					<span style="color: white;text-decoration:none;font-weight: bold;">Click here to see Student List >> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button style="background-color: black;"><a href="studentlist" style="color: white;text-decoration:none;font-weight: bold;">Student List</a></button></span>
					</div>
					<div class="col-md-4"></div>
				</div>
	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>