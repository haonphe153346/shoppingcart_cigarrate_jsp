<%-- 
    Document   : add
    Created on : Mar 1, 2022, 3:28:20 AM
    Author     : admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>${requestScope.error}</h1>
        <form action="add" method="post">
            ID:<input type="number" name="id" placeholder="ID"><br>
            Name:<input type="text" name="name" placeholder="Name"><br>
            Price:<input type="number" name="price" placeholder="Date Of Birth"><br>
            Quanlity:<input type="number" name="quanlity" placeholder="Address"><br>
            Image:<input type="text" name="image" placeholder="Address"><br>



            Category
            <select name="cate" onchange="document.getElementById('f').submit()"> 
                <option value="0"> Pls choose a category</option>
                <c:forEach items="${requestScope.listcate}" var="c">
                    <option value="${c.id}">${c.name}</option>
                </c:forEach>
            </select>
            <input type="submit" value="Submit" >
        </form>


    </body>
</html>
