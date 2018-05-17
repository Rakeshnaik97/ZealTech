 
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
<c:url value="/Resources/images" var="images"/>
<c:url value="/Resources/images/Niit/Backg/" var="img"/>

<title>Zeal Tech | Category</title>
</head>
<body>
 	<!-- breadcrumbs -->
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="<c:url value="/"/>"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>|</i></li>
				<li>Category</li>
			</ul>
		</div>
	</div>
	<!-- //breadcrumbs -->
			<div class="typo codess">
		<div class="container"> 
			<h3 class="agileits-title">Category</h3>
			</div>
			</div> 	  
<c:url value="/addCategory" var="cat"/>
<form:form action="${cat}" method="post" commandName="category">
<fieldset align="center" style="margin: -40 500px 50;border: 1px solid black;">
<legend></legend>
<label>Category ID:</label>
<form:input type="text" name="categoryid" path="catId" float="rigth"/>
<br>
<br>
<label>Category Name:</label>
<form:input type="text" name="categoryname" path="catName" float="right"/>
<br>
<br>
<input type="submit" value="Add Category">
<input type="reset" value="Cancel">
</fieldset>
</form:form>

<table border="1px gray"  align="center">
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
</c1:forEach>
</table>
</body>
<%@include file="Footer.jsp" %>
</html>