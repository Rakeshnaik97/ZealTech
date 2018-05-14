<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Zeal Tech | Product</title>
</head>
<body>
<c:url value="/addProduct" var="pro"/>
<form:form action="${pro}" method="post" commandName="product">
<fieldset>
<legend>Product Form:</legend>
<lable>Product ID:</lable>
<form:input type="text" name="productid" path="productId"/>
<br>
<br>
<lable>Product Name:</lable>
<form:input type="text" name="productname" path="productName"/>
<br>
<br>
<lable>Product description:</lable>
<form:textarea rows="5" cols="25" path="productDescription"/>
</textarea>
<br>
<br>
<lable>Quantity:</lable>
<form:input type="text" name="qty" path="productQuantity"/>
<br>
<br>
<lable>Price:</lable>
<form:input type="text" name="price" path="productPrice"/>
<br>
<br>
<input type="submit" value="Add Product">
<input type="reset" value="Cancel">
</fieldset>
</form:form>
</body>
</html>