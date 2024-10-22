package com.glosys.lms.web.student;

import com.glosys.lms.controller.*;
import com.glosys.lms.entity.Workshop;
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

import static com.glosys.lms.entity.TrainingProgramTypeEnum.getTrainingProgram;


@WebServlet("/secure/trainingProgramDetails")
public class TrainingProgramDetailsServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int trainingProgramTypeId = Integer.parseInt(request.getParameter("id"));


        switch (getTrainingProgram(trainingProgramTypeId)){

            case WORKSHOP:
                WorkshopTypeController WorkshopTypeController = new WorkshopTypeController();
                WorkshopInfo workshopInfo = WorkshopTypeController.getWorkshopInfo();
                request.setAttribute("workshopInfo", workshopInfo);
                request.getRequestDispatcher("/secure/workshop.jsp").forward(request,response);
                break;

            case INPLANT_TRAINING:
                InplantTrainingController inplantTrainingController = new InplantTrainingController();
                InplantTrainingInfo inplantTrainingInfo = inplantTrainingController.getInplantTrainingInfo();
                request.setAttribute("inplantTrainingInfo",inplantTrainingInfo);
                request.getRequestDispatcher("/secure/inplantTraining.jsp").forward(request,response);
                break;

            case CORPORATE_TRAINING:
                CorporateTrainingController corporateTrainingController = new CorporateTrainingController();
                CorporateTrainingInfo corporateTrainingInfo = corporateTrainingController.getCorporateTrainingInfo();
                request.setAttribute("corporateTrainingInfo",corporateTrainingInfo);
                request.getRequestDispatcher("/secure/corporateTraining.jsp").forward(request, response);
                break;

            case RESEARCH_TRAINING:

                ResearchTrainingTypeController researchTrainingTypeController = new ResearchTrainingTypeController();
                ResearchTrainingInfo researchTrainingInfo = researchTrainingTypeController.getResearchTrainingInfo();
                request.setAttribute("researchTrainingInfo", researchTrainingInfo);
                request.getRequestDispatcher("/secure/researchTraining.jsp").forward(request, response);
                break;

        }


    }
}
