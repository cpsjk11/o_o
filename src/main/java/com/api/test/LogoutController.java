package com.api.test;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogoutController {
	
	@Autowired
	private HttpSession session;
	
	@RequestMapping(value={"/logout","/mypage/logout"})
	public String logout() {
		session.removeAttribute("userName");
		session.removeAttribute("u_id");
		return "redirect:/";
	}
		
	
}
