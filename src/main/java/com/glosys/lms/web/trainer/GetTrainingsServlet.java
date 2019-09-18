package com.glosys.lms.web.trainer;

import com.glosys.lms.controller.TrainerController;
import com.glosys.lms.entity.Trainer;
import com.glosys.lms.entity.TrainingProgram;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/secureTrainer/getTrainings")
public class GetTrainingsServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TrainerController trainerController = new TrainerController();
        HttpSession session = request.getSession(false);
        Trainer trainer = (Trainer)session.getAttribute("trainer");
        List<TrainingProgram> trainingPrograms = trainerController.getTrainingPrograms(trainer.getId());


        if(trainingPrograms.size() == 0){
            request.setAttribute("isEmptyTrainings", true);
            request.getRequestDispatcher("/secureTrainer/myTrainings.jsp").forward(request, response);
        }
        else{
            request.setAttribute("isEmptyTrainings", false);
            request.setAttribute("trainings", trainingPrograms);
            request.getRequestDispatcher("/secureTrainer/myTrainings.jsp").forward(request, response);
        }
    }
}
