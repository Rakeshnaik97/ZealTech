<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c1" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="Header1.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Zeal Tech | User</title>
</head>
<body>
	<!-- breadcrumbs -->
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="<c:url value="/"/>"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>|</i></li>
				<li>User</li>
			</ul>
		</div>
	</div>
	<!-- //breadcrumbs -->
	 <div class="typo codess">
		<div class="container"> 
			<h3 class="agileits-title">User</h3>
			</div>
			</div>
<c:url value="/addUser" var="use"/>
<form:form action="${use}" method="post" commandName="user">
<fieldset align="center" style="
    margin-top: -50;
    margin-right: 500px;
    margin-left: 500px;
    margin-bottom: 30px;
">
<legend></legend>
<label>User ID:</lable>
<form:input type="text" name="userid" path="userId"/>
<br>
<br>
<lable>User Name:</lable>
<form:input type="text" name="username" path="userName"/>
<br>
<br>
<label>Address:</lable>
<form:textarea rows="5" cols="25" path="useraddress"/>
</textarea>
<br>
<br>
<lable>Phone:</lable>
<form:input type="tel" name="tel" path="userPh_no"/>
<br>
<br>
<lable>Email Id:</lable>
<form:input type="email" name="email" path="userEmailId"/>
<br>
<br>
<lable>Password:</lable>
<form:input type="text" name="password" path="userPassword"/>
<br>
<br>
<input type="submit" value="Register">
<input type="reset" value="Cancel">
</fieldset>
</form:form>
<table  border="1px gray"  align="center">
<tr>
<th> Id</th>
<th> Name</th>
<th> Address</th>
<th> Ph_no</th>
<th> Email</th>
<th> Password</th>
<!-- <TH>ACTIONS</TH> -->
</tr>
<c1:forEach items="${users}" var="use">
<tr>
<td>${use.getUserId()}</td>
<td>${use.getUserName()}</td>
<td>${use.getUseraddress()}</td>
<td>${use.getUserPh_no()}</td>
<td>${use.getUserEmailId()}</td>
<td>${use.getUserPassword()}</td>
<%-- <td><a href="<c:url value="/editUser/${use.getUserId()}"/>">Edit</a>/<a href="<c:url value="/deleteUser/${use.getUserId()}"/>">Delete</a></td> --%>
</tr>
</c1:forEach>
</table>
</body>
<%@include file="Footer.jsp" %>
</html>