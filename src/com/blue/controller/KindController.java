package com.blue.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.blue.pojo.Kind;
import com.blue.service.KindService;


@Controller
@RequestMapping("/kind")
public class KindController {
	@Autowired
	KindService kindService;
	
	@RequestMapping("list_Kind")
	public ModelAndView listKind(){
		ModelAndView mav = new ModelAndView();
		List<Kind> listKind= kindService.list();
		mav.addObject("listKind", listKind);
		mav.setViewName("admin/views/listKind");
		return mav;
	}

	@RequestMapping("add_Kind")
	public ModelAndView addKind(Kind kind){
		kindService.add(kind);
		ModelAndView mav = new ModelAndView();
		List<Kind> listKind= kindService.list();
		mav.addObject("listKind", listKind);
		mav.setViewName("admin/adminhome");
		return mav;
	}

	@RequestMapping("update_Kind")
	public ModelAndView updateKind(Kind kind){
		kindService.update(kind);
		ModelAndView mav = new ModelAndView();
		List<Kind> listKind= kindService.list();
		mav.addObject("listKind", listKind);
		mav.setViewName("admin/adminhome");
		return mav;
	}
	
	@RequestMapping("delete_Kind")
	public ModelAndView deleteKind(Kind kind){
		kindService.delete(kind);
		ModelAndView mav = new ModelAndView();
		List<Kind> listKind= kindService.list();
		mav.addObject("listKind", listKind);
		mav.setViewName("admin/adminhome");
		return mav;
	}
	
	@RequestMapping("get_JSKind")
	@ResponseBody 
	public Map<String,Object> getListKind() {
		Map<String, Object> map = new HashMap<>();  
		List<Kind> list=kindService.list();
		map.put("list", list);  
		return map;
	}
}

