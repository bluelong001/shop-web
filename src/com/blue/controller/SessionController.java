package com.blue.controller;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SessionController {




	@RequestMapping("/clear")
	public String ClearSession(HttpSession session,HttpServletRequest request) {
		Enumeration<String> em = request.getSession().getAttributeNames();
		while(em.hasMoreElements()){
			request.getSession().removeAttribute(em.nextElement().toString());
			request.setAttribute("message", "Wait 3 minute");
		}
		return "waitPage";

	
	}

}