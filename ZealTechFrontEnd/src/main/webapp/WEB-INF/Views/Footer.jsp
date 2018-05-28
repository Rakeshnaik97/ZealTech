<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
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
						<li><a href="/">Products</a></li>
						<li><a href="/Contactus">Contact Us</a></li>
						<li><a href="/Contactus">About us</a></li>
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