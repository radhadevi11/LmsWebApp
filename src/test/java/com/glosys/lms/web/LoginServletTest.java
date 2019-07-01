package com.glosys.lms.web;

import com.glosys.lms.controller.LoginController;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Spy;
import org.mockito.junit.MockitoJUnitRunner;

import javax.servlet.ServletException;
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
    private LoginServlet loginServlet ;
    @Mock
    HttpServletRequest request;
    @Mock
    HttpServletResponse response;
    @Mock
    LoginController loginController;

    private final String eMail = "shalu@gmail.com";
    private final String psw = "123";
    private final String contextPath = "localhost:8080/lmsweb";


    @Before
    public void setUp(){
        doReturn(contextPath).when(request).getContextPath();

    }

    @Test
    public void testDoPost() throws IOException, ServletException {

        HttpSession session = mock(HttpSession.class);

        doReturn(eMail).when(request).getParameter("email");
        doReturn(psw).when(request).getParameter("password");
        doReturn(true).when(loginController).isValidUser(eMail, psw);
        doReturn(session).when(request).getSession(true);
        doNothing().when(session).setAttribute("email",eMail);
        doNothing().when(response).sendRedirect(contextPath+"/secure/trainingProgram");

        loginServlet.doPost(request, response);

        verify(request).getParameter("email");
        verify(request).getParameter("password");
        verify(loginController).isValidUser(eMail, psw);
        verify(request).getSession(true);
        verify(session).setAttribute("email", eMail);
        verify(request).getContextPath();
        verify(response).sendRedirect(contextPath+"/secure/trainingProgram");





    }

}