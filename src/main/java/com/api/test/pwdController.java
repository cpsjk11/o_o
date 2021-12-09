package com.api.test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import api.action.secure.SecureUtil;
import api.dao.InDAO;
import api.dao.MemDAO;
import api.dao.UmemDAO;
import api.gmail.send.GoogleMail;
import api.u_member.vo.UmemVO;

@Controller
public class pwdController {

	@Autowired
	private MemDAO m_dao;
	
	@Autowired
	private UmemDAO u_dao;
	
	@Autowired
	private InDAO i_dao;
	
	@Autowired
	private HttpServletRequest req;
	
	@Autowired
	private HttpSession session;
	
	@RequestMapping("/mypage/pwd")
	public ModelAndView pwd(String id) {
		ModelAndView mv = new ModelAndView();
		
		session = req.getSession(true);
		
		UmemVO uvo =  (UmemVO) session.getAttribute("userName");
		
		
		System.out.println(uvo.getId());
		
		//UmemVO b = u_dao.user(id);
		//List<UmemVO> uvo = m_dao.getList(b);
		
		mv.addObject("vo", uvo);
		mv.setViewName("비밀번호변경");
		
		return mv;
		
	}
	
	@RequestMapping(value = "/mypage/pwdss", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> pwdss(UmemVO vo, String id) {
		Map<String, String> map = new HashMap<String, String>();
		
		String fat = i_dao.searchFat(vo.getId());
		
		String chkpw = SecureUtil.getEncrypt(vo.getPw(), fat);
		
		UmemVO uvo = u_dao.login(id, chkpw);
		
		if(uvo != null) {
			map.put("data", "1");
		}else {
			map.put("data", "2");
		}
		
		return map;
	}
	@RequestMapping(value = "/mypage/pwd", method = RequestMethod.POST)
	@ResponseBody
	   public Map<String, String> pwChange(String pw, String id) {
	      Map<String, String> map = new HashMap<String, String>();
	      
	      String newFat = SecureUtil.generateSalt();
	      String newPw = SecureUtil.getEncrypt(pw, newFat);
	      
	      int cnt = u_dao.findPW(id, newPw);
	      int cnt2 = i_dao.updateFat(id, newFat);
	      
	      if(cnt > 0)
	         map.put("result", "1");
	      else
	         map.put("result","2");
	      
	      return map;
	}
	
	
		
}
