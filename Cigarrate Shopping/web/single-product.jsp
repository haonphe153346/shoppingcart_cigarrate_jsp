<%-- 
    Document   : single-product
    Created on : Feb 23, 2022, 2:46:38 PM
    Author     : admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Dashboard</title>
        <link rel="shortcut icon" type="image/x-icon" href="img/logo.jpg">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
        <style type="text/css">

            @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
            /*Reset CSS*/
            * {
                padding: 0;
                margin: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }

            body {
                box-sizing: border-box;
                justify-content: center;
                margin: 0;
                padding: 0;
                background-color: #000;
            }

            .container-max {
                margin: 0;
                padding: 0;

            }
            .content-max,
            h1,
            h2,
            h3,
            h4,
            h5,
            ul,
            li,
            p {
                margin: 0;
                padding: 0;
            }

            /*END RESET*/
            /*CSS FOR HEADER*/
            .header {
                background: #000;

            }

            /*LOGO*/
            .logo {
                padding: 15px 0px 15px 30px;
            }

            .logo img {
                font-size: 25px;
                color: #fff;
                height: 50px;
                width: 50px;
                text-align: center;
                background: #000;
                box-sizing: content-box;
                transition: all 0.3s ease;
                margin-left: 20px;
                border-radius: 20px;
            }

            /*END   LOGO*/
            /*NAVBAV*/
            .header-menu {

                padding: 28px 0px;
                float: left;
                text-align: center;
                border-radius: 20px;
                padding-right: 40px;
                font-family: "Poppins", sans-serif;
            }
            .header-menu ul{
                list-style: none;
            }
            .header-menu li {
                float: left;
            }

            .header-menu li a {
                display: flex;
            }

            .header-menu a {
                border-radius: 40px;
                padding: 15px;
                color: #fff;

            }

            .header-menu a:hover {
                background-color: #fff;
                color: #000;
                text-decoration: none;
            }
            .logoshop{
                color: #fff;
            }
            .shop-index {
                margin-top: 20px;
                margin-bottom: 150px;
            }
            path{
                color: #fff;
            }
            .indexs {
                margin: 50px;
            }
            /*END CSS FOR NAVBAR*/
            # Shop Page Styles

            ----------------------------------------------------------------------------- */
            .product-filters {
                margin-bottom: 80px;
            }

            .product-filters ul {
                margin: 0;
                padding: 0;
                list-style: none;
                text-align: center;
            }

            .product-filters ul li {
                display: inline-block;
                font-weight: 700;
                font-size: 18px;
                margin: 15px;
                border: 2px solid #051922;
                color: #323232;
                cursor: pointer;
                padding: 8px 20px;
                border-radius: 25px;
            }

            .product-filters ul li.active {
                border: 2px solid #F28123;
                background-color: #F28123;
                color: #fff;
            }

            .single-product-item {
                margin-bottom: 30px;
            }

            .product-image {
                padding: 30px;
                padding-bottom: 0;
            }

            .product-image img {
                width: 90%;
                border-radius: 5px;
                margin-bottom: 20px;
            }

            .single-product-item h3 {
                font-size: 20px;
                font-weight: 600;
                margin-bottom: 10px;
                color: #fff;
            }

            p.product-price {
                font-family: 'Poppins', sans-serif;
                font-size: 30px;
                font-weight: 700;
                margin-bottom: 15px;
                color: #fff;
            }

            p.product-price span {
                display: block;
                opacity: 0.8;
                font-size: 15px;
                font-weight: 400;
                color: #04d182;
            }

            a.cart-btn {
                font-family: 'Poppins', sans-serif;
                display: inline-block;
                background-color: #F28123;
                color: #fff;
                padding: 10px 20px;
                border: 2px;
                border-radius: 30px;
            }

            a.cart-btn i {
                margin-right: 5px;
            }

            .single-product-img img {
                /*border-radius: 5px;
                -webkit-box-shadow: 0 0 20px #ddd;
                box-shadow: 0 0 20px #ddd;
                */
                
            }

            .single-product-content h3 {
                font-size: 22px;
                font-weight: 600;
            }

            p.single-product-pricing span {
                font-size: 18px;
                display: block;
                opacity: 0.8;
                margin-bottom: 10px;
                font-weight: 400;
                color: #00ab6f;
            }

            .single-product-content p {
                font-size: 15px;
                color: #fff ;
                line-height: 1.8;
            }

            .single-product-content p.single-product-pricing {
                font-size: 32px;
                font-weight: 700;
                margin-bottom: 10px;
                color: #fff;
                line-height: inherit;
            }

            input[type="number"] {
                border: 1px solid #ddd;
                border-radius: 40px;
                padding: 10px;
                width: 100px;
                margin-bottom: 15px;
            }

            .single-product-form a.cart-btn {
                margin-bottom: 15px;
            }

            .single-product-content h4 {
                font-size: 20px;
                font-weight: 600;
                margin-top: 35px;
            }

            ul.product-share {
                margin: 0;
                padding: 0;
                list-style: none;
            }

            ul.product-share li {
                display: inline-block;
            }

            ul.product-share li a {
                display: block;
                color: #051922;
                margin-right: 10px;
            }

            .single-product-content {
                margin-left: 150px;
                color: #fff;
            }

            table.cart-table {
                border: 1px solid #f9f9f9;
                width: 100%;
            }

            thead {
                border-bottom: 1px solid #eee;
            }

            tr.table-head-row th {
                border-right: 1px solid #efefef;
                padding: 15px;
                font-weight: 500;
                text-align: center;
            }

            tr.table-head-row th:last-child {
                border-right: none;
            }

            .cart-table-wrap tbody tr td {
                text-align: center;
            }

            td.product-image img {
                max-width: 50px;
                -webkit-box-shadow: none;
                box-shadow: none;
                margin-bottom: 0;
            }

            .cart-table-wrap tbody tr td {
                border: 1px solid #efefef;
                padding: 20px 0;
                color: #051922;
            }

            thead.cart-table-head tr {
                background-color: #efefef;
            }

            td.product-quantity input {
                margin-bottom: 0;
            }

            td.product-remove a {
                color: #051922;
            }

            .total-section table.total-table {
                border: 1px solid #efefef;
                width: 100%;
            }

            tr.table-total-row {
                background-color: #efefef;
            }

            tr.table-total-row th {
                font-weight: 500;
                font-size: 15px;
                padding: 15px;
            }

            table.total-table tbody tr.total-data td {
                border: 1px solid #efefef;
                padding: 19px 15px;
            }

            tr.total-data td strong {
                margin-right: 32px;
            }

            .cart-buttons {
                margin-top: 30px;
            }

            .cart-buttons a:first-child {
                margin-right: 20px;
            }

            .coupon-section {
                margin-top: 50px;
            }

            .coupon-section h3 {
                font-size: 20px;
                font-weight: 500;
            }

            .coupon-form-wrap form p input[type=text] {
                border: 1px solid #ddd;
                color: #051922;
                padding: 15px;
                width: 100%;
                border-radius: 5px;
                font-size: 15px;
            }

            .card.single-accordion {
                margin-bottom: 15px;
                border-bottom: 1px solid #EFEFEF !important;
            }

            .card.single-accordion .card-header {
                background-color: #fff;
                border: none;
                padding: 0;
            }

            .card.single-accordion:last-child {
                margin-bottom: 0;
            }

            .card.single-accordion .card-header h5 button {
                color: #051922;
                font-size: 15px;
                display: block;
                width: 100%;
                text-align: left;
                padding: 20px;
                text-decoration: none;
                border: none;
                background-color: #EFEFEF;
                position: relative;
                padding-left: 50px;
                font-weight: 600;
            }

            .card.single-accordion {
                border: 1px solid #F9F9F9;
            }

            .billing-address-form {
                padding: 20px;
            }

            .billing-address-form form p input {
                border: 1px solid #ddd;
                padding: 15px;
                width: 100%;
                border-radius: 3px;
            }

            .billing-address-form form p textarea {
                width: 100%;
                border-radius: 3px;
                border: 1px solid #ddd;
                padding: 15px;
                height: 120px;
                resize: none;
            }

            .shipping-address-form p, .card-details p {
                margin: 0;
            }

            .card.single-accordion .card-header h5 button:before {
                position: absolute;
                left: 20px;
                top: 50%;
                content: "\f058";
                font-family: "Font Awesome 5 Free";
                font-weight: 900;
                line-height: 22px;
                margin-top: -11px;
                color: #F28123;
            }

            .billing-address-form form p:last-child {
                margin-bottom: 0;
            }

            table.order-details {
                border: 1px solid #efefef;
            }

            table.order-details thead tr th {
                background-color: #efefef;
                padding: 18px;
                font-size: 15px;
                font-weight: 500;
            }

            table.order-details tbody td {
                border: 1px solid #efefef;
                padding: 15px;
            }

            .order-details-wrap > a {
                margin-top: 30px;
            }

            .card.single-accordion {
                border: 1px solid #eeeeee;
            }

            .single-product-item {
                -webkit-box-shadow: 0 0 20px #e4e4e4;
                box-shadow: 0 0 20px #e4e4e4;
                padding-bottom: 50px;
                border-radius: 5px;
            }
            .section-title {
                margin: 150px;
                color: #fff;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid container-max">
            <!--This is HEADER-->
            <jsp:include page="module/header.jsp"></jsp:include>
            <!--END HEADER-->
            <!--This is content-->
            <div class="row product-section">
                <br><br><br>
                <div class="col-md-12 indexs">
                  <h1 class="col-md-12 shop-index text-center" align="center">
                    <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-cart-fill logocart" viewBox="0 0 16 16">
                    <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                    </svg>
                    <!--END LOGO CART-->
                    <a class="logoshop">SINGLE PRODUCT</a>
                    <div class="col-md-12" align="center">
                        <hr width="400" style=" border: none; height: 5px; color: #ae04aa; background-color: #ae04aa;">
                    </div>
                </h1>  
                </div>
                

                <!-- single product -->
                <c:forEach items="${requestScope.list}" var="sp">
                    <div class="single-product mt-150 mb-150 col-md-12">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-5">
                                    <div class="single-product-img">
                                        <img src="img/${sp.image}" alt="">
                                    </div>
                                </div>
                                <div class="col-md-7">
                                    <div class="single-product-content">
                                        <h1>${sp.name}</h1>
                                        <p class="single-product-pricing"><span>In stock</span> $${sp.price}</p>
                                        <p>${sp.name} is a cigarrate with a new method. Buy now sale off 5%. Have a great day !</p>
                                        <div class="single-product-form">
                                            <form action="index">
                                                <input type="number" placeholder="0">
                                            </form>
                                            <a href="buy?id=${sp.id}" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
                                            <p><strong>Categories: </strong>${sp.category.name}</p>
                                        </div>
                                        <h4>Share:</h4>
                                        <ul class="product-share">
                                            <li><a href=""><i class="fab fa-facebook-f"></i></a></li>
                                            <li><a href=""><i class="fab fa-twitter"></i></a></li>
                                            <li><a href=""><i class="fab fa-google-plus-g"></i></a></li>
                                            <li><a href=""><i class="fab fa-linkedin"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>  
                </c:forEach>

                <!-- end single product -->
                <!-- more products -->
                <div class="more-products mb-150 col-md-12">
                    <div class="container">
                        <div class="row">
                            <div  class="col-lg-8 offset-lg-2 text-center">
                                <div class="section-title">	
                                    <h3><span class="orange-text">Related</span> Products</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, fuga quas itaque eveniet beatae optio.</p>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-4 col-md-6 text-center">
                                <div class="single-product-item">
                                    <div class="product-image">
                                        <a href="single-product.html"><img src="img/africa_rula.png" alt=""></a>
                                    </div>
                                    <h3>Strawberry</h3>
                                    <p class="product-price"><span>In stock</span> 85$ </p>
                                    <a href="cart.html" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 text-center">
                                <div class="single-product-item">
                                    <div class="product-image">
                                        <a href="single-product.html"><img src="img/esse_double_orange.png" alt=""></a>
                                    </div>
                                    <h3>Berry</h3>
                                    <p class="product-price"><span>In stock</span> 70$ </p>
                                    <a href="cart.html" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 offset-lg-0 offset-md-3 text-center">
                                <div class="single-product-item">
                                    <div class="product-image">
                                        <a href="single-product.html"><img src="img/lucky_double_wine.png" alt=""></a>
                                    </div>
                                    <h3>Lemon</h3>
                                    <p class="product-price"><span>In stock</span> 35$ </p>
                                    <a href="buy?" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end more products -->

            </div>  
    </body>
</html>
