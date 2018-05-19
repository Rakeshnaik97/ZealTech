<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c1"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Zeal Tech | Home </title>
<!-- Adding Urls For Accessing Resources -->
<c:url value="/Resources/images" var="images"/>
<c:url value="/Resources/fonts" var="fonts"/>
<c:url value="/Resources/css" var="css"/>
<c:url value="/Resources/js" var="js"/>
<c:url value="/Resources/themes" var="themes"/>
<link rel="icon" href="" type="image/x-icon">
<!-- Custom Theme files -->
<link href="${css}/Header.css" rel='stylesheet' type='text/css' />
<link href="${css}/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="${css}/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="${css}/fasthover.css" rel="stylesheet" type="text/css" media="all" />
<link href="${css}/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- For Laptops-->

<link rel="stylesheet" href="${themes}/default/default.css" type="text/css" media="screen" />
<link rel="stylesheet" href="${css}/nivo-slider-mobile.css" type="text/css" media="screen" />
<link rel="stylesheet" href="${css}/style-mobile.css" type="text/css" media="screen" />

<!-- //For Laptops-->
<!-- //For Sliders-->

<link href="${css}/bootstrap_Slide.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="${css}/style_Slide.css" rel='stylesheet' type='text/css' />
<!-- js -->
   <script src="${js}/jquery-1.11.1_Slide.min.js"></script>
<!-- //js -->
<script src="${js}/bootstrap_Slide.js"></script>

<!-- //For Sliders-->
<!-- font-awesome icons -->
<link href="${css}/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="${js}/jquery.min.js"></script> 
<!-- //js -->  
<!-- web fonts --> 
<link href='//fonts.googleapis.com/css?family=Glegoo:400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- //web fonts -->  
<!-- start-smooth-scrolling -->

<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- //end-smooth-scrolling --> 
</head> 
<body>
	<!-- for bootstrap working -->
	<script type="text/javascript" src="${js}/bootstrap-3.1.1.min.js"></script>
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
	
	<div class="banner">
		<div class="container">
			<h3>Zeal Tech <span>You Share We Care!</span></h3>
		</div>
	</div>
	<!-- //banner --> 
	
		<!-- Mobiles -->
	<div class="special-deals">
		<div class="container">
			<h2>Mobiles</h2>
				<div class="slider-wrapper theme-default" style="margin:0px;">
            <div id="slider" class="nivoSlider">
                <img src="${images}/Niit/Mobile For Sliders/R/1.jpg" data-thumb="${images}/Niit/Mobile For Sliders/R/1.jpg" alt="" />
                <a href="#"><img src="${images}/Niit/Mobile For Sliders/R/4.jpg" data-thumb="${images}/Niit/Mobile For Sliders/R/4.jpg" alt="" title="" /></a>
                <img src="${images}/Niit/Mobile For Sliders/R/3.jpg" data-thumb="${images}/Niit/Mobile For Sliders/R/3.jpg" alt="" data-transition="slideInLeft" />
                <img src="${images}/Niit/Mobile For Sliders/R/2.jpg" data-thumb="${images}/Niit/Mobile For Sliders/R/2.jpg" alt="" title="#htmlcaption" />
            </div>
        </div>

    </div>
    <script type="text/javascript" src="${js}/jquery-1.9.0.min-mobile.js"></script>
    <script type="text/javascript" src="${js}/jquery.nivo.slider-mobile.js"></script>
    <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    </script>
		
		
		</div>

	<!-- //Mobiles-->
	
	

	
	
	
	<!-- banner-bottom1 -->
	<div class="banner-bottom1">
		<div class="agileinfo_banner_bottom1_grids">
			<div class="col-md-7 agileinfo_banner_bottom1_grid_left">
				<h3><span> <i>Zeal Tech</i></span></h3>
				<a href="products.html">Shop Now</a>
			</div>

			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //banner-bottom1 --> 
	
	
	<!-- Laptops -->
	<div class="special-deals">
		<div class="container">
			<h2>Laptops</h2>
						<!-- Carousel -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox" style="height:500px; width:1200px">
        <div class="item active">
         <a href="#"> <img class="first-slide" src="${images}/Niit/Laptops For Sliders/1.jpeg" alt="First slide" style="height:500px; width:1200px"></a>
       
        </div>
        <div class="item">
         <a href="#"> <img class="second-slide " src="${images}/Niit/Laptops For Sliders/3.jpeg" alt="Second slide" style="height:500px; width:1200px"></a>
         
        </div>
        <div class="item">
          <a href="#"><img class="third-slide " src="${images}/Niit/Laptops For Sliders/4.jpeg" alt="Third slide" style="height:500px; width:1200px"></a>
        </div>
		
      </div>
    
    </div>
	<!-- /.carousel -->
<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
		/*
			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
		*/								
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
		
		
		
		
		</div>
			</div>
	<!-- //Laptops -->

	<!-- top-brands -->
	<div class="top-brands">
		<div class="container">
			<h3>Top Brands</h3>
			<div class="sliderfig">
				<ul id="flexiselDemo1">
					<li>
						<img src="${images}\\Niit\\Laptop Logo\\hp.jpg" alt="1 " class="img-responsive" />
					</li>
					<li>
						<img src="${images}/tb1.jpg" alt=" 2" class="img-responsive" />
					</li>
					<li>
						<img src="${images}/Niit/Laptop Logo/Microsoft.jpg" alt=" " class="img-responsive" />
					</li>
					<li>
						<img src="${images}/tb2.jpg" alt=" 3" class="img-responsive" />
					</li>
					<li>
						<img src="${images}/tb3.jpg" alt=" 4" class="img-responsive" />
					</li>
					<li>
						<img src="${images}/Niit/Mobile Logo/Asus.jpg" alt=" 5" class="img-responsive" />
					</li>
					<li>
						<img src="${images}/tb5.jpg" alt=" 6" class="img-responsive" />
					</li>
					<li>
						<img src="${images}/Niit/Mobile Logo/Apple.jpg" alt="7 " class="img-responsive" />
					</li>
					<li>
						<img src="${images}/Niit/Laptop Logo/Dell.jpg" alt="8 " class="img-responsive" />
					</li>
					<li>
						<img src="${images}/Niit/Mobile Logo/Mi.jpg" alt="9 " class="img-responsive" />
					</li>
					<li>
						<img src="${images}/Niit/Mobile Logo/Asus.jpg" alt="10 " class="img-responsive" />
					</li>
					<li>
						<img src="${images}/Niit/Mobile Logo/Lenovo.jpg" alt=" 11" class="img-responsive" />
					</li>
					<li>
						<img src="${images}/Niit/Laptop Logo/Acer.jpg" alt=" 12" class="img-responsive" />
					</li>
					<li>
						<img src="${images}/Niit/Mobile Logo/Vivo.jpg" alt="13 " class="img-responsive" />
					</li>
					<li>
						<img src="${images}/Niit/Mobile Logo/Oppo.jpg" alt=" 14" class="img-responsive" />
					</li>
				</ul>
			</div>
			<script type="text/javascript">
					$(window).load(function() {
						$("#flexiselDemo1").flexisel({
							visibleItems: 4,
							animationSpeed: 1000,
							autoPlay: true,
							autoPlaySpeed: 3000,    		
							pauseOnHover: true,
							enableResponsiveBreakpoints: true,
							responsiveBreakpoints: { 
								portrait: { 
									changePoint:480,
									visibleItems: 1
								}, 
								landscape: { 
									changePoint:640,
									visibleItems:2
								},
								tablet: { 
									changePoint:768,
									visibleItems: 3
								}
							}
						});
						
					});
			</script>
			<script type="text/javascript" src="${js}/jquery.flexisel.js"></script>
		</div>
	</div>
	<!-- //top-brands -->
	<!-- newsletter -->
	<div class="newsletter">
		<div class="container">
			<div class="col-md-6 agile_newsletter_left">
				<h3>Newsletter</h3>
				<p>You Share We Care</p>
			</div>
			<div class="col-md-6 agile_newsletter_right">
				<form action="#" method="post">
					<input type="email" name="Email" placeholder="Email" required="">
					<input type="submit" value="" />
				</form>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //newsletter -->	
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="_footer_grids">
				<div class="col-md-3 _footer_grid">
					<h3>Reach Us At</h3>
					<ul class="address">
						<li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>R Rakesh Naik <span>Banglore</span></li>
						<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">ZealTect@Gmail.com</a></li>
						<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+(91)-9738620777</li>
					</ul>
				</div>
				<div class="col-md-3 _footer_grid">
					<h3>Products</h3>
					<ul class="info"> 
						<li><a href="about.html">Apple</a></li>
						<li><a href="mail.html">Acer</a></li>
						<li><a href="codes.html">Canon</a></li>
						<li><a href="faq.html">Samsung</a></li>
						<li><a href="products.html">Accessories</a></li>
					</ul>
				</div>
				<div class="col-md-3 _footer_grid">
					<h3>Category</h3>
					<ul class="info"> 
						<li><a href="about.html">Mobiles</a></li>
						<li><a href="mail.html">Laptops</a></li>
						<li><a href="codes.html">Camera</a></li>
						<li><a href="faq.html">Accessories</a></li>
						<li><a href="products.html">Special Products</a></li>
					</ul>
				</div>
				<div class="col-md-3 _footer_grid">
					<h3>Pages</h3>
					<ul class="info"> 
						<li><a href="<c:url value="/"/>">Home</a></li>
						<li><a href="#" >Products</a></li>
						<li><a href="products.html">Contact Us</a></li>
						<li><a href="products1.html">About us</a></li>
					</ul>
					<h4>Follow Us</h4>
					<div class="agileits_social_button">
						<ul>
							<li><a href="#" class="facebook"> </a></li>
							<li><a href="#" class="twitter"> </a></li>
							<li><a href="#" class="google"> </a></li>
							<li><a href="#" class="pinterest"> </a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="footer-copy">
			<div class="footer-copy1">
				<div class="footer-copy-pos">
					<a href="#home1" class="scroll"><img src="${images}/arrow.png" alt=" " class="img-responsive" /></a>
				</div>
			</div>
			<div class="container">
				<p><b>© Zeal Tech</b></p>
			</div>
		</div>
	</div>
	<!-- //footer --> 
	<!-- cart-js -->
	<script src="${js}/minicart.js"></script>
	<script>
        ls.render();

        ls.cart.on('sb_checkout', function (evt) {
        	var items, len, i;

        	if (this.subtotal() > 0) {
        		items = this.items();

        		for (i = 0, len = items.length; i < len; i++) { 
        		}
        	}
        });
    </script>  
	<!-- //cart-js -->   
</body>
</html>