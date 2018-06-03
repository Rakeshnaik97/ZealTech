<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Zeal Tech | Checkout</title>
<%@include file="Header1.jsp" %>
<c:url value="/Resources/Checkout/" var="check"/>
<link  rel="stylesheet" type="text/css" href="${check}/css/Checkout.css">
<c:url value="/Resources/Login" var="loginZeal"/>
	<link rel="stylesheet" type="text/css" href="${loginZeal}/css/main.css">
	
</head>
<body>

<div class="container">
<br> 
<div class="card">
<table class="table table-hover shopping-cart-wrap" style="border: 1px solid #ddd;">
<thead class="text-muted" style="background-color: #3c43a4;">
<tr>
  <th scope="col" style="color:white;">Product</th>
  <th scope="col" width="80" style="color:white;">Quantity</th>
  <th scope="col" width="80" style="color:white;">ProductName</th>
  <th scope="col" width="80" style="color:white;">Price</th>
  <th scope="col" width="200" class="text-right" style="color:white;">Action</th>
</tr>
</thead>
<tbody>
<c1:forEach items="${cartItems}" var="car">
<tr>

	<td>
<figure class="media">
	<div class="img-wrap"><img src="${pageContext.request.contextPath}/Resources/${car.getProduct().getImageName()}" class="img-thumbnail img-sm"></div>
	<figcaption class="media-body">
		<h6 class="title text-truncate">${car.getProduct().getProductName()} </h6>
<!-- 		<dl class="param param-inline small"> -->
<!-- 		  <dt>Size: </dt> -->
<!-- 		  <dd>XXL</dd> -->
<!-- 		</dl> -->
<!-- 		<dl class="param param-inline small"> -->
<!-- 		  <dt>Color: </dt> -->
<!-- 		  <dd>Orange color</dd> -->
<!-- 		</dl> -->
	</figcaption>
</figure> 
	</td>
	<td> 
		<select class="form-control" style="margin-top: 20px;">
			<option>1</option>
			<option>2</option>	
			<option>3</option>	
			<option>4</option>	
		</select> 
	</td>
	<td> 
		<div class="price-wrap"> 
			<var class="price" style="margin-top: 23px;">${car.getProduct().getProductName()}</var> 
			<small class="text-muted"></small> 
		</div> <!-- price-wrap .// -->
	</td>
	
	<td> 
		<div class="price-wrap"> 
			<var class="price" style="margin-top: 23px;">${car.getProduct().getProductPrice()}</var> 
			<small class="text-muted"></small> 
		</div> <!-- price-wrap .// -->
	</td>
<!-- 	<td class="text-right">  -->
<%-- 	<a title="" href="<c:url value="/Buy/${car.getProduct().getProductId()}/${car.getCartItemsId()}"/>" class="btn btn-outline-success" data-toggle="tooltip" data-original-title="Save to Wishlist"> <i class="fa fa-heart"></i>Buy</a>  --%>
<%-- 	<a href="<c:url value="/Remove/${car.getCartItemsId()}"/>" class="btn btn-outline-danger"> × Remove</a> --%>
<!-- 	</td> -->
	<td class="text-right">
						<a href="<c:url value="/Buy/${car.getProduct().getProductId()}/${car.getCartItemsId()}"/>" class="btn-face m-b-10" style="height: 55px;width: 80px;">
						Buy
					</a>

					<a href="<c:url value="/Remove/${car.getCartItemsId()}"/>" class="btn-google m-b-10" style="height: 55px;width: 80px;float:right; margin-top:-55px">
						Remove
					</a>
	</td>
	
</tr></c1:forEach>

</tbody>
</table>
<%-- ${gtotal()} --%>
<%-- <a title="" href="<c:url value="/Buyall"/>" class="btn btn-outline-success" data-toggle="tooltip" data-original-title="Save to Wishlist"> <i class="fa fa-heart"></i>BuyAll</a>  --%>
<%-- 	<a href="<c:url value="/RemoveAll"/>" class="btn btn-outline-danger"> × RemoveAll</a> --%>
</div> <!-- card.// -->
</div> 
<!--container end.//-->

					<a title="" href="<c:url value="/Buyall"/>" class="btn-face m-b-10" style="width: 300px;margin-left: 350px;">
						Buy All
					</a>

					<a href="<c:url value="/RemoveAll"/>" class="btn-google m-b-10" style="float:right; margin-top:-70px;width: 300px;margin-right: 350px;">
						Remove all
					</a>
</body>
<%@include file="Footer.jsp" %>
</html>