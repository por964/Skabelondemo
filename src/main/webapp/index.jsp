<%-- 
    Document   : index
    Created on : Aug 22, 2017, 2:01:06 PM
    Author     : kasper
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome page</title>
    </head>
    <body bgcolor="#ADD8E6">
        <h1>Velkommen til projekt siden.</h1>
        <br>
        <h2>Login eller registrer dig som bruger:</h2>
        
        <table style="width:100%">
            <tr>
                <td>
                    <form name="login" action="FrontController" method="POST">
                        <input type="hidden" name="target" value="login" align=left">
                        Email:<br>
                        <input type="text" name="email">
                        <br>
                        Password:<br>
                        <input type="password" name="password">
                        <br>
                        <input type="submit" value="Login">
                    </form>
                </td>

                <td>
                    <form name="newcustomer" action="FrontController" method="POST">
                        <input type="hidden" name="target" value="newcustomer" align=left">
                        Email:<br>
                        <input type="text" name="email" value="">
                        <br>
                        Password:<br>
                        <input type="password" name="password1" value="">
                        <br>
                        Retype Password:<br>
                        <input type="password" name="password2" value="">
                        <br>
                        <input type="submit" value="Opret">
                    </form>
                </td>
            </tr>
        </table>


    </body>
</html>
