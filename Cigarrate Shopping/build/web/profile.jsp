<%-- 
    Document   : profile
    Created on : Mar 9, 2022, 12:00:35 AM
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
        <title>LOGIN</title>
        <link rel="shortcut icon" type="image/x-icon" href="img/logo.jpg">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="css/grid.css">
        <link rel="stylesheet" href="css/app.css">
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
            /*CSS FOR LOGIN*/
            ::placeholder { /* Chrome, Firefox, Opera, Safari 10.1+ */
                color: #fff;
                opacity: 1; /* Firefox */
            }
            .loginform{
                margin-top: 150px;
            }
            input {
                background: #000;
                border: 2px solid #ae04aa;
                border-radius: 25px;
                padding: 8px 17px;
                color: #fff;
            }
            input:active,input:hover{
                border: 2px solid chartreuse;
                padding: 8px 55px;
            }
            .loginform button{
                background-color: #000;
                color: #fff;
                border: 2px solid #ae04aa;
                border-radius: 15px;
                padding: 5px;

            }
            .loginform button:hover {
                background-color: #ae04aa;

            }
            .inputbox {
                margin:15px;
            }
            /**/
            
            
        </style>
        <script type="text/javascript">
            function doDelete(id){
                if(confirm("Are u sure to delete order with id="+id+" ?")){
                    window.location="delete-order?id="+id;
                }
            }
        </script>
    </head>
    <body>
        <div class="container-fluid container-max">
            <!--This is HEADER-->
            <div class="row header">
                <!--LOGO-->
                <div class="col-xs-3 col-sm-3 col-md-6 logo">
                    <h1><a href=""><img src="img/logo.jpg" /></a></h1>
                </div>
                <!--END LOGO-->
                <!-- NAVBAR -->
                <nav class="col-xs-9 col-sm-9 col-md-6 d-flex flex-row-reverse header-menu navbar">
                    <div>
                        <ul>
                            <li><a href="index">HOME</a></li>
                            <li><a href="shop">SHOPPING</a></li>
                            <li><a href="contact">CONTACT</a></li>
                            <li><a href="cart"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
                                    <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                                    </svg></a></li>
                            <li><a href="login"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg></a></li>

                        </ul>
                    </div>
                </nav>
                <!--END NAVBAR-->
            </div>
            <!--END HEADER-->
        </div>
        <div class="container rounded bg-white mt-5 mb-5">
            <div class="row">
                <c:forEach items="${requestScope.userlist}" var="c">


                    <div class="col-md-3 border-right">
                        <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span class="font-weight-bold">${c.name}</span><span class="text-black-50">${c.email}</span><span> </span></div>
                    </div>
                    <div class="col-md-5 border-right">
                        <form action="profile" method="post">
                            <div class="p-3 py-5">

                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <h4 class="text-right">Profile Settings</h4>
                                </div>

                                <div class="row mt-3">
                                    <div class="col-md-12"><label class="labels">ID</label><input name="id" type="text" class="form-control" placeholder="enter phone number" value="${c.id}"></div>

                                    <div class="col-md-12"><label class="labels">Name</label><input name="name" type="text" class="form-control" placeholder="enter phone number" value="${c.name}"></div>

                                    <div class="col-md-12"><label class="labels">Email</label><input name="email" type="text" class="form-control" placeholder="enter phone number" value="${c.email}"></div>
                                    <div class="col-md-12"><label class="labels">Phone Number</label><input name="phone" type="text" class="form-control" placeholder="enter address line 1" value="${c.phone}"></div>
                                    <div class="col-md-12"><label class="labels">Address</label><input name="address" type="text" class="form-control" placeholder="enter address line 2" value="${c.address}"></div>
                                    <div class="col-md-12"><label class="labels">Password</label><input name="password" type="password" class="form-control" placeholder="enter address line 2" value="${c.password}"></div>

                                </div>

                                <div class="mt-5 text-center"><button type="submit" class="btn btn-primary profile-button" type="button">Save Profile</button></div>
                            </div>
                        </form>
                    </c:forEach>
                </div>
                <div class="col-12">
                    <!-- ORDERS TABLE -->
                    <div class="box">
                        <div class="box-header">
                            Recent orders
                        </div>
                        <div class="box-body overflow-scroll">
                            <table>
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Customer</th>
                                        <th>Date</th>
                                        <th>Phone</th>
                                        <th>Email</th>
                                        <th>Address</th>
                                        <th>Order status</th>
                                        <th>Payment status</th>
                                        <th>Total</th>
                                    </tr>
                                </thead>
                                
                                    
                                     <c:forEach items="${requestScope.loder}" var="loder">
                                            <tr>
                                            <td>#${loder.id}</td>
                                            <td>
                                                <div class="order-owner">
                                                   
                                                    <span>${loder.fullname}</span>
                                                </div>
                                            </td>
                                            <td>${loder.date}</td>
                                            <td>${loder.phone_number}</td>
                                            <td>${loder.email}</td>
                                            <td>${loder.address}</td>
                                            <td>${loder.note}</td>
                                            <c:if test="${loder.status==0}">
                                            <td>
                                                <div class="payment-status payment-pending">
                                                    <div class="dot"></div>
                                                    <span>Pending</span>
                                                </div
                                            </td>
                                            </c:if>
                                            <c:if test="${loder.status==1}">
                                                <td>
                                                     <div class="payment-status payment-paid">
                                                <div class="dot"></div>
                                                <span>Shipping</span>
                                            </div>
                                                </td>
                                           
                                            </c:if>
                                                <c:if test="${loder.status==2}">
                                                <td>
                                                     <div class="payment-status payment-status bg-danger color d-inline-block rounded-circle mr-2"> X
                                                <div class="dot"></div>
                                                <span>Reject</span>
                                            </div>
                                                </td>
                                           
                                            </c:if>
                                                <td>$${loder.total_money}</td>
                                                        <td>
                                                    <span class="order-status order-ready">
                                                    <a href="#" onclick="doDelete('${loder.id}')">Delete
                                                </span>
                                                    </td>
                                                
                                            
                                            <c:if test="${order.status==0}">
                                                <td>
                                                    <a href="accept?id=${order.id}">
                                                        <span class="order-status order-ready">
                                                    Accept
                                                </span>
                                                    </a>
                                                
                                            </td>
                                            <td>
                                                    <a href="reject?id=${order.id}">
                                                        <span class="order-status order-ready">
                                                    Reject
                                                </span>
                                                    </a>
                                                
                                            </td>
                                            </c:if>
                                            
                                        </tr>
                                        </c:forEach>



                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- END ORDERS TABLE -->
                </div>
            </div>
        </div>
    </body>
</html>
