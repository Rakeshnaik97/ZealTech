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
  <th scope="col" width="120">Quantity</th>
  <th scope="col" width="120">Price</th>
  <th scope="col" width="200" class="text-right">Action</th>
</tr>
</thead>
<tbody>
<tr>
	<td>
<figure class="media">
	<div class="img-wrap"><img src="http://bootstrap-ecommerce.com/main/images/items/2.jpg" class="img-thumbnail img-sm"></div>
	<figcaption class="media-body">
		<h6 class="title text-truncate">Product name goes here </h6>
		<dl class="param param-inline small">
		  <dt>Size: </dt>
		  <dd>XXL</dd>
		</dl>
		<dl class="param param-inline small">
		  <dt>Color: </dt>
		  <dd>Orange color</dd>
		</dl>
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
			<var class="price">USD 145</var> 
			<small class="text-muted">(USD5 each)</small> 
		</div> <!-- price-wrap .// -->
	</td>
	<td class="text-right"> 
	<a title="" href="" class="btn btn-outline-success" data-toggle="tooltip" data-original-title="Save to Wishlist"> <i class="fa fa-heart"></i></a> 
	<a href="" class="btn btn-outline-danger"> � Remove</a>
	</td>
</tr>
<tr>
	<td>
<figure class="media">
	<div class="img-wrap"><img src="http://bootstrap-ecommerce.com/main/images/items/1.jpg" class="img-thumbnail img-sm"></div>
	<figcaption class="media-body">
		<h6 class="title text-truncate">Product name goes here </h6>
		<dl class="param param-inline small">
		  <dt>Size: </dt>
		  <dd>XXL</dd>
		</dl>
		<dl class="param param-inline small">
		  <dt>Color: </dt>
		  <dd>Orange color</dd>
		</dl>
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
			<var class="price">USD 35</var> 
			<small class="text-muted">(USD10 each)</small> 
		</div> <!-- price-wrap .// -->
	</td>
	<td class="text-right"> 
	<a title="" href="" class="btn btn-outline-success" data-toggle="tooltip" data-original-title="Save to Wishlist"> <i class="fa fa-heart"></i></a> 
	<a href="" class="btn btn-outline-danger btn-round"> � Remove</a>
	</td>
</tr>
<tr>
	<td>
<figure class="media">
	<div class="img-wrap"><img src="http://bootstrap-ecommerce.com/main/images/items/2.jpg" class="img-thumbnail img-sm"></div>
	<figcaption class="media-body">
		<h6 class="title text-truncate">Product name goes here </h6>
		<dl class="param param-inline small">
		  <dt>Size: </dt>
		  <dd>XXL</dd>
		</dl>
		<dl class="param param-inline small">
		  <dt>Color: </dt>
		  <dd>Orange color</dd>
		</dl>
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
			<var class="price">USD 45</var> 
			<small class="text-muted">(USD15 each)</small> 
		</div> <!-- price-wrap .// -->
	</td>
	<td class="text-right"> 
		<a title="" href="" class="btn btn-outline-success" data-toggle="tooltip" data-original-title="Save to Wishlist"> <i class="fa fa-heart"></i></a> 
		<a href="" class="btn btn-outline-danger btn-round"> � Remove</a>
	</td>
</tr>
</tbody>
</table>
</div> <!-- card.// -->
</div> 
<!--container end.//-->

</body>
<%@include file="Footer.jsp" %>
</html>