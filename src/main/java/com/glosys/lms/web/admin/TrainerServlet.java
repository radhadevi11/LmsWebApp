package com.glosys.lms.web.admin;

import com.glosys.lms.controller.TrainerController;
import com.glosys.lms.entity.Trainer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/secureadmin/trainers")
public class TrainerServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        TrainerController trainerController = new TrainerController();
        List<Trainer> trainers = trainerController.getAllTrainers();
        request.setAttribute("trainers", trainers);
        request.getRequestDispatcher("/secureadmin/scheduleWorkshop.jsp").forward(request, response);

    }
}
