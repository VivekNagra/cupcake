<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CupcakeMaker</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

    <!-- Font Awesome -->
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
    />
    <!-- Google Fonts -->
    <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
    />
    <!-- MDB -->
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.css"
            rel="stylesheet"
    />

    <!-- MDB -->
    <script
            type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.js"
    ></script>

    <script src="https://kit.fontawesome.com/72d8a95216.js" crossorigin="anonymous"></script>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <!-- Container wrapper -->
    <div class="container-fluid">
        <!-- Toggle button -->
        <button
                class="navbar-toggler"
                type="button"
                data-mdb-toggle="collapse"
                data-mdb-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation"
        >
            <i class="fas fa-bars"></i>
        </button>

        <!-- Collapsible wrapper -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Navbar brand -->
            <a class="navbar-brand mt-2 mt-lg-0" href="#">
                <h3 style="font-family: 'Dancing Script', cursive">Olsker. Cupcakes</h3>
            </a>
            <!-- Left links -->
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fa-solid fa-house"></i> Forside</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fa-solid fa-paintbrush"></i> Design din cupcake</a>
                </li>
            </ul>

            <!-- Left links -->
        </div>
        <!-- Collapsible wrapper -->

        <!-- Right elements -->
        <div class="d-flex align-items-center">

            <a class="text-reset me-3" href="#">
                <i class="fa-solid fa-cart-shopping"></i>
            </a>
            &nbsp;
        </div>
    </div>
</nav>



<div class="container">
    <br>
    <h1>Design din egen cupcake</h1>

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

    <h3>Vælg en cupcake topping</h3>
    <br>
    <form action="ServletCheckout" method="get">
        <select name="selectTopping" class="form-select" aria-label="Default select example">
            <option selected>Vælg topping</option>
            <c:forEach var="topping" items="${applicationScope.toppingList}" >
                <option value="${topping.name},${topping.price}">${topping.name}&nbsp - &nbsp ${topping.price} &nbsp kr. </option>
            </c:forEach>
        </select>
        <br>
        <h3>Vælg en cupcake bund</h3>
        <select name="selectBase" class="form-select" aria-label="Default select example">
            <option selected>Vælg bunden </option>
            <c:forEach var="base" items="${applicationScope.baseList}" >
                <option value="${base.name},${base.price}">${base.name}&nbsp - &nbsp ${base.price}&nbsp kr. </option>
            </c:forEach>


        </select>
<br>
        <input type="submit" value="Tilføj til kurven">


    </form>
</div>

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
