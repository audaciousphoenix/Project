<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Class</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body style="background-image: url(https://static0.thethingsimages.com/wordpress/wp-content/uploads/2020/04/Hogwarts-Classes.jpg);
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
    <div class="container-fluid mt-4" style="padding-left: 150px">
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-2">
			<div class="card">
				<div class="card-header"> Add New Class</div>
				<div class="card-body">
				<form name="loginform" method="post" action="addclass">
					<div>
						<label class="form-lable" for="forClass">ClassName</label>
						<input  type="text" name="classname" id="classname">
					</div>
					<br>
			          <div class="row">
                         <div  style="text-align: center;">
                            <input type="submit" value="Add Class" class="btn btn-primary" />
                          </div>
                      </div>
                      <div style="color:black;text-style:italic;font-size:15px">${msg}</div>
                      </form>
				</div>
				</div>
			</div>
		</div>
		<div class="row">
		<div class="col-md-4"></div>
			<div class="col-md-4">
		<table class="table" style="background-color:white ;">
			<thead>
				<tr>
					<th scope="col">Class ID</th>
					<th scope="col">Class Name</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cls" items="${clist }">
				<tr>
					<td>${cls.classId }</td>
					<td>${cls.className }</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
		<div class="col-md-2"></div>
		</div>
	</div>
</body>
</html>