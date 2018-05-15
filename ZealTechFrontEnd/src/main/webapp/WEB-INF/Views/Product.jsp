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
<title>Zeal Tech | Product</title>
</head>
<body>
	<!-- breadcrumbs -->
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="<c:url value="/"/>"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>|</i></li>
				<li>Products</li>
			</ul>
		</div>
	</div>
	<!-- //breadcrumbs --> 
		<!-- banner -->
<!-- 	<div class="banner banner10"> -->
<!-- 		<div class="container"> -->
<!-- 			<h2>Product</h2> -->
<!-- 		</div> -->
<!-- 	</div> -->
	<!-- //banner  -->
		<div class="typo codess">
		<div class="container"> 
			<h3 class="agileits-title">Products</h3>
			</div>
			</div>
<c:url value="/addProduct" var="pro"/>
<form:form action="${pro}" method="post" commandName="product" enctype="multipart/form-data">
<fieldset align="center" style="margin: -20px 520px">
<legend></legend>
<lable>Product ID:</lable>
<form:input type="text" name="productid" path="productId"/>
<br>
<br>
<lable>Product Name:</lable>
<form:input type="text" name="productname" path="productName"/>
<br>
<br>
<lable>Product description:</lable>
<form:textarea rows="5" cols="15" path="productDescription"  />
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
<form:input type="file" path="pimg" name="pimg" style="
    margin: 5;
    padding-left: 60px;
    padding-bottom: 20px;
"/>
<input type="submit" value="Add Product">
<input type="reset" value="Cancel">
</fieldset>
</form:form>
<br><br>
<table border="1px gray"  align="center">
<tr>
<th>Product Image</th>
<th>Product Id</th>
<th>Product Name</th>
<th>Product Description</th>
<th>Product Quantity</th>
<th>Product Price</th>
<th>Actions</th>
</tr>
<c1:forEach items="${products}" var="pro">
<tr>
<td><img alt=" " src="${pageContext.request.contextPath}/Resources/${pro.getImageName()}" width="250px" height="250px"></td>
<td>${pro.getProductId()}</td>
<td>${pro.getProductName()}</td>
<td>${pro.getProductDescription()}</td>
<td>${pro.getProductQuantity()}</td>
<td>${pro.getProductPrice()}</td>
<td><a href="<c:url value="/editProduct/${pro.getProductId()}"/>">Edit</a>/<a href="<c:url value="/deleteProduct/${pro.getProductId()}"/>">Delete</a></td>
</tr>
</c1:forEach>
</table>
</body>
<%@include file="Footer.jsp" %>
</html>