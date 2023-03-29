<%--
  Created by IntelliJ IDEA.
  User: vcode
  Date: 24/03/2023
  Time: 12.38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>check out</title>
</head>
<body>

    <h1> Her er din kurv ${sessionScope.name} </h1>
    <br>
    <h3> du har valgt ${sessionScope.selectedTopping} som din topping</h3>
    <h3> og ${sessionScope.selectedBase} som din base</h3>

    <p>${sessionScope.order}</p>

</body>
</html>
