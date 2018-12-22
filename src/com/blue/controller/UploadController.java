package com.blue.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.blue.pojo.UploadedImageFile;

@Controller

public class UploadController {
	@RequestMapping("/uploadimage")
	public String upload(HttpServletRequest request, UploadedImageFile file)
			throws IllegalStateException, IOException {


		if(null!=request.getParameter("id")&&null!=request.getParameter("kind")) {
			String name =request.getParameter("kind")+"+"+request.getParameter("id");
			String newFileName = name + ".jpg";
			File newFile = new File(request.getServletContext().getRealPath("/headimage"), newFileName);
			if(!newFile.exists())newFile.delete();
			newFile.getParentFile().mkdirs();
			file.getImage().transferTo(newFile);
			return "message";

		}
		return "error";
	}


}



