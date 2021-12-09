package com.api.test;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
	private HttpSession session;
	
	@Autowired
	private HttpServletRequest req;
	
	
	
	@RequestMapping("/mypage/pwd")
	public ModelAndView pwd(String id) {
		ModelAndView mv = new ModelAndView();
		
		UmemVO b = u_dao.user(id);
		List<UmemVO> uvo = m_dao.getList(b);
		
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
			session.setAttribute("userName", chkpw);
		}else {
			map.put("data", "2");
		}
		
		return map;
	}
	@RequestMapping("/mypage/pwch")
	public ModelAndView findPW(String id, String pw) throws IOException{
		ModelAndView mv = new ModelAndView();
		
		// 여기는 우리 회원인 경우이다. 사용자의 아이디와 일치한 비밀번호를 임시 로 발급해 수정후 고객한테 반환해 주자.
		// 여기에 오기 전에 미리 이메일 인증까지 맞쳐둔 상태이다. 바로 임시 비밀번호를 지급하여 업데이트 해주자
		String newFat = SecureUtil.generateSalt();
		String newPw = SecureUtil.getEncrypt(pw, newFat);
		
		int cnt = u_dao.findPW(id, newPw);
		int cnt2 = i_dao.updateFat(id, newFat);
		
		// 이제 임시비밀번호를 사용자에게 이메일로 전달하자
		
		// password 
		
		// redirect
		
		return mv;
	}
		
}
