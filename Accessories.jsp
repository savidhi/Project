<%@ page import="java.util.List" %>
<%@ page import="com.web.spring.model.Order" %>
<%@ page import="com.web.spring.model.OrderProducts" %>
<%@ page import="java.util.Set" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Yoga Studio Template">
    <meta name="keywords" content="Yoga, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Reports</title>

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
                        <li><a href="adminHome">Home</a></li>
                        <li><a href="add">Add Products</a>
                        <li><a href="viewOrder">View Orders</a>
                        <li><a href="#">Generate Reports</a>
                        <ul class="sub-menu">
                        		<li><a href="report">All Reports</a></li>
                                <li><a href="clothing">Clothing Report</a></li>
                                <li><a href="accessories">Accessories Report</a></li>
                                <li><a href="electronics">Electronics Report</a></li>
                            </ul>
                        </li>
                        <li><a href="#">${msg}</a>
                            <ul class="sub-menu">
                            	 <li><a href="registerAdmin">Add Admin</a></li>
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
    <div class="container">
                        <% List<Order> oList=(List<Order>)request.getAttribute("rList");
                        /* Double amount=0.0;
                        for(Order o:oList){
                        amount+=o.getAmount(); */
                        %>
                       
        
        <div class="row">
            <div class="col"></div>
            <div class="col-8">
                <table class="table table-striped table-dark" width="50%" border='1'>
                    <thead>
                    <tr>
                        <th scope="col">Product Id</th>
                        <th scope="col">Product Name</th>
                        <th scope="col">Product Price</th>
                        <th scope="col">Product Quantity</th>
                        <th scope="col">Category</th>
                        <th scope="col">Order Id</th>
                    </tr>
                    </thead>
                    <tbody>
                    <% Double accessories=0.0;
                        for(Order o:oList) {
                            Set<OrderProducts> op = o.getSet();
                            for (OrderProducts p : op) {
                                if (p.getCategory().equals("Accessories")) {
                                    int id=o.getOrder_id();
                                    accessories	 +=(p.getPrice()*p.getQty());
                                    out.println("<tr><td>" + p.getPid() + "</td>");
                                    out.println("<td>" + p.getName() + "</td>");
                                    out.println("<td>" + p.getPrice() + "</td>");
                                    out.println("<td>" + p.getQty() + "</td>");
                                    out.println("<td>" + p.getCategory() + "</td>");
                                    out.println("<td>" + id + "</td></tr>");
                                }
                            }
                        }%>
                    </tbody>
                </table>
            </div>
            <div class="col"></div>
        </div>
        <div class="row">
            <div class="col"></div>
            <div class="col">
                <div class="alert alert-primary" role="alert">
                    Total Revenue Generated by Accessories	 category Rs.<%=accessories	 %>
                </div>
            </div>
            <div class="col"></div>
        </div>
        <br/>
        
</div>
</div>
</body>
</html>