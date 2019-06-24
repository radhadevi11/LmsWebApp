package com.glosys.lms.web;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
@WebFilter("/signup")
public class MyFilter implements Filter {
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
            throws IOException, ServletException {
        String firstName = servletRequest.getParameter("firstName");
        System.out.println("User came to sign up "+firstName);
        filterChain.doFilter(servletRequest, servletResponse);
        System.out.println("server finished it's work");
    }

    public void destroy() {

    }
}
