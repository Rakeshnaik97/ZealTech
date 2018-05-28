<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="Header1.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Zeal Tech | Products</title>
<%-- <c:url value="/Resources/Products" var="pro1"></c:url> --%>
<c:url value="/Resources/New Products" var="ns"/>
<style type="text/css">
        .product_view .modal-dialog{max-width: 800px; width: 100%;}
        .pre-cost{text-decoration: line-through; color: #a5a5a5;}
        .space-ten{padding: 10px 0;}
</style>
</head>
<body>


<div class="container">
    <div class="row">
    <c1:forEach items="${products}" var="pro">
        <div class="col-md-4">
              <div class="thumbnail">
                <img src="${pageContext.request.contextPath}/Resources/${pro.getImageName()}" alt="" class="img-responsive">
                <div class="caption">
                  <h4 class="pull-right">${pro.getProductPrice()}</h4>
                  <h4><a href="#">${pro.getProductName()}</a></h4>
                  <p>${pro.getProductDescription()}</p>
                </div>
                <div class="ratings">
                  <p>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                     (15 reviews)
                  </p>
                </div>
                <div class="space-ten"></div>
                <div class="btn-ground text-center">
                    <button type="button" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> <a href="<c:url value="/addtocart/${pro.getProductId()}"/>">Add To Cart</a></button>
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#product_view"><i class="fa fa-search"></i> Quick View</button>
                </div>
                <div class="space-ten"></div>
              </div>
            </div>
            </c1:forEach>

    </div>
</div>


<div class="modal fade product_view" id="product_view">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <a href="#" data-dismiss="modal" class="class pull-right"><span class="glyphicon glyphicon-remove"></span></a>
                
            </div>
            <div class="modal-body">
                <div class="row">
                <c1:forEach items="${products}" var="pro">
                    <div class="col-md-6 product_img">
                        <img src="${pageContext.request.contextPath}/Resources/${pro.getImageName()}" class="img-responsive">
                    </div>
                    <div class="col-md-6 product_content">
                        <h4>Product Id: <span>${pro.getProductId()}</span></h4>
                        <h3 class="modal-title">${pro.getProductName()}</h3>
                        <div class="rating">
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            (10 reviews)
                        </div>
                        <p>${pro.getProductDescription()}</p>
                        <h3 class="cost"><span class="glyphicon glyphicon-usd"></span>${pro.getProductPrice()} <small class="pre-cost"><span class="glyphicon glyphicon-usd"></span>${pro.getProductPrice()}</small></h3>
                        <div class="row">
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <select class="form-control" name="select">
                                    <option value="" selected="">Color</option>
                                    <option value="black">Black</option>
                                    <option value="white">White</option>
                                    <option value="gold">Gold</option>
                                    <option value="rose gold">Rose Gold</option>
                                </select>
                            </div>
                            <!-- end col -->
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <select class="form-control" name="select">
                                    <option value="">Capacity</option>
                                    <option value="">16GB</option>
                                    <option value="">32GB</option>
                                    <option value="">64GB</option>
                                    <option value="">128GB</option>
                                </select>
                            </div>
                            <!-- end col -->
                            <div class="col-md-4 col-sm-12">
                                <select class="form-control" name="select">
                                    <option value="" selected="">QTY</option>
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option>
                                </select>
                            </div>
                            <!-- end col -->
                        </div>
                        <div class="space-ten"></div>
                        <div class="btn-ground">
                            <button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span> Add To Cart</button>
                            <button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-heart"></span> Add To Wishlist</button>
                        </div>
                    </div>
                    </c1:forEach>
                </div>
                
            </div>
        </div>
    </div>
</div>
</body>
<%@include file="Footer.jsp" %>
</html>