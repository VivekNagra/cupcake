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
        String chosenTopping1 = request.getParameter("selectTopping");

        String chosenBase1 = request.getParameter("selectBase");


        String[] selectedToppingValues = chosenTopping1.split(",");
        String selectedToppingName = selectedToppingValues[0];
       // String selectedToppingPrice = selectedToppingValues[1];
        int selectedToppingPrice = Integer.parseInt(selectedToppingValues[1]);


        String[] selectedBaseValues = chosenBase1.split(",");
        String selectedBaseName = selectedBaseValues[0];
        //String selectedBasePrice = selectedBaseValues[1];
        int selectedBasePrice = Integer.parseInt(selectedBaseValues[1]);

        int total = selectedToppingPrice + selectedBasePrice;



        HttpSession session = request.getSession();

        session.setAttribute("baseName", selectedBaseName);
        session.setAttribute("basePrice", selectedBasePrice);

        session.setAttribute("toppingName", selectedToppingName);
        session.setAttribute("toppingPrice", selectedToppingPrice);

        session.setAttribute("total", total);




        request.getRequestDispatcher("WEB-INF/Checkout.jsp").forward(request,response);






    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {




    }
}
