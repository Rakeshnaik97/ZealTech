<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="Header1.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Zeal Tech | Signup</title>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<c:url value="/Resources/SignUp" var="signup"/>
<!--===============================================================================================-->	
<%-- 	<link rel="icon" type="image/png" href="${signup}/images/icons/favicon.ico"/> --%>
<!--===============================================================================================-->
<%-- 	<link rel="stylesheet" type="text/css" href="${signup}/vendor/bootstrap/css/bootstrap.min.css"> --%>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${signup}/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${signup}/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${signup}/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${signup}/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${signup}/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${signup}/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${signup}/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${signup}/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${signup}/css/util.css">
	<link rel="stylesheet" type="text/css" href="${signup}/css/main.css">
<!--===============================================================================================-->
</head>
<body style="background-color: #999999;">
	<!-- breadcrumbs -->
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="<c:url value="/"/>"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>|</i></li>
				<li>Signup</li>
			</ul>
		</div>
	</div>
	<!-- //breadcrumbs --> 

<c:url value="/addUser" var="use"/>
<form:form action="${use}" method="post" commandName="user">	
	<div class="limiter">
		<div class="container-login100">
			<div class="login100-more" style="background-image: url('${signup}/images/bg-01.jpg');"></div>

			<div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">
				<form class="login100-form validate-form">
					<span class="login100-form-title p-b-59">
						Sign Up
					</span>

					<div class="wrap-input100 validate-input">
						<span class="label-input100">User Id</span>
						<form:input class="input100" type="text" name="userid" path="userId" />
						<span class="focus-input100"></span>
					</div>
					
						<div class="wrap-input100 validate-input" data-validate="Username is required">
						<span class="label-input100">User Name</span>
						<form:input class="input100" type="text" name="username" path="userName" placeholder="Username..."/>
						<span class="focus-input100"></span>
					</div>
					
						<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<form:input class="input100" type="password" name="password" path="userPassword" placeholder="*************"/>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate = "Phone Number iS Required">
						<span class="label-input100">Phone Number</span>
						<form:input class="input100" type="tel" name="tel" path="userPh_no" placeholder="Ph-No......"/>
						<span class="focus-input100"></span>
					</div>



					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<span class="label-input100">Email</span>
						<form:input class="input100" type="text" name="email" path="userEmailId" placeholder="Email addess..."/>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Address is required">
						<span class="label-input100">Address</span>
						<form:textarea class="input100"  rows="5" cols="25" path="useraddress" placeholder="Address......."/>
						<span class="focus-input100"></span>
					</div>



					<div class="flex-m w-full p-b-33">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								<span class="txt1">
									I agree to the
									<a href="#" class="txt2 hov1">
										Terms of User
									</a>
								</span>
							</label>
						</div>

						
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							
							<button class="login100-form-btn" type="submit">
								Signup
								</button>
						</div>

						<a href="<c:url value="/Login"/>" class="dis-block txt3 hov1 p-r-30 p-t-10 p-b-10 p-l-30">
							Sign in
							<i class="fa fa-long-arrow-right m-l-5"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
<!--===============================================================================================-->
	<script src="${signup}/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="${signup}/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="${signup}/vendor/bootstrap/js/popper.js"></script>
	<script src="${signup}/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="${signup}/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="${signup}/vendor/daterangepicker/moment.min.js"></script>
	<script src="${signup}/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="${signup}/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="${signup}/js/main.js"></script>
</form:form>
</body>
<%@include file="Footer.jsp" %>
</html>