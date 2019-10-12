package com.glosys.lms.web.student;

import com.glosys.lms.controller.CertificateController;
import com.glosys.lms.entity.Certificate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/secure/courseCategoryDetails")
public class CourseCategoryDetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int courseCategoryId = Integer.parseInt(request.getParameter("id"));

        List<Certificate> certificates = getCertificates(courseCategoryId);
        if(certificates.size() == 0){
            request.setAttribute("isEmptyCertificate", true);
        }
        if(courseCategoryId == 5){
            request.setAttribute("certificate", certificates);
            request.getRequestDispatcher("/secure/pspCertificate.jsp").forward(request,response);
        }

        else if(courseCategoryId == 6){
            request.setAttribute("certificate", certificates);
            request.getRequestDispatcher("/secure/wmaCertificate.jsp").forward(request,response);
        }

        else if(courseCategoryId == 7){
            request.setAttribute("certificate", certificates);
            request.getRequestDispatcher("/secure/aiCertificate.jsp").forward(request,response);
        }
        else if(courseCategoryId == 8){
            request.setAttribute("certificate", certificates);
            request.getRequestDispatcher("/secure/iotCertificate.jsp").forward(request,response);
        }
        else if(courseCategoryId == 9){
            request.setAttribute("certificate", certificates);
            request.getRequestDispatcher("/secure/cssCertificate.jsp").forward(request,response);
        }
        else {
            request.setAttribute("certificate", certificates);
            request.getRequestDispatcher("/secure/taqCertificate.jsp").forward(request,response);
        }

    }

    private List<Certificate> getCertificates(int courseCategoryId){
        CertificateController certificateController = new CertificateController();
        return certificateController.getCertificatesByCourseCategoryId(courseCategoryId);
    }
}
