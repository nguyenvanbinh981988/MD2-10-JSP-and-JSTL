package com.example.demo;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "com.example.demo.Addlist", value = "/add")
public class Addlist extends HttpServlet {

    static public ArrayList<people> danhsach = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String birth = request.getParameter("birth");
        String address = request.getParameter("address");
        String picture = request.getParameter("picture");
        people person = new people(name,birth,address,picture);
        danhsach.add(person);
        RequestDispatcher dispatcher = request.getRequestDispatcher("indexDS.jsp");
        dispatcher.forward(request,response);
    }
}
