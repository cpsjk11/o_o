package com.api.test;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import api.u_member.vo.UmemVO;

@Controller
public class nowController {

	@Autowired
	private HttpSession hs;

	@Autowired
	private HttpServletRequest req;
	
	@RequestMapping("/mypage/now")
	public String main2() {
		
		hs = req.getSession(true);
		
		UmemVO uvo =  (UmemVO) hs.getAttribute("userName");
				
		String stat = uvo.getStat();
		
		if(stat.equals("1")) {
			return "기업정보보기";
		}
		
		return "현재수강중인훈련";
	}
}
