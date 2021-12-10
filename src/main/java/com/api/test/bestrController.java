package com.api.test;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import api.u_member.vo.UmemVO;

@Controller
public class bestrController {
	
	@Autowired
	private HttpSession hs;

	@Autowired
	private HttpServletRequest req;

	@RequestMapping("/mypage/bestr")
	public String bestr() {

		hs = req.getSession(true);
		
		UmemVO uvo =  (UmemVO) hs.getAttribute("userName");
				
		String stat = uvo.getStat();
		
		if(stat.equals("1")) {
			return "기업정보보기";
		}
		return "수강신청이력";
	}
}
