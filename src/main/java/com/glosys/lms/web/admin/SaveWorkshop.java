package com.glosys.lms.web.admin;

import com.glosys.lms.controller.WorkshopController;
import com.glosys.lms.entity.Course;
import com.glosys.lms.entity.Workshop;
import com.glosys.lms.entity.WorkshopType;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

;import java.time.LocalDate;
import java.time.Month;

@WebServlet("/secureadmin/saveWorkshop")
public class SaveWorkshop extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response){
        int workshopTypeId = Integer.parseInt(request.getParameter("workshopTypeId"));
        int courseId = Integer.parseInt(request.getParameter("courseId"));
        String month = request.getParameter("month");
        int date = Integer.parseInt(request.getParameter("date"));
        int year = Integer.parseInt(request.getParameter("year"));

        WorkshopController workshopController = new WorkshopController();
        workshopController.saveWorkshop(new Workshop(new WorkshopType(workshopTypeId),new Course(courseId),
                LocalDate.of(year, Month.valueOf(month),date)));
    }
}
