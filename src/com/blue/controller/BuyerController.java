package com.blue.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.blue.pojo.Buyer;
import com.blue.service.BuyerService;


@Controller
@RequestMapping("/buyer")
public class BuyerController {
	@Autowired
	BuyerService buyerService;

	@RequestMapping("list_Buyer")
	public ModelAndView listBuyer(){

		ModelAndView mav = new ModelAndView();
		List<Buyer> listBuyer= buyerService.list();
		mav.addObject("listBuyer", listBuyer);
		mav.setViewName("admin/views/listBuyer");
		return mav;
	}
	@RequestMapping("login")
	public String loginBuyer(Buyer buyer,HttpSession session){
		try {
			if(null!=session.getAttribute("kind")) {
				return "ourjsp/buyer/buyhome";
			}
			else
			{
				int id=buyerService.check(buyer);
				if(0!=id){
					session.setAttribute("kind","buyer");
					session.setAttribute("id",id);
					return "ourjsp/buyer/buyhome";
				}
			}
			return "error";
		}
		catch(Exception e){return "error";}
	}

	@RequestMapping(value="register",method=RequestMethod.GET)  
	public String registerBuyer(Buyer buyer,HttpServletRequest request){ 
		int state=buyerService.namebuf((String)request.getParameter("buyer_name"));
		if(state>0){return "error";}
		else {
			buyerService.register(buyer);  
			return "waitPage";  }
	} 

	@RequestMapping(value="add_Buyer",method=RequestMethod.POST)  
	public String addBuyer(Buyer buyer){  
		buyerService.add(buyer);  
		return "buyer/list_Buyer?state=correct";  
	}  

	@RequestMapping(value="delete_Buyer",method=RequestMethod.POST)  
	public String deleteBuyer(int buyer_id){  
		buyerService.delete(buyer_id);  
		return "buyer/list_Buyer?state=correct";  
	}  

	@RequestMapping(value="update_Buyer",method=RequestMethod.GET)  
	public String updateBuyer(Buyer buyer){  
		buyerService.update(buyer);  
		return "message";  
	}  


	@RequestMapping("my_Buyer")
	public ModelAndView myBuyer(HttpSession session){
		ModelAndView mav = new ModelAndView();
		Buyer myBuyer= buyerService.my((int)session.getAttribute("id"));
		mav.addObject("myBuyer", myBuyer);
		mav.setViewName("ourjsp/buyer/views/myBuyer");
		return mav;
	}
}
