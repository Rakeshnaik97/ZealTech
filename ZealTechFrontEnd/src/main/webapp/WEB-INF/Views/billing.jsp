<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Zeal Tech | Address</title>
<%@include file= "Header1.jsp"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<c:url value="/Resources/Login" var="loginZeal"/>
<style type="text/css">
<style>

body {
    font-family: Arial;
    color: white;
}

.split {
    height: 100%;
    width: 50%;
  position: relative; 
    z-index: 1;
    top: 0;
/*      overflow-x: hidden;  */
    padding-top: 20px;
    margin-top:180px;
/*      margin-right:300px; */
     margin-left:450px;
}

.left {
    left: -500px;;
/*     background-color: #111; */
}

.right {
    right: -300px;
    top:-200px;
}

.centered {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    text-align: center;
}

.centered img {
    width: 150px;
    border-radius: 50%;
}

label{
	color:white;
}
</style>
</head>
<body>
<!-- breadcrumbs -->
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="<c:url value="/"/>"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>|</i></li>
				<li>Address Page</li>
			</ul>
		</div>
	</div>
	<!-- //breadcrumbs -->
			<div class="typo codess">
		<div class="container"> 
			<h3 class="agileits-title">Address Page</h3>
			</div>
			</div> 
<div class="split left">
  <div class="centered">
<form style=" background-image: url('${loginZeal}/images/bg-01.jpg'); width:530px;margin-left:200px">
		<fieldset>
			<legend><i><b>Billing<b></b></i> </legend>
			<label>Id:</label>
			<form:input type="text" name="BillingIdId" path="billing.billingId"/>
			<br>
			<br>
			<label>Name:</label>
			<form:input type ="text" name="BillingName" path="billing.billingName"/>
			<br>
			<br>
			<label>Address:</label>
			<br>
			<form:textarea rows="5" cols="25" name="billingAddress" float="right" path="billing.billingAddress"></form:textarea>
			<br>
			<br>
			<label>Ph_No:</label>
			<form:input type ="tel" name="billingPh-No" path="billing.billingPh_no"/>
			<br>
			<br>
			<label>Country:</label>
			<form:input type ="text" name="Country" path="billing.billingCountry"/>
			<br>
			<br>
			<br>
			
		</fieldset>
	</form>
  </div>
</div>

<div class="split right">
  <div class="centered">
  <c:url value="/orderConfirm" var="con"/>
    	<form:form action="${con}" method="post" commandName="shipping" style="background-image: url('${loginZeal}/images/bg-01.jpg'); width:530px ;margin-right: 220px;">
		
			<fieldset align="center">
			<legend><i><b>Shipping</b></i></legend>
			<label>Id:</label>
			<form:input type="text" name="ShippingId" path="shippingId"/>
			<br>
			<br>
			<label>Name:</label>
			<form:input type ="text" name="ShippingName" path="shippingName"/>
			<br>
			<br>
			<label>Address:</label><br>
			<form:textarea rows="5" cols="25" name="shippingAddress" float="right" path="shippingAddress"/>
			<br>
			<br>
			<label>Ph_No:</label>
			<form:input type ="tel" name="ShippingPh-No" path="shippingPh_no"/>
			<br>
			<br>
			<label>Country:</label>
			<form:input type ="text" name="Country" path="shippingCountry"/>
			<br>
			<br>
			<input type="submit" name="Submit" style="border-radius: 6px;">
			<input type="reset" name="Cancel" style="border-radius: 6px;">
		</fieldset>
	</form:form>
  </div>
</div>

</body>
<%@include file="Footer.jsp" %>
</html>