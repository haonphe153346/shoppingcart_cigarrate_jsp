<%-- 
    Document   : shop
    Created on : Feb 21, 2022, 1:56:32 PM
    Author     : admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SHOP</title>
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

            /*END NAVBAR*/

            /*END CSS FOR HEADER*/

            /*CSS FOR CONTENT*/
            .shop-index{
                text-align: center;
                color: white;
                text-decoration: 5px;
                text-decoration-color: purple;
                height: 20%;

            }
            .logocart{
                color: #fff;padding-bottom: 10px;
            }
            .logoshop{
                color: #fff;
                padding-top: 20px;
                box-sizing: border-box;
            }
            /*CSS FOR SEARCH*/
            .search-btn input{
                background-color: #000;
                color: #fff;
                font-style: oblique;
                border: 2px solid #ae04aa;
                border-radius: 40px;
                text-align: center;
                padding: 5px 15px;
            }
            .search-btn input:active,.search-btn input:focus,.search-btn input:hover{
                border: 2px solid #ae04aa;
                border-radius: 35px;
            }

            .search-btn {
                margin-top: 20px;
                margin-bottom: 20px;
                color: #fff;
                display: inline-block; 
                position: relative;
                z-index: 99;
                float: right;
            }

            .search-btn button{
                height: 30px;
                width: 30px;
                background-color: #000;
                color: #fff;
                border: #000;
            }

            /*END CSS FOR SEARCH*/
            /*CSS FOR PRICE SET*/
            #range-1a,#range-1b{
                width: 40px;
                background-color: #fff;
            }
            .priceset {
                background-color: #fff;
            }
            /*END CSS FOR PRICE SET*/
            /*CSS FOR CATEGORIES*/
            .categories{
                margin-bottom: 20px;
            }
            .categories ul li{
                display: inline-block;
                color: #fff;
                border: 2px solid #fff;
                font-weight: 700;
                font-size: 18px;
                margin: 15px;
                padding: 8px 20px;
                border-radius: 25px;
            }
            .categories ul li.active {
                border: 2px solid #F28123;
                background-color: #F28123;
                color: #fff;
            }
            .categories ul li a {
                color: #fff;
            }
            .categories ul li:hover {
                font-weight: 700;
                font-size: 18px;
                margin: 15px;
                padding: 8px 20px;
                border-radius: 25px;
                border: 2px solid #F28123;
                background-color: #F28123;
                color: #fff;
            }
            /*END CSS FOR CATEGORIES*/
            /*CSS FOR SINGLE PRODUCT ITEM*/
            .product-list{

                box-sizing: border-box;
            }
            .single-product-item{
                border: 2px solid #c5c5c5;  
                border-radius: 2vh;
                color: #fff;
                margin-top: 40px;
                margin-bottom: 40px;
            }
            .single-product-item h6{
                color: chartreuse;
                padding: 10px;
            }
            .product-image img{
                margin-top: 10px;
                width: 150px;
                padding: 30px;
                padding-bottom: 10px;
            }
            .single-product-item a h3{
                color: #fff;
            }
            .product-price {
                padding-bottom: 15px;
            }
            .button-atc{
                padding-bottom: 25px;
                padding-top: 10px;
            }
            .button-co{

                padding-bottom: 25px;
            }
            .addtocart{
                outline: none;
                text-decoration: none;
                font-family: "Poppins", sans-serif;
                text-align: center;
                border-radius: 8vh;
                padding: 8px 55.6px;
                background: #0e0e0e;
                border: solid 1px #c5c5c5;

            }   
            .checkout {
                color: white;
                outline: none;
                text-decoration: none;
                font-family: "Poppins", sans-serif;
                text-align: center;
                border-radius: 8vh;
                padding: 8px 55.6px;
                background: #0e0e0e;
                border: solid 1px #c5c5c5;
            }

            /*END CSS FOR SINGLE PRODUCT ITEM*/
            /*CSS FOR PAGGING*/
            .pagging a{
                display: inline-block;  
                color: #fff;
                padding: 10px 20px;
                font-size: 15px;
                background-color: #000;
                display: inline-block;
                border: 3px solid #fff;
                border-radius: 5px;
                margin: 3px;
                margin-top: 50px;
                font-weight: 600;
                border-radius: 50px;
            }
            .pagging a:hover{
                border: 3px solid #F28123;
                background-color: #F28123;
                color: #fff;
            }

            .pagging {
                margin: 0;
                padding: 0;
                list-style: none;
            }
            .pagging .activee{
                border: 3px solid #F28123;
                background-color: #F28123;
                color: #fff;
            }
            .pagging .gopage:hover{
                border: 3px solid #F28123;
                background-color: #F28123;
                color: #fff;
            }
            /*END CSS FOR PAGGING*/
            /**/
            .filter input{display: inline-block;}
            /**/
            /*END CSS FOR CONTENT*/
            select{
                margin-top: 20px;
                float: left;
                background-color: #000;
                color: #fff;
                border: 2px solid #ae04aa;
                border-radius: 30px;
                padding: 5px 10px;
            }
            .sortby{

            }
            /*CSS FOR TAB*/
            .tab form{display: inline-flex;
                      margin: 20px;
                      color:#fff;
            }
            input{
                border: 3px solid #fff;
                border-radius: 40px solid #blue;

            }

            input[type="number"] {
                border: 1px solid #ddd;
                border-radius: 40px;
                padding: 8px;
                width: 80px;
                margin-bottom: 25px;
                text-align: center;
            }
            ul li {
                color: #fff;
            }
            /*END CSS FOR TAB*/
            /*CSS FOR FOOTER*/
            /*END CSS FOR FOOTER*/
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
                    <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-cart-fill logocart" viewBox="0 0 16 16">
                    <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                    </svg>
                    <!--END LOGO CART-->
                    <a class="logoshop">SHOP</a>
                </h1>
                <div class="col-md-12" align="center">
                    <hr width="400" style=" border: none; height: 5px; color: #ae04aa; background-color: #ae04aa;">
                </div>
                <br>
                <div class="container">
                    <!--PRICE SET-->
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-5">                                    
                                <form id="f" action="shop?sort=${requestScope.sort}?page=${requestScope.page}">
                                    <select name="sort" onchange="document.getElementById('f').submit()"> 
                                        <option>Sort by</option>
                                        <option valueul li="1" <c:if test="${sort==1}">
                                                selected
                                            </c:if> >(Low -> High)</option>
                                        <option value="2" <c:if test="${sort==2}">
                                                selected
                                            </c:if> >(High -> Low)</option>
                                        <option value="3" <c:if test="${sort==3}">
                                                selected
                                            </c:if> >A -> Z</option>
                                        <option value="4" <c:if test="${sort==4}">
                                                selected
                                            </c:if> >Z -> A</option>
                                    </select>
                                </form>

                            </div>
                            <div class="col-md-7 sortby">
                                <!--This is search -->
                                <div class="col-md-12 search">
                                    <div class="search-btn">
                                        <form action="" method="get">
                                            <input type="text" placeholder="SEARCH" name="key">

                                            <button onclick="this.form.submit()"> 
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                                <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                                                </svg>
                                            </button>
                                        </form>

                                    </div>

                                </div>
                                <!--END search -->

                            </div>
                        </div>
                    </div>
                    <!--END PRICE SET-->

                    <div class="col-md-12">
                        <!--This is CATEGORIES-->
                        <div class="categories" align="center">
                            <ul>
                                <li class="${cid==null?"active":""}"><a href="shop">All</a></li>
                                    <c:forEach items="${requestScope.category}" var="g">
                                    <li class="${cid==g.id?"active":""}"><a href="shop?cid=${g.id}">${g.name}</a></li>
                                    </c:forEach>
                            </ul>
                        </div>
                        <!--END CATEGORIES-->
                        <!--This is tab -->
                        <div align="center" class="col-md-12">
                            <c:set var="cat" value="${requestScope}"/>
                            <c:set var="ci" value="${requestScope}"/>
                            <div class="tab">
                                <form action="shop?">
                                    <input  type="radio" name="bid" value="1" ${ci[i]?"checked":""}   onclick="this.form.submit()" />Mond
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="bid" value="2" ${ci[i]?"checked":""}   onclick="this.form.submit()" />Africe
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="bid" value="3" ${ci[i]?"checked":""}   onclick="this.form.submit()" />Raison
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="bid" value="4" ${ci[i]?"checked":""}   onclick="this.form.submit()" />Chapman
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </form>    
                            </div>

                        </div>
                        <!--End TAB -->

                        <div class="row product-list">
                            <!--PRODUCT SINGLE ITEMS-->
                            <c:forEach items="${requestScope.product1}" var="p">

                                <div class="col-lg-4 col-md-6 text-center product">
                                    <div class="single-product-item">
                                        <div class="product-image">
                                            <a href="img/${p.image}"></a>
                                            <img weight="150" src="img/${p.image}">
                                        </div>
                                        <a href="single-product?id=${p.id}"><h3>${p.name}</h3></a>

                                        <h6>In stock</h6>

                                        <p class="product-price">${p.price}$</p>

                                        

                                        <div class="button-atc" align="center">
                                            <a href="buy?id=${p.id}" class="addtocart">Add to Cart</a>
                                        </div>

                                        <div class="button-co" align="center">
                                            <a href="checkout" class="checkout">Check Out</a>
                                        </div>
                                    </div>

                                </div>

                            </c:forEach>
                            <!--PRODUCT SINGLE ITEMS-->


                        </div>
                        <div class="row page">
                            <div class="col-lg-12 text-center">
                                <div class="pagging">
                                    <c:if test="${page>1}">
                                        <a class="gopage" href="shop?page=${page-1}">Prev</a>
                                    </c:if>
                                        
                                        
                                    <c:forEach begin="${1}" end="${requestScope.num}" var="i">
                                        <c:if test="${cid!=null && sort==null}">
                                            <a class="${i==page?"activee":""}" href="shop?cid=${cid}&page=${i}">${i}</a> 
                                        </c:if>
                                        <c:if test="${cid==null && sort!=null}">
                                            <a class="${i==page?"activee":""}" href="shop?cid=${cid}&page=${i}">${i}</a>
                                        </c:if>
                                        <c:if test="${cid==null}">
                                            <a class="${i==page?"activee":""}" href="shop?page=${i}">${i}</a> 
                                        </c:if>
                                    </c:forEach>
                                            
                                            
                                            
                                    <c:if test="${page<num}">
                                        <a class="gopage" href="shop?page=${page+1}">Next</a>
                                    </c:if>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <!--END Content-->
            </div>
            <div class="footer">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <p>Cigarrate © Copyright 2021. All Rights Reserved.
                            </p>
                        </div>
                        <div class="col-md-3">

                        </div>
                        <div class="col-md-3">

                        </div>
                        <div class="col-md-3">

                        </div>
                    </div>

                </div>
            </div>
    </body> 
</html>
