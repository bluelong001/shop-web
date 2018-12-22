package com.blue.controller;


import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.blue.pojo.Bill;
import com.blue.pojo.Commodity;
import com.blue.service.BillService;
import com.blue.util.Page;


@Controller
@RequestMapping("/bill")
public class BillController {
	@Autowired
	BillService billService;

	@RequestMapping("list_Bill")
	public ModelAndView listBill(Page page){

		ModelAndView mav = new ModelAndView();
		List<Bill> listBill= billService.list(page);
		int total = billService.total();

		page.caculateLast(total);

		mav.addObject("listBill",listBill);
		mav.setViewName("admin/views/listBill");
		return mav;
	}



	@RequestMapping("my_Bill")
	public ModelAndView myBill(HttpSession session){
		ModelAndView mav = new ModelAndView();
		List<Bill> myBill= billService.get((int)session.getAttribute("id"));
		mav.addObject("myBill",myBill);
		mav.setViewName("ourjsp/buyer/views/myBill");
		return mav;
	}
	@RequestMapping("buy_Bill")
	public String buyBill(HttpSession session,HttpServletRequest request)
	{

		Bill bill=new Bill();
		int cid=Integer.parseInt(request.getParameter("cid"));
		int num=Integer.parseInt(request.getParameter(Integer.toString(cid)));
		bill.setBill_num(num);
		double price=Double.parseDouble(request.getParameter("price"))*num;
		bill.setBill_money(price);
		bill.setKind_id(Integer.parseInt(request.getParameter("kid")));
		bill.setBuyer_id((int)session.getAttribute("id"));
		bill.setCommodity_id(cid);
		bill.setLogistics_id(1);
		billService.buy(bill);
		return "message";
	}
	@SuppressWarnings("unchecked")
	@RequestMapping("buy_Session")
	public String buySession(HttpSession session,HttpServletRequest request) {
		if(null!=session.getAttribute("carlist")) {
			List<Commodity> list=new ArrayList<Commodity>();
			list=(List<Commodity>) session.getAttribute("carlist");
			Iterator<Commodity> it=list.iterator();
			System.out.println(list.size());
			while(it.hasNext())
			{
				Commodity commodity=(Commodity)it.next();
				int cid=commodity.getCommodity_id();
				int num=Integer.parseInt(request.getParameter(Integer.toString(cid)));
				Bill bill=new Bill();
				bill.setKind_id(commodity.getKind_id());
				bill.setBill_num(num);
				double price=commodity.getCommodity_price();
				bill.setBill_money(price*num);
				bill.setBuyer_id((int)session.getAttribute("id"));
				bill.setCommodity_id(cid);
				bill.setLogistics_id(1);
				billService.buy(bill);
			}
		}
		else
			return "error";
		return "message";
	}
}
