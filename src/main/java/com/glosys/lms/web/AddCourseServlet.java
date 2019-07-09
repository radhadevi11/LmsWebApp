package com.glosys.lms.web;

import com.glosys.lms.Course;
import com.glosys.lms.CourseCategory;
import com.glosys.lms.controller.CourseController;
import com.glosys.lms.dao.CourseDao;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/secureadmin/addcourse")

public class AddCourseServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response){

        String courseName = request.getParameter("courseName");
        String courseCode = request.getParameter("courseCode");
        String syllabus = request.getParameter("syllabus");
        Integer courseCategoryId = Integer.parseInt(request.getParameter("cc"));
        boolean workshopEligibility = Boolean.parseBoolean(request.getParameter("workshop_eligibility"));
        boolean inplantTrainingEligibility = Boolean.parseBoolean(request.getParameter("inplant_training_eligibility"));
        boolean corporateTrainingEligibility = Boolean.parseBoolean(request.getParameter("corporate_training_eligibility"));
        boolean researchTrainingEligibility = Boolean.parseBoolean(request.getParameter("research_training_eligibility"));
        System.out.println("inplan training eligibility"+inplantTrainingEligibility);

        CourseController courseController = new CourseController();
        courseController.saveCourse(new Course(courseName,
                courseCode,
                syllabus,
                new CourseCategory(courseCategoryId),
                workshopEligibility,
                researchTrainingEligibility,
                inplantTrainingEligibility,
                corporateTrainingEligibility));


    }
}
