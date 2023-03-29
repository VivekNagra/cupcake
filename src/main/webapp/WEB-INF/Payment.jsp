

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<style>
    table, th, td
    {
        border:2px solid black;
    }

</style>

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

            <table style="width:50%">
                <tr>
                    <th>Base</th>
                    <th>Topping</th>
                    <th>Quanity</th>
                </tr>
                   <tr>
                     <td>${sessionScope.baseName}</td>
                     <td>${sessionScope.toppingName}</td>
                     <td>${sessionScope.quantity}</td>
                   </tr>

                <h3> TOTAL AMOUNT: ${sessionScope.total} KR.</h3>






        </div>
    </div>
</div>

</body>
</html>
