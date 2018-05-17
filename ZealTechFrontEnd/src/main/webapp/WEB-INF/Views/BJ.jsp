<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>AddNewProducts | Zeal Tech</title>
<!-- Adding Urls For Accessing Resources -->
<c:url value="/Resources/New Products" var="ns"/>
<%-- <c:url value="/Resources/fonts" var="fonts"/> --%>
<link href="${ns}/css/bootstrap-newproducts.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${ns}/js/jquery.min-newproducts.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="${ns}/css/style-newproducts.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<!-- start menu -->
<script type="text/javascript" src="${ns}/js/megamenu-newproducts.js"></script>
<!--//slider-script-->
<script src="${ns}/js/easyResponsiveTabs-newproducts.js" type="text/javascript"></script>
		    <script type="text/javascript">
			    $(document).ready(function () {
			        $('#horizontalTab').easyResponsiveTabs({
			            type: 'default', //Types: default, vertical, accordion           
			            width: 'auto', //auto or any width like 600px
			            fit: true   // 100% fit in a container
			        });
			    });
				
</script>	
</head>
<body> 
<!--  <div class="typo codess"> -->
<!-- 		<div class="container">  -->
<!-- 			<h3 class="agileits-title">New products</h3> -->
<!-- 			</div> -->
<!-- 			</div> -->

		<div class="sap_tabs">
			<label class="line"> </label>
			<h2>LATES ARRIVAL</h2>	
						 <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
						  <ul class="resp-tabs-list">
						  	  <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Mobile</span></li>
							  <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Laptops</span></li>
							  <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>Camara</span></li>
							  <div class="clearfix"></div>
						  </ul>				  	 
							<div class="resp-tabs-container">
							    <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
									<div class="tab_img">
									  <div class="img-top simpleCart_shelfItem">
										
					   		  			   <img src="${ns}/images/pi2.jpg" class="img-responsive" alt=""/>
											    <div class="tab_desc">
												 <ul class="round-top">
												 	<li><a href="#"><i> </i></a></li>
												</ul>
												 <div class="agency ">
													<div class="agency-left">
														<h6 class="jean">Zeal Tech</h6>
														<span class="dollor item_price">£</span>
														<div class="clearfix"> </div>
													</div>
													<div class="agency-right">
														<ul class="social">
															<li><a href="#"><i class="item_add"> </i></a></li>
														</ul>
													</div>
												 </div>
											  </div>
										
										</div>
										<div class="img-top simpleCart_shelfItem">
										  
					   		  			   <img src="${ns}/images/pi3.jpg" class="img-responsive" alt=""/>
											<div class="tab_desc">
												 <ul class="round-top">
												 	<li><a href="#"><i> </i></a></li>

												 </ul>
												 
												<div class="agency ">
													<div class="agency-left">
														<h6 class="jean">Zeal Tech</h6>
														<span class="dollor item_price">£</span>
														<div class="clearfix"> </div>
													</div>
													<div class="agency-right">
														<ul class="social">
															<li><a href="#"><i class="item_add"> </i></a></li>
														</ul>
													</div>
												 </div>
											  </div>
											  <div class="col-in">
											  	<p>NEW</p>
											  </div>
											 </div>
											  <div class="img-top simpleCart_shelfItem">
										  
					   		  			   <img src="${ns}/images/pi4.jpg" class="img-responsive" alt=""/>
											<div class="tab_desc">
												 <ul class="round-top">
												 	<li><a href="#"><i> </i></a></li>
												 </ul>
												 
												 <div class="agency ">
													<div class="agency-left">
														<h6 class="jean">Zeal Tech</h6>
														<span class="dollor item_price">£</span>
														<div class="clearfix"> </div>
													</div>
													<div class="agency-right">
														<ul class="social">
															<li><a href="#"><i class="item_add"> </i></a></li>
														</ul>
													</div>
												 </div>
											  </div>
											 <div class="col-in col-in-1">
											  	<p>New <span>1%</span></p>
											  </div>
											</div>
											<div class="clearfix"></div>
							     </div>	
									 	        					 
						  </div>
							    <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
									<div class="tab_img">
									  <div class="img-top simpleCart_shelfItem">
										
					   		  			   <img src="${ns}/images/pi9.jpg" class="img-responsive" alt=""/>
											
								              <div class="tab_desc">
												 <ul class="round-top">
												 	<li><a href="#"><i> </i></a></li>
												 </ul>
												 
												 <div class="agency ">
													<div class="agency-left">
														<h6 class="jean">Zeal Tech</h6>
														<span class="dollor item_price">£</span>
														<div class="clearfix"> </div>
													</div>
													<div class="agency-right">
														<ul class="social">
															<li><a href="#"><i class="item_add"> </i></a></li>
														</ul>
													</div>
												 </div>
											  </div>
										
										</div>
										<div class="img-top simpleCart_shelfItem">
										  
					   		  			   <img src="${ns}/images/pi8.jpg" class="img-responsive" alt=""/>
											<div class="tab_desc">
												 <ul class="round-top">
												 	<li><a href="#"><i> </i></a></li>
												 </ul>
												 
												 <div class="agency ">
													<div class="agency-left">
														<h6 class="jean">Zeal Tech</h6>
														<span class="dollor item_price">£</span>
														<div class="clearfix"> </div>
													</div>
													<div class="agency-right">
														<ul class="social">
															<li><a href="#"><i class="item_add"> </i></a></li>
														</ul>													</div>
												 </div>
											  </div>
											  <div class="col-in">
											  	<p>NEW</p>
											  </div>
											 </div>
											  <div class="img-top simpleCart_shelfItem">
										  
					   		  			   <img src="${ns}/images/pi10.jpg" class="img-responsive" alt=""/>
											<div class="tab_desc">
												 <ul class="round-top">
												 	<li><a href="#"><i> </i></a></li>
												 </ul>
												 <div class="agency ">
													<div class="agency-left">
														<h6 class="jean">Zeal Tech</h6>
														<span class="dollor item_price">£</span>
														<div class="clearfix"> </div>
													</div>
													<div class="agency-right">
														<ul class="social">
															<li><a href="#"><i class="item_add"> </i></a></li>
														</ul>
													</div>
												 </div>
											  </div>
											 <div class="col-in col-in-1">
											  	<p>New <span>1%</span></p>
											  </div>
											</div>
											<div class="clearfix"></div>
							     </div>	
									 	        					 
						  </div>
						    <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
									<div class="tab_img">
									  <div class="img-top simpleCart_shelfItem">
										
					   		  			   <img src="${ns}/images/pi5.jpg" class="img-responsive" alt=""/>
											
								              <div class="tab_desc">
												 <ul class="round-top">
												 	<li><a href="#"><i> </i></a></li>
													</ul>
												 
												 <div class="agency ">
													<div class="agency-left">
														<h6 class="jean">Zeal Tech</h6>
														<span class="dollor item_price">£</span>
														<div class="clearfix"> </div>
													</div>
													<div class="agency-right">
														<ul class="social">
															<li><a href="#"><i class="item_add"> </i></a></li>
														</ul>
													</div>
												 </div>
											  </div>
										
										</div>
										<div class="img-top simpleCart_shelfItem">
										  
					   		  			   <img src="${ns}/images/pi6.jpg" class="img-responsive" alt=""/>
											<div class="tab_desc">
												 <ul class="round-top">
												 	<li><a href="#"><i> </i></a></li>
												 </ul>
												 
												 	<div class="agency ">
													<div class="agency-left">
														<h6 class="jean">Zeal Tech</h6>
														<span class="dollor item_price">£</span>
														<div class="clearfix"> </div>
													</div>
													<div class="agency-right">
														<ul class="social">
															<li><a href="#"><i class="item_add"> </i></a></li>
														</ul>
													</div>
												 </div>
											  </div>
											  <div class="col-in">
											  	<p>NEW</p>
											  </div>
											 </div>
											  <div class="img-top simpleCart_shelfItem">
										  
					   		  			   <img src="${ns}/images/pi7.jpg" class="img-responsive" alt=""/>
											<div class="tab_desc">
												 <ul class="round-top">
												 	<li><a href="#"><i> </i></a></li>
												  </ul>
												 
												 	<div class="agency ">
													<div class="agency-left">
														<h6 class="jean">Zeal Tech</h6>
														<span class="dollor item_price">£</span>
														<div class="clearfix"> </div>
													</div>
													<div class="agency-right">
														<ul class="social">
															<li><a href="#"><i class="item_add"> </i></a></li>
														</ul>
													</div>
												 </div>
											  </div>
											 <div class="col-in col-in-1">
											  	<p>New <span>1%</span></p>
											  </div>
											</div>
											<div class="clearfix"></div>
							     </div>	
									 	        					 
						  </div>		
                  </div>
          </div>
         </div>
		<!---->
	</div>
	<!---->
		<div class="content-bottom">
			<div class="container">
				<p>Design is a funny word. Some people think 
design means how it looks. But of course, if you dig deeper 
its really how it works.</p>
<label class="line1"> </label>
<span>Steve Jobs</span>
			</div>
		</div>
		
</body>
</html>