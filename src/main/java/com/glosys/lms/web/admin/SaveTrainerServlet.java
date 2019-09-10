package com.glosys.lms.web.admin;

import com.glosys.lms.controller.TrainerController;
import com.glosys.lms.entity.Trainer;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/secureadmin/saveTrainer")
public class SaveTrainerServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response){
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String gender = request.getParameter("Gender");
        String knownCourses = request.getParameter("knownCourses");
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");

        TrainerController trainerController = new TrainerController();
        trainerController.saveTrainer(new Trainer(firstName,lastName, gender, knownCourses, userName, password));



    }

}
