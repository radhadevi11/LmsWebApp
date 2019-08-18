package com.glosys.lms.web.student;

import com.glosys.lms.controller.LoginController;
import com.glosys.lms.entity.Student;

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
       Student student = loginController.getValidUser(mailId, password);

        if(student == null){
            response.sendRedirect(request.getContextPath()+"/login.jsp");


        }
        else {
            HttpSession session = request.getSession(true);
            session.setAttribute("student",student);
            response.sendRedirect(request.getContextPath()+"/secure/trainingProgram");

        }


    }

}
