package com.glosys.lms.web.student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/secure/payNow")
public class PayNowServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("courseName",  request.getParameter("courseName"));
        request.setAttribute("cost", request.getParameter("cost"));
        request.getRequestDispatcher("/secure/payment.jsp").forward(request, response);

    }
}
