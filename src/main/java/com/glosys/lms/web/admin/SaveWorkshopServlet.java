package com.glosys.lms.web.admin;

import com.glosys.lms.controller.WorkshopController;
import com.glosys.lms.controller.WorkshopTypeController;
import com.glosys.lms.entity.Course;
import com.glosys.lms.entity.Trainer;
import com.glosys.lms.entity.Workshop;
import com.glosys.lms.entity.WorkshopType;
import com.glosys.lms.model.WorkshopInfo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

;import java.io.IOException;
import java.time.LocalDate;
import java.time.Month;

@WebServlet("/secureadmin/saveWorkshop")
public class SaveWorkshopServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int workshopTypeId = Integer.parseInt(request.getParameter("workshopTypeId"));
        int courseId = Integer.parseInt(request.getParameter("courseId"));
        String month = request.getParameter("month");
        int date = Integer.parseInt(request.getParameter("date"));
        int year = Integer.parseInt(request.getParameter("year"));
        LocalDate workshopDate = LocalDate.of(year, Month.valueOf(month), date);
        Workshop workshop = new Workshop(new WorkshopType(workshopTypeId), new Course(courseId),
                workshopDate,new Trainer());

        WorkshopController workshopController = new WorkshopController();
        if(workshopController.isExistingWorkshop(workshopTypeId, courseId, workshopDate)) {
            WorkshopTypeController workshopTypeController = new WorkshopTypeController();
            WorkshopInfo workshopInfo = workshopTypeController.getWorkshopInfo();
            request.setAttribute("workshopInfo", workshopInfo);
            request.setAttribute("workshop", workshop);
            request.setAttribute("isExistingWorkshop", true);
            request.getRequestDispatcher("/secureadmin/scheduleWorkshop.jsp")
                    .forward(request,response);
        }
        else {

            workshopController.saveWorkshop(workshop);
            request.getRequestDispatcher("/secureadmin/adminpage.jsp")
                    .forward(request,response);
        }
    }
}
