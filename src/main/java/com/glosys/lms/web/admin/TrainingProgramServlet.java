package com.glosys.lms.web.admin;


import com.glosys.lms.controller.CourseCategoryController;
import com.glosys.lms.entity.CourseCategory;
import com.glosys.lms.entity.TrainingProgramTypeEnum;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet("/secureadmin/trainingProgram")

public class TrainingProgramServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        CourseCategoryController courseCategoryController = new CourseCategoryController();

        List<TrainingProgramTypeEnum> programTypes = Arrays.asList(TrainingProgramTypeEnum.values());

        request.setAttribute("trainingProgramTypes", programTypes);

        request.getRequestDispatcher("/secureadmin/training.jsp").forward(request, response);

    }
}
