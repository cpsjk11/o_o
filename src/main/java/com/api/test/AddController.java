package com.api.test;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import api.action.CheckChart;
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
	
	@Autowired
	private HttpSession session;
	
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
		
		//u_dao.searchDate();
		
		// 현재 날짜를 비교해 최근 3~6개월 정도에 결과값을 가져오는 기능
		Date dates = new Date(System.currentTimeMillis());
		String to_date = dates.toString();
		
		int s = to_date.indexOf("0");
		int n = to_date.indexOf("-");
		int k = to_date.lastIndexOf("-");
		
		String yearMonth = to_date.substring(s+1);
		String year = ((to_date.substring(s+1,n))+"-01-01");
		System.out.println(year);
		List<Map<String, String>> list = u_dao.searchDate(yearMonth,year);
		Map<String, String> map = new HashMap<String, String>();
		LinkedHashSet<String> set = new LinkedHashSet<String>();
		String res[] = new String[list.size()];
		String result[] = new String[list.size()];
		String date[] = new String[list.size()];
		String count[] = new String[list.size()];
		
		for(int i=0; i<list.size(); i++) {
			map = list.get(i);
			res[i] = map.toString();
			System.out.println(res[i]);
			
			int id = res[i].indexOf(",");
			int idx = res[i].indexOf("=");
			int idxs = res[i].lastIndexOf("}");
			int idxss = res[i].indexOf("-");
			
			count[i] = res[i].substring(idxss+1,idxs)+"월";
			result[i] = res[i].substring(idx+1, id);
			
		}
		
		
		for(int i=0; i<date.length; i++) {
		//System.out.println(date[i]);
		System.out.println(result[i]); // x축
		System.out.println(count[i]); // y축
		}
		
		CheckChart chk = new CheckChart();
		String resultX = chk.getChart(result);
		String resultY = chk.getChart(count);
		System.out.println(resultX+"/"+resultY);
		mv.addObject("x", resultX);
		mv.addObject("ychart", resultY);
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
