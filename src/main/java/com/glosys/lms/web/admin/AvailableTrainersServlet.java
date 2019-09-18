package com.glosys.lms.web.admin;

import com.glosys.lms.controller.TrainerController;
import com.glosys.lms.entity.Trainer;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

@WebServlet(value = "/secureadmin/availableTrainers",
        initParams = {@WebInitParam(name="fileUploadPath",
                value="C:\\Tomcat\\apache-tomcat-9.0.8\\webapps\\lmsweb")})

public class AvailableTrainersServlet extends HttpServlet {
        public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            response.setContentType("application/json");
            String fileUploadPath = getInitParameter("fileUploadPath");
            System.out.println("File upload path "+fileUploadPath);
            TrainerController trainerController = new TrainerController();
            String dateString = request.getParameter("date");
            String replacedDate = dateString.replace("-", " ");
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd MM yyyy");
            LocalDate parsedDate = LocalDate.parse(replacedDate, formatter);
            List<Trainer> trainers = trainerController.getAvailableTrainers(parsedDate);
            Gson gson = new Gson();
            String jsonString = gson.toJson(trainers);
            response.getWriter().println(jsonString);


        }
    }
