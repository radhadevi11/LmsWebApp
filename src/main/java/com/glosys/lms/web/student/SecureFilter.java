package com.glosys.lms.web.student;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/secure/*")

public class SecureFilter implements Filter {
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
            throws IOException, ServletException {
        System.out.println("Doing secure Filter");
        HttpSession session = ((HttpServletRequest)servletRequest).getSession(false);


        if(session == null || session.getAttribute("student") == null){
            ((HttpServletResponse)servletResponse).sendRedirect(((HttpServletRequest) servletRequest).
                    getContextPath()+"/login.jsp");
        }
        else {
            filterChain.doFilter(servletRequest, servletResponse);
        }

    }

    public void destroy() {

    }
}
