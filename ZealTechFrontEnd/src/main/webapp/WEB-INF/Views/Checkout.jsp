<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Zeal Tech | Checkout</title>
<%@include file="Header1.jsp" %>
<c:url value="/Resources/Checkout/" var="check"></c:url>
<link  rel="stylesheet" type="text/css" href="${check}/css/Checkout.css">
</head>
<body>

<div class="container">
<br> 
<hr>



<div class="card">
<table class="table table-hover shopping-cart-wrap">
<thead class="text-muted">
<tr>
  <th scope="col">Product</th>
  <th scope="col" width="80">Quantity</th>
  <th scope="col" width="80">ProductName</th>
  <th scope="col" width="80">Price</th>
  <th scope="col" width="200" class="text-right">Action</th>
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
		<select class="form-control">
			<option>1</option>
			<option>2</option>	
			<option>3</option>	
			<option>4</option>	
		</select> 
	</td>
	<td> 
		<div class="price-wrap"> 
			<var class="price">${car.getProduct().getProductName()}</var> 
			<small class="text-muted"></small> 
		</div> <!-- price-wrap .// -->
	</td>
	
	<td> 
		<div class="price-wrap"> 
			<var class="price">${car.getProduct().getProductPrice()}</var> 
			<small class="text-muted"></small> 
		</div> <!-- price-wrap .// -->
	</td>
	<td class="text-right"> 
	<a title="" href="<c:url value="/Buy/${car.getProduct().getProductId()}/${car.getCartItemsId()}"/>" class="btn btn-outline-success" data-toggle="tooltip" data-original-title="Save to Wishlist"> <i class="fa fa-heart"></i>Buy</a> 
	<a href="<c:url value="/Remove/${car.getCartItemsId()}"/>" class="btn btn-outline-danger"> × Remove</a>
	</td>
	
</tr></c1:forEach>

</tbody>
</table>

<a title="" href="<c:url value="/Buyall"/>" class="btn btn-outline-success" data-toggle="tooltip" data-original-title="Save to Wishlist"> <i class="fa fa-heart"></i>BuyAll</a> 
	<a href="<c:url value="/RemoveAll"/>" class="btn btn-outline-danger"> × RemoveAll</a>
</div> <!-- card.// -->
</div> 
<!--container end.//-->

</body>
<%@include file="Footer.jsp" %>
</html>