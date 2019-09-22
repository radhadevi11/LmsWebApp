package com.glosys.lms.web.admin;

import com.glosys.lms.controller.TrainerController;
import com.glosys.lms.controller.WorkshopController;
import com.glosys.lms.controller.WorkshopTypeController;
import com.glosys.lms.entity.Course;
import com.glosys.lms.entity.Trainer;
import com.glosys.lms.entity.Workshop;
import com.glosys.lms.entity.WorkshopType;
import com.glosys.lms.model.WorkshopInfo;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

;import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.time.Month;
import java.time.format.DateTimeFormatter;
import java.util.List;
@MultipartConfig()
@WebServlet("/secureadmin/saveWorkshop")
public class SaveWorkshopServlet extends HttpServlet {

    public static final String LMS_MATERIAL_PATH = "C:\\Tomcat\\apache-tomcat-9.0.8\\webapps\\lms_material\\";

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int workshopTypeId = Integer.parseInt(request.getParameter("workshopTypeId"));
        int courseId = Integer.parseInt(request.getParameter("courseId"));
        int trainerId = Integer.parseInt(request.getParameter("trainerId"));
        String date = request.getParameter("date");
        String replacedDate = date.replace("-", " ");
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd MM yyyy");
        LocalDate parsedDate = LocalDate.parse(replacedDate, formatter);
        Workshop workshopForGetUniquePath = new Workshop(new WorkshopType(workshopTypeId), new Course(courseId),
                parsedDate,new Trainer(trainerId));
        String uniquePath = workshopForGetUniquePath.getUniquePath();
        Part filePart = request.getPart("file");
        String submittedFileName = filePart.getSubmittedFileName();

        Workshop workshop = new Workshop(new WorkshopType(workshopTypeId), new Course(courseId),
                parsedDate,new Trainer(trainerId),uniquePath+File.pathSeparator+submittedFileName);

        WorkshopController workshopController = new WorkshopController();
        if(workshopController.isExistingWorkshop(workshopTypeId, courseId, parsedDate)) {
            WorkshopTypeController workshopTypeController = new WorkshopTypeController();
            WorkshopInfo workshopInfo = workshopTypeController.getWorkshopInfo();
            TrainerController trainerController = new TrainerController();
            List<Trainer> trainers = trainerController.getAllTrainers();
            request.setAttribute("trainers", trainers);
            request.setAttribute("workshopInfo", workshopInfo);
            request.setAttribute("workshop", workshop);
            request.setAttribute("isExistingWorkshop", true);
            request.getRequestDispatcher("/secureadmin/scheduleWorkshop.jsp")
                    .forward(request,response);
        }
        else {
            File basePath = new File(LMS_MATERIAL_PATH+File.pathSeparator+uniquePath);
            basePath.mkdir();
            String materialPath = new File(basePath, submittedFileName)
                    .getAbsolutePath();
            filePart.write(materialPath);
            workshopController.saveWorkshop(workshop);
            request.getRequestDispatcher("/secureadmin/adminpage.jsp")
                    .forward(request,response);

        }
    }
}
