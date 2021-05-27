package com.example.SITE_ALL_V;

import BD_con.BDConnection;
import com.example.SITE_ALL_V.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import BD_con.Human;

public class yourclass extends javax.servlet.http.HttpServlet {
    BDConnection bd = null;

    @Override
    public void init() throws ServletException {
        try {

            bd = new BDConnection();
            bd.getConnection();
            bd.Query("select *from site_cur.User");
          //  System.out.println( bd.humans.get(1).get_Year());
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Login=request.getParameter("Login");
        String Password=request.getParameter("Password");


        if(Login!=null && Password!=null){
            try {
                if(search_user(Login,Password)){
                    bd.Insert_db(Password,Login);
                    System.out.println("yest");
                }
                else{
                    System.out.println("net");
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        System.out.println(Login+" "+ Password);
        String pathInfo = request.getPathInfo();
        request.getRequestDispatcher("/jsp" +pathInfo).forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println(request.getRequestURL());
        String pathInfo = request.getPathInfo();
        System.out.println(pathInfo);
        request.getRequestDispatcher("/jsp" +pathInfo).forward(request, response);
    }



    public boolean search_user(String Login,String Password){
        boolean ch=true;
        //System.out.println("1" + bd.humans.get(i).getLogin()==Login);
        for(int i=0;i<bd.humans.size();i++){
            if(bd.humans.get(i).getLogin().equals(Login) && bd.humans.get(i).getPassword().equals(Password))ch= false;
        }
        return ch;
    }

}
