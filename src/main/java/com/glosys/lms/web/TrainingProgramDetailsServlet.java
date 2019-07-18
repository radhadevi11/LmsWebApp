package com.glosys.lms.web;

import com.glosys.lms.WorkshopType;
import com.glosys.lms.controller.CorporateTrainingController;
import com.glosys.lms.controller.InplantTrainingController;
import com.glosys.lms.controller.ResearchTrainingController;
import com.glosys.lms.controller.WorkshopController;
import com.glosys.lms.model.CorporateTrainingInfo;
import com.glosys.lms.model.InplantTrainingInfo;
import com.glosys.lms.model.ResearchTrainingInfo;
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
            InplantTrainingController inplantTrainingController = new InplantTrainingController();
            InplantTrainingInfo inplantTrainingInfo = inplantTrainingController.getInplantTrainingInfo();
            request.setAttribute("inplantTrainingInfo",inplantTrainingInfo);
            request.getRequestDispatcher("/secure/inplantTraining.jsp").forward(request,response);

        }

        if(trainingProgramTypeId == 3){
            CorporateTrainingController corporateTrainingController = new CorporateTrainingController();
            CorporateTrainingInfo corporateTrainingInfo = corporateTrainingController.getCorporateTrainingInfo();
            request.setAttribute("corporateTrainingInfo",corporateTrainingInfo);
            request.getRequestDispatcher("/secure/corporateTraining.jsp").forward(request, response);
        }

        if(trainingProgramTypeId == 4){
            ResearchTrainingController researchTrainingController = new ResearchTrainingController();
            ResearchTrainingInfo researchTrainingInfo = researchTrainingController.getResearchTrainingInfo();
            request.setAttribute("researchTrainingInfo", researchTrainingInfo);
            request.getRequestDispatcher("/secure/researchTraining.jsp").forward(request, response);

        }


    }
}
