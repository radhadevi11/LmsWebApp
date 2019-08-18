package com.glosys.lms.web.student;

import com.glosys.lms.controller.WorkshopEnrolmentController;
import com.glosys.lms.entity.Course;
import com.glosys.lms.entity.Student;
import com.glosys.lms.entity.WorkshopEnrolment;
import com.glosys.lms.entity.WorkshopType;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/secure/workshopEnrollment")
public class WorkshopEnrollment extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int workshopTypeId = Integer.parseInt(request.getParameter("workshopTypeId"));
        int courseId = Integer.parseInt(request.getParameter("courseId"));
        HttpSession session = request.getSession(false);
        Student student = (Student) session.getAttribute("student");
        WorkshopEnrolmentController workshopEnrolmentController = new WorkshopEnrolmentController();
        workshopEnrolmentController.saveWorkshopEnrolment(new WorkshopEnrolment(new Student(student.getId()),
                new WorkshopType(workshopTypeId), new Course(courseId)));

    }
}
