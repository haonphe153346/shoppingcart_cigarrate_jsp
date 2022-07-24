<%-- 
    Document   : admin.jsp
    Created on : Feb 23, 2022, 2:47:06 PM
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
        </style>
    </head>
    <body>
        <h1>hello ${sessionScope.admin.name}</h1>
        <h3 style="color: #000">Dashboard</h3>
        <a class="add-button" href="check?action=add">Create new</a>
        <br>
        <a class="add-button" href="logout">LOG OUT</a>
        <div class="row tablelist">
            <div class="col-md-12" align="center">
                <table border="1">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>NAME</th>
                            <th>Price</th>
                            <th>Quanlity</th>
                            <th>Image</th>

                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listp}" var="p">
                            <tr>
                                <td>${p.id}</td>
                                <td>${p.name}</td>
                                <td>${p.price}</td>
                                <td>${p.quanlity}</td>
                                <td>${p.image}</td>

                                <td><a href="check?action=update-student&id=${student.id}">Update</a> |
                                    <a href="#" onclick="doDelete('${student.id}')">delete</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>

        </div>

    </body>
</html>
