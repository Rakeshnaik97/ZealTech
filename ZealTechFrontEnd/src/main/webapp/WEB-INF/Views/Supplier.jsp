<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Zeal Tech | Supplier</title>
</head>
<body>
<c:url value="/addSupplier" var="sup"/>
<form:form action="${sup}" method="post" commandName="supplier">
<fieldset>
<legend>Supplier Form:</legend>
<lable>Supplier ID:</lable>
<form:input type="text" name="supplierid" path="supplierId"/>
<br>
<br>
<lable>Supplier Name:</lable>
<form:input type="text" name="suppliername" path="supplierName"/>
<br>
<br>
<lable>Address:</lable>
<form:textarea rows="10" cols="35" path="supplierAddress"/>
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
</body>
</html>