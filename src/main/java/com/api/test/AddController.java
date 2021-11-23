package com.api.test;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import api.action.RecommendedSchool;
import api.dao.RdDAO;
import api.dao.UmemDAO;
import api.vo.Search2;

@Controller
public class AddController {

	@Autowired 
	private RdDAO r_dao;
	
	@Autowired
	private UmemDAO u_dao;
	
	// 추천학원기능을 저장하는 기능
	@RequestMapping("/admin")
	public ModelAndView add(Search2 s2) {
		ModelAndView mv = new ModelAndView();
		
		int cnt = r_dao.addAppend(s2);
		
		mv.setViewName("redirect:/a_index");
		return mv;
	}
	
	// 회사의 정보들의 순위 이름등을 변경하는 기능!
	@RequestMapping("/updateCompany")
	@ResponseBody
	public Map<String, String> update(Search2 s2) {
		Map<String, String> map = new HashMap<String, String>();
		
		int cnt = r_dao.updateCompany(s2);
		
		if(cnt > 0) 
			map.put("value", "1");
		else
			map.put("value", "2");
		
		return map;
		
	}
	
	@RequestMapping("/a_login")
	public String st() {
		System.out.println("hi");
		return "admin/a_login";
	}
	
	@RequestMapping("/a_index")
	public ModelAndView goIndex() {
		ModelAndView mv = new ModelAndView();
		
		Search2[] rd = r_dao.getFamous(); 
		
		int usernum = u_dao.finduser();
		
		rd = RecommendedSchool.getSchool(rd);
		
		mv.addObject("userNum", usernum);
		mv.addObject("company", rd);
		mv.setViewName("admin/a_index");
		return mv;
	}
	
	// 삭제 버튼을 눌렀을때 삭제!
	@RequestMapping("/a_del")
	@ResponseBody
	public Map<String, String> delCompany(String id){
		Map<String, String> map = new HashMap<String, String>();
		
		int cnt = r_dao.delCompany(id);
		
		if(cnt > 0) {
			map.put("value", "1");
		}else
			map.put("value", "2");
		
		return map;
	}
	
	
}
