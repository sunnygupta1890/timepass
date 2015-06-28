package com.tryout;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TimePassServlet extends HttpServlet{

    private static final long serialVersionUID = 1L;

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("submitted here");
        List<String> list = new ArrayList<String>();
        list.add("kamal");
        list.add("sunny");
        request.setAttribute("sch", list);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
