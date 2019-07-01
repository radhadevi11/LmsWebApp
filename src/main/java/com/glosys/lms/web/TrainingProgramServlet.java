package com.glosys.lms.web;

import com.glosys.lms.TrainingProgramType;
import com.glosys.lms.controller.TrainingProgramTypeController;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/secure/trainingProgram")

public class TrainingProgramServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TrainingProgramTypeController trainingProgramTypeController = new TrainingProgramTypeController();
        List<TrainingProgramType> programTypes = trainingProgramTypeController.getTrainingProgramTypes();
        request.setAttribute("trainingProgramTypes", programTypes);
        request.getRequestDispatcher("/secure/courses.jsp").forward(request, response);

    }
}
