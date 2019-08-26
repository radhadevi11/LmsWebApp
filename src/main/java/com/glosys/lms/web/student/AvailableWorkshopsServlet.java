package com.glosys.lms.web.student;

import com.glosys.lms.controller.WorkshopController;
import com.glosys.lms.controller.WorkshopEnrolmentController;
import com.glosys.lms.entity.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/secure/availableWorkshops")
public class AvailableWorkshopsServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        WorkshopController workshopController = new WorkshopController();
        List<Workshop> availableWorkshopsForStudent = workshopController.getFutureWorkshops();
        request.setAttribute("availableWorkshopsForStudent", availableWorkshopsForStudent);
        request.getRequestDispatcher("/secure/availableWorkshops.jsp").forward(request, response);

    }
}
