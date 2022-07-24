<%-- 
    Document   : checkout
    Created on : Feb 22, 2022, 10:31:41 PM
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
            /*CSS FOR TABLE*/
            .tablelist table{
                border: 2px;
                border-radius: 50px;
            }
            /*END CSS FOR TABLE*/
            .mainaa{
                margin-top: 150px;
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
                color: #fff;
                font-size: 15px;
                display: block;
                width: 100%;
                text-align: left;
                padding: 20px;
                text-decoration: none;
                border: none;
                background-color: #000;
                position: relative;
                padding-left: 50px;
                font-weight: 600;
            }

            .card.single-accordion {
                border: 1px solid #F9F9F9;
            }

            .billing-address-form {
                padding: 20px;
                background-color: #00 0;
            }

            .billing-address-form form p input {
                border: 1px solid #ddd;
                padding: 15px;
                width: 100%;
                border-radius: 3px;
                color: #fff;
            }
            .card-body {
                background-color: #000;
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
            .billing-address-form input{
                background-color: #000;


            }
            textarea{
                background-clor: #000;
            }
            ::placeholder { /* Chrome, Firefox, Opera, Safari 10.1+ */
                color: #fff;
                opacity: 1; /* Firefox */
            }

            :-ms-input-placeholder { /* Internet Explorer 10-11 */
                color: #fff;
            }

            ::-ms-input-placeholder { /* Microsoft Edge */
                color: #fff;
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
                background-color: #000;
                padding: 18px;
                font-size: 15px;
                font-weight: 500;
            }

            table.order-details tbody td {
                border: 1px solid #efefef;
                padding: 15px;
            }
            .order-details-wrap{
                color: #fff;
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
            .cart-buttons {
                margin-top: 30px;
                margin-left: 60px;
            }
            .cart-buttons .black {
                margin-top: 40px;
                background-color: #F28123;
                color: #fff;
                border: 2px solid #fff;
                border-radius: 40px;
                padding: 8px 15px;
            }

        </style>
    <body>
        <!--This is HEADER-->
        <jsp:include page="module/header.jsp"></jsp:include>
            <!--END HEADER-->
            <!-- check out section -->
            <div class="checkout-section mt-150 mb-150">
                <div class="container">
                    <div class="row mainaa">
                        <div class="col-lg-8">
                            <div class="checkout-accordion-wrap">
                                <div class="accordion" id="accordionExample">
                                    <div class="card single-accordion">
                                        <div class="card-header" id="headingOne">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                    Billing Address
                                                </button>
                                            </h5>
                                        </div>

                                        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                            <div class="card-body">
                                                <div class="billing-address-form">
                                                    <form action="order" method="post">
                                                        <p><input type="text" name="name" placeholder="Name"></p>
                                                        <p><input type="email" name="email" placeholder="Email"></p>
                                                        <p><input type="tel" name="phone" placeholder="Phone"></p>
                                                        <p><input type="text" name="address" placeholder="Address"></p>
                                                        <p><textarea name="note" style="
                                                                     background-color: #000;"  name="bill" id="bill" cols="30" rows="10" placeholder="Say Something"></textarea></p>
                                                        <input style="color: #fff;" type="submit" value="SUBMIT">
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>

                        <div class="col-lg-4">
                            <div class="order-details-wrap">
                                <table class="order-details">
                                    <thead>
                                        <tr>
                                            <th>Your order Details</th>
                                            <th>Price</th>
                                        </tr>
                                    </thead>

                                    <tbody class="order-details-body">
                                        <tr>
                                            <td>Product</td>
                                            <td>Total</td>
                                        </tr>
                                    <c:forEach items="${sessionScope.carts}" var="i">
                                    <tr>
                                        <td>${i.value.product.name}</td>
                                        <td>$${i.value.quanlity*i.value.product.price}</td>
                                    </tr>
                                </c:forEach>


                                </tbody>
                                <tbody class="checkout-details">
                                    <tr>
                                        <td>Subtotal</td>
                                        <td>$${total}</td>
                                    </tr>
                                    <tr>
                                        <td>Shipping</td>
                                        <td>$15</td>
                                    </tr>
                                    <tr>
                                        <td>Total</td>
                                        <td>$${total+15}</td>
                                    </tr>
                                </tbody>
                            </table>
                           

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end check out section -->
    </body>
</html>
