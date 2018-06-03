<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c1" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="Header1.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>Zeal Tech | Payment</title>
<c:url value="/Resources/Payment1" var="p1"/>
<c:url value="/Resources/Pay/css" var="pay"/>
<c:url value="/Resources/Pay/images" var="img1"/>
<c:url value="/Resources/Pay/js" var="js1"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="${p1}/stylepay.css">
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script>
var app=angular.module('myApp', []);
app.controller('myCtrl', function($scope, $http){
	$http.get("http://localhost:8080/ZealTechFrontEnd/SendMail")
	});
</script>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="${js1}/jquery.min.js"></script>
<link href="${pay}/style.css" rel="stylesheet" type="text/css" media="all"/>

<style>
li.resp-tab-item span .pic1{
    background: url("${img1}/pic2.png") no-repeat 38px 15px #fafafa !important;

}
li.resp-tab-item span .pic2{
    background: url(${img1}/pic3.png) no-repeat 38px 15px #fafafa !important;

}
li.resp-tab-item span .pic3{
    background: url(${img1}/pic1.png) no-repeat 14px 15px #fafafa !important;

}
li.resp-tab-item span .pic4{
    background: url(${img1}/pic4.png) no-repeat 38px 15px #fafafa !important;
}
li.resp-tab-item span .pic5{
    background: url(${img1}/cod.png) no-repeat 38px 15px #fafafa !important;
}
</style>

</head>
<body>

<div class="main">
		<h1>Payment</h1>
		<div class="content">
			
			<script src="${js1}/easyResponsiveTabs.js" type="text/javascript"></script>
					<script type="text/javascript">
						$(document).ready(function () {
							$('#horizontalTab').easyResponsiveTabs({
								type: 'default', //Types: default, vertical, accordion           
								width: 'auto', //auto or any width like 600px
								fit: true   // 100% fit in a container
							});
						});
						
					</script>
						<div class="sap_tabs">
							<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
								<div class="pay-tabs">
									<h2>Select Payment Method</h2>
									  <ul class="resp-tabs-list">
										  <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span><label class="pic1"></label>Credit Card</span></li>
										  <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span><label class="pic3"></label>Net Banking</span></li>
										  <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span><label class="pic4"></label>PayPal</span></li> 
										  <li class="resp-tab-item" aria-controls="tab_item-3" role="tab"><span><label class="pic2"></label>Debit Card</span></li>
										  <li class="resp-tab-item" aria-controls="tab_item-3" role="tab"><span><label class="pic3"></label>Cash On Delivery</span></li>
										  <div class="clear"></div>
									  </ul>	
								</div>
								<c:url value="/payment" var="pa"/>
								<form:form  action="${pa}" method="post" id="myForm">
								<div class="resp-tabs-container">
									<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
										<div class="payment-info">
											<h3>Personal Information</h3>
											<form>
												<div class="tab-for">				
													<h5>EMAIL ADDRESS</h5>
														<input type="text" value="">
													<h5>FIRST NAME</h5>													
														<input type="text" value="">
												</div>			
											</form>
											<h3 class="pay-title">Credit Card Info</h3>
											<form>
												<div class="tab-for">				
													<h5>NAME ON CARD</h5>
														<input type="text" value="">
													<h5>CARD NUMBER</h5>													
														<input class="pay-logo" type="text" value="0000-0000-0000-0000" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '0000-0000-0000-0000';}" required="">
												</div>	
												<div class="transaction">
													<div class="tab-form-left user-form">
														<h5>EXPIRATION</h5>
															<ul>
																<li>
																	<input type="number" class="text_box" type="text" value="6" min="1" />	
																</li>
																<li>
																	<input type="number" class="text_box" type="text" value="1988" min="1" />	
																</li>
																
															</ul>
													</div>
													<div class="tab-form-right user-form-rt">
														<h5>CVV NUMBER</h5>													
														<input type="text" value="xxxx" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'xxxx';}" required="">
													</div>
													<div class="clear"></div>
												</div>
												<input type="submit" value="SUBMIT">
											</form>
											<div class="single-bottom">
													<ul>
														<li>
															<input type="checkbox"  id="brand" value="">
															<label for="brand"><span></span>By checking this box, I agree to the Terms & Conditions & Privacy Policy.</label>
														</li>
													</ul>
											</div>
										</div>
									</div>
									<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
										<div class="payment-info">
											<h3>Net Banking</h3>
											<div class="radio-btns">
												<div class="swit">								
													<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio" checked=""><i></i>Andhra Bank</label> </div></div>
													<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>Allahabad Bank</label> </div></div>
													<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>Bank of Baroda</label> </div></div>
													<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>Canara Bank</label> </div></div>	
													<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>IDBI Bank</label> </div></div>
													<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>Icici Bank</label> </div></div>	
													<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>Indian Overseas Bank</label> </div></div>	
													<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>Punjab National Bank</label> </div></div>	
													<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>South Indian Bank</label> </div></div>
													<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>State Bank Of India</label> </div></div>		
												</div>
												<div class="swit">								
													<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio" checked=""><i></i>City Union Bank</label> </div></div>
													<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>HDFC Bank</label> </div></div>
													<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>IndusInd Bank</label> </div></div>
													<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>Syndicate Bank</label> </div></div>
													<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>Deutsche Bank</label> </div></div>	
													<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>Corporation Bank</label> </div></div>
													<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>UCO Bank</label> </div></div>	
													<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>Indian Bank</label> </div></div>	
													<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>Federal Bank</label> </div></div>	
													<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>ING Vysya Bank</label> </div></div>	
												</div>
												<div class="clear"></div>
											</div>
											<a href="#">Continue</a>
										</div>
									</div>
									<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
										<div class="payment-info">
											<h3>PayPal</h3>
											<h4>Already Have A PayPal Account?</h4>
											<div class="login-tab">
												<div class="user-login">
													<h2>Login</h2>
													
													<form>
														<input type="text" value="name@email.com" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'name@email.com';}" required="">
														<input type="password" value="PASSWORD" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'PASSWORD';}" required="">
															<div class="user-grids">
																<div class="user-left">
																	<div class="single-bottom">
																			<ul>
																				<li>
																					<input type="checkbox"  id="brand1" value="">
																					<label for="brand1"><span></span>Remember me?</label>
																				</li>
																			</ul>
																	</div>
																</div>
																<div class="user-right">
																	<input type="submit" value="LOGIN">
																</div>
																<div class="clear"></div>
															</div>
													</form>
												</div>
											</div>
										</div>
									</div>
									<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-3">	
										<div class="payment-info">
											
											<h3 class="pay-title">Dedit Card Info</h3>
											<form>
												<div class="tab-for">				
													<h5>NAME ON CARD</h5>
														<input type="text" value="">
													<h5>CARD NUMBER</h5>													
														<input class="pay-logo" type="text" value="0000-0000-0000-0000" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '0000-0000-0000-0000';}" required="">
												</div>	
												<div class="transaction">
													<div class="tab-form-left user-form">
														<h5>EXPIRATION</h5>
															<ul>
																<li>
																	<input type="number" class="text_box" type="text" value="6" min="1" />	
																</li>
																<li>
																	<input type="number" class="text_box" type="text" value="1988" min="1" />	
																</li>
																
															</ul>
													</div>
													<div class="tab-form-right user-form-rt">
														<h5>CVV NUMBER</h5>													
														<input type="text" value="xxxx" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'xxxx';}" required="">
													</div>
													<div class="clear"></div>
												</div>
												<input type="submit" value="SUBMIT">
											</form>
											<div class="single-bottom">
													<ul>
														<li>
															<input type="checkbox"  id="brand" value="">
															<label for="brand"><span></span>By checking this box, I agree to the Terms & Conditions & Privacy Policy.</label>
														</li>
													</ul>
											</div>
										</div>	
									</div>
<!-- 									cash on delivery -->
								
								<c:url value="/payment" var="pa"/>
								<form:form action="${pa}" method="post" id="myForm">
									<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-3" align="center">	
										<div class="payment-info">
											
											<h3 class="pay-title">Cash On Delivery</h3>
											
												<div class="tab-for">				
													<h5>Enter Otp </h5>
<!-- 													<h6>opt Sent to ur mail</h6>													 -->
														<input ng-app="myApp" ng-controller="myCtrl" class="pay-logo" type="text"  name="otp" value="XXXXXX" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'XXXXXX';}" >
												</div>	
												<div class="transaction">
													
												
													<div class="clear"></div>
												</div>
												<a href="<c:url value="/payment"/>"><input type="submit" value="pay"></a>
											
											<div class="single-bottom">
													<ul>
														<li>
															<input type="checkbox"  id="brand" value="">
															<label for="brand"><span></span>By checking this box, I agree to the Terms & Conditions & Privacy Policy.</label>
														</li>
													</ul>
											</div>
										</div>	
									</div>
									</form:form>
								</div>
								</form:form>	
							</div>
						</div>	

		</div>
	</div>
</body>
<%-- <%@include file="Footer.jsp" %> --%>
</html>