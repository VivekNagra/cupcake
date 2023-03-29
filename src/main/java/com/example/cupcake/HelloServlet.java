package com.example.cupcake;

import com.example.cupcake.Controller.AppStart;
import com.example.cupcake.Entities.Cart;
import com.example.cupcake.Entities.User;
import com.example.cupcake.Mapper.ConnectionPool;

import java.io.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;


    Connection connection;
    String url = "jdbc:mysql://mysql11.unoeuro.com:3306/matechsolutions_dk_db";
    String dbName = "matechsolutions_dk";
    String dbPsw = "cenyktwx";

    public void init()

    {




    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        try
        {
            String name = request.getParameter("navn");
            String password = request.getParameter("kode");

            HttpSession session = request.getSession();

            session.setAttribute("name", name);


            System.out.println("inden kald " + name + " " + password);
            String SQL = "SELECT * FROM Customer WHERE Name = ? AND Password = ?";

//          connection = DriverManager.getConnection(url, dbName, dbPsw);

            try (
            Connection connection = AppStart.getConnectionPool().getConnection();

            PreparedStatement ps = connection.prepareStatement(SQL);)
            {



            ps.setString(1,name);
            ps.setString(2,password);

            ResultSet resultSet = ps.executeQuery();

            System.out.println("rs " + resultSet);

            //create user instance


                //resultSet.next();

                if (resultSet.next())
                {
                    System.out.println("successful login as " + resultSet.getString("name"));
                    //return resultSet.getString("userName");
                    User user = new User(resultSet.getInt("idCustomer"),name, password);
                    session.setAttribute("currentUser", user);
                    System.out.println("dit id er "+ user.getId());
                    request.getRequestDispatcher("WEB-INF/userPage.jsp").forward(request,response);
                } else {
                    System.out.println("User does not exist - Please try again");
                    request.getRequestDispatcher("index.jsp").forward(request,response);
                }

                System.out.println(resultSet.getString("Name"));
                System.out.println(resultSet.getString("Password"));
                System.out.println("række nr " + resultSet.getInt("idCustomer"));



            }
        } catch (SQLException | ServletException e) {
            e.printStackTrace();
            request.getRequestDispatcher("index.jsp").forward(request,response);

        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String newName = request.getParameter("nyNavn");
        String newPassword = request.getParameter("nyKode");


        // start
        try
        {
            HttpSession session = request.getSession();

            session.setAttribute("name", newName);

            System.out.println("inden kald " + newName + " " + newPassword);
            String SQL = "INSERT INTO Customer (Name, Password) VALUES('"+newName+"', '"+newPassword+"')";



            try (
                    Connection connection = AppStart.getConnectionPool().getConnection();

                    PreparedStatement ps = connection.prepareStatement(SQL);)
            {
                int i = ps.executeUpdate();

                if(i>0)
                {
                    request.getRequestDispatcher("WEB-INF/userPage.jsp").forward(request,response);
                } else {
                    request.getRequestDispatcher("index.jsp").forward(request,response);
                }

            }
        } catch (SQLException | ServletException e) {
            e.printStackTrace();
            request.getRequestDispatcher("index.jsp").forward(request,response);

        }

        //end
    }
    public void destroy() {
    }
}