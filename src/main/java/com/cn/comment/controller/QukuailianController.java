package com.cn.comment.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class QukuailianController {
	public static Logger LOGGER = LoggerFactory.getLogger(LocationController.class);
	
	@RequestMapping("/qukuailian")
	public String btc(HttpServletRequest request){
		return "qukuailian/index";
	}
}
