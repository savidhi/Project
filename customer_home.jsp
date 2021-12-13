<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Yoga Studio Template">
    <meta name="keywords" content="Yoga, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home Page</title>

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
<div align="center">
<div class="card text-white bg-dark mb-3" style="max-width: 30rem;">
  <div class="card-header">ELECTRONICS</div>
  <div class="card-body">
    <h5 class="card-title">Simple Solutions for Complex Connections.</h5>
    <!-- <p class="card-text"><a href="placeOrder" class="btn btn-dark">Buy Now</a></p> -->
  </div>
</div>
<div class="card text-white bg-dark mb-3" style="max-width: 30rem;">
  <div class="card-header">ACCESSORIES</div>
  <div class="card-body">
    <h5 class="card-title">Shine from head to toe.</h5>
    <!-- <p class="card-text"><a href="placeOrder" class="btn btn-light">Buy Now</a></p> -->
  </div>
</div>
<div class="card text-white bg-dark mb-3" style="max-width: 30rem;">
  <div class="card-header">CLOTHING</div>
  <div class="card-body">
    <h5 class="card-title">Walk in for the Fashion, Stay in for the Style.</h5>
    <!-- <p class="card-text"><a href="placeOrder" class="btn btn-light">Buy Now</a></p> -->
  </div>
</div>
</div>
<%-- <%@include file="footer.jsp" %> --%>
</body>
</html>