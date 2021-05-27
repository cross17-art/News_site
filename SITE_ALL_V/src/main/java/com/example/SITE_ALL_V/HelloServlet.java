package com.example.SITE_ALL_V;

import BD_con.BDConnection;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

public class HelloServlet extends  HttpServlet {
    private String message;
    BDConnection bd = null;

    public void init() {
        try {

            bd = new BDConnection();
            bd.getConnection();
            bd.Query("select *from site_cur.User");

        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
//        try{
//            String url="jdbc:mysql://localhost:3306/site_cur?serverTimezone=Europe/Moscow&useSSL=false";
//             String password="1111";
//            String user_name="root";
//            Class.forName("com.mysql.jdbc.Driver").getDeclaredConstructor().newInstance();
//            try (Connection conn = DriverManager.getConnection(url, user_name, password)){
//
//                System.out.println("Connection to Store DB succesfull!");
//            }
//        }
//        catch(Exception ex){
//            System.out.println("Connection failed...");
//
//            System.out.println(ex);
//        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        //response.setContentType("text/html");
//        try{
//            String url="jdbc:mysql://localhost:3306/site_cur";
//            String password="1111";
//            String user_name="root";
//           // Class.forName("com.mysql.jdbc.Driver").getDeclaredConstructor().newInstance();
//            Class.forName("com.mysql.jdbc.Driver");
//            try (Connection conn = DriverManager.getConnection(url, user_name, password)){
//
//                System.out.println("Connection to Store DB succesfull!");
//            }
//        }
//        catch(Exception ex){
//            System.out.println("Connection failed...");
//
//            System.out.println(ex);
//        }
        // Hello
        request.getRequestDispatcher("jsp/index.jsp").forward(request, response);

    }

    public void destroy() {
    }
}