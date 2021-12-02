package com.api.test;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import api.dao.MemDAO;
import api.u_member.vo.UmemVO;

@Controller
public class removeCotroller {

	@Autowired
	private MemDAO m_dao;
	
	@Autowired
	private HttpServletRequest req;
	
	@RequestMapping("/mypage/remove")
	public ModelAndView remove(String id) {
		ModelAndView mv = new ModelAndView();
		
		m_dao.del(id);
		req.removeAttribute(id);
		
		mv.setViewName("회원탈퇴");
		
		return mv;
	}
	
	@RequestMapping("/mypage/removess")
	@ResponseBody
	public Map<String, String> removess(String id){
		Map<String, String> map = new HashMap<String, String>();
		
		int cnt = m_dao.del(id);
		System.out.println(id);
		if(cnt > 0)
			map.put("result", "1");
		else
			map.put("result", "2");
		
		return map;
	}
}
