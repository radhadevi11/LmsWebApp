package com.glosys.lms.web.admin;

import com.glosys.lms.controller.CourseController;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/secureadmin/deleteCourse")

public class DeleteCourseServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Integer id = Integer.parseInt(request.getParameter("id"));
        CourseController courseController = new CourseController();
        courseController.deleteCourse(id);
        response.sendRedirect(request.getContextPath());

    }
}
