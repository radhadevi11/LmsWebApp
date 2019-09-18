package com.glosys.lms.web.trainer;

import com.glosys.lms.controller.TrainerController;
import com.glosys.lms.entity.Trainer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/trainerLogin")
public class TrainerLoginServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");

        TrainerController trainerController = new TrainerController();
        Trainer validTrainer = trainerController.getValidTrainer(userName, password);

        if(validTrainer != null){
            HttpSession session = request.getSession();
            session.setAttribute("trainer", validTrainer);
            response.sendRedirect(request.getContextPath()+"/secureTrainer/trainerPage.jsp");
        }
        else {
           response.sendRedirect(request.getContextPath()+"/trainerLogin.jsp");
        }
    }
}
