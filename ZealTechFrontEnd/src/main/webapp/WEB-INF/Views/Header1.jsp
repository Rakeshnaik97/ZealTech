<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c1"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form"  uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<!-- Adding Urls For Accessing Resources -->
<c:url value="/Resources/images" var="images" />
<c:url value="/Resources/fonts" var="fonts" />
<c:url value="/Resources/css" var="css" />
<c:url value="/Resources/js" var="js"/>
<c:url value="/Resources/themes" var="themes" />
<!-- Custom Theme files -->
<link href="${css}/Header.css" rel='stylesheet' type='text/css' />
<link href="${css}/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="${css}/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="${css}/fasthover.css" rel="stylesheet" type="text/css" media="all" />
<link href="${css}/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link href="${css}/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons -->
<!-- js -->
<script src="${js}/jquery.min.js"></script>
<!-- <script type="text/javascript" src="Resources/js/bootstrap-3.1.1.min.js"></script> -->
<link rel="stylesheet" href="${css}/jquery.countdown.css" />
<!-- countdown -->
<!-- //js -->
<!-- web fonts -->
<link href='//fonts.googleapis.com/css?family=Glegoo:400,700'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<!-- //web fonts -->
<!-- start-smooth-scrolling -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>

<!-- //end-smooth-scrolling -->
</head>
<body>
	<!-- for bootstrap working -->
	
	<!-- //for bootstrap working -->
	<!-- header modal -->
	
	<!-- header modal -->
	<!-- header -->
	<div class="header" id="home1">
		<div class="container">
			<div class="l_login">
				<a href="<c:url value="/Login"/>"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
			</div>
			<div class="l_logo">
				<img src="";><h1><a href="index.html">Zeal Tech<span>Spirit Of Technology</span></a></h1>
			</div>
			<div class="search">
				<input class="search_box" type="checkbox" id="search_box">
				<label class="icon-search" for="search_box"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></label>
				<div class="search_form">
					<form action="#" method="post">
						<input type="text" name="Search" placeholder="Search..." >
						<input type="submit" value="Send" style="float:right">
					</form>
				</div>
			</div>
			<div class="cart cart box_1"> 
				<form action="#" method="post" class="last"> 
					<input type="hidden" name="cmd" value="_cart" />
					<input type="hidden" name="display" value="1" />
					<button class="view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
				</form>   
			</div>  
		</div>
	</div>
	<!-- //header -->
	<!-- navigation -->
	 <div class="navigation">
		<div class="container">
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header nav_2">
					<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div> 
				<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
					<ul class="nav navbar-nav">
						<li><a href="<c:url value="/"/>" class="act">Home</a></li>	
						<!-- Mega Menu -->
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Products <b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-3">
								<div class="row">
									<div class="col-sm-3">
										<ul class="multi-column-dropdown">
											<h6>Mobiles</h6>
											<li><a href="products.html">Apple<span>New</span></a></li>
											<li><a href="products.html">Samsung<span>New</span></a></li> 
											<li><a href="products.html">Mi</a></li>
											<li><a href="products.html">VIVO</a></li>
											<li><a href="products.html">Oppo</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<ul class="multi-column-dropdown">
											<h6>Laptops</h6>
											<li><a href="products1.html">Sony</a></li>
											<li><a href="products1.html">Dell</a></li>
											<li><a href="products1.html">Lenovo</a></li>
											<li><a href="products.html">Apple<span>New</span></a></li>
											<li><a href="products.html">Acer</a></li>
											<li><a href="products.html">Asus</a></li>
											<li><a href="products1.html"><i>Shop Now</i></a></li>
										</ul>
									</div>
									<div class="col-sm-2">
										<ul class="multi-column-dropdown">
											<h6>Home</h6>
											<li><a href="products2.html">Mobile</a></li>
											<li><a href="products2.html">Camera</a></li>
											<li><a href="products2.html">Laptop</a></li>
											<li><a href="products2.html">Accessories</a></li>
										</ul>
									</div>
									<div class="col-sm-4">
										<div class="ls_products_pos">
											<h4><i>You Share We Care</i></h4>
											<img src="${images}/Niit/Modal Banner Video/Iphone 8.jpg" alt=" " class="img-responsive" />
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
							</ul>
						</li> 
						<c1:if test="${pageContext.request.userPrincipal.name!=null}">
						<security:authorize access="hasRole('ROLE_ADMIN')">
						<li class="pages"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="<c:url value="/Category"/>">Category</a></li>
								<li><a href="<c:url value="/Supplier"/>">Supplier</a></li>
								<li><a href="<c:url value="/Product"/>">Products</a></li>
							</ul>
						</li>  
						</security:authorize></c1:if>
						<li><a href="mail.html">Contact Us</a></li>
						<li><a href="mail.html">About us</a></li>
						<c1:if test="${pageContext.request.userPrincipal.name!=null}">
						<li style="float:right"><a href="<c:url value="/j_spring_security_logout"/>">Logout</a></li>
						</c1:if>
<%-- 						<div style="color:white">Welcome ${pageContext.request.userPrincipal.name}</div> --%>
					</ul>
				</div>
			</nav>
		</div>
	</div>
	<!-- //navigation -->







	<!-- banner -->

	<!-- //banner -->

</body>
</html>