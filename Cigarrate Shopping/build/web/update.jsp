<%-- 
    Document   : update
    Created on : Mar 1, 2022, 2:53:23 AM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="update" method="post">
            <c:forEach items="${requestScope.list}" var="i">
                <table>
                    <tr>
                        <td>ID</td>
                         <td><input type="text" name="id" value="${i.id}"></td>
                    </tr>
                    <tr>
                        <td>Product Name</td>
                        <td><input type="text" name="name" value="${i.name}"></td>
                    </tr>
                    <tr>
                        <td>Price</td>
                        <td><input type="number" name="price" value="${i.price}"></td>
                    </tr>
                    
                    <tr>
                        <td>Quanlity</td>
                        <td><input type="number" name="quanlity" value="${i.quanlity}"></td>
                    </tr>
                    <tr>
                        <td>IMAGE</td>
                        <td><input type="text" name="image" value="${i.image}"></td>
                    </tr>
                    <tr>
                        <td>Category</td>
                        <td><input type="number" name="category" value="${i.category.id}"></td>
                    </tr>
                    </c:forEach>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Save"/> </td>
                    </tr>
                </table>
            
        </form>
    </body>
</html>
