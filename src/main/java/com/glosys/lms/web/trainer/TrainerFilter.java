package com.glosys.lms.web.trainer;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/secureTrainer/*")
public class TrainerFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
                         FilterChain filterChain) throws IOException, ServletException {

        System.out.println("Doing trainer Filter");
        HttpSession session = ((HttpServletRequest)servletRequest).getSession(false);
        if(session != null && session.getAttribute("trainer") != null){
            filterChain.doFilter(servletRequest, servletResponse);
        }

        else{
            ((HttpServletResponse)servletResponse).sendRedirect(
                    ((HttpServletRequest) servletRequest).getContextPath()+"/trainerLogin.jsp");
        }


    }

    @Override
    public void destroy() {

    }
}
