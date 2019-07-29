package com.glosys.lms.web.student;

import com.glosys.lms.Course;
import com.glosys.lms.controller.CourseController;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/secureadmin/listOfCourse")

public class CourseServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CourseController courseController = new CourseController();
        List<Course> courses =  courseController.getAllCourse();
        request.setAttribute("courses", courses);
        request.getRequestDispatcher("/secureadmin/allcourse.jsp").forward(request, response);


    }
}
