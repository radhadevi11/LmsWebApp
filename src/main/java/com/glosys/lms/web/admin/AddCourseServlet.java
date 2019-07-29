package com.glosys.lms.web.admin;

import com.glosys.lms.Course;
import com.glosys.lms.CourseCategory;
import com.glosys.lms.controller.CourseCategoryController;
import com.glosys.lms.controller.CourseController;
import com.glosys.lms.dao.CourseDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/secureadmin/addcourse")

public class AddCourseServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String courseName = request.getParameter("courseName");
        String courseCode = request.getParameter("courseCode");
        String syllabus = request.getParameter("syllabus");
        Integer courseCategoryId = Integer.parseInt(request.getParameter("cc"));
        boolean workshopEligibility = Boolean.parseBoolean(request.getParameter("workshop_eligibility"));
        boolean inplantTrainingEligibility = Boolean.parseBoolean(request.getParameter("inplant_training_eligibility"));
        boolean corporateTrainingEligibility = Boolean.parseBoolean(request.getParameter("corporate_training_eligibility"));
        boolean researchTrainingEligibility = Boolean.parseBoolean(request.getParameter("research_training_eligibility"));

        CourseController courseController = new CourseController();
        Course course = new Course(courseName,
                courseCode,
                syllabus,
                new CourseCategory(courseCategoryId),
                workshopEligibility,
                researchTrainingEligibility,
                inplantTrainingEligibility,
                corporateTrainingEligibility);

        if(courseController.isExistingCourse(courseCode)){
            request.setAttribute("isExistingCourse", true);

            CourseCategoryController courseCategoryController = new CourseCategoryController();
            List<CourseCategory> courseCategories = courseCategoryController.getCourseCategories();

            request.setAttribute("courseCategories", courseCategories);
            request.setAttribute("course", course);

            request.getRequestDispatcher("/secureadmin/addcourse.jsp").forward(request, response);
        }
        else {
            request.setAttribute("isExistingCourse", false);

            courseController.saveCourse(course);
            response.sendRedirect(request.getContextPath());
        }


    }
}
