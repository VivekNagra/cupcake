<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
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

            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#LoginBrugerModal">
                Login/registrer
            </button>

            <!-- Modal -->
            <div class="modal fade" id="OpretBrugerModal" tabindex="-1" aria-labelledby="OpretBrugerLabel"
                 aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="OpretBrugerLabel">Opret bruger</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">

                            <form action="hello-servlet" method="post">
                                <label for="nyNavn">Brugernavn:</label><br>
                                <input type="text" id="nyNavn" name="nyNavn" placeholder="Indtast brugernavn"><br>
                                <label for="nyKode">Kodeord:</label><br>
                                <input type="text" id="nyKode" name="nyKode" placeholder="Indtast kodeord"><br><br>
                                <input type="submit" class="btn btn-success" value="opret bruger">
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Annuller</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal -->
            <div class="modal fade" id="LoginBrugerModal" tabindex="-1" aria-labelledby="LoginBrugerLabel"
                 aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="LoginBrugerLabel">Login</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">

                            <form action="hello-servlet" method="get">
                                <label for="navn">Brugernavn:</label><br>
                                <input type="text" id="navn" name="navn" placeholder="Indtast brugernavn"><br>
                                <label for="kode">Kodeord:</label><br>
                                <input type="text" id="kode" name="kode" placeholder="Indtast kodeord"><br><br>
                                <input type="submit" class="btn btn-success" value="Login">
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Annuller</button>
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#OpretBrugerModal">Opret bruger</button>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- Right elements -->
    </div>
    <!-- Container wrapper -->
</nav>
<!-- Navbar -->

<script>
    var e = document.getElementById("ddlViewBy");
    var value = e.value;
    var text = e.options[e.selectedIndex].text;
</script>

<div class="card-group">
    <div class="card">
        <img src="Gallery/slide1.jpeg" class="card-img-top" alt="...">
    </div>
    <div class="card">
        <img src="Gallery/slide2.jpg" class="card-img-top" alt="...">
    </div>
    <div class="card">
        <img src="Gallery/slide3.jpg" class="card-img-top" alt="...">
    </div>
</div>
<div class="card-group">
    <div class="card">
        <img src="Gallery/slide4.jpg" class="card-img-top" alt="...">
    </div>
    <div class="card">
        <img src="Gallery/slide5.jpg" class="card-img-top" alt="...">
    </div>
    <div class="card">
        <img src="Gallery/slide6.jpg" class="card-img-top" alt="...">
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
</body>

</html>