 <%@include file="Header1.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Zeal Tech | Login</title>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<c:url value="/Resources/Login" var="loginZeal"/>
<!--===============================================================================================-->	
<%-- 	<link rel="icon" type="image/png" href="${loginZeal}/images/icons/favicon.ico"/> --%>
<!--===============================================================================================-->
<%-- 	<link rel="stylesheet" type="text/css" href="${loginZeal}/vendor/bootstrap/css/bootstrap.min.css"> --%>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${loginZeal}/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${loginZeal}/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${loginZeal}/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${loginZeal}/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${loginZeal}/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${loginZeal}/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${loginZeal}/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${loginZeal}/css/util.css">
	<link rel="stylesheet" type="text/css" href="${loginZeal}/css/main.css">
<!--===============================================================================================-->
</head>

<body>
<!-- breadcrumbs -->
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="<c:url value="/"/>"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>|</i></li>
				<li>Login</li>
			</ul>
		</div>
	</div>
	<!-- //breadcrumbs --> 
	<c:url value="/j_spring_security_check" var="login"/>
			<form:form action="${login}" method="post">
	<div class="limiter">
		<div class="container-login100" style="background-image: url('${loginZeal}/images/bg-01.jpg');">
			<div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33">
				<form class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-53">
						Login With
					</span>

					<a href="#" class="btn-face m-b-10">
						<i class="fa fa-facebook-official"></i>
						Facebook
					</a>

					<a href="#" class="btn-google m-b-10" style="float:right; margin-top:-80px">
						<img src="${loginZeal}/images/icons/icon-google.png" alt="GOOGLE">
						Google
					</a>
					
					
					<div class="p-t-31 p-b-9">
						<span class="txt1">
							Username
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Username is required">
						<input class="input100" type="text" name="j_username" >
						<span class="focus-input100"></span>
					</div>
					
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							Password
						</span>

						<a href="#" class="txt2 bo1 m-l-5">
							Forgot?
						</a>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="j_password" >
						<span class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn m-t-17">
						<button class="login100-form-btn">
							Sign In
						</button>
					</div>

					<div class="w-full text-center p-t-55">
						<span class="txt2">
							Not a member?
						</span>

						<a href="<c:url value="/SignUp"/>" class="txt2 bo1">
							Sign up now
						</a>
					</div>
		
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
<%-- 	<script src="${loginZeal}/vendor/jquery/jquery-3.2.1.min.js"></script> --%>
<!--===============================================================================================-->
	<script src="${loginZeal}/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="${loginZeal}/vendor/bootstrap/js/popper.js"></script>
<%-- 	<script src="${loginZeal}/vendor/bootstrap/js/bootstrap.min.js"></script> --%>
<!--===============================================================================================-->
	<script src="${loginZeal}/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="${loginZeal}/vendor/daterangepicker/moment.min.js"></script>
	<script src="${loginZeal}/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="${loginZeal}/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="${loginZeal}/js/main.js"></script>
</form:form>
</body>
<%@include file="Footer.jsp" %>
</html>