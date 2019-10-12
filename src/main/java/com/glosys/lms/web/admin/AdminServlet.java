package com.glosys.lms.web.admin;

import com.glosys.lms.controller.AdminController;
import com.glosys.lms.dao.AdminDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/admin")

public class AdminServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        AdminController adminController = new AdminController();
        String adminName = request.getParameter("adminName");
        String password = request.getParameter("password");

        boolean validAdmin = adminController.isValidAdmin(adminName, password);

        if(validAdmin){
            HttpSession session = request.getSession(true);
            session.setAttribute("adminName",adminName);
            response.sendRedirect(request.getContextPath()+"/secureadmin/adminpage.jsp");

        }
        else{
            request.setAttribute("isInvalidUser", true);
            request.getRequestDispatcher("/admin.jsp").forward(request, response);
        }
    }
}