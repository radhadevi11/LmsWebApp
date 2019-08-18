package com.glosys.lms.web.admin;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/secureadmin/*")
public class AdminFilter implements Filter {
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
                         FilterChain filterChain) throws IOException, ServletException {
        HttpSession session = ((HttpServletRequest)servletRequest).getSession(false);


        if(session == null || session.getAttribute("adminName") == null){
            ((HttpServletResponse)servletResponse).sendRedirect(((HttpServletRequest) servletRequest).
                    getContextPath()+"/admin.jsp");
        }
        else {
            filterChain.doFilter(servletRequest, servletResponse);
        }


    }

    public void destroy() {

    }
}
