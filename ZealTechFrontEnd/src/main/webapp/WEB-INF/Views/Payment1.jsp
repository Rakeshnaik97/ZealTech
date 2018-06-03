<%@include file="Header1.jsp" %>
<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c1" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>Zeal Tech | Payment</title>
<c:url value="/Resources/Payment1" var="p1"/>
<%-- <link rel="stylesheet" type="text/css" href="${p1}/stylepay.css"> --%>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script> -->
<c:url value="/Resources/Login" var="loginZeal"/>
	<link rel="stylesheet" type="text/css" href="${loginZeal}/css/main.css">
<script>
var app=angular.module('myApp', []);
app.controller('myCtrl', function($scope, $http){
	$http.get("http://localhost:8080/ZealTechFrontEnd/SendMail")
	});
</script>


</head>
<body>
<div class="simple-form">
<c:url value="/payment1" var="pay"/>
<form:form id="Payment" action="${pay}" method="post" style="margin: 20 300;padding: 30px;border-radius: 20px;background-image: url('${loginZeal}/images/bg-01.jpg');">
					<span class="login100-form-title p-b-53" style="color:white;">
						Otp
					</span>
	<br><br>
<!-- 	<h3><b style="color:white;">Enter Otp:</b></h3> -->
<!--             <input type="text" name="otp" ng-app="myApp" ng-controller="myCtrl" id="button" placeholder="otp"><br><br> -->
<%-- 	<a href="<c:url value="/payment1"/>"><input type="submit" value="Pay Using Cash"  id="butt"></a><br><br> --%>
<!-- 	<h6><b style="color:white;"><b>Otp</b> Has Been Send to Ur Registered Email Address</b></h6> -->

<div class="p-t-13 p-b-9">
						<span class="txt1">
						
						</span>

						<a href="#" class="txt2 bo1 m-l-5">
						</a>
					</div>
					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="otp" ng-app="myApp" ng-controller="myCtrl" id="button" placeholder="otp" >
						<span class="focus-input100"></span>
					</div>
	
					<a href="<c:url value="/payment1"/>" class="btn-google m-b-10" style="height: 60px;width: 200px;margin-top: 20px;margin-left: 486px;"><input type="submit" value="Proceed">
<%-- 						<img src="${loginZeal}/images/icons/icon-google.png" alt="GOOGLE"> --%>
					</a>
	
</form:form>
</body>
<%@ include file="Footer.jsp" %>
</html>