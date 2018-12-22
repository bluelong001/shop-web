package com.blue.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.blue.pojo.Admin;
import com.blue.service.AdminService;


@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	AdminService adminService;

	@RequestMapping("login")
	public String loginAdmin(Admin admin,HttpSession session){
		try {
			int id=adminService.check(admin);
			if(0!=id){
				session.setAttribute("adminstate","admin");
				session.setAttribute("aid",id);
				return "admin/adminhome";
			}
			return "error";
		}
		catch(Exception e){return "error";}
		

	}
}

