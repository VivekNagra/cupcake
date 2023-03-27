package com.example.cupcake;

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

        String chosenTopping1 = request.getParameter("selectTopping");

        String chosenBase1 = request.getParameter("selectBase");




        HttpSession session = request.getSession();

        session.setAttribute("selectTopping", chosenTopping1);
        session.setAttribute("selectBase", chosenBase1);

        request.getRequestDispatcher("WEB-INF/Checkout.jsp").forward(request,response);




    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {




    }
}
