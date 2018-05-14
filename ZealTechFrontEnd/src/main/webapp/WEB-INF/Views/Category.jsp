<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c1" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Zeal Tech | Category</title>
</head>
<body>
<c:url value="/addCategory" var="cat"/>
<form:form action="${cat}" method="post" commandName="category">
<fieldset>
<legend>Category Form:</legend>
<label>Category ID:</label>
<form:input type="text" name="categoryid" path="catId"/>
<br>
<br>
<label>Category Name:</label>
<form:input type="text" name="categoryname" path="catName"/>
<br>
<br>
<input type="submit" value="Add Category">
<input type="reset" value="Cancel">
</fieldset>
</form:form>

<table>
<tr>
<th>CategoryId</th>
<th>CategoryName</th>
<th>Actions</th>
</tr>
<c1:forEach items="${categories}" var="cat">
<tr>
<td>${cat.getCatId()}</td>
<td>${cat.getCatName()}</td>
<td><a href="<c:url value="/editCategory/${cat.getCatId()}"/>">Edit</a>/<a href="<c:url value="/deleteCategory/${cat.getCatId()}"/>">Delete</a></td>
</tr>
</c1:forEach></table>
</body>
</html>