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
        System.out.println("object creation for sign up controller");
        String firstName = request.getParameter("firstName");
        System.out.println("FirsrNmme:"+firstName);
        String lastName = request.getParameter("lastName");
        System.out.println("LastName:"+lastName);
        String emailId = request.getParameter("email");
        System.out.println("Email:"+emailId);
        String collegeName = request.getParameter("collegeName");
        String password = request.getParameter("psw");
        String pswRepeat = request.getParameter("psw-repeat");
        System.out.println("pswRepeat:"+pswRepeat);

        SignUp signUp = new SignUp(firstName,lastName,emailId,collegeName,password,pswRepeat);
        System.out.println("Object creation for sign up");

        signUpController.saveSignUp(signUp);
        System.out.println("saving sign up");






    }
}
