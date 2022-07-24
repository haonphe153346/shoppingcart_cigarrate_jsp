<%-- 
    Document   : login
    Created on : Feb 22, 2022, 10:31:20 PM
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
    </head>
    <body>
        <!--This is HEADER-->
        <jsp:include page="module/header.jsp"></jsp:include>
            <!--END HEADER-->

            <div class="container">
                <div class="loginform" align="center">
                    <h3>${requestScope.err}</h3>
                <form action="login" method="post">
                    <div class="inputbox">
                        <input type="text" name="email" placeholder="E-mail">
                    </div>
                    <div class="inputbox">
                        <input type="password" name="password" placeholder="Password">
                    </div>
                    <button type="submit">Log In</button>
                    <a class="notyet" href="signup">No account yet ?</a>
                </form>
            </div>
        </div>
    </body>
</html>
