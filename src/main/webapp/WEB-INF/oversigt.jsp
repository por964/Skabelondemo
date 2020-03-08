<%--
  Created by IntelliJ IDEA.
  User: claes
  Date: 04-03-2020
  Time: 12:55
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Oversigt</title>
    <h1>Her er en liste over alle kunder: </h1>


</head>
<body bgcolor="#778899">

<br>
<br>

${requestScope.customers}

<h4>Number of customers: ${sessionScope.size}</h4>

<br>
<br>

<c:forEach var="element" items="${sessionScope.customers}">

    ${element}
    <br>


</c:forEach>
<form name="logout" action="FrontController" method="POST">
    <input type="submit" value="Logout" align="left">
</form>

</body>
</html>
