<%--
  Created by IntelliJ IDEA.
  User: vcode
  Date: 22/03/2023
  Time: 12.45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Page</title>

</head>

<body>
<h2>Welcome to your page, ${sessionScope.name}</h2>

<br>

<form action="ServletLogOut">
    <input type="submit" value="Log af">
</form>

<br>

<form action="ServletOversigt" method="get">
    <input type="submit" value="admin">
</form>

<br>

<form action="ServletCake">
    <input type="submit" value="Order Cupcake">
</form>

<br>

</body>
</html>
