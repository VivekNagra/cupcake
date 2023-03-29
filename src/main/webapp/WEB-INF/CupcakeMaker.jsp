<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CupcakeMaker</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
    <h1>Make your own cupcake!</h1>

    <br>

    <%--<form action="ServletCheckout" method="get">
        <select name="selectTopping" class="form-select" aria-label="Default select example">
            <option selected>Choose a topping </option>
            <c:forEach var="topping" items="${applicationScope.toppingList}" >
                <option value="${topping}">${topping.name}&nbsp - &nbsp${topping.price}&nbsp kr. </option>
            </c:forEach>
        </select>
        <input type="submit" value="add topping">
    </form>--%>

    <h3>Choose a cupcake Topping</h3>
    <br>
    <form action="ServletCheckout" method="get">
        <select name="selectTopping" class="form-select" aria-label="Default select example">
            <option selected>Choose a topping </option>
            <c:forEach var="topping" items="${applicationScope.toppingList}" >
                <option value="${topping.name},${topping.price}">${topping.name}&nbsp - &nbsp ${topping.price} &nbsp kr. </option>
            </c:forEach>
        </select>
        <br>
        <h3>Choose a cupcake Base</h3>
        <select name="selectBase" class="form-select" aria-label="Default select example">
            <option selected>Choose a base </option>
            <c:forEach var="base" items="${applicationScope.baseList}" >
                <option value="${base.name},${base.price}">${base.name}&nbsp - &nbsp ${base.price}&nbsp kr. </option>
            </c:forEach>


        </select>

        <input type="submit" value="Add to cart">


    </form>

    <br>

  <%--  //new try
    <h3>Choose a cupcake base</h3>
    <form action="ServletCheckout" method="get">
        <select name="item">
            <option value="1">Cream</option>
            <option value="2">Choko</option>
            <option value="3">Curry</option>
        </select>
        <input type="submit" value="Submit">
    </form>
    //try 2--%>

    <%--<h3>Choose a cupcake base</h3>
    <form action="ServletCheckout" method="get">
        <select class="form-select" aria-label="Default select example" id="selectBase" name="selectBase" >
            <option selected>Choose a base </option>
            <c:forEach var="base" items="${applicationScope.baseList}" >
                <option value="${base}">${base.name}&nbsp - &nbsp${base.price}&nbsp kr. </option>
            </c:forEach>
        </select>
    </form>--%>

   <%-- <form action="ServletCheckout">
        <input type="submit" value="Order Cupcake">
    </form>
--%>



</body>
</html>
