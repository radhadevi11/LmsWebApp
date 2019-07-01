package com.glosys.lms.web;

import com.glosys.lms.controller.LoginController;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private LoginController loginController;


    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String mailId = request.getParameter("email");
        String password = request.getParameter("password");


        if(loginController == null) {
            loginController = new LoginController();
        }
        boolean validUser = loginController.isValidUser(mailId, password);

        if(validUser){
            HttpSession session = request.getSession(true);
            session.setAttribute("email",mailId);
            session.getAttribute("email");
            response.sendRedirect(request.getContextPath()+"/secure/trainingProgram");
        }
        else {
            response.sendRedirect(request.getContextPath()+"/login.html");
        }


    }

}
