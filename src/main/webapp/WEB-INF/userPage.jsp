<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Olsker Cupcakes - Forside</title>
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
                    <a class="nav-link" href="ServletCake"><i class="fa-solid fa-paintbrush"></i> Design din cupcake</a>
                </li>
            </ul>

            <!-- Left links -->
        </div>
        <!-- Collapsible wrapper -->

        <!-- Right elements -->
        <div class="d-flex align-items-center">
            <h5>Welcome to your page, ${sessionScope.name}</h5>
            <a class="text-reset me-3" href="#">
                <i style="padding-left: 10px" class="fa-solid fa-cart-shopping"></i>
            </a>
        </div>

    </div>
</nav>
<h2></h2>

<br>


<div style="align-content: center" class="card" style="width: 80rem;">
    <img src="Gallery/olskerlogo.png" class="card-img-top" alt="logo-olsker">
    <div class="card-body">

        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    </div>
</div>


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
