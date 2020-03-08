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
        <h2>Slet kunde som bruger, indtast ID:</h2>
        <td>
            <form name="deleteuser" action="FrontController" method="POST">
                <input type="hidden" name="target" value="deleteuser">
                ID:<br>
                <input type="id" name="id">
                <input type="submit" value="Submit">
            </form>
        </td>
        <br>
        <h2>Vælg nulstil kundes kodeord til "123":</h2>
        <td>
                    <form name="resetpw" action="FrontController" method="POST">
                <input type="hidden" name="target" value="resetpw">
                ID:<br>
                <input type="id" name="id">
                        <input type="submit" value="Submit">
        </form>
        </td>
            <br>
            <br>
        <h2>Opret ny medarbejder:</h2>
        <td>
            <form name="newemployee" action="FrontController" method="POST">
                <input type="hidden" name="target" value="newemployee">
                Email:<br>
                <input type="text" name="email" value="">
                <br>
                Password:<br>
                <input type="password" name="password1" value="">
                <br>
                Retype Password:<br>
                <input type="password" name="password2" value="">
                <br>
                <input type="submit" value="Submit">
            </form>
        </td>
            <br>
            <br>

        <h2>Vælg at logge ud:</h2>
        <br>
        <td>

        <form name="logout" action="FrontController" method="POST">
            <input type="submit" value="Logout">
        </form>
            </td>
        <br>


    </body>
</html>
