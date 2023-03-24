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
<h3 style="align-content: center">Choose a topping</h3>

<form action="ServletCheckout" method="get">
    <select class="form-select" aria-label="Default select example" id="selectTopping" name="selectTopping" >
        <option selected>Choose a topping </option>
    <c:forEach var="topping" items="${applicationScope.toppingList}" >
        <option value="lort">${topping.name}&nbsp - &nbsp${topping.price}&nbsp kr. </option>
    </c:forEach>
    </select>
</form>
    <button type="button"></button>

    <script>
        function myFunction() {
            var x = document.getElementById("mySelect").value;
            document.getElementById("demo").innerHTML = x;
        }
    </script>



</body>
</html>
