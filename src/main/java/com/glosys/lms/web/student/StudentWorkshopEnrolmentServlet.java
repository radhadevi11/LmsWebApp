package com.glosys.lms.web.student;

import com.glosys.lms.controller.WorkshopEnrolmentController;
import com.glosys.lms.entity.Student;
import com.glosys.lms.entity.WorkshopEnrolment;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/secure/workshopEnrolments")
public class StudentWorkshopEnrolmentServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        WorkshopEnrolmentController workshopEnrolmentController = new WorkshopEnrolmentController();
        HttpSession session = request.getSession(false);
        Student student = (Student) session.getAttribute("student");
        List<WorkshopEnrolment> workshopEnrolments = workshopEnrolmentController
                .getEnrolmentsByStudentId(student.getId());
        if(workshopEnrolments.size() == 0){
            request.setAttribute("isEmptyEnrolment", true);
            request.getRequestDispatcher("/secure/workshopEnrolment.jsp").forward(request, response);
        }else {
            request.setAttribute("isEmptyEnrolment", false);
            request.setAttribute("workshopEnrolments", workshopEnrolments);
            request.getRequestDispatcher("/secure/workshopEnrolment.jsp").forward(request, response);
        }

    }
}
