package com.cn.comment.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.cn.comment.pojo.Wz;
import com.cn.comment.service.IWzService;
import com.cn.comment.util.GetLatAndLngByBaiduUtil;
import com.cn.comment.util.JsonUtil;

@Controller  
@RequestMapping("/wz") 
public class WZController {
	
	@Resource  
    private IWzService wzService;
	
    @RequestMapping("/getwz")
    public String getwz(HttpServletRequest request, HttpServletResponse response, Model model){ 
    	
        return "wz/index";  
    }
    
    
    @RequestMapping("/wzinsert")
    public String  wzinsert(HttpServletRequest request, HttpServletResponse response, Model model) throws IOException{ 
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    	String lng = request.getParameter("lng");//经度
    	String lat = request.getParameter("lat");//纬度
    	
    	String wz = GetLatAndLngByBaiduUtil.getCityFromLngAndlat(lat, lng);
    	Wz wzb = new Wz();
    	wzb.setAdr(wz);
    	wzb.setLng(lng);
    	wzb.setLat(lat);
    	wzb.setCreTime(sdf.format(new Date()));
    	wzService.insert(wzb);
    	
    	Map<String, Object> dateMap = new HashMap<String, Object>();
    	dateMap.put("wz", wz);
    	response.setCharacterEncoding("utf-8");
    	PrintWriter pw = response.getWriter();
    	pw.print(JsonUtil.toJson(dateMap).toString());
    	pw.flush();
        return null;  
    }
    
    @RequestMapping("/getwzlist")
    public String getwzlist(HttpServletRequest request, HttpServletResponse response, Model model){ 
    	List<Wz> wzs = wzService.wzList();
    	model.addAttribute("ls", wzs);
        return "wz/list";  
    }
    
   
}
