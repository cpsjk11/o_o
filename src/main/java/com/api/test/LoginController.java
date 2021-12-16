package com.api.test;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import api.action.secure.SecureUtil;
import api.dao.InDAO;
import api.dao.UmemDAO;
import api.u_member.vo.UmemVO;

@Controller
public class LoginController {
	
	@Autowired
	private UmemDAO u_dao;
	
	@Autowired
	private InDAO i_dao;
	
	@Autowired
	private HttpSession session;
	
	
	// 로그인 기능
	@RequestMapping(value="/login",method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> Login(String id, String pw) {
		Map<String, String> map = new HashMap<String, String>();
		// 입력한 값을 가지고 로그인을 시키자!
		String fat = i_dao.searchFat(id);
		
		if(fat == null) {
			// 당신은 우리 고객이 아니다 회원가입하라고 알려주기
			map.put("value", "2");
			return map;
		}
		
		String chkpw = SecureUtil.getEncrypt(pw, fat);
		
		UmemVO uvo = u_dao.login(id, chkpw);
		if(uvo != null && uvo.getStat().startsWith("-")) {
			map.put("value", "2");
			return map;
			
		}
		
		if(uvo != null) {
			// 로그인 성공 했을때 이다.
			System.out.println(uvo.getAddr());
			
			session.setAttribute("userName", uvo);
			session.setAttribute("u_id", uvo.getId());
			session.setAttribute("stat", uvo.getStat());
			session.setAttribute("rank", "1");
			map.put("name", uvo.getName());
			map.put("value", "1");
		}else {
			// 로그인 실패 했을때
			map.put("value", "2");
		}
		return map;
	}
	
	
	
	@RequestMapping("/join")
	public String login() {
		return "join";
	}
	@RequestMapping("u_mem_join")
	public String go_Ujoin() {
		return "uJoin";
	}
	@RequestMapping("c_mem_join")
	public String go_Cjoin() {
		return "cJoin";
	}
	
}
