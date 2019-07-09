package com.glosys.lms.web;

import com.glosys.lms.CourseCategory;
import com.glosys.lms.controller.CourseCategoryController;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/secureadmin/adminpage")
public class CourseCategoryServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        CourseCategoryController courseCategoryController = new CourseCategoryController();
        List<CourseCategory> courseCategories = courseCategoryController.getCourseCategories();

        request.setAttribute("courseCategories", courseCategories);

       request.getRequestDispatcher("/secureadmin/addcourse.jsp").forward(request, response);


    }
}
