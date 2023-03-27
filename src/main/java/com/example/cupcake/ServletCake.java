package com.example.cupcake;

import com.example.cupcake.Controller.AppStart;
import com.example.cupcake.Entities.Base;
import com.example.cupcake.Entities.Order;
import com.example.cupcake.Entities.Toppings;
import com.example.cupcake.Entities.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "ServletCake", value = "/ServletCake")
public class ServletCake extends HttpServlet {


   public void init() {
        List<Toppings> toppingList = new ArrayList<>(); // list of all toppings
        List<Base> baseList = new ArrayList<>(); // list of all bases

        //Map<String, Order> toppingMap = new HashMap<>();



        getServletContext().setAttribute("toppingList", toppingList);
        getServletContext().setAttribute("baseList", baseList);




        //setup of all topping options
        String SQL = "SELECT * FROM Toppings";

       try (
               Connection connection = AppStart.getConnectionPool().getConnection();

               PreparedStatement ps = connection.prepareStatement(SQL);)
       {

           ResultSet resultSet = ps.executeQuery();

           //System.out.println("rs " + resultSet);

           //create topping instance

           while(resultSet.next()){
               String name = resultSet.getString("Name");

               int price = resultSet.getInt("Price");

               Toppings topping = new Toppings(name, price);
               getServletContext().setAttribute("topping", topping);

               toppingList.add(topping);
           }

       } catch (SQLException sqlException) {
           sqlException.printStackTrace();
       }


       //Setup of all base options
       String SQL1 = "SELECT * FROM Base";
       try (
               Connection connection = AppStart.getConnectionPool().getConnection();

               PreparedStatement ps = connection.prepareStatement(SQL1);)
       {

           ResultSet resultSet = ps.executeQuery();

           //System.out.println("rs " + resultSet);

           //create topping instance

           while(resultSet.next()){
               String name = resultSet.getString("Name");

               int price = resultSet.getInt("Price");

               Base base = new Base(name, price);

               baseList.add(base);
           }

       } catch (SQLException sqlException) {
           sqlException.printStackTrace();
       }



    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("WEB-INF/CupcakeMaker.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
