package com.glosys.lms.web;

import com.glosys.lms.SignUp;
import com.glosys.lms.controller.SignUpController;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class SignUpServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse  response){


        SignUpController signUpController = new SignUpController();

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String emailId = request.getParameter("email");
        String collegeName = request.getParameter("collegeName");
        String password = request.getParameter("password");
        String pswRepeat = request.getParameter("psw-repeat");

        SignUp signUp = new SignUp(firstName,lastName,emailId,collegeName,password,pswRepeat);

        signUpController.saveSignUp(signUp);








    }
}
