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
    <title>DIN KURV</title>
</head>
<body>

<h1> Her er din kurv ${sessionScope.name} </h1>

<h4>Base: ${sessionScope.baseName}  Price: ${sessionScope.basePrice} KR.</h4>

<h4>Topping: ${sessionScope.toppingName}  Price: ${sessionScope.toppingPrice} KR.</h4>

<h2> Your total is: ${sessionScope.total} KR.</h2>


<form action="ServletPay" method="get">
    <input type="submit" value="PAY">
</form>









</body>
</html>
