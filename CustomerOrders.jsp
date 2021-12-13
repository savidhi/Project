<%@page import="java.util.List"%>
<%@page import="com.web.spring.model.OrderProducts"%>
<%@page import="java.util.*"%>
<%@page import="com.web.spring.model.Order"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Yoga Studio Template">
    <meta name="keywords" content="Yoga, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Orders</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900&display=swap"
        rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <script type="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
</script>
</head>
<body>
<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search model end -->

    <!-- Header Section Begin -->
    <header class="header-section">
        <div class="container-fluid">
            <div class="inner-header">
                <div class="logo">
                    <a href="./index.html"><img src="img/logo.png" alt=""></a>
                </div>
                <div class="header-right">
                    <img src="img/icons/search.png" alt="" class="search-trigger">
                    <img src="img/icons/man.png" alt="">
                    <a href="#">
                        <img src="img/icons/bag.png" alt="">
                        <span>2</span>
                    </a>
                </div>
                <nav class="main-menu mobile-menu">
                    <ul>
                        <li><a href="customerHome">Home</a></li>
                        <li><a href="placeOrder">Place Order</a>
                        <li><a href="viewSpecificOrder">Transaction History</a>
                        <li><a href="#">${msg}</a>
                            <ul class="sub-menu">
                                <li><a href="logout">Logout</a></li>
                            </ul>
                        </li>
                        
                    </ul>
                </nav>
            </div>
        </div>
    </header>
    <!-- Header Info Begin -->
    <div class="header-info">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <div class="header-item">
                        <img src="img/icons/delivery.png" alt="">
                        <p>Free shipping on orders over 50,000 in India</p>
                    </div>
                </div>
                <div class="col-md-4 text-left text-lg-center">
                    <div class="header-item">
                        <img src="img/icons/voucher.png" alt="">
                        <p>20% Student Discount</p>
                    </div>
                </div>
                <div class="col-md-4 text-left text-xl-right">
                    <div class="header-item">
                    <img src="img/icons/sales.png" alt="">
                    <p>30% off on dresses. Use code: 30OFF</p>
                </div>
                </div>
            </div>
        </div>
    </div>
    <br/>
		<%-- <c:choose>
			<c:when test="${oList.size()!=0}">
				<table class="table table-striped table-dark" width="50%" border='1'>
					<thead>
						<tr>
							<th scope="col">Order Id</th>
							<th scope="col">Product Details</th>
							<th scope="col">Order Date</th>
							<th scope="col">Amount</th>
							<th scope="col">Status</th>
							<th scope="col"></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${oList}" var="orders">
							<tr>
								<td><c:out value="${orders.order_id}" /></td>
								<td>${string }</td>
								<td><a href="/viewOrderDetails?id=<c:out value="${orders.order_id}"/>">View Details</a></td>
								<td><c:out value="${orders.orderDate}" /></td>
								<td>Rs.<c:out value="${orders.amount}" /></td>
								<td><c:out value="${orders.status}" /></td>
								<c:choose>
									<c:when test="${orders.status == 'Approved'}">
										<td><a
											href="/deleteOrder?id=<c:out value="${orders.order_id}"/>"
											class="btn btn-danger disabled" type="button"
											aria-disabled="true">Delete</a> <a
											href="/trackOrder?id=<c:out value="${orders.order_id}"/>"
											class="btn btn-danger">Track</a></td>
									</c:when>
									<c:otherwise>
										<td><a
											href="/deleteOrder?id=<c:out value="${orders.order_id}"/>"
											class="btn btn-danger">Delete</a> <a
											href="/trackOrder?id=<c:out value="${orders.order_id}"/>"
											class="btn btn-danger disabled" type="button"
											aria-disabled="true">Track</a> </span></td>
									</c:otherwise>
								</c:choose>

							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:when>
			<c:otherwise>
			<h4 align="center">Sorry,No orders to display!</h4>
			</c:otherwise>
		</c:choose> --%>
		<div class="card-group">
<div align="center">
  <div class="card-deck">
  <c:forEach items="${oList}" var="orders">
  
    <div class="card">
      <h5 class="card-title">Order Id:<c:out value="${orders.order_id}" /></h5>
      <p class="card-text">
      Product Details:<a href="/viewOrderDetails?id=<c:out value="${orders.order_id}"/>">View Details</a><br/>
	  Order Date:<c:out value="${orders.orderDate}" /><br/>
	  Amount:Rs.<c:out value="${orders.amount}" /><br/>
	  Order Status:<c:out value="${orders.status}" /><br/>
      </p>
      <p class="card-text"><small class="text-muted"></small>
      <c:choose>
									<c:when test="${orders.status == 'Approved'}">
										<a
											href="/deleteOrder?id=<c:out value="${orders.order_id}"/>"
											class="btn btn-danger disabled" type="button"
											aria-disabled="true">Delete</a> <a
											href="/trackOrder?id=<c:out value="${orders.order_id}"/>"
											class="btn btn-danger">Track</a>
									</c:when>
									<c:otherwise>
										<a
											href="/deleteOrder?id=<c:out value="${orders.order_id}"/>"
											class="btn btn-danger">Delete</a> <a
											href="/trackOrder?id=<c:out value="${orders.order_id}"/>"
											class="btn btn-danger disabled" type="button"
											aria-disabled="true">Track</a> </span>
									</c:otherwise>
								</c:choose>
      </p>
    </div>
    
 </c:forEach>
  </div>
</div>
<%-- <%@include file="footer.jsp" %>	 --%>
</body>
</html>