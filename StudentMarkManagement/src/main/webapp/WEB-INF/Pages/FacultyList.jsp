<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Faculty List</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body style="background-image: url(https://images5.fanpop.com/image/photos/31700000/Hogwarts-professors-harry-potter-31749803-1134-705.jpg);
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
				<a href="studentreg"  class="link-light" style="text-decoration:none;color: black;font-weight: bold;">Student Reg</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="faculty"  class="link-light" style="text-decoration:none;color: black;font-weight: bold;">Faculty Reg</a>&nbsp;&nbsp;&nbsp;&nbsp;  
				<a href="cfmap" class="link-light" style="text-decoration:none;color: black;font-weight: bold;">Cls-Fac Mapping</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="login"  class="link-light" style="text-decoration:none;color: black;font-weight: bold;">Logout</a>
            </div>
            <br><br>
        </div>
    </nav>
<br><br><br><br>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<div class="m-3">
				<table class="table table-striped caption-top" style="background-color:#f8f9fa;border-radius:5px;">
				<caption style="color:#ffffff;font-weight:bold">Faculty List</caption>
				<thead>
				<tr>
					<th scope="col">Faculty Id</th>
					<th scope="col">Name</th>
					<th scope="col">Gender</th>
					<th scope="col">Address</th>
					<th scope="col">Location</th>
					<th scope="col">Phone</th>
					<th scope="col">Email</th>
					<th scope="col">Password</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach var="fac" items="${flist }">
				<tr>
					<td>${fac.fId }</td>
					<td>${fac.factName }</td>
					<td>${fac.gender }</td>
					<td>${fac.address }</td>
					<td>${fac.location }</td>
					<td>${fac.phone }</td>
					<td>${fac.email }</td>
					<td>${fac.password }</td>
				</tr>
				</c:forEach>
				</tbody>
				</table>
			</div>
		</div>
		<div class="col-md-2"></div>
	</div>
</div>
</body>
</html>