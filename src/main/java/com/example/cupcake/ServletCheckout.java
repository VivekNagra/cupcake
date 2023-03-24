package com.example.cupcake;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletCheckout", value = "/ServletCheckout")
public class ServletCheckout extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String chosenTopping1 = request.getParameter("selectTopping");



        HttpSession session = request.getSession();

        //session.setAttribute("topping", chosenTopping1);

        request.setAttribute("selectToppingList", chosenTopping1);

        request.getRequestDispatcher("WEB-INF/Checkout.jsp").forward(request,response);

        System.out.println(chosenTopping1);
        System.out.println("her");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }
}
