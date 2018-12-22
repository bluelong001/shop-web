package com.blue.controller;


import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.blue.pojo.Commodity;
import com.blue.service.CommodityService;

@Controller
@RequestMapping("/commodity")
public class CommodityController {
	@Autowired
	CommodityService commodityService;

	@RequestMapping("list_Commodity")
	public ModelAndView listCommodity(){
		ModelAndView mav = new ModelAndView();
		List<Commodity> listcommodity= commodityService.list();
		mav.addObject("listcommodity", listcommodity);
		mav.setViewName("admin/views/listCommodity");
		return mav;
	}

	@RequestMapping("add_Commodity")
	public String addCommodity(Commodity commodity){
		commodityService.add(commodity);
		return "message";
	}

	@RequestMapping("update_Commodity")
	public String updateCommodity(Commodity commodity){
		commodityService.update(commodity);
		return "message";
	}
	@RequestMapping("delete_Commodity")
	public String deleteCommodity(int cid){
		commodityService.delete(cid);
		return "message";
	}
	@RequestMapping("show_AllCommodity")
	public ModelAndView showAllCommodity(){

		ModelAndView mav = new ModelAndView();
		List<Commodity> showcommodity= commodityService.list();
		mav.addObject("showcommodity", showcommodity);
		mav.setViewName("ourjsp/buyer/views/showCommodity");
		return mav;
	}
	@RequestMapping("show_Commodity")
	public ModelAndView showKindCommodity(int kid){
		ModelAndView mav = new ModelAndView();
		List<Commodity> showcommodity= commodityService.show(kid);
		mav.addObject("showcommodity", showcommodity);
		mav.setViewName("ourjsp/buyer/views/showCommodity");
		return mav;
	}


	@RequestMapping("show_ACommodity")
	public ModelAndView showACommodity(int cid){
		ModelAndView mav = new ModelAndView();
		Commodity showacommodity= commodityService.replymap(cid);
		mav.addObject("showacommodity", showacommodity);
		mav.setViewName("ourjsp/buyer/views/showACommodity");
		return mav;
	}

	@RequestMapping("sell_Commodity")
	public ModelAndView sellCommodity(HttpSession session){
		int id=(int)session.getAttribute("id");
		ModelAndView mav = new ModelAndView();
		List<Commodity> sellcommodity= commodityService.sell(id);
		mav.addObject("sellcommodity", sellcommodity);
		mav.setViewName("ourjsp/seller/views/sellCommodity");
		return mav;
	}

	@SuppressWarnings("unchecked")
	@RequestMapping("add_Session")
	public String addSession(int cid,HttpSession session)
	{
		List<Commodity> list=new ArrayList<Commodity>();

		boolean flag=true;
		Commodity add_Commodity=commodityService.get(cid);
		if(null!=session.getAttribute("carlist")) {
			list=(List<Commodity>) session.getAttribute("carlist");
			Iterator<Commodity> it=list.iterator();
			while(it.hasNext()) {
				Commodity testit=it.next();
				if(testit.getCommodity_id()==cid)flag=false;
			}
		}
		if(flag)
			list.add(add_Commodity);
		session.setAttribute("carlist", list);
		return "message";

	}
	@SuppressWarnings("unchecked")
	@RequestMapping("show_Session")
	public ModelAndView showSession(HttpSession session) {
		ModelAndView mav=new ModelAndView();
		List<Commodity> list=new ArrayList<Commodity>();
		if(null!=session.getAttribute("carlist")) {
			list=(List<Commodity>) session.getAttribute("carlist");
		}
		mav.addObject("carlist",list);
		mav.setViewName("ourjsp/buyer/views/showSession");
		return mav;
	}

	@SuppressWarnings("unchecked")
	@RequestMapping("delete_Session")
	public ModelAndView deleteSession(int cid,HttpSession session) {
		ModelAndView mav=new ModelAndView();
		List<Commodity> list=new ArrayList<Commodity>();
		if(null!=session.getAttribute("carlist")) {
			list=(List<Commodity>) session.getAttribute("carlist");
		}
		Iterator<Commodity> it=list.iterator();
		while(it.hasNext())
		{
			Commodity commodity=(Commodity)it.next();
			if(commodity.getCommodity_id()==cid)
				it.remove();
		}
		mav.addObject("carlist",list);
		mav.setViewName("ourjsp/buyer/views/showSession");
		return mav;
	}

}
