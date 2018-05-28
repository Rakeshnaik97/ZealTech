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
<title>Zeal Tech | Order Conformation</title>
<link href="${css}/table.css" rel='stylesheet' type='text/css' />
<c:url value="/Resources/Login" var="loginZeal"/>
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

	

<br><br>

<table border="1px gray"  align="center">
<tr>
<th>BillingId</th>
<th>BillingName</th>
<th>BillingAddress</th>
<th>BillingPhone_No</th>
<th>BillingCountry</th>
</tr>
<%-- <c1:forEach items="${products}" var="pro"> --%>
<tr>
<td>${billing.billingId}</td>
<td>${billing.billingName}</td>
<td>${billing.billingAddress}</td>
<td>${billing.billingPh_no}</td>
<td>${billing.billingCountry}</td>
<td>
</tr>
<%-- </c1:forEach> --%>
</table>
<br>
<br>
<br>


<table border="1px gray"  align="center">
<tr>
<th>ShippingId</th>
<th>ShippingName</th>
<th>ShippingAddress</th>
<th>ShippingPhone_No</th>
<th>ShippingCountry</th>
</tr>

<tr>
<td>${shippingAddress.shippingId}</td>
<td>${shippingAddress.shippingName}</td>
<td>${shippingAddress.shippingAddress}</td>
<td>${shippingAddress.shippingPh_no}</td>
<td>${shippingAddress.shippingCountry}</td>
</tr>

</table>

<br>
<br>
<br>


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
<c1:if test="${prot!=null}">
<tr>
<td><img alt=" " src="${pageContext.request.contextPath}/Resources/${prot.getImageName()}" width="250px" height="250px"></td>
<td>${prot.getProductId()}</td>
<td>${prot.getProductName()}</td>
<td>${prot.getProductDescription()}</td>
<td>${prot.getProductQuantity()}</td>
<td>${prot.getProductPrice()}</td>
<td><a href="<c:url value="/editProduct/${prot.getProductId()}"/>">Edit</a>/<a href="<c:url value="/deleteProduct/${prot.getProductId()}"/>">Delete</a></td>
</tr>
</c1:if>
<c1:if test="${prot==null}">
<c1:forEach items="${cartItem1}" var="pro">
<tr>
<td><img alt=" " src="${pageContext.request.contextPath}/Resources/${pro.getProduct().getImageName()}" width="250px" height="250px"></td>
<td>${pro.getProduct().getProductId()}</td>
<td>${pro.getProduct().getProductName()}</td>
<td>${pro.getProduct().getProductDescription()}</td>
<td>${pro.getProduct().getProductQuantity()}</td>
<td>${pro.getProduct().getProductPrice()}</td>
<td><a href="<c:url value="/editProduct/${pro.getProduct().getProductId()}"/>">Edit</a>/<a href="<c:url value="/deleteProduct/${pro.getProduct().getProductId()}"/>">Delete</a></td>
</tr>
</c1:forEach>
</c1:if>
</table>
<a href="<c:url value="/previous"/>">Previous</a>
<a href="<c:url value="/pay"/>">Pay</a>
</body>
<%@include file="Footer.jsp" %>
</html>