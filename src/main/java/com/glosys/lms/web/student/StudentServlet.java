package com.glosys.lms.web.student;


import com.glosys.lms.Student;
import com.glosys.lms.controller.StudentController;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class StudentServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse  response){


        StudentController studentController = new StudentController();

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String gender = request.getParameter("Gender");
        String emailId = request.getParameter("email");
        String collegeName = request.getParameter("collegeName");
        String password = request.getParameter("password");


        Student student = new Student(firstName,lastName,gender,emailId,collegeName,password);

        studentController.saveStudent(student);








    }
}
