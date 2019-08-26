package com.glosys.lms.web.student;

import com.glosys.lms.controller.WorkshopController;
import com.glosys.lms.controller.WorkshopEnrolmentController;
import com.glosys.lms.entity.Student;
import com.glosys.lms.entity.Workshop;
import com.glosys.lms.entity.WorkshopEnrolment;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/secure/saveEnrolment")
public class SaveEnrolmentServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        WorkshopEnrolmentController workshopEnrolmentController = new WorkshopEnrolmentController();
        int workshopId = Integer.parseInt(request.getParameter("workshopId"));
        HttpSession session = request.getSession(false);
        Student student = (Student) session.getAttribute("student");

        workshopEnrolmentController.saveWorkshopEnrolment(new WorkshopEnrolment(new Student(student.getId()),
                new Workshop(workshopId)));

        WorkshopController workshopController = new WorkshopController();
        List<Workshop> availableWorkshopsForStudent = workshopController.getFutureWorkshops();
        request.setAttribute("availableWorkshopsForStudent", availableWorkshopsForStudent);
        request.getRequestDispatcher("/secure/availableWorkshops.jsp").forward(request, response);

    }
}
