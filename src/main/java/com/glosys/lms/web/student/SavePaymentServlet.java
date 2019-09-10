package com.glosys.lms.web.student;

import com.glosys.lms.controller.PaymentController;
import com.glosys.lms.entity.Payment;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.time.LocalDate;
import java.time.Month;

@WebServlet("/secure/savePayment")
public class SavePaymentServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response){
        String cardHolderName = request.getParameter("cardHolderName");
        String cardNumber = request.getParameter("cardNumber");
        String cardType = request.getParameter("cardType");
        String cvv = request.getParameter("cvv");
        int year = Integer.parseInt(request.getParameter("expYear"));
        Month month = Month.valueOf(request.getParameter("month"));
        LocalDate expDate = LocalDate.of(year, month,28);

        Payment payment = new Payment(cardHolderName, cardType, cardNumber, cvv, expDate);

        PaymentController paymentController = new PaymentController();
        paymentController.savePayment(payment);
    }


}
