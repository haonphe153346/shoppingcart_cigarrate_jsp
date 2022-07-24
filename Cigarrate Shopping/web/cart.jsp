<%-- 
    Document   : cart
    Created on : Feb 22, 2022, 10:15:45 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CART</title>
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

            /*END NAVBAR*/
            /*CSS FOR CART*/
            .cart-section {
                margin-top: 50px;
            }
            .product-image img{
                width: 80px;
                padding: 20px;
            }
            table.cart-table {
                border: 1px solid #f9f9f9;
                width: 100%;
            }

            thead {
                border-bottom: 1px solid #eee;
            }
            tr.table-head-row tr {
                background-color: #000; 
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
                max-width: 150px;
                -webkit-box-shadow: none;
                box-shadow: none;
                margin-bottom: 0;
            }
            .table-body-row {
                COLOR: #fff;
            }
            .cart-table-wrap tbody tr td {
                border: 1px solid #efefef;
                padding: 20px 0;
                color: #fff;
            }

            thead.cart-table-head tr {
                background-color: #000;
                color: #fff;
                font-size:18px; 
                font-weight: bold;
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
                background-color: #000;
            }

            tr.table-total-row th {
                font-weight: 500;
                font-size: 15px;
                padding: 15px;
                color: #fff;
            }

            table.total-table tbody tr.total-data td {
                border: 1px solid #efefef;
                padding: 19px 15px;
                color: #fff;
            }

            tr.total-data td strong {
                margin-right: 32px;
                color: #fff;
            }

            .cart-buttons {
                margin-top: 30px;

            }

            .cart-buttons a:first-child {
                margin-right: 20px;
            }
            .cart-buttons a{
                border: 2px solid #fff;
                border-radius: 20px;
                padding: 8px 15px;
            }
            .product-quantity input {
                color: #fff;
                background-color: #000;
            }
            .cart-buttons .black {
                background-color: #F28123;
                color: #fff;

            }
            /*END CSS FOR CART*/
            ul li {
                color: #fff;
            }
            /*END CSS FOR HEADER*/
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

                    <h1 class="col-md-12 shop-index text-center" align="center">
                        <svg xmlns="http://www.w3.org/2000/svg" color="#fff" width="40" height="40" fill="currentColor" class="bi bi-cart-fill logocart" viewBox="0 0 16 16">
                        <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                        </svg>
                        <!--END LOGO CART-->
                        <a class="logoshop">Cart</a>
                    </h1>
                    <div class="col-md-12" align="center">
                        <hr width="400" style=" border: none; height: 5px; color: #ae04aa; background-color: #ae04aa;">
                    </div>

                </div>
                <!--This is Cart-->
                <div class="container">
                    <div class="cart-section">
                        <div class="row">
                            <!--This is right-->
                            <div class="col-lg-8 col-md-12" align="center">
                                <div class="cart-table-wrap">
                                    <table class="cart-table">
                                        <thead class="cart-table-head">
                                            <tr class="table-head-row">
                                                <th class="product-remove"></th>
                                                <th class="product-image">Product Image</th>
                                                <th class="product-name">Name</th>
                                                <th class="product-price">Price</th>
                                                <th class="product-quantity">Quantity</th>
                                                <th class="product-total">Total</th>
                                            </tr>
                                        </thead>



                                    <c:forEach items="${sessionScope.carts}" var="i">

                                        <tbody>
                                            <tr class="table-body-row">
                                                <td class="product-remove">
                                                    <form action="process" method="post">
                                                        <input type="hidden" name="id" value="${i.value.product.id}"/>
                                                        <input class="btn btn-primary btn-sm" type="submit" value="X"/>
                                                    </form></td>
                                                <td class="product-image"><img src="img/${i.value.product.image}" alt=""></td>
                                                <td class="product-name">${i.value.product.name}</td>
                                                <td class="product-price">$${i.value.product.price}</td>
                                                <td class="product-quantity"><input type="number" readonly value="${i.value.quanlity}"></td>
                                                <td class="product-total">${i.value.quanlity*i.value.product.price}</td>

                                            </tr>
                                        </tbody>
                                    </c:forEach>

                                </table>
                            </div>
                        </div>
                        <!--This is left-->
                        <div class="col-lg-4" align="center">
                            <div class="total-section">
                                <table class="total-table">
                                    <thead class="total-table-head">
                                        <tr class="table-total-row">
                                            <th>Total</th>
                                            <th>Price</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="total-data">
                                            <td><strong>Subtotal: </strong></td>
                                            <td>$${total}</td>
                                        </tr>
                                        <tr class="total-data">
                                            <td><strong>Shipping: </strong></td>
                                            <td>$15</td>
                                        </tr>
                                        <tr class="total-data">
                                            <td><strong>Total: </strong></td>
                                            <td>$${total+15}</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div class="cart-buttons">
                                    <a href="cart" class="boxed-btn">Update Cart</a>
                                    <a href="checkout" class="boxed-btn black">Check Out</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </body>
</html>
