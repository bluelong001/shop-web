package com.blue.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
 
public class IndexInterceptor extends HandlerInterceptorAdapter { 
 

    public boolean preHandle(HttpServletRequest request,   
            HttpServletResponse response, Object handler) throws Exception {
    	HttpSession session=request.getSession();
        if(null!=session.getAttribute("adminstate")||request.getParameter("admin_name")!=null) {
        return true;
        }
        else
        {response.sendRedirect("/online/index.jsp");
        	return false;}
    } 
 
     
    public void postHandle(HttpServletRequest request,   
            HttpServletResponse response, Object handler,   
            ModelAndView modelAndView) throws Exception { 
       
    } 
 
     
    public void afterCompletion(HttpServletRequest request,   
            HttpServletResponse response, Object handler, Exception ex) 
    throws Exception { 

    } 
       
}