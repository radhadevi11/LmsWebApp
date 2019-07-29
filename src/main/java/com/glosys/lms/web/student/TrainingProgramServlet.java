package com.glosys.lms.web.student;

import com.glosys.lms.CourseCategory;
import com.glosys.lms.TrainingProgramType;
import com.glosys.lms.controller.CourseCategoryController;
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
        CourseCategoryController courseCategoryController = new CourseCategoryController();

        List<TrainingProgramType> programTypes = trainingProgramTypeController.getTrainingProgramTypes();
        List<CourseCategory> courseCategories = courseCategoryController.getCourseCategories();

        request.setAttribute("trainingProgramTypes", programTypes);
        request.setAttribute("courseCategories", courseCategories);

        request.getRequestDispatcher("/secure/training.jsp").forward(request, response);
        request.getRequestDispatcher("/secure/training.jsp").forward(request, response);

    }
}
