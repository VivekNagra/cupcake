package com.example.cupcake;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "ServletCake", value = "/ServletCake")
public class ServletCake extends HttpServlet {


   /* public void init() {
        List<> userList = new ArrayList<>();

        userList.add(new User("test", "123"));
        userList.add(new User("John", "doe"));
        userList.add(new User("master", "chief"));
        userList.add(new User("egg", "man", "admin"));

        Map<String, User> userMap = new HashMap<>();

        for (User user : userList) {
            userMap.put(user.getName(), user);
        }

        getServletContext().setAttribute("userList", userList);
        getServletContext().setAttribute("userMap", userMap);



    }*/

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        request.getRequestDispatcher("WEB-INF/CupcakeMaker.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
