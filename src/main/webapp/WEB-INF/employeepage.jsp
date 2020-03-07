<%-- 
    Document   : employeepage.jsp
    Created on : Aug 24, 2017, 6:31:57 AM
    Author     : kasper
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee home page</title>
    </head>
    <body>
        

        <h1>Goddag: "${sessionScope.email}" </h1>

        Du er nu logget ind som medarbejder.
    <br>
        <br>
        <h2>Vælg kundeoversigt:</h2>
    <br>
        <form name="oversigt" action="FrontController" method="POST">
            <input type="hidden" name="target" value="oversigt">
            <input type="submit" value="Kundeoversigt">
        </form>
    <br>
        <br>
        <br>
        <h2>Vælg nulstil kundes kodeord:</h2>
        <form name="resetPw" action="FrontController" method="POST">
            <input type="hidden" name="target" value="resetPw">
            ID:<br>
            <input type="hidden" name="id" value="${element.id}">
            <br>
            Password:<br>
            <input type="password" name="pw">
            <input type="hidden" name="pw" value="${element.pw}">
            <br>
            <br>
            <input type="submit" value="Nulstil">

        </form>
        <br>
        <form name="logout" action="FrontController" method="POST">
            <input type="submit" value="Logout">
        </form>
        <br>


    </body>
</html>
