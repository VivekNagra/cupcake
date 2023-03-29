package com.example.cupcake;

import com.example.cupcake.Entities.Base;
import com.example.cupcake.Entities.Order;
import com.example.cupcake.Entities.Toppings;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletCheckout", value = "/ServletCheckout")
public class ServletCheckout extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

        //Toppings cakeTop = new Toppings(request.getParameter("selectTopping"),request.getParameter("selectBase"),(request.getAttribute("selectTopping").+(request.getAttribute())));
        HttpSession session = request.getSession();

        String chosenTopping1 = request.getParameter("selectTopping");

        String chosenBase1 = request.getParameter("selectBase");

        session.setAttribute("selectedTopping", chosenTopping1);

        session.setAttribute("selectedTopping", chosenTopping1);
        session.setAttribute("selectedBase", chosenBase1);

        Toppings top1 = (Toppings) getServletContext().getAttribute("selectTopping");

        Base base1 = (Base) request.getSession().getServletContext().getAttribute("selectBase");

        int topPrice = top1.getPrice();
        int basePrice = base1.getPrice();

        int totalPrice = topPrice+basePrice;

        Order order = new Order(chosenTopping1,chosenBase1,totalPrice);




        session.setAttribute("order", order);



        request.getRequestDispatcher("WEB-INF/Checkout.jsp").forward(request,response);




    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }
}
