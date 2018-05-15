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
<title>Zeal Tech | Supplier</title>
</head>
<body>
	<!-- breadcrumbs -->
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="<c:url value="/"/>"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>|</i></li>
				<li>Supplier</li>
			</ul>
		</div>
	</div>
	<!-- //breadcrumbs --> 
			<div class="typo codess">
		<div class="container"> 
			<h3 class="agileits-title">Supplier</h3>
			</div>
			</div>
<c:url value="/addSupplier" var="sup"/>
<form:form action="${sup}" method="post" commandName="supplier">
<fieldset style="
    margin-top: -50;
    margin-right: 500px;
    margin-left: 500px;" >
<legend></legend>
<lable>Supplier ID:</lable>
<form:input type="text" name="supplierid" path="supplierId"/>
<br>
<br>
<lable>Supplier Name:</lable>
<form:input type="text" name="suppliername" path="supplierName"/>
<br>
<br>
<lable>Address:</lable>
<form:textarea rows="4" cols="25" path="supplierAddress"/>
</textarea>
<br>
<br>
<lable>PhoneNO:</lable>
<form:input type="tel" name="tel" path="supplierPh_no"/>
<br>
<br>
<input type="submit" value="Add Supplier">
<input type="reset" value="Cancel">
</fieldset>
</form:form>
<table  border="1px gray"  align="center">
<tr>
<th>Supplier Id</th>
<th>Supplier Name</th>
<th>Supplier Address</th>
<th>Supplier Ph_no</th>
<th>Actions</th>
</tr>
<c1:forEach items="${suppliers}" var="sup">
<tr>
<td>${sup.getSupplierId()}</td>
<td>${sup.getSupplierName()}</td>
<td>${sup.getSupplierAddress()}</td>
<td>${sup.getSupplierPh_no()}</td>
<td><a href="<c:url value="/editSupplier/${sup.getSupplierId()}"/>">Edit</a>/<a href="<c:url value="/deleteSupplier/${sup.getSupplierId()}"/>">Delete</a></td>
</tr>
</c1:forEach>
</table>
</body>
<%@include file="Footer.jsp" %>
</html>