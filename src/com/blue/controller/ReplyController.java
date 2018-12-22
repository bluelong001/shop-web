package com.blue.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.blue.pojo.Reply;
import com.blue.service.ReplyService;


@Controller
@RequestMapping("/reply")
public class ReplyController {
	@Autowired
	ReplyService replyService;

	@RequestMapping("list_Reply")
	public ModelAndView listCommodity(){
		ModelAndView mav = new ModelAndView();
		List<Reply> listReply= replyService.list();
		mav.addObject("listReply", listReply);
		mav.setViewName("admin/views/listReply");
		return mav;
	}
	
	
	
	@RequestMapping(value="add_Reply",method=RequestMethod.POST)  
	public String addReply(Reply reply){  
		replyService.add(reply);  
		return "message";  
	}  
}
