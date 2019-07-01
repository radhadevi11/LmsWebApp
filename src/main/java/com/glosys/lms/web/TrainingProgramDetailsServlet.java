package com.glosys.lms.web;

import com.glosys.lms.WorkshopType;
import com.glosys.lms.controller.WorkshopController;
import com.glosys.lms.model.WorkshopInfo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/secure/trainingProgramDetails")
public class TrainingProgramDetailsServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int trainingProgramTypeId = Integer.parseInt(request.getParameter("id"));

        if(trainingProgramTypeId == 1){
            WorkshopController workshopController = new WorkshopController();
            WorkshopInfo workshopInfo = workshopController.getWorkshopInfo();
            request.setAttribute("workshopInfo", workshopInfo);
            request.getRequestDispatcher("/secure/workshop.jsp").forward(request,response);

        }
        if(trainingProgramTypeId == 2){

        }


    }
}
