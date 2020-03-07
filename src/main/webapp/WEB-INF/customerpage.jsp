<%-- 
    Document   : customerpage
    Created on : Aug 22, 2017, 2:33:37 PM
    Author     : kasper
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kundeside</title>
    </head>
    <body>


        <h1>Goddag: "${sessionScope.email}" </h1>

        <h2>Du er nu logget ind som kunde.</h2>

        <form name="logout" action="FrontController" method="POST">
            <input type="submit" value="Logout">
            <input type="hidden" name="taget" value="logout">

        </form>
    </body>
</html>
