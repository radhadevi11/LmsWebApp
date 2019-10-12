package com.glosys.lms.web.student;

import com.glosys.lms.dao.StudentDaoImpl;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/checkMailId")
public class CheckMailIdServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        StudentDaoImpl studentDao = new StudentDaoImpl();
        String mailId = request.getParameter("email");
        boolean existingMailId = studentDao.isExistingMailId(mailId);
        response.getWriter().println(existingMailId);
    }
}
