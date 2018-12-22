package com.blue.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.blue.pojo.Seller;
import com.blue.service.SellerService;


@Controller
@RequestMapping("/seller")
public class SellerController {
	@Autowired
	SellerService sellerService;

	@RequestMapping("list_Seller")
	public ModelAndView listSeller(){

		ModelAndView mav = new ModelAndView();
		List<Seller> listseller= sellerService.list();
		mav.addObject("listseller", listseller);
		mav.setViewName("admin/views/listSeller");
		return mav;	
	}
	@RequestMapping("login")
	public String loginSeller(Seller seller,HttpSession session){
		try {
			if(null!=session.getAttribute("kind")) {
					return "ourjsp/seller/sellhome";
			}
			else
			{
				int id=sellerService.check(seller);
				if(0!=id){
					session.setAttribute("kind","seller");
					session.setAttribute("id",id);
					return "ourjsp/seller/sellhome";
				}
			}
			return "error";
		}
		catch(Exception e){return "error";}
	}

	@RequestMapping(value="register",method=RequestMethod.GET)  
	public String registerSeller(Seller seller){  
		sellerService.register(seller);  
		return "waitPage";  
	} 

	@RequestMapping(value="add_Seller",method=RequestMethod.POST)  
	public String addSeller(Seller seller){  
		sellerService.add(seller);  
		return "seller/list_Seller?state=correct";  
	}  

	@RequestMapping(value="delete_Seller",method=RequestMethod.POST)  
	public String deleteSeller(int seller_id){  
		sellerService.delete(seller_id);  
		return "seller/list_Seller?state=correct";  
	}  

	@RequestMapping(value="update_Seller",method=RequestMethod.GET)  
	public String updateSeller(Seller seller){  
		sellerService.update(seller);  
		return "message";  
	}  


	@RequestMapping("my_Seller")
	public ModelAndView mySeller(HttpSession session){
		ModelAndView mav = new ModelAndView();
		Seller mySeller= sellerService.my((int)session.getAttribute("id"));
		mav.addObject("mySeller", mySeller);
		mav.setViewName("ourjsp/seller/views/mySeller");
		return mav;
	}
}
