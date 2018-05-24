<%@page import="org.hibernate.hql.internal.ast.util.ASTUtil.IncludePredicate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Zeal Tech | Products</title>
<%@include file="Header1.jsp" %>
<c:url value="/Resources/Products" var="pro"></c:url>
<c:url value="/Resources/New Products" var="ns"/>

<link rel="stylesheet" type="text/css" href="${pro}/css/Products.css">
</head>


<body>
<div class="container">
<div class="row">
<div class="col-md-3">
	<figure class="card card-product">
		<div class="img-wrap"> 
			<img src="${ns}/images/Iphone_X.jpg">
			<a class="btn-overlay" href="#"><i class="fa fa-search-plus"></i> Quick view</a>
		</div>
		<figcaption class="info-wrap">
			<h6 class="title text-dots"><a href="#">Good item name</a></h6>
			<div class="action-wrap">
				<a href="#" class="btn btn-primary btn-sm float-right"> Order </a>
				<div class="price-wrap h5">
					<span class="price-new">$1280</span>
					<del class="price-old">$1980</del>
				</div> <!-- price-wrap.// -->
			</div> <!-- action-wrap -->
		</figcaption>
	</figure> <!-- card // -->
</div> <!-- col // -->
<div class="col-md-3">
	<figure class="card card-product">
		<div class="img-wrap"> <img src="https://s9.postimg.org/4ooze1tof/image.jpg">
		<a class="btn-overlay" href="#"><i class="fa fa-search-plus"></i> Quick view</a>
		</div>
		<figcaption class="info-wrap">
			<h6 class="title text-dots"><a href="#">The name of product</a></h6>
			<div class="action-wrap">
				<a href="#" class="btn btn-primary btn-sm float-right"> Order </a>
				<div class="price-wrap h5">
					<span class="price-new">$280</span>
				</div> <!-- price-wrap.// -->
			</div> <!-- action-wrap -->
		</figcaption>
	</figure> <!-- card // -->
</div> <!-- col // -->
<div class="col-md-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="https://s9.postimg.org/ojb106167/image.jpg"> 
		<a class="btn-overlay" href="#"><i class="fa fa-search-plus"></i> Quick view</a>
		</div>
		<figcaption class="info-wrap">
			<h6 class="title text-dots"><a href="#">Name of product</a></h6>
			<div class="action-wrap">
				<a href="#" class="btn btn-primary btn-sm float-right"> Order </a>
				<div class="price-wrap h5">
					<span class="price-new">$280</span>
				</div> <!-- price-wrap.// -->
			</div> <!-- action-wrap -->
		</figcaption>
	</figure> <!-- card // -->
</div> <!-- col // -->
<div class="col-md-3">
	<figure class="card card-product">
		<div class="img-wrap"> <img src="https://s9.postimg.org/4ooze1tof/image.jpg">
			<a class="btn-overlay" href="#"><i class="fa fa-search-plus"></i> Quick view</a>
		</div>
		<figcaption class="info-wrap">
			<h6 class="title text-dots"><a href="#">The name of product</a></h6>
			<div class="action-wrap">
				<a href="#" class="btn btn-primary btn-sm float-right"> Order </a>
				<div class="price-wrap h5">
					<span class="price-new">$280</span>
				</div> <!-- price-wrap.// -->
			</div> <!-- action-wrap -->
		</figcaption>
	</figure> <!-- card // -->
</div> <!-- col // -->
</div> <!-- row.// -->
</div> 
<!--container end-->

<br><br><br>
</body>
<%@include file="Footer.jsp" %>
</html>