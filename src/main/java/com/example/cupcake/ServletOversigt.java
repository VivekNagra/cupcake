package com.example.cupcake;

import com.example.cupcake.Controller.AppStart;
import com.example.cupcake.Entities.Order;
import com.example.cupcake.Entities.Toppings;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ServletOversigt", value = "/ServletOversigt")
public class ServletOversigt extends HttpServlet {

    public void init()
    {
        List<Order> ordersList = new ArrayList<>(); // list of all Orders
        getServletContext().setAttribute("ordersList", ordersList);

        String SQL = "SELECT * FROM Order";

        try (
                Connection connection = AppStart.getConnectionPool().getConnection();

                PreparedStatement ps = connection.prepareStatement(SQL);)
        {

            ResultSet resultSet = ps.executeQuery();



            while(resultSet.next())
            {
                String base = resultSet.getString("Base");
                String topping = resultSet.getString("Toppings");
                int price = resultSet.getInt("Price");
                int cartId = resultSet.getInt("CartID");
                int quantity = resultSet.getInt("Quantity");


                Order o = new Order(base,topping,price,cartId,quantity);
                getServletContext().setAttribute("Order", o);

                ordersList.add(o);
            }

        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        }

    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        request.getRequestDispatcher("WEB-INF/adminPage.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
