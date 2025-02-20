package com.glosys.lms.web.admin;


import com.glosys.lms.controller.CourseController;
import com.glosys.lms.entity.Course;
import com.glosys.lms.entity.CourseCategory;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/secureadmin/updateCourse")

public class UpdateCourseServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        String courseName = request.getParameter("courseName");
        String courseCode = request.getParameter("courseCode");
        String syllabus = request.getParameter("syllabus");
        int courseCategoryId = Integer.parseInt(request.getParameter("cc"));
        boolean workshopEligibility = Boolean.parseBoolean(request.getParameter("workshop_eligibility"));
        boolean inplantTrainingEligibility = Boolean.parseBoolean(request.getParameter("inplant_training_eligibility"));
        boolean corporateTrainingEligibility = Boolean.parseBoolean(request.getParameter("corporate_training_eligibility"));
        boolean researchTrainingEligibility = Boolean.parseBoolean(request.getParameter("research_training_eligibility"));

        Course course = new Course(id, courseName, courseCode, syllabus, new CourseCategory(courseCategoryId),
                workshopEligibility, researchTrainingEligibility, inplantTrainingEligibility, corporateTrainingEligibility);
        CourseController courseController = new CourseController();
        courseController.updateCourseByCourseId(course);
        response.sendRedirect(request.getContextPath()+"/secureadmin/adminpage.jsp");





    }

}
