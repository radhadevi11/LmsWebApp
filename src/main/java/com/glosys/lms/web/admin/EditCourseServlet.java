package com.glosys.lms.web.admin;


import com.glosys.lms.controller.CourseCategoryController;
import com.glosys.lms.controller.CourseController;
import com.glosys.lms.entity.Course;
import com.glosys.lms.entity.CourseCategory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/secureadmin/editCourse")
public class EditCourseServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CourseController courseController = new CourseController();
        Course course = courseController.getCourseByCourseId(Integer.parseInt(request.getParameter("id")));
        request.setAttribute("course", course);

        CourseCategoryController courseCategoryController = new CourseCategoryController();
        List<CourseCategory> courseCategories = courseCategoryController.getCourseCategories();
        request.setAttribute("courseCategories", courseCategories);

        request.getRequestDispatcher("/secureadmin/editcourse.jsp").forward(request, response);


    }
}
