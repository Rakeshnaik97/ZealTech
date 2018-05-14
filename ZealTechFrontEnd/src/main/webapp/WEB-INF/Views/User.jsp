<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Zeal Tech | User</title>
</head>
<body>
<c:url value="/addUser" var="use"/>
<form:form action="${use}" method="post" commandName="user">
<fieldset>
<legend>User Form:</legend>
<lable>User ID:</lable>
<form:input type="text" name="userid" path="userId"/>
<br>
<br>
<lable>User Name:</lable>
<form:input type="text" name="username" path="userName"/>
<br>
<br>
<lable>Address:</lable>
<form:textarea rows="10" cols="40" path="useraddress"/>
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
</body>
</html>