package com.glosys.lms.web;

import com.glosys.lms.controller.LoginController;
import org.junit.Ignore;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Spy;
import org.mockito.junit.MockitoJUnitRunner;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;

import static org.junit.Assert.*;
import static org.mockito.Mockito.*;
import org.junit.runner.RunWith;

@RunWith(MockitoJUnitRunner.class)

public class LoginServletTest {

    @InjectMocks
    @Spy
    private LoginServlet loginServlet;


    private final String eMail = "d@gmail";
    private final String psw = "111";


    @Ignore
    @Test
    public void testDoPost() throws IOException {
        HttpServletRequest request = mock(HttpServletRequest.class);
        LoginController loginController = mock(LoginController.class);
        HttpSession session = mock(HttpSession.class);
        HttpServletResponse response = mock(HttpServletResponse.class);

        doReturn(eMail).when(request).getParameter("email");
        doReturn(psw).when(request).getParameter("password");
        doReturn(true).when(loginController).isValidUser(eMail, psw);
        doReturn(session).when(request).getSession(true);
        doNothing().when(session).setAttribute("email",eMail);
        doNothing().when(response).sendRedirect("/secure/courses.jsp");

        verify(request).getParameter("email");
        verify(request).getParameter("password");
        verify(loginController).isValidUser(eMail, psw);
        verify(request).getSession(true);
        verify(session).setAttribute("email", eMail);
        verify(response).sendRedirect("/secure/courses.jsp");





    }

}