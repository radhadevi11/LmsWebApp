package com.glosys.lms.web;

import com.glosys.lms.controller.LoginController;
import com.glosys.lms.entity.Student;
import com.glosys.lms.web.student.LoginServlet;
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

import static org.mockito.Mockito.*;
import org.junit.runner.RunWith;

@RunWith(MockitoJUnitRunner.class)

@Ignore
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
    private Student student = mock(Student.class);
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
        doReturn(student).when(loginController).getValidUser(eMail, psw);
        doReturn(session).when(request).getSession(true);
        doNothing().when(session).setAttribute("email",eMail);
        doNothing().when(response).sendRedirect(contextPath+"/secure/trainingProgram");

        loginServlet.doPost(request, response);

        verify(request).getParameter("email");
        verify(request).getParameter("password");
        verify(loginController).getValidUser(eMail, psw);
        verify(request).getSession(true);
        verify(session).setAttribute("email", eMail);
        verify(request).getContextPath();
        verify(response).sendRedirect(contextPath+"/secure/trainingProgram");





    }

}