package com.glosys.lms.web.admin;

import com.glosys.lms.controller.CorporateTrainingController;
import com.glosys.lms.controller.InplantTrainingController;
import com.glosys.lms.controller.ResearchTrainingController;
import com.glosys.lms.controller.WorkshopTypeController;
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

import static com.glosys.lms.entity.TrainingProgramTypeEnum.getTrainingProgram;


@WebServlet("/secureadmin/trainingProgramDetails")
public class TrainingProgramDetailsServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int trainingProgramTypeId = Integer.parseInt(request.getParameter("id"));


        switch (getTrainingProgram(trainingProgramTypeId)){

            case WORKSHOP:
                WorkshopTypeController WorkshopTypeController = new WorkshopTypeController();
                WorkshopInfo workshopInfo = WorkshopTypeController.getWorkshopInfo();
                request.setAttribute("workshopInfo", workshopInfo);
                request.getRequestDispatcher("/secureadmin/trainers").forward(request,response);
                break;

            case INPLANT_TRAINING:
                InplantTrainingController inplantTrainingController = new InplantTrainingController();
                InplantTrainingInfo inplantTrainingInfo = inplantTrainingController.getInplantTrainingInfo();
                request.setAttribute("inplantTrainingInfo",inplantTrainingInfo);
                request.getRequestDispatcher("/secureadmin/inplantTraining.jsp").forward(request,response);
                break;

            case CORPORATE_TRAINING:
                CorporateTrainingController corporateTrainingController = new CorporateTrainingController();
                CorporateTrainingInfo corporateTrainingInfo = corporateTrainingController.getCorporateTrainingInfo();
                request.setAttribute("corporateTrainingInfo",corporateTrainingInfo);
                request.getRequestDispatcher("/secureadmin/corporateTraining.jsp").forward(request, response);
                break;

            case RESEARCH_TRAINING:

                ResearchTrainingController researchTrainingController = new ResearchTrainingController();
                ResearchTrainingInfo researchTrainingInfo = researchTrainingController.getResearchTrainingInfo();
                request.setAttribute("researchTrainingInfo", researchTrainingInfo);
                request.getRequestDispatcher("/secureadmin/researchTraining.jsp").forward(request, response);
                break;

        }


    }
}
