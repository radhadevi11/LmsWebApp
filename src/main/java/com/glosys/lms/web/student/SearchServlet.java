package com.glosys.lms.web.student;

import com.glosys.lms.controller.StudentController;
import com.glosys.lms.entity.Student;
import com.glosys.lms.entity.TrainingProgram;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/secure/search")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String courseName = request.getParameter("courseName");
        HttpSession session = request.getSession(false);
        Student student = (Student)session.getAttribute("student");

        StudentController studentController = new StudentController();
        List<TrainingProgram> searchResults = studentController.getSearchResults(courseName, student.getId());

        if(searchResults.size() == 0){
            request.setAttribute("isEmptySearchResult", true);
            request.setAttribute("courseName", courseName);
            request.getRequestDispatcher("/secure/searchResults.jsp").forward(request, response);
        }
        else {
            request.setAttribute("isEmptySearchResult", false);
            request.setAttribute("courseName", courseName);
            request.setAttribute("searchResults", searchResults);

            request.getRequestDispatcher("/secure/searchResults.jsp").forward(request, response);

        }

    }
}
