package com.glosys.lms.web;

import com.glosys.lms.controller.CourseController;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/secureadmin/deleteCourse")

public class DeleteCourseServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response){
        Integer id = Integer.parseInt(request.getParameter("id"));
        CourseController courseController = new CourseController();
        courseController.deleteCourse(id);

    }
}
