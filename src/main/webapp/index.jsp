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
    <body>
        <h1>Velkommen til projekt siden.</h1>
        <br>
        <h2>Login eller registrer dig som bruger:</h2>
        
        <table>
            <tr>
                <td>
                    <form name="login" action="FrontController" method="POST">
                        <input type="hidden" name="target" value="login">
                        Email:<br>
                        <input type="text" name="email">
                        <br>
                        Password:<br>
                        <input type="password" name="password">
                        <br>
                        <input type="submit" value="Submit">
                    </form>
                </td>

                <td>
                    <form name="register" action="FrontController" method="POST">
                        <input type="hidden" name="target" value="register">
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
            </tr>
        </table>


    </body>
</html>
