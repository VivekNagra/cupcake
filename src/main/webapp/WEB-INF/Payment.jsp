<%--
  Created by IntelliJ IDEA.
  User: city
  Date: 28/03/2023
  Time: 16.43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Secure Paymanet</title>
</head>
<body>

<h2> Secure Payment</h2>

<div class="row">
    <div class="col-75">
        <div class="container">
            <form action="">

                <div class="row">
                    <div class="col-50">
                        <h3>Billing Address</h3>
                        <label for="fname"><i class="fa fa-user"></i> Full Name</label>
                        <input type="text" id="fname" name="firstname">


                        <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
                        <input type="text" id="adr" name="address" >

                        <label for="city"><i class="fa fa-institution"></i> City</label>
                        <input type="text" id="city" name="city">


                    </div>

                    <div class="col-50">
                        <h3>Payment</h3>

                        <label for="cname">Name on Card</label>
                        <input type="text" id="cname" name="cardname" >

                        <label for="ccnum">Credit card number</label>
                        <input type="text" id="ccnum" name="cardnumber" >

                        <label for="expmonth">Exp Month</label>
                        <input type="text" id="expmonth" name="expmonth" >


                        <label for="expyear">Exp Year</label>
                        <input type="text" id="expyear" name="expyear" >

                        <label for="cvv">CVV</label>
                        <input type="text" id="cvv" name="cvv" >

                    </div>

                </div>
                <label>
                    <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
                </label>
                <input type="submit" value="Continue to checkout" class="btn">
            </form>
        </div>
    </div>


        <div class="container">
            <h1>Cart</h1>

            <h3>Cupcake : ${sessionScope.toppingName} Topping ${sessionScope.toppingPrice} kr.   With ${sessionScope.baseName} Base ${sessionScope.basePrice} kr. </h3>

            <h3>Price to pay: ${sessionScope.total} KR. </h3>




        </div>
    </div>
</div>

</body>
</html>
