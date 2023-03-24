<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Olsker Cupcakes</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
    <body>

    <h1>Olsker cupcakes</h1>
    <br/>

    ${requestScope.besked}
    <br>
    <br>
    <div class="container" style="align-content: center">
        <h2>Login Bruger</h2>
            <form action="hello-servlet" method="get">
                <label for="navn">Angiv navn:</label><br>
                <input type="text" id="navn" name="navn" value="John"><br>
                <label for="kode">angiv kode:</label><br>
                <input type="text" id="kode" name="kode" value="1234"><br><br>
                <input type="submit" value="Submit">
            </form>
    </div>


    <br>

        <div class="container" style="align-content: center">
        <h2>Opret Bruger</h2>
            <form action="hello-servlet" method="post">
                <label for="nyNavn">Angiv navn:</label><br>
                <input type="text" id="nyNavn" name="nyNavn" value="Enter name"><br>
                <label for="nyKode">angiv ny kode:</label><br>
                <input type="text" id="nyKode" name="nyKode" value="enter password"><br><br>
                <input type="submit" value="opret bruger">
            </form>
        </div>
    </body>
</html>